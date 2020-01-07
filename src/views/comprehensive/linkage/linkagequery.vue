<template>
    <div id="linkagequery">
         <el-table :data="userlist"  >
        <el-table-column  fixed prop="name" label="用户名" width="180"></el-table-column>
        <el-table-column prop="phone" label="联系电话" width="180"></el-table-column>
        <el-table-column prop="mibo_phone" label="备用电话" width="180"></el-table-column>
        <el-table-column prop="email" label="邮箱" width="180"></el-table-column>
        <el-table-column  label="密码" width="180">
            <template slot-scope="scope">
            <span>******</span>
            </template>
        </el-table-column>
        <el-table-column prop="role_name" label="用户角色" width="180"></el-table-column>
        <el-table-column fixed="right" label="操作" header-align="center" align="center">
            <template slot-scope="scope">
            <el-button size="mini" @click='handleEdit(scope.$index, scope.row)' type="primary">资源</el-button>
            
            </template>
        </el-table-column>
        </el-table>

        <div class="block" style="margin-left: 73%">
        <el-pagination
            @size-change="handleSizeChange"
            @current-change="handleCurrentChange"
            :current-page="form.pageNum"
            :page-sizes="[3, 5, 10, 15]"
            :page-size="form.pageSize"
            layout="total, sizes, prev, pager, next, jumper"
            :total="total1"
        ></el-pagination>
        </div>
         <el-dialog title="资源管理:" :visible.sync="dialogFormVisible"  width="30%">
           
              <el-select
                v-model="value2"
                multiple
                collapse-tags
                size="medium"
                style="margin-left: 20px;width:300px"
                placeholder="请选择">
                <el-option
                v-for="item in allsresource"
                :key="item.id"
                :label="item.name"
                :value="item.id">
                </el-option>
            </el-select>
              
            <div slot="footer" class="dialog-footer">
              <el-button @click="dialogFormVisible = false">取 消</el-button>
              <el-button type="primary" @click="handler">确 定</el-button>
            </div>
        </el-dialog>
    </div>
</template>
<script>
import { mapState, mapActions } from "vuex";
export default {
    data(){
        return {
             role:{
                userid:0,
                role_name:""
            },
            form: {
                pageNum: 1,
                pageSize: 5,
            
            },
            dialogFormVisible: false,
            formLabelWidth: '80px',
            value2:[],
            roleForm:{
                id:'',
                资源编号:[]
            }
        }
    },
    methods:{
         ...mapActions("userset", ["getUserMess", "deleteUser","modifyUserRole",'findZiYuan','findAllResource','addPermissions']),
   
    handleSizeChange(val) {
      this.form.pageSize = val;
      this.getUserMess(this.form);
    },
    handleCurrentChange(val) {
      this.form.pageNum = val;
      this.getUserMess(this.form);
    },
    handler(){
        this.roleForm.资源编号=this.value2;
        this.addPermissions(this.roleForm)
        this.dialogFormVisible=false;
    },
    handleEdit(index, row) {
      console.log(index, row);
      console.log(index,row,'=====');
      if(row.role_name=="超级管理员"){
          this.roleForm.id=4;
      }else if(row.role_name=="管理员"){
        this.roleForm.id=1;
      }else if(row.role_name=="检查人员"){
        this.roleForm.id=3;
      }else if(row.role_name=="普通用户"){
        this.roleForm.id=2;
      }
      //通过编辑的scope将列存储的数据id赋给定义的变量role.id
      this.role.userid=row.id;
      //将模态框可视化
      this.findZiYuan(row.role_name).then((res)=>{
          console.log(res,'ssss')
          var arr=[];
          if(res.data.length!=0){
            res.data.forEach((item)=>{
                item.subResource.forEach((acb)=>{
                    arr.push(acb.id)
                })
            })
          }
         console.log(arr)
         this.value2=arr
      })
      this.dialogFormVisible = true;
      //  this.$prompt('请选择需要更改的用户角色', '提示', {
      //     confirmButtonText: '确定',
      //     cancelButtonText: '取消',
      //     inputErrorMessage: '取消更改'
      //   }).then(({ value }) => {
      //     this.$message({
      //       type: 'success',
      //       message: '你已将用户 '+row.name+'的角色修改为' + value
      //     });
      //   }).catch(() => {
      //     this.$message({
      //       type: 'info',
      //       message: '取消选择'
      //     });
      //   });
    },
   
    tableRowClassName({ row, rowIndex }) {
      if (rowIndex === 2) {
        return "warning-row";
      } else if (rowIndex === 4) {
        return "success-row";
      } else if (rowIndex === 0) {
        return "s1-row";
      } else if (rowIndex === 6) {
        return "s2-row";
      } else if (rowIndex === 8) {
        return "s3-row";
      }
      return "";
    }
  
    },
    computed:{
...mapState("userset", ["userlist", "total1",'allsresource'])
    },
    mounted() {
    this.getUserMess(this.form);
    this.findAllResource();
  },
}
</script>
<style scoped>

</style>
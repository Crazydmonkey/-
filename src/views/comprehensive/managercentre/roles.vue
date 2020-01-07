<template>
  <div style="margin-top:1em;margin-left:1em">
    <el-tag type="success" style="font-size:20px;" >用户状态</el-tag>
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
          <el-button size="mini" @click='handleEdit(scope.$index, scope.row)' type="primary">权限</el-button>
          <el-button size="mini" type="danger" @click="handleDelete(scope.$index, scope.row)">注销</el-button>
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
    <br/><br/>
    <div class="piemap">
        <div id="myChart" class="pie"></div>     
        <div id="myChart1" class="pie"></div>     
        <div id="myChart2" class="pie"></div>     
        <div id="myChart3" class="pie"></div>     
      </div>
    <el-dialog title="提示:" :visible.sync="dialogFormVisible">
            <el-form :model="role">
              <!-- <el-form-item label="角色名称" :label-width="formLabelWidth">
                <el-input v-model="form.name" autocomplete="off"></el-input>
              </el-form-item> -->
              <el-form-item label="角色名称" :label-width="formLabelWidth" >
                <el-select v-model="role.role_name" placeholder="请选择想要更改的角色">
                  <el-option label="超级管理员" value="超级管理员"></el-option>
                  <el-option label="管理员" value="管理员"></el-option>
                  <el-option label="普通用户" value="普通用户"></el-option>
                  <el-option label="检查人员" value="检查人员"></el-option>
                </el-select>
              </el-form-item>
            </el-form>
            <div slot="footer" class="dialog-footer">
              <el-button @click="dialogFormVisible = false">取 消</el-button>
              <el-button type="primary" @click="handler">确 定</el-button>
            </div>
        </el-dialog>

  </div>



  
</template>

<style>
 .piemap{
        display: flex;
        justify-content: space-around;
        width: 100%;
        flex: 1;
        height: 160px;
    }
    .pie {
        width:160px;
        height:160px;
        margin: 0 auto;
    }
.el-table .s1-row {
  background: rgb(214, 236, 169);
}
.el-table .s2-row {
  background: rgb(245, 150, 242);
}
.el-table .s3-row {
  background: rgb(153, 185, 245);
}
.el-table .warning-row {
  background: rgb(183, 225, 250);
}
.el-table .success-row {
  background: #f7f5b1;
}
</style>

<script>
import { mapState, mapActions } from "vuex";
export default {
  data() {
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
      formLabelWidth: '80px'
    };
  },
  created() {},
  mounted() {
    this.getUserMess(this.form);
      setTimeout(() => {
            console.log(this.userlist)
            this.drawLine(this.userlist[0].name,["#3BA1FF","#F0F2F5"],this.userlist[0].login_count,"myChart");
        }, 1000);
         setTimeout(() => {
            console.log(this.userlist)
            this.drawLine(this.userlist[1].name,["#69D389","#F0F2F5"],this.userlist[1].login_count,"myChart1");
        }, 1000);
        setTimeout(() => {
            console.log(this.userlist)
            this.drawLine(this.userlist[2].name,["#FBDA55","#F0F2F5"],this.userlist[2].login_count,"myChart2");
        }, 1000);
        setTimeout(() => {
            console.log(this.userlist)
            this.drawLine(this.userlist[3].name,["#3BA1FF","#F0F2F5"],this.userlist[3].login_count,"myChart3");
        }, 1000);
       
  },
  computed: {
    ...mapState("userset", ["userlist", "total1"])
  },
  methods: {
    ...mapActions("userset", ["getUserMess", "deleteUser","modifyUserRole"]),
    drawLine(name,colors,data,id){
            // 基于准备好的dom，初始化echarts实例
            let myChart = this.$echarts.init(document.getElementById(id))
            // 绘制图表
            myChart.setOption({
                grid: {
                    top: 5,
                    bottom: 5,
                },
                color: colors,
                series: [{
                    name: 'valueOfMarket',
                    type: 'pie',
                    center: ['50%', '50%'], // 饼图的圆心坐标
                    radius: ['60%', '70%'],
                    avoidLabelOverlap: false,
                    hoverAnimation: false,
                    label: { //  饼图图形上的文本标签
                        normal: { // normal 是图形在默认状态下的样式
                            show: true,
                            position: 'center',
                            color: '#000000',
                            fontSize: 14,
                            fontWeight: 'bold',
                            formatter: '{b}\n{c}'+'次' // {b}:数据名； {c}：数据值； {d}：百分比
                        }
                    },
                    data: [
                            {
                                value: data,
                                name: name,
                                label: {
                                    normal: {
                                        show: true
                                    }
                                }
                            },
                            {
                                value: 100 - data,
                                name: '',
                                label: {
                                    normal: {
                                    show: false
                                    }
                                }
                            }
                        ]
                    }]
                    })
                    if(data>200){
                         myChart.setOption({
                grid: {
                    top: 5,
                    bottom: 5,
                },
                color: colors,
                series: [{
                    name: 'valueOfMarket',
                    type: 'pie',
                    center: ['50%', '50%'], // 饼图的圆心坐标
                    radius: ['60%', '70%'],
                    avoidLabelOverlap: false,
                    hoverAnimation: false,
                    label: { //  饼图图形上的文本标签
                        normal: { // normal 是图形在默认状态下的样式
                            show: true,
                            position: 'center',
                            color: '#000000',
                            fontSize: 14,
                            fontWeight: 'bold',
                            formatter: '{b}\n{c}'+'次' // {b}:数据名； {c}：数据值； {d}：百分比
                        }
                    },
                    data: [
                            {
                                value: data,
                                name: name,
                                label: {
                                    normal: {
                                        show: true
                                    }
                                }
                            },
                            {
                                value: 3000 - data,
                                name: '',
                                label: {
                                    normal: {
                                    show: false
                                    }
                                }
                            }
                        ]
                    }]
                    })
                    }
                },
    handleSizeChange(val) {
      this.form.pageSize = val;
      this.getUserMess(this.form);
    },
    handleCurrentChange(val) {
      this.form.pageNum = val;
      this.getUserMess(this.form);
    },
    handleEdit(index, row) {
      console.log(index, row);
      console.log(index,row,'=====');
      //通过编辑的scope将列存储的数据id赋给定义的变量role.id
      this.role.userid=row.id;
      //将模态框可视化
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
     //点击确定按钮后触发的方法，将要更改的rolename还有用户编号传到后台
    handler(){
      this.modifyUserRole({id:this.role.userid,role_name:this.role.role_name,form: this.form});
      this.dialogFormVisible = false;
      this.role.role_name="";
    },
    handleDelete(index, row) {
      this.$confirm("此操作将永久注销此用户, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      })
        .then(() => {
          console.log("确定删除",this.total1);
           if(((this.total1-1)%this.form.pageSize)===0){
                this.form.pageNum = this.form.pageNum-1
           }
          this.deleteUser({ id: row.id, form: this.form });
          this.$message({
            type: "success",
            message: "删除成功!"
          });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除"
          });
        });
      //
      //console.log(index, row);
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
  }
};
</script>
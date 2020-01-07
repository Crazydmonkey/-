<template>
    <div id="alarmquery" style="margin-left:1em">
        <div style="margin-top:2em">
            <el-input
                placeholder="请输入关键字"
                prefix-icon="el-icon-search"
                v-model="form.warningContent"
                size="small"
                clearable
                style="width:200px"
               @change="queryClick"
                >
             </el-input>
            告警类型
           
                 <el-select v-model="form.warningType" placeholder="请选择" @change="typeClick">
                    <el-option
                    v-for="item in options"
                    :key="item.value"
                    size="small"
                    :label="item.label"
                    :value="item.value"
                    >
                    </el-option>
                </el-select>
        </div>
        <div>
            <el-table
                :data="alarmlist"
                style="width: 100%">
                <el-table-column
                    prop="time"
                    label="告警时间"
                    width="180">
                </el-table-column>
                <el-table-column
                    prop="device"
                    label="数据/设备"
                    width="180">
                </el-table-column>
                <el-table-column
                    prop="warningType"
                    label="告警类型">
                </el-table-column>
                <el-table-column
                    prop="warningLevel"
                    label="级别">
                </el-table-column>
                <el-table-column
                    prop="warningContent"
                    label="告警内容">
                </el-table-column>
                <el-table-column
                    prop="state"
                    label="状态">
                </el-table-column>
                <el-table-column
                    label="详细记录"
                    width="100">
                    <template slot-scope="scope">
                        <el-button type="primary" size="small" v-if="scope.row.state=='已确认'" disabled>已确认</el-button>
                        <el-button @click="handleClick(scope.row)" type="success" size="small" v-else>确认</el-button>
                        <!-- <el-button @click="handleClick(scope.row)" type="success" size="small" >确认</el-button> -->
                    </template>
                </el-table-column>
            </el-table>
            <div style="margin-left: 70%;position: fixed;">
                <el-pagination
                    background
                    :page-size="form.pageSize"
                    :current-page="form.page"
                    layout="prev, pager, next"
                    :total="total" @current-change="pageBian">
                </el-pagination>
            </div>
            
        </div>
    </div>
</template>
<script>
import { mapState, mapActions } from 'vuex';
export default {
    data() {
        return {
            options: [{
            value: '设备异常',
            label: '设备异常'
            }, {
            value: '数据异常',
            label: '数据异常'
            }],
          
          form:{
              warningContent:"",
              warningType:"",
              pageNum:1,
              pageSize:5
          },
        }
      },
      computed:{
          ...mapState('alarm',['alarmlist','total'])
      },
      created(){
          this.findAlarm(this.form)
      },
      methods:{
          queryClick(){
            this.findAlarm(this.form)  
          },
          typeClick(){
            this.findAlarm(this.form)   
          },
        ...mapActions('alarm',['findAlarm','sureALarm']),
        pageBian(a){
            this.form.pageNum=a;
            console.log(this.form.page)
              this.findAlarm(this.form)
        },
        handleClick(row){
            console.log(row,"sss")
            this.sureALarm(row)
        }
      }
}
</script>
<style scoped>

</style>
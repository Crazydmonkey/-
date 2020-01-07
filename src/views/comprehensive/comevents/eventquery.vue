<template>
    <div id="eventquery" style="margin-left:1em">
        <div style="margin-top:2em">
            <el-input
                placeholder="请输入关键字"
                prefix-icon="el-icon-search"
                v-model="form.content"
                size="small"
                clearable
                style="width:200px"
               @change="queryClick"
                >
             </el-input>
             事件时间
              <el-date-picker
                v-model="form.day"
                type="date"
                format="yyyy-MM-dd"
                @change="timeChange"
                placeholder="选择日期">
              </el-date-picker>
            事件类型
                 <el-select v-model="form.type" placeholder="请选择" @change="typeClick">
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
                :data="eventslist"
                style="width: 100%">
                <el-table-column
                    prop="time"
                    label="事件时间"
                    width="180">
                    <template slot-scope="scope">
                        <span>{{scope.row.time.slice(0,10)}}</span>
                    </template>
                </el-table-column>
                
                <el-table-column
                    prop="type"
                    label="事件类型">
                     
                </el-table-column>
                    
                <el-table-column
                    prop="content"
                    label="事件内容">
                </el-table-column>
                <!-- <el-table-column
                    label="详细记录"
                    width="100">
                    <template slot-scope="scope">
                        <el-button @click="handleClick(scope.row)" type="text" size="small">通知</el-button>
                        <el-button type="text" size="small">推送</el-button>
                    </template>
                </el-table-column> -->
            </el-table>
            <div style="margin-left: 75%;position: fixed;">
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
            value: '数据变化',
            label: '数据变化'
            }, {
            value: '用户操作',
            label: '用户操作'
            },{
            value: '联动触发',
            label: '联动触发'
            }],
          
          form:{
              pageNum:1,
              pageSize:5,
              day:"2019-06-03"
          },
        }
      },
      computed:{
          ...mapState('events',['eventslist','total'])
      },
      created(){
        this.findEvents(this.form)
      },
      methods:{
          queryClick(){
              this.findEvents(this.form)
          },
          typeClick(){
              this.findEvents(this.form)
          },
        ...mapActions('events',['findEvents']),
        pageBian(a){
            this.form.pageNum=a;
            console.log(this.form.page)
            this.findEvents(this.form)
        },
        timeChange(e){
          console.log(e)
          
          var mm=e.getMonth()<10?"0"+e.getMonth():e.getMonth()
          var dd=e.getDate()<10?"0"+e.getDate():e.getDate()
          console.log(mm)
          var date=e.getFullYear()+"-"+mm+"-"+dd
          console.log(date)
          this.form.day=date;
          this.findEvents(this.form)
        }
      }
}
</script>
<style scoped>

</style>
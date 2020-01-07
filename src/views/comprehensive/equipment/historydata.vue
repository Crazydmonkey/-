<template>
    <div id="historydata">
      
        <div style="margin-top:1em;margin-left:1em">
          <el-table
                :data="historylist[0]"
                header-row-class-name="theadd"
                height=300
                :border='true'
                >
                <el-table-column align="center" label="温度" label-class-name="red">
                    <el-table-column
                        prop="max_value"
                        label="最大值"
                        align="center"
                       >
                    </el-table-column>
                    <el-table-column
                        prop="min_value"
                        label="最小值"
                        align="center"
                        >
                    </el-table-column>
                     <el-table-column
                        prop="time"
                        label="时间"
                        align="center"
                        >
                       <template slot-scope="scope">
                           <span>{{scope.row.time.slice(0,10)}}</span>
                    </template>
                    </el-table-column>
                    
                </el-table-column>
            </el-table>
      </div>
       <div  style="margin-top:1em;margin-right:1em">
          <el-table
                :data="historylist[1]"
                height=300
                :border='true'
                >
                <el-table-column align="center" label="湿度">
                    <el-table-column
                        prop="max_value"
                        label="最大值"
                        align="center"
                       >
                    </el-table-column>
                    <el-table-column
                        prop="min_value"
                        label="最小值"
                        align="center"
                        >
                    </el-table-column>
                     <el-table-column
                        prop="time"
                        label="时间"
                        align="center"
                        >
                       <template slot-scope="scope">
                           <span>{{scope.row.time.slice(0,10)}}</span>
                    </template>
                    </el-table-column>
                    
                </el-table-column>
            </el-table>
      </div>
      <div  style="margin-top:3em;margin-left:1em">
          <el-table
                :data="historylist[0]"
                height=300
                :border='true'
                >
                <el-table-column align="center" label="CO2">
                    <el-table-column
                        prop="max_value"
                        label="最大值"
                       align="center"
                       >
                    </el-table-column>
                    <el-table-column
                        prop="min_value"
                        label="最小值"
                        align="center"
                        >
                    </el-table-column>
                     <el-table-column
                        prop="time"
                        label="时间"
                        align="center"
                        >
                       <template slot-scope="scope">
                           <span>{{scope.row.time.slice(0,10)}}</span>
                    </template>
                    </el-table-column>
                    
                </el-table-column>
            </el-table>
      </div>
      <div style="margin-top:3em;margin-right:1em">
          <el-table
                :data="historylist[0]"
                height=300
                :border='true'
                >
                <el-table-column align="center" label="PM2.5">
                    <el-table-column
                        prop="max_value"
                        label="最大值"
                       align="center"
                       >
                    </el-table-column>
                    <el-table-column
                        prop="min_value"
                        label="最小值"
                        align="center"
                        >
                    </el-table-column>
                     <el-table-column
                        prop="time"
                        label="时间"
                        align="center"
                        >
                       <template slot-scope="scope">
                           <span>{{scope.row.time.slice(0,10)}}</span>
                    </template>
                    </el-table-column>
                    
                </el-table-column>
            </el-table>
      </div>
    </div>
</template>
<script>
import { mapActions, mapState } from 'vuex'
export default {
    data(){
        return {

        }
    },
    mounted(){
     
      
    },
    created(){
        this.findAllHistory22().then((res)=>{
            // this.drawPie("id","纵轴的名称","单位",'横轴的数据','纵轴的数据')
        });
    },
    computed:{
        ...mapState('equipment',['historylist'])
    },
    methods:{
        ...mapActions('equipment',['findAllHistory22']),
       
    }
}
</script>
<style scoped>
    
     #historydata{
        width: 100%;
        display: flex;
        justify-content: space-between;
        flex-direction: row;
        flex-wrap: wrap;
        position: relative;
    }
    #historydata>div{
        /* flex: 1; */
        width: 46%;
    }
  
</style>
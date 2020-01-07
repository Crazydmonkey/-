<template>
    <div id="realtime">
      <div  :key="index" v-for="(item,index) in realtimelist">
          <el-table
                :data="item"
                >
                <el-table-column align="center" :label="item[0].rsname">
                    <el-table-column
                        prop="value"
                        label="数值"
                        align="center"
                       >
                    </el-table-column>
                    <el-table-column
                        prop="level"
                        label="级别"
                        align="center"
                        >
                    </el-table-column>
                </el-table-column>
            </el-table>
      </div>
      <div class="piemap">
        <div id="myChart" class="pie"></div>     
        <div id="myChart1" class="pie"></div>     
        <div id="myChart2" class="pie"></div>     
        <div id="myChart3" class="pie"></div>     
        <div id="myChart4" class="pie"></div>     
      </div>
    </div>
</template>
<script>
import { mapState, mapActions } from 'vuex'

export default {
    data(){
        return {
            list:[
            [{number:26,type:"四级",rsname:"CO2"},{number:26,type:"四级",rsname:"CO2"},{number:26,type:"四级",rsname:"CO2"},{number:26,type:"四级",rsname:"CO2"}],
            [{number:26,type:"四级",rsname:"湿度"},{number:26,type:"四级",rsname:"湿度"},{number:26,type:"四级",rsname:"湿度"},{number:26,type:"四级",rsname:"湿度"}],
            [{number:26,type:"四级",rsname:"温度"},{number:26,type:"四级",rsname:"温度"},{number:26,type:"四级",rsname:"温度"},{number:26,type:"四级",rsname:"温度"}],
            [{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"}],
            [{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"}],
            [{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"}],
            [{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"}],
            [{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"},{number:26,type:"四级",rsname:"PM2.5"}]
            ]
        }
    },
    computed:{
        ...mapState("equipment",["realtimelist","tubiao"])
    },
    beforeMount(){
        // console.log(document.getElementsByTagName('table'),"ggg")
    },
    created(){
        
    },
    mounted(){
        this.findRealTimeEnvironment();
        setTimeout(() => {
            console.log(this.tubiao)
            this.drawLine("温度",["#3BA1FF","#F0F2F5"],this.tubiao[5].tValue,"myChart","°C");
        }, 1000);
         setTimeout(() => {
            console.log(this.tubiao)
            this.drawLine("湿度",["#69D389","#F0F2F5"],this.tubiao[1].hValue,"myChart1","%");
        }, 1000);
        setTimeout(() => {
            console.log(this.tubiao)
            this.drawLine("二氧化碳",["#FBDA55","#F0F2F5"],this.tubiao[0].cValue,"myChart2","");
        }, 1000);
        setTimeout(() => {
            console.log(this.tubiao)
            this.drawLine("PM2.5",["#3BA1FF","#F0F2F5"],this.tubiao[2].pValue,"myChart3","");
        }, 1000);
        setTimeout(() => {
            console.log(this.tubiao)
            this.drawLine("甲醛",["#69D389","#F0F2F5"],this.tubiao[4].fValue,"myChart4","");
        }, 1000);
        console.log(document.getElementsByTagName('table'))
    },
    methods:{
        ...mapActions("equipment",['findRealTimeEnvironment']),
        drawLine(name,colors,data,id,dawei){
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
                            formatter: '{b}\n{c}'+dawei // {b}:数据名； {c}：数据值； {d}：百分比
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
                            formatter: '{b}\n{c}'+dawei // {b}:数据名； {c}：数据值； {d}：百分比
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
                }
    }
}
</script>
<style scoped>
    #realtime{
        width: 100%;
        display: flex;
        justify-content: space-between;
        flex-direction: row;
        flex-wrap: wrap;
        position: relative;
    }
    #realtime>div{
        /* flex: 1; */
        width: 25%;
    }
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
</style>
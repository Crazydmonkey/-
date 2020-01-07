<template>
    <div id="details">
        <div class="header">
            <div class="title"><h1 style="color:white">综合信息处理大屏展示界面</h1></div>
            <div style="display:flex;width:450px" class="btns">
                <span>
                    <p>彩灯</p>
                    <el-switch
                    v-model="value1"
                    width=30
                    >
                    </el-switch>
                </span>
                 <span>
                    <p>窗户</p>
                    <el-switch
                    v-model="value2"
                    width=30
                    >
                    </el-switch>
                </span>
                 <span>
                    <p>风扇</p>
                    <el-switch
                    v-model="value3"
                    width=30
                    >
                    </el-switch>
                </span>
                 <span>
                    <p>加湿器</p>
                    <el-switch
                    v-model="value4"
                    width=30
                    >
                    </el-switch>
                </span>
                 <span>
                    <p>射灯</p>
                    <el-switch
                    v-model="value5"
                    width=30
                    >
                    </el-switch>
                </span>
                <span style="margin-top:1.5em">
                    <el-button type="primary" round @click="goBack" size="mini">返回</el-button>
                </span>
            </div>
            <div></div>
        </div>
        <div class="contentdata">
            <div style="width:300px;height:100%;display: flex;flex-direction: column;justify-content: space-around;">
                <div style="margin-left:.5em;height:50%;background:rgba(27, 27, 27, 0.247058823529412);opacity:0.8;border-radius:5px;display: flex;flex-direction: column;justify-content: space-around;">
                    <div id="one" style="height:60%;">

                    </div>
                    <div id="two" style="height:60%;">

                    </div>
                </div>
                <div class="block" style="margin-top:1em;margin-left:.5em;color:white;flex:1;background:rgba(27, 27, 27, 0.247058823529412);opacity:0.8;border-radius:5px">
                    <div class="radio" style="margin-top:1em;margin-left:1em">
                        告警推送:
                    </div>
                    <el-timeline  style="text-color:white;margin-top:1em">
                        <el-timeline-item
                        color="blue"
                        v-for="(activity, index) in activities"
                        :key="index"
                        >
                        <span style="color:white">{{activity.content}}</span><span style="color:white;margin-left:.5em">{{activity.timestamp}}</span>
                        </el-timeline-item>
                    </el-timeline>
                </div>
            </div>
            <div style="flex:1;display: flex;flex-direction: column;justify-content: space-around;">
                <div style="width:400px">系统通知</div>
                <div style="flex:1"></div>
            </div>
            <div style="width:400px;display: flex;flex-direction: column;justify-content: space-around;">
                <div style="height:50%">
                     <el-table
                        :data="tableData"
                        row-class-name="gg"
                        style="width: 100%;background:#eeeeee"
                        size="mini"
                        fit=false
                        max-height="190px">
                        <el-table-column
                            min-width="30px"
                            prop="date"
                            label="日期"
                            >
                        </el-table-column>
                        <el-table-column
                            prop="name"
                            label="姓名"
                            min-width="30px"
                            >
                        </el-table-column>
                        <el-table-column
                            prop="address"
                            label="地址">
                        </el-table-column>
                    </el-table>
                </div>
                <div style="height:500px" id="circle2"></div>
            </div>
        </div>
        
    </div>
</template>
<script>
import { option } from 'runjs';
export default {
    data(){
        return {
            value1:"",
            value2:"",
            value3:"",
            value4:"",
            value5:"",
            activities: [{
            content: '活动按期开始',
            timestamp: '2018-04-15'
            }, {
            content: '通过审核',
            timestamp: '2018-04-13'
            }, {
            content: '创建成功',
            timestamp: '2018-04-11'
            }],
            tableData: [{
            date: '2016-05-02',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1518 弄'
          }, {
            date: '2016-05-04',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1517 弄'
          }, {
            date: '2016-05-01',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1519 弄'
          }, {
            date: '2016-05-03',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1516 弄'
          }]
        }
    },
    mounted(){
        this.drawPie("one","温度","°C")
        this.drawPie("two","湿度","%")
        this.drawCircle();
    },
    methods:{
        goBack(){
            this.$router.go(-1)
        },
        drawPie(id,name1,danwei){
            let myChart = this.$echarts.init(document.getElementById(id))
           
            myChart.setOption({
                 xAxis: {
                        type: 'category',
                        // axisTick:{show:false},
                       data: ['11:29','12.05','12.11','12.13'],
                        boundaryGap: false,
 
                    },
                yAxis: {
                    type: 'value',
                    name: name1,
                    axisLabel: {
                        formatter: function (val) {
                            console.log(val)
                            return (val+danwei);
                        }
                    },
                },
                series: [{
                    name:name1,
                    data: [10, 20, 30, 5],
                    type: 'line',
                    areaStyle: {},
                    smooth:true
                }]
            
            })

        },
        drawCircle(){
            let myChart = this.$echarts.init(document.getElementById("circle2"))
            
            myChart.setOption({
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data:['直达','营销广告','搜索引擎','邮件营销','联盟广告','视频广告','百度','谷歌','必应','其他']
                },
                series: [
                    {
                        name:'访问来源',
                        type:'pie',
                        selectedMode: 'single',
                        radius: [0, '30%'],

                        label: {
                            normal: {
                                position: 'inner'
                            }
                        },
                        labelLine: {
                            normal: {
                                show: false
                            }
                        },
                        data:[
                            {value:335, name:'直达', selected:true},
                            {value:679, name:'营销广告'},
                            {value:1548, name:'搜索引擎'}
                        ]
                    },
                    {
                        name:'访问来源',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                                backgroundColor: '#eee',
                                borderColor: '#aaa',
                                borderWidth: 1,
                                borderRadius: 4,
                                // shadowBlur:3,
                                // shadowOffsetX: 2,
                                // shadowOffsetY: 2,
                                // shadowColor: '#999',
                                // padding: [0, 7],
                                rich: {
                                    a: {
                                        color: '#999',
                                        lineHeight: 10,
                                        align: 'center'
                                    },
                                    // abg: {
                                    //     backgroundColor: '#333',
                                    //     width: '100%',
                                    //     align: 'right',
                                    //     height: 22,
                                    //     borderRadius: [4, 4, 0, 0]
                                    // },
                                    hr: {
                                        borderColor: '#aaa',
                                        width: '40px',
                                        borderWidth: 0.5,
                                        height: "20px"
                                    },
                                    b: {
                                        fontSize: 12,
                                        lineHeight: 10
                                    },
                                    per: {
                                        color: '#eee',
                                        backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:335, name:'直达'},
                            {value:310, name:'邮件营销'},
                            {value:234, name:'联盟广告'},
                            {value:135, name:'视频广告'},
                            {value:1048, name:'百度'},
                            {value:251, name:'谷歌'},
                            {value:147, name:'必应'},
                            {value:102, name:'其他'}
                        ]
                    }
                ]
            });
        }
    }
}
</script>
<style scoped>
    #details{
        overflow: hidden;
        height: 100%;
        background: url("../../assets/images/u1.jpg");
        background-repeat: no-repeat;
        background-size: 100%;
        display: flex;
        flex-direction: column;
        justify-content: space-around;
    }
    .header{
        height: 100px;
        display: flex;
        justify-content: space-around;
    }
    .contentdata{
        flex: 1;
        display: flex;
        justify-content: space-around;
    }
    p,h1{
        color: aliceblue
    }
    p{
        font-size: 12px;
    }
    .btns>span{
        margin-left: 2em;
    }
    
</style>
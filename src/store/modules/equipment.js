import request from '@/utils/http/index'
import {post,post_array} from '@/utils/http/index'

const state = {
   realtimelist:[],
   tubiao:[],
   historylist:[]
}
const getters={

}
const mutations = {
   setList(state,data){
       state.realtimelist=data;
   },
   setTuBiao(state,data){
    state.tubiao=data;
    },
    setHistoryList(state,data){
        state.historylist=data;
    }
}
const actions = {
    async findRealTimeEnvironment(context,ids){
        let response = await request.get("/realtimeEnvironment")
        // 2. 分发
        response.data.forEach((item,index)=>{
            console.log(item[0],"dd")
            switch(index){
                case 0:
                    item.forEach((a,index)=>{
                        a.rsname="CO2";
                        a.value=a.cValue;
                        a.level=a.cLevel
                    })
                    break;
                case 1:
                    item.forEach((a,index)=>{
                        a.rsname="湿度";
                        a.value=a.hValue;
                        a.level=a.hLevel
                    })
                    break;
                case 2:
                    item.forEach((a,index)=>{
                        a.rsname="PM2.5";
                        a.value=a.pValue;
                        a.level=a.pLevel
                    })
                    break;
                case 3:
                    item.forEach((a,index)=>{
                        a.rsname="空气质量";
                        a.value=a.sValue;
                        a.level=a.sLevel

                    })
                    break;
                case 4:
                    item.forEach((a,index)=>{
                        a.rsname="甲醛";
                        a.value=a.fValue;
                        a.level=a.fLevel

                    }) 
                    break;
                case 5:
                    item.forEach((a,index)=>{
                        a.rsname="温度";
                        a.value=a.tValue;
                        a.level=a.tLevel

                    }) 
                   
                    break;
                case 6:
                    item.forEach((a,index)=>{
                        a.rsname="火光";
                        a.value=a.fireStatus;
                        a.level="一级"

                    }) 
                   
                    break;
                case 7:
                    item.forEach((a,index)=>{
                        a.rsname="烟雾";
                        a.value=a.sStatus;
                        a.level="二级"

                    }) 
                    break;
            }
            
        })
        console.log(response)
        var arr=[];
        response.data.forEach((item,index)=>{
            arr.push(item[0]);
        })
        context.commit("setList",response.data);
        context.commit("setTuBiao",arr);
        // 3. 返回结果
        return response;
    },

    async findAllHistory(context){
        // 1. ajax查询
        let response = await request.get("/category/findAll");
        // 2. 将查询结果更新到state中
        context.commit("refreshCategories",response.data);
    },
    // /facilities
//控制所有设备的开关操作
    async Updatedfacilities(context,data){
        // 1. ajax查询
        let response = await post_array("/facilities",data);
        // 2. 将查询结果更新到state中
        console.log(response)
        // context.commit("refreshCategories",response.data);
    },
    async findAllHistory22(context,data){
        let response=await request.get('/historyRecordMax')
        context.commit("setHistoryList",response.data);

        return response;
    },
    async addDevicesHandler(context,data){
        let response=await post_array('/addfacility',data)
        return response;
    },
}

export default {
    namespaced: true,
    state,
    mutations,
    actions,
    getters
}

  
import request from '@/utils/http/index'
import {post,post_array} from '@/utils/http/index'

const state = {
   alarmlist:[],
   total:10
}
const getters={

}
const mutations = {
   setAlarmlist(state,data){
       state.alarmlist=data;
   },
   setTotal(state,data){
    state.total=data;
    },
}
const actions = {
    async findAlarm(context,data){
        console.log(data,'aaaa')
        let response = await request.get("/warning/FindPage",{params:data})
        // console.log(response.data,"111111")
        // console.log(response.data.list,"111111")
        // console.log(response.data,"111111")
        context.commit('setAlarmlist',response.data.list)
        context.commit('setTotal',response.data.total)
        // 3. 返回结果
        return response;
    },
    async sureALarm(context,data){
        let response = await post_array("/warning/{id}",data)
        // console.log(response.data,"111111")
        // console.log(response.data.list,"111111")
        // console.log(response.data,"111111")
        context.dispatch('findAlarm',{
            pageNum:1,
            pageSize:5
        },)
        // 3. 返回结果
        return response;
    }
}

export default {
    namespaced: true,
    state,
    mutations,
    actions,
    getters
}

  
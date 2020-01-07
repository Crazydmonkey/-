import request from '@/utils/http/index'
import {post,post_array} from '@/utils/http/index'

const state = {
   eventslist:[],
   total:10
}
const getters={

}
const mutations = {
   setEventslist(state,data){
       state.eventslist=data;
   },
   setTotal(state,data){
    state.total=data;
    },
}
const actions = {
    async findEvents(context,data){
        console.log(data,'aaaa')
        let response = await request.get("/event/page",{params:data})
        
        // console.log(response.data,"111111")
        // console.log(response.data.list,"111111")
        // console.log(response.data,"111111")
        context.commit('setEventslist',response.data.list)
        context.commit('setTotal',response.data.total)
        // 3. 返回结果
        return response;
    },
    async findAllEvents(context,data){
        console.log(data,'aaaa')
        let response = await request.post("/event/all")
        // console.log(response.data,"111111")
        // console.log(response.data.list,"111111")
        // console.log(response.data,"111111")
        // context.commit('setEventslist',response.data.list)
        // context.commit('setTotal',response.data.total)
        // 3. 返回结果
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

  
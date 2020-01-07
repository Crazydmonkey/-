import axios from 'axios'

const state = {
  wheather:{}
}
const getters={

}
const mutations = {
   setWheather(state,data){
       state.wheather=data;
   },
}
const actions = {
    async findSevenDayWeather(context,data){
        await axios({
            method:'GET',
            url:"https://www.tianqiapi.com/api/?version=v1&appid=98995976&appsecret=Cyvw8QpP"
        }).then((res)=>{
            console.log(res.data,"data")
            context.commit('setWheather',res.data)
        })
    }
}

export default {
    namespaced: true,
    state,
    mutations,
    actions,
    getters
}

  
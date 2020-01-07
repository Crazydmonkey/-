import request, { myDelete } from '@/utils/http/index'
import {post,post_array} from '@/utils/http/index'
import getDyRoutes from '@/router/modules/dynamicMenu'
import {myDelete2} from '@/utils/http/index'
const state = {
   userlist:[],
   total1:10,
   total2:10,
   permislist:[],
   allsresource:[]
}
const getters={

}
const mutations = {
  setUserList(state,data){
      state.userlist=data;
  },
  setTotal1(state,data){
      state.total1=data;
  },
  setTotal2(state,data){
    state.total2=data;
  },
  setpermislist(state,data){
      state.permislist=data;
  },
  setAllResource(state,data){
    state.allsresource=data;
}
}
const actions = {
    async UpdateUserInfo(context,data){
        console.log(data,'aaaa');
        console.log(data.userMess,"yh信息");
        console.log(data.file,"文件信息");
        const formData = new FormData();
        formData.append('file', data.file);
        //let response = await post_array("/userMess",data)
        let response = await request.post("/userMess",formData,{
            headers:{'Content-type':'multipart/form-data'},
            params:data.userMess
        });
        console.log(response,"111111")
        // console.log(response.data.list,"111111")
        // console.log(response.data,"111111")
        // context.commit('setEventslist',response.data.list)
        // context.commit('setTotal',response.data.total)
        // 3. 返回结果
        return response;
    },
    async modifyUserRole(context,data){
        console.log(data,'bbb')
        let response = await post("/userRole",{id:data.id,role_name:data.role_name})
        context.dispatch("getUserMess",{pageNum:data.form.pageNum,pageSize:data.form.pageSize});
        return response;
    },
    async deleteUser(context,data){
        console.log(data.id,'aaaa')
        console.log(data.form,'aaaa')
        //var path = "/userMess/deleteByid/"+data
        let response = await myDelete2("/userMess/deleteByid",{id:data.id})
        //console.log(form.pageNum)
        context.dispatch("getUserMess",{pageNum:data.form.pageNum,pageSize:data.form.pageSize});
        return response;
    },
    async getUserMess(context,data){
        console.log(data,'aaaa')
        let response = await request.get("/userMess/byPage",{params:data})
        console.log(response,"111111")
        // console.log(response.data.list,"111111")
        // console.log(response.data,"111111")
        context.commit('setUserList',response.data.list)
        context.commit('setTotal1',response.data.total)
        // 3. 返回结果
        return response;
    },
    async findAllPermission(context,data){
        console.log(data,'aaaa')
        let response = await request.get("/permission")
        
        console.log(response,"111111")
        // console.log(response.data.list,"111111")
        // console.log(response.data,"111111")
        context.commit('setpermislist',response.data.list)
        // 3. 返回结果
        return response;
    },
    async findRoutes(context,data){
        let response=await getDyRoutes('超级管理员')
        console.log(response,"hhhhhhhh")
    },
    async findAllResource(context,data){
        let response=await request.get('/Allresource')
        console.log(response.data,"sssssssssssssssssss")
        var arr=[]
        response.data.map((item,index)=>{
            if(item.parentId!=null){
                arr.push(item)
            }
            // arr=brr;
        })
        context.commit('setAllResource',arr)
       
        return response;
    },
    async findZiYuan(context,data){
        let response=await request.get('/displayResource?role_name=' + data)
        return response;
    },
    async addPermissions(context,data){
        let response=await post_array('/addpermission',data)
        // context.dispatch('')
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

  
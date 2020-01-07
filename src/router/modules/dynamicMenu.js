// 动态路由
import request from '@/utils/http/index'
import Layout from '@/layout'
import { construct } from '@aximario/json-tree'

async function parseMenu(data) {
  const response = await request.get('/displayResource?role_name=' + data)
  console.log(response)
  

 response.data.forEach((item,index)=>{
      if(item.name=="设备监控"){
        item.path="/equipment"
      }else if(item.name=="告警数据"){
        item.path="/alarm"
      }else if(item.name=="事件管理"){
        item.path="/comevents"
      }else if(item.name=="资源管理"){
        item.path="/linkage"
      }else if(item.name=="管理员中心"){
        item.path="/managercentre"
      }
 })
 const routes = []
  console.log(response.data,'gg')
  response.data.forEach((item,index)=>{
    const route = {
            path: item.path,
            component: Layout,
            name:item.path.slice(1),
            redirect: item.subResource[0].path,
            alwaysShow: true,
            meta: { title: item.name, icon: null, affix: true },
            children: []
    }
    item.subResource.forEach((p)=>{
      
        const son_route = {
              path: p.path.split('/')[p.path.split('/').length-1],
              // component: () => import('@/pages'+p.route),
              component: function component(resolve) {
                require(['@/views/comprehensive' + p.path], resolve)
              },
              name: p.path.split('/')[p.path.split('/').length-1],
              meta: { title: p.name, affix: true }
            }
            route.children.push(son_route)
          
    }) 
    routes.push(route)
  })
  // routes.push({
  //   path: '/',
  //   component: Layout,
  //   redirect: '/dashboard',
  //   children: [
  //     {
  //       path: 'dashboard',
  //       component: () => import('@/views/dashboard/index'),
  //       name: 'Dashboard',
  //       meta: { title: '首页', icon: 'dashboard', affix: true ,roles:['超级管理员','管理员']}
  //     }
  //   ]
  // })
  return routes
}
// let routes = parseMenu();

export default parseMenu


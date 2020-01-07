import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/layout'

/* Router Modules */
import componentsRouter from './modules/components'
import chartsRouter from './modules/charts'
import tableRouter from './modules/table'
import nestedRouter from './modules/nested'

/**
 * Note: sub-menu only appear when route children.length >= 1
 * Detail see: https://panjiachen.github.io/vue-element-admin-site/guide/essentials/router-and-nav.html
 *
 * hidden: true                   if set true, item will not show in the sidebar(default is false)
 * alwaysShow: true               if set true, will always show the root menu
 *                                if not set alwaysShow, when item has more than one children route,
 *                                it will becomes nested mode, otherwise not show the root menu
 * redirect: noRedirect           if set noRedirect will no redirect in the breadcrumb
 * name:'router-name'             the name is used by <keep-alive> (must set!!!)
 * meta : {
    roles: ['admin','editor']    control the page roles (you can set multiple roles)
    title: 'title'               the name show in sidebar and breadcrumb (recommend set)
    icon: 'svg-name'             the icon show in the sidebar
    noCache: true                if set true, the page will no be cached(default is false)
    affix: true                  if set true, the tag will affix in the tags-view
    breadcrumb: false            if set false, the item will hidden in breadcrumb(default is true)
    activeMenu: '/example/list'  if set path, the sidebar will highlight the path you set
  }
 */

/**
 * constantRoutes
 * a base page that does not have permission requirements
 * all roles can be accessed
 */
export const constantRoutes = [
  {
    path: '/redirect',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '/redirect/:path*',
        component: () => import('@/views/redirect/index')
      }
    ]
  },
  {
    path: '/login',
    component: () => import('@/views/login/index'),
    hidden: true
  },
  {
    path: '/auth-redirect',
    component: () => import('@/views/login/auth-redirect'),
    hidden: true
  },
  {
    path: '/404',
    component: () => import('@/views/error-page/404'),
    hidden: true
  },
  {
    path: '/401',
    component: () => import('@/views/error-page/401'),
    hidden: true
  },
  {
    path: '/',
    component: Layout,
    redirect: '/dashboard',
    children: [
      {
        path: 'dashboard',
        component: () => import('@/views/dashboard/index'),
        name: 'Dashboard',
        meta: { title: '首页', icon: 'dashboard', affix: true ,roles:['超级管理员','管理员']}
      }
    ]
  },
  {
    path: '/showDetails',
    // component: Layout,
    // redirect: '/dashboard',
    component: () => import('@/views/comprehensive/showdetails'),
    hidden: true
  }
]

/**
 * asyncRoutes
 * the routes that need to be dynamically loaded based on user roles
 */
 export const asyncRoutes = [
  // {
  //   path: '/equipment',
  //   component: Layout,
  //   redirect: '/equipment/realtime',
  //   alwaysShow: true, // will always show the root menu
  //   name: 'equipment',
  //   meta: {
  //     title: '设备监控',
  //     icon: 'documentation',
  //     roles: ['admin', 'editor'] // you can set roles in root nav
  //   },
  //   children: [
  //     {
  //       path: 'realtime',
  //       component: () => import('@/views/comprehensive/equipment/realtime'),
  //       name: 'realtime',
  //       meta: {
  //         title: '实时数据',
  //         roles: ['admin'] // or you can only set roles in sub nav
  //       }
  //     },
  //     {
  //       path: 'historydata',
  //       component: () => import('@/views/comprehensive/equipment/historydata'),
  //       name: 'historydata',
  //       meta: {
  //         title: '历史数据'
  //         // if do not set roles, means: this page does not require permission
  //       }
  //     },
  //     {
  //       path: 'equipmentret',
  //       component: () => import('@/views/comprehensive/equipment/equipmentret'),
  //       name: 'equipmentret',
  //       meta: {
  //         title: '设备实时监控',
  //         roles: ['admin']
  //       }
  //     },
  //     {
  //       path: 'videomonitoring',
  //       component: () => import('@/views/comprehensive/equipment/videomonitoring'),
  //       name: 'videomonitoring',
  //       meta: {
  //         title: '视频监控图像',
  //         roles: ['admin']
  //       }
  //     }
  //   ]
  // },
  // {
  //   path: '/alarm',
  //   component: Layout,
  //   redirect: '/alarm/query',
  //   alwaysShow: true, // will always show the root menu
  //   name: 'alarm',
  //   meta: {
  //     title: '告警数据',
  //     icon: 'guide',
  //     roles: ['admin', 'editor'] // you can set roles in root nav
  //   },
  //   children: [
  //     {
  //       path: 'query',
  //       component: () => import('@/views/comprehensive/alarm/alarmquery'),
  //       name: 'query',
  //       meta: {
  //         title: '告警查询',
  //         roles: ['admin'] // or you can only set roles in sub nav
  //       }
  //     }
  //   ]
  // },
  // {
  //   path: '/comevents',
  //   component: Layout,
  //   redirect: '/comevents/eventquery',
  //   alwaysShow: true, // will always show the root menu
  //   name: 'comevents',
  //   meta: {
  //     title: '事件管理',
  //     icon: 'bug',
  //     roles: ['admin', 'editor'] // you can set roles in root nav
  //   },
  //   children: [
  //     {
  //       path: 'eventquery',
  //       component: () => import('@/views/comprehensive/comevents/eventquery'),
  //       name: 'eventquery',
  //       meta: {
  //         title: '事件查询',
  //         roles: ['admin'] // or you can only set roles in sub nav
  //       }
  //     }
  //   ]
  // },
  // {
  //   path: '/linkage',
  //   component: Layout,
  //   redirect: '/linkage/linkagequery',
  //   alwaysShow: true, // will always show the root menu
  //   name: 'linkage',
  //   meta: {
  //     title: '联动功能',
  //     icon: 'theme',
  //     roles: ['admin', 'editor'] // you can set roles in root nav
  //   },
  //   children: [
  //     {
  //       path: 'linkagemanage',
  //       component: () => import('@/views/comprehensive/linkage/linkagemanage'),
  //       name: 'linkagemanage',
  //       meta: {
  //         title: '联动管理'
  //         // if do not set roles, means: this page does not require permission
  //       }
  //     }
  //   ]
  // },
  // {
  //   path: '/managercentre',
  //   component: Layout,
  //   redirect: '/managercentre/roles',
  //   alwaysShow: true, // will always show the root menu
  //   name: 'managercentre',
  //   meta: {
  //     title: '管理员中心',
  //     icon: 'user',
  //     roles: ['admin'] // you can set roles in root nav
  //   },
  //   children: [
  //     {
  //       path: 'roles',
  //       component: () => import('@/views/comprehensive/managercentre/roles'),
  //       name: 'roles',
  //       meta: {
  //         title: '权限管理',
  //         roles: ['admin'] // or you can only set roles in sub nav
  //       }
  //     },
  //     {
  //       path: 'userset',
  //       component: () => import('@/views/comprehensive/managercentre/userset'),
  //       name: 'userset',
  //       meta: {
  //         title: '用户设置',
  //         roles: ['admin'] // or you can only set roles in sub nav
  //         // if do not set roles, means: this page does not require permission
  //       }
  //     }
  //   ]
  // },
  // // 404 page must be placed at the end !!!
  // { path: '*', redirect: '/404', hidden: true }
]

const createRouter = () => new Router({
  // mode: 'history', // require service support
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})

const router = createRouter()

// Detail see: https://github.com/vuejs/vue-router/issues/1234#issuecomment-357941465
export function resetRouter() {
  const newRouter = createRouter()
  router.matcher = newRouter.matcher // reset router
}

export default router

import request from '@/utils/http/index'
import {post_array} from '@/utils/http/index'
export function login(data) {
  return post_array(
    '/userlogin',
    data)
}

export function getInfo(token) {
  return request({
    url: '/info',
    method: 'get',
    params: { token }
  })
}

export function logout() {
  return request({
    url: '/loginOut',
    method: 'post'
  })
}

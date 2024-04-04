import request from '@/utils/request'

// 查询订单列表
export function listOrder(query) {
  return request({
    url: '/order/list',
    method: 'get',
    params: query
  })
}

// 查询订单详细
export function getOrder(id) {
  return request({
    url: '/order/' + id,
    method: 'get'
  })
}


export function shipOrder(data) {
  return request({
    url: '/order/ship',
    method: 'post',
    data: data
  })
}


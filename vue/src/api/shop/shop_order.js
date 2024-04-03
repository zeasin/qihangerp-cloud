import request from '@/utils/request'

// 查询店铺订单列表
export function listShopOrder(query) {
  return request({
    url: '/shop/order/list',
    method: 'get',
    params: query
  })
}

// 查询淘宝订单详细
export function getOrder(id) {
  return request({
    url: '/api/tao-api/order/' + id,
    method: 'get'
  })
}


// 接口拉取淘宝订单
export function pullOrder(data) {
  return request({
    url: '/api/tao-api/order/pull_order_tao',
    method: 'post',
    data: data
  })
}

export function pushOms(data) {
  return request({
    url: '/api/tao-api/order/push_oms',
    method: 'post',
    data: data
  })
}

import request from '@/utils/request'

// 查询店铺订单列表
export function listShopRefund(query) {
  return request({
    url: '/shop/refund/list',
    method: 'get',
    params: query
  })
}

// 接口拉取订单
export function pullRefund(data) {
  return request({
    url: '/shop/refund/pull_list',
    method: 'post',
    data: data
  })
}

// 拉取订单详情
export function pullOrderDetail(data) {
  return request({
    url: '/shop/order/pull_detail',
    method: 'post',
    data: data
  })
}

// 批量确认订单
export function orderConfirm(data) {
  return request({
    url: '/shop/order/confirm',
    method: 'post',
    data: data
  })
}

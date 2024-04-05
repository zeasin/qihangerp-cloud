import request from '@/utils/request'

// 查询列表
export function list(query) {
  return request({
    url: '/afterSale/exchange_list',
    method: 'get',
    params: query
  })
}

// 新增换货
export function addExchange(data) {
  return request({
    url: '/afterSale/exchange',
    method: 'post',
    data: data
  })
}

// 完成
export function shipAgainComplete(id) {
  return request({
    url: '/afterSale/shipAgain/complete/'+id,
    method: 'put'
  })
}



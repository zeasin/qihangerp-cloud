import request from '@/utils/request'

// 查询打包发货列表
export function listShipOrderWaybill(query) {
  return request({
    url: '/oms-api/ship/order_waybill_list',
    method: 'get',
    params: query
  })
}




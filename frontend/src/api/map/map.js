import request from '@/utils/request'

export const areaMapping = () => {
  return request({
    url: '/api/map/areaEntitys/0',
    method: 'get',
    loading: true
  })
}

export const globalMapping = () => {
  return request({
    url: '/api/map/globalEntitys/0',
    method: 'get',
    loading: true
  })
}

export function geoJson(areaCode) {
  return request({
    url: '/geo/' + areaCode + '_full.json',
    method: 'get',
    loading: true
  })
}

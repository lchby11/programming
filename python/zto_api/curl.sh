
- dao_wuliutrackonline模块预约物流， 目前请求的是中通的测试环境
  curl -x 10.198.11.118:8080 'http://116.228.70.118:9001/zto/api_utf8/commonOrder' -X POST -d  'company_id=PAIPAIWANG&data_digest=305hsnITQAmqw7xtonFEAQ%3D%3D&msg_type=CREATE&data=%7B%22orderSum%22%3A2200%2C%22partnerCode%22%3A%2278043%22%2C%22receiver%22%3A%7B%22address%22%3A%22%E4%B8%80%E7%B1%B3%E5%85%AD%E6%83%85%E4%BE%A3%E7%A0%B4%E5%9D%8F%22%2C%22city%22%3A%22%E5%8C%97%E4%BA%AC%E5%B8%82%22%2C%22county%22%3A%22%E8%A5%BF%E5%9F%8E%E5%8C%BA%22%2C%22mobile%22%3A%2215632485697%22%2C%22name%22%3A%22%E6%9C%BA%E7%81%B5%22%2C%22phone%22%3A%22%22%2C%22prov%22%3A%22%E5%8C%97%E4%BA%AC%22%2C%22zipcode%22%3A%22875319%22%7D%2C%22sender%22%3A%7B%22address%22%3A%22yasdfdg%22%2C%22city%22%3A%22%E5%8C%97%E4%BA%AC%E5%B8%82%22%2C%22county%22%3A%22%E5%BB%B6%E5%BA%86%E5%8E%BF%22%2C%22id%22%3A2458932725%2C%22mobile%22%3A%2212345678912%22%2C%22name%22%3A%22ewarr%22%2C%22phone%22%3A%22%22%2C%22prov%22%3A%22%E5%8C%97%E4%BA%AC%22%2C%22zipcode%22%3A%22%22%7D%2C%22starttime%22%3A%222015-07-13%2017%3A05%3A25%22%2C%22tradeId%22%3A%222201195901201507130606149313%22%2C%22type%22%3A%221%22%7D' -H "Accept-Charset:UTF-8" -H 'connection:Keep-Alive' -H 'Content-Type:application/x-www-form-urlencoded' -H 'accept:*/*' | python -m json.tool
  curl  'http://116.228.70.118:9001/zto/api_utf8/commonOrder' -X POST -d  'company_id=PAIPAIWANG&data_digest=305hsnITQAmqw7xtonFEAQ%3D%3D&msg_type=CREATE&data=%7B%22orderSum%22%3A2200%2C%22partnerCode%22%3A%2278043%22%2C%22receiver%22%3A%7B%22address%22%3A%22%E4%B8%80%E7%B1%B3%E5%85%AD%E6%83%85%E4%BE%A3%E7%A0%B4%E5%9D%8F%22%2C%22city%22%3A%22%E5%8C%97%E4%BA%AC%E5%B8%82%22%2C%22county%22%3A%22%E8%A5%BF%E5%9F%8E%E5%8C%BA%22%2C%22mobile%22%3A%2215632485697%22%2C%22name%22%3A%22%E6%9C%BA%E7%81%B5%22%2C%22phone%22%3A%22%22%2C%22prov%22%3A%22%E5%8C%97%E4%BA%AC%22%2C%22zipcode%22%3A%22875319%22%7D%2C%22sender%22%3A%7B%22address%22%3A%22yasdfdg%22%2C%22city%22%3A%22%E5%8C%97%E4%BA%AC%E5%B8%82%22%2C%22county%22%3A%22%E5%BB%B6%E5%BA%86%E5%8E%BF%22%2C%22id%22%3A2458932725%2C%22mobile%22%3A%2212345678912%22%2C%22name%22%3A%22ewarr%22%2C%22phone%22%3A%22%22%2C%22prov%22%3A%22%E5%8C%97%E4%BA%AC%22%2C%22zipcode%22%3A%22%22%7D%2C%22starttime%22%3A%222015-07-13%2017%3A05%3A25%22%2C%22tradeId%22%3A%222201195901201507130606149313%22%2C%22type%22%3A%221%22%7D' -H "Accept-Charset:UTF-8" -H 'connection:Keep-Alive' -H 'Content-Type:application/x-www-form-urlencoded' -H 'accept:*/*'

  注意由于里面涉及签名，所以必须原样请求，可以放到shell脚本中，
  其中， -x 指定代理, 在本地请求必须去掉，在gamma和idc机器上必须加上
       -X 指定POST请求， -d指定body， —H指定头部，python -m json.tool可以选择格式化数据， gamma环境的python没有json模块，去掉格式化部分

- dao_wuliutrackonline  拉取物流详情， 请求的是中通线上环境
  curl -x 10.198.11.118:8080 'http://japi.zto.cn/zto/api_utf8/traceInterface' -X POST -d  'company_id=PAIPAIWANG&data_digest=QN%2BNQSdp2nNyMCgm8J7ZYw%3D%3D&msg_type=TRACES&data=%5B%22778542230628%22%5D' -H "Accept-Charset:UTF-8" -H 'connection:Keep-Alive' -H 'Content-Type:application/x-www-form-urlencoded' -H 'accept:*/*' | python -m json.tool
  curl  'http://japi.zto.cn/zto/api_utf8/traceInterface' -X POST -d  "company_id=PAIPAIWANG&data_digest=QN%2BNQSdp2nNyMCgm8J7ZYw%3D%3D&msg_type=TRACES&data=%5B%22778542230628%22%5D" -H "Accept-Charset:UTF-8" -H 'connection:Keep-Alive' -H 'Content-Type:application/x-www-form-urlencoded' -H 'accept:*/*' 
  解释同上

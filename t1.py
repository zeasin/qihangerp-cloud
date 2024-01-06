import requests
from lxml import etree

# url = f'https://tophub.today/n/yjvQDpjobg'
url = f'https://pifa.pinduoduo.com/'
# * *请求**header

header = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                        'Chrome/112.0.0.0 Safari/537.36',
          'cookie': '__yjs_duid=1_b1ac9fc87dce4de5552d7cf0924fb4981686228951567; u=b0281776fd75d3eefeb3562b2a5e6534; '
                    '__bid_n=1889b14047a51b2b754207; '
                    'FPTOKEN=qU+ieOMqkW6y6DlsOZ+D/T'
                    '+SCY6yS3dYvGXKibFoGBijKuUuSbc3ACFDzjlcC18wuDjNLENrw4ktAFAqnl3Akg492Lr4fbvNrkdJ'
                    '/ZQrluIdklkNDAKYnPrpcbe2H9y7AtX+/b+FCTkSTNv5+qB3OtQQ3BXXsEen72oEoAfK+H6'
                    '/u6ltZPdyHttJBJiXEDDS3EiUVt+S2w+8ozXENWbNt/AHeCgNUMmdeDinAKCR+nQSGK/twOoTLOU/nxBeSAazg'
                    '+wu5K8ooRmW00Bk6XAqC4Cb829XR3UinZHRsJxt7q9biKzYQh'
                    '+Yu5s6EHypKwpA6RPtVAC1axxbxza0l5LJ5hX8IxJXDaQ6srFoEzQ92jM0rmDynp+gT'
                    '+3qNfEtB2PjkURvmRghGUn8wOcUUKPOqg==|mfg5DyAulnBuIm/fNO5JCrEm9g5yXrV1etiaV0jqQEw=|10'
                    '|dcfdbf664758c47995de31b90def5ca5; PHPSESSID=18397defd82b1b3ef009662dc77fe210; '
                    'Hm_lvt_de3f6fd28ec4ac19170f18e2a8777593=1686322028,1686360205; '
                    'history=cid%3A2455%2Ccid%3A2476%2Ccid%3A5474%2Ccid%3A5475%2Ccid%3A2814%2Cbid%3A3667; '
                    'Hm_lpvt_de3f6fd28ec4ac19170f18e2a8777593=1686360427'}

response = requests.get(url, headers=header)
print(response.text)
html = etree.HTML(response.text)  # 将爬取到的网页信息使用HTML类进行初始化，目的是为了构造一个XPath解析对象
word = html.xpath('//div[@class="hotword-container"]/a/text()')

for item in word:
    print(item)
# tables = html.xpath('//table')
#
# # trs = tables[0].xpath("//tr//td/text()")
# trs = tables[0].xpath(".//tr")
# # print(trs)
# # trs = tables[0].xpath("./tr")
# i = 0
# for item in trs:
#     i = i + 1
#     tds = item.xpath("./td")
#     index = tds[0].text
#     img = tds[1].xpath("./img/@src")
#     href = tds[2].xpath("./a/@href")
#     title = tds[2].xpath("./a/text()")
#     remark = tds[3].text
#     print(index)
#     print(img[0])
#     print(href[0])
#     print(title[0])
#     print(remark)
#     # print(tds)
#     # for it in tds:
#     #     print(it.text)
#     print('---------------------')
#     print(i)
#     # for it in tds:
#     #     print(it.text)
# # print(trs)

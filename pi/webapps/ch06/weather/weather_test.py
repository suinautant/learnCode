from urllib.parse import urlencode, unquote
import requests
import json


# url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService/getUltraSrtFcst'
url = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getUltraSrtNcst"
queryParams = '?' + urlencode(
    {
        # 'ServiceKey': 'JVI5NG/cU1msHHkSTDENSfdq+jqS89iR2QmRQ8mlMdq1aL8ISEXtsgOwNFaxPfTctADnYs3j++Za4EJb96smrg==',
        'ServiceKey': unquote('JVI5NG%2FcU1msHHkSTDENSfdq%2BjqS89iR2QmRQ8mlMdq1aL8ISEXtsgOwNFaxPfTctADnYs3j%2B%2BZa4EJb96smrg%3D%3D'),
        'pageNo': 1,
        'numOfRows': '10',
        'dataType': 'JSON',
        'base_date': '20210615',
        'base_time': '0630',
        'nx': 97,
        'ny': 76
    }
)


response = requests.get(url + queryParams)
print("==== response json data start ====")
print(response)
print("==== response json data start ====")
print()

r_dict = json.loads(response.text)
r_response = r_dict.get("response")
r_body = r_response.get("body")
r_items = r_body.get("items")
r_item = r_items.get("item")

result = {}
result_status = {}

for item in r_item:
    result = item
    result_status.setdefault(result.get("category"), result.get("obsrValue"))

print("부산광역시 북구 덕천동 초단기 동네예보 결과입니다.")
print("==== 날짜 : "+result.get("baseDate")[:-4]+"년"+result.get("baseDate")[
      4:-2]+"월"+result.get("baseDate")[6:]+"월"+"==== 시각 : " + result.get("baseTime")[:-2]+"시")
print("강우형태 : "+result_status["PTY"])
print("습도 : "+result_status["REH"]+" %")
print("1시간 강수량 : " + result_status["RN1"]+" mm")
print("기온 : "+result_status["T1H"] + " ℃")
print("동서바람성분 : " + result_status["UUU"]+" m/s")
print("남북바람성분 : " + result_status["VVV"]+" m/s")
print("풍향 : "+result_status["VEC"])
print("풍속 : "+result_status["WSD"])

# result = {}
# for item in r_item:
#     if(item.get("category") == "PTY"):
#         result = item
#         break
# print("=== response dic(python object) data start ===")
# print(result)
# print("=== response dic(python object) end ===")
# print()

import requests
from bs4 import BeautifulSoup
import re

# for n in range(1, 31):
req = requests.get(
    # "https://movie.naver.com/movie/point/af/list.nhn?&page="+str(n))
    "https://movie.naver.com/movie/point/af/list.nhn?&page=1")
html = req.text
soup = BeautifulSoup(html, "html.parser")
titles = soup.select('.movie')
points = soup.select('td.title > div > em')
reviews = soup.select('td.title')

movie_titles = []
movie_points = []
movie_reviews = []

for dom in titles:
    movie_titles.append(dom.text)

for dom in points:
    movie_points.append(dom.text)

for dom in reviews:
    content = dom.contents[6]
    content = re.sub("신고", "", content)
    content = re.sub("[\n\t]", "", content)
    movie_reviews.append(content)


commentLength = len(movie_titles)
for i in range(commentLength):
    heartPoint = ""
    for j in range(int(movie_points[i])):
        heartPoint += "♥"
    print("-------------------------\n")
    print("제목 : " + movie_titles[i] + "\n" +
          "별점 : " + "(" + movie_points[i] + ") " + heartPoint + "\n" +
          "리뷰 : " + movie_reviews[i] + "\n")

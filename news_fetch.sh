!# /opt/conda/bin/python

import requests
from bs4 import BeautifulSoup
content= requests.get('https://www.usatoday.com/').text
soup=BeautifulSoup(content)
news=[t.text for t in soup.find_all('a',{'class':'gnt_m_th_a'})]
f=open('news.txt', 'a')
f.write('\n'.join(news))
f.close()
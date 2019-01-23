import pymysql
import re

f = open('message.txt')
db = pymysql.connect(host='localhost', user='root',
                     password='123456', db='Conch_music',
                     charset='utf8')
cursor = db.cursor()

for line in f:
    L = re.split(r',', line)
    sql = "insert into music_list \
          (music_name,music_path,lrc_path,singer,length_time,music_pic) \
          values('%s','%s','%s','%s','%s','%s')" % \
          (L[0], L[1], L[2], L[3], L[4], L[5])
    try:
        cursor.execute(sql)
        db.commit()
        print('ok')
    except Exception as e:
        db.rollback()
        print(e)

f.close()

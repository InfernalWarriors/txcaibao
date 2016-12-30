#!/usr/bin/python
# -*- coding: UTF-8 -*-

import MySQLdb

# 打开数据库连接
db = MySQLdb.connect("localhost","root","","txcaibao",charset='utf8')

# 使用cursor()方法获取操作游标 
cursor = db.cursor()

# SQL 查询语句
sql = "SELECT * FROM tx_stock limit 0,1"
try:
   # 执行SQL语句
   cursor.execute(sql)
   # 获取所有记录列表
   results = cursor.fetchall()
   for row in results:
      id = row[0]
      code = row[1]
      name = row[2]
      
      # 打印结果
      print name
except:
   print "Error: unable to fecth data"

# 关闭数据库连接
db.close()
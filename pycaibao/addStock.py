#!/usr/bin/python
# -*- coding: UTF-8 -*-
import tushare as ts


stockbasic=ts.get_stock_basics()

#for stock in stockbasic['code']:
#    print stock
codes=stockbasic['name'].keys()    

sql="insert into tx_stock(code ,name,industry,area) values "
 
for code in codes:
    sql+='("'+code+'","'+stockbasic['name'][code]+'","'+stockbasic['industry'][code]+'","'+stockbasic['area'][code]+'"),'
    

sqlstr=len(sql)-1;
truesql=sql[0:sqlstr]

print truesql
# 打开文件
fo = open("test.txt", "w")

fo.write( truesql )

# 关闭文件
fo.close()
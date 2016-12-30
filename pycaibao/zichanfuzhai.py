#!/usr/bin/python
# -*- coding: utf-8 -*-
from dataapi import Client
import MySQLdb



if __name__ == "__main__":
    
    


    # 打开数据库连接
    db = MySQLdb.connect("localhost","root","","txcaibao",charset='utf8')

    # 使用cursor()方法获取操作游标 
    cursor = db.cursor()

    # SQL 查询语句
    sql = "SELECT * FROM tx_stock"
    
    try:
        client = Client()
        client.init('8ef2a3e44ded4f3d2b14ea71449558fcb3cce7857ef124518936000c766537fa')
        # 执行SQL语句
        cursor.execute(sql)
        # 获取所有记录列表
        results = cursor.fetchall()
        db.close()
        for row in results:
            
            code = row[1]
            fo = open("./new/zichan/"+code+".json", "w")
            #资产负债表
            url='/api/fundamental/getFdmtBS.json?ticker='+code+'&secID=&beginDate=&endDate=&publishDateBegin=&publishDateEnd=&reportType=&field='
            #现金流量表
            #url='/api/fundamental/getFdmtCF.json?ticker='+code+'&secID=&beginDate=&endDate=&publishDateBegin=&publishDateEnd=&reportType=&field='
            #利润表
            #url='/api/fundamental/getFdmtIS.json?ticker='+code+'&secID=&beginDate=&endDate=&publishDateBegin=&publishDateEnd=&reportType=&field='
            code1, result = client.getData(url)
            
            fo.write(result)
            fo.close()
        
        
        
        
    except Exception, e:
        #traceback.print_exc()
        raise e
#!/usr/bin/python
# -*- coding: UTF-8 -*-

import MySQLdb

class DB:
    host="localhost"
    user="root"
    password=""
    dbname="txcaibao"
    db=0
    
    def __init__(self):
        self.db=MySQLdb.connect(self.host,self.user,self.password,self.dbname)
    def getCursor(self):
        return self.db.cursor();
    def close(self):
        return self.db.close();
        
#!/usr/bin/python
import demjson

json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';



fo = open("./lirun/000001.json", "r")

json = fo.read(-1)

text = demjson.decode(json)
print  text
#!/usr/bin/env lua

-- Import stuff like in README
myLogger=require('logger')()
-- penlight - https://stevedonovan.github.io/Penlight/api/index.html
i=require('pl.import_into')().pretty.write

myLogger:setLevel('DEBUG') -- makes only error / fatal messages appended
myLogger:debug('started logging stuff')
myLogger:info('this is just an info message')

-- print("test.lua: setting level to ERROR")
myLogger:setLevel('ERROR') -- makes only error / fatal messages appended
myLogger:debug('this debug message should not be printed')
myLogger:info('another unprinted info message')

#!/usr/bin/env coffee

arDrone = require 'ar-drone'
client = arDrone.createClient ip: '192.168.1.222'
client.createRepl()

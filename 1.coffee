#!/usr/bin/env coffee
#
# wARNING: for outside use only, this one goes high

arDrone = require "ar-drone"
client = arDrone.createClient ip: "192.168.1.222"

client.takeoff()

client.up 1

client.after 11000, ->
    @animate 'flipLeft', 3000
    @up 0
  .after 3000, ->
    @animate 'flipAhead', 5000
  .after 3000, ->
    @animate 'flipBehind', 5000
  .after 2000, ->
    @stop()
    @land()

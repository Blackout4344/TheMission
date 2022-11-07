extends Node

var win = false
var Boss = false
var smtn = false
var readyUP2 = false
var readyUP = false
var something = true
var doYourThing = false
var groundShake = false
var currentCam = true
var camera = null
var health = 36
var boss2Health = 30
var boss3Health = 38
var deathSoundPlayed = false
var playerPosition = Vector2(0,0)
var playerFirstSpawn = true
var spawn_point = Vector2(-955,-1345)
func update_spawn(new_point):
 spawn_point = new_point

#Vector2(3151,-17001)
#Vector2(-955,-1345)

extends Node


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

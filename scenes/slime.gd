extends CharacterBody2D

@export var speed = 50
var player_chase = false
var player = null

func _physics_process(delta):
	if player_chase == true:
		position += (player.position - position) / speed

func _on_detection_area_body_entered(body):#
	print("Entered slime detection zone.")
	player = body
	player_chase = true

func _on_detection_area_body_exited(body):
	print("Left slime detection zone.")
	player = null
	player_chase = false

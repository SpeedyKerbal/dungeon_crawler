extends Area2D

@export var speed = 20
var player_possition
var target_possition

@onready var attack_area: Area2D = $attackArea
@onready var player = %Player

func _physics_process(delta: float) -> void:
	player_possition = player.position
	target_possition = (player_possition - position).normalized() 
	
	if position.distance_to(player_possition) > 3 and attack_area.body_entered:
		position += target_possition * speed * delta

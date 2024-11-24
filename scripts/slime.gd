extends Area2D

const SPEED = 50

var player_location:int = 0

@onready var player = $"../Player"
@onready var sprite = $Sprite2D
@onready var collision_shape = $CollisionShape2D
@onready var attack_area = $attackArea
@onready var collision_shape_2 = $attackArea/CollisionShape2D2

func _physics_process(delta):
	player_location = get_node("../Player").global_possition

func _on_attack_area_body_entered(body):
	

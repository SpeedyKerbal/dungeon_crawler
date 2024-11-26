extends CharacterBody2D

var health: int = 3

@export var speed: float = 50.0
@onready var animated_sprite = $AnimatedSprite2D
@onready var hitbox = $hitbox
@onready var slime = $"../Slime"

func _physics_process(_delta):
	var direction_x = Input.get_axis("left", "right")
	var direction_y = Input.get_axis("up", "down")
	
	if direction_x:
		velocity.x = direction_x * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	
	if direction_y:
		velocity.y = direction_y * speed
	else:
		velocity.y = move_toward(velocity.x, 0, speed)
	
	move_and_slide()

func _on_hitbox_body_entered(slime):
	health -= 1
	print("Player has lost 1 health")
	print("health = ", health)

extends Area2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var collision_shape = $CollisionShape2D

func _physics_process(_delta):
	if body_entered and Input.is_action_just_pressed("interact"):
		animated_sprite.play("open")
		# Loot_drop()

extends Node2D
const speed = 60 #constant
var direction =  1  #negative, opposite direction (left) 
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $animatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $RayCastLeft.is_colliding():
		direction = 1
		$animatedSprite2D.flip_h = false
	if $RayCastRight.is_colliding():
		direction = -1
		$animatedSprite2D.flip_h = true
	
	position.x += direction * speed * delta

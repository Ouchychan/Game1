extends Area2D
@onready var game_manager = %GameManager 
#good practice, unique(%), but can only access through same scene
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()
	animation_player.play("pickup")

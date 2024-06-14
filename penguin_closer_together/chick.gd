extends CharacterBody2D

const SPEED = 30
var player_chase = false
var player = null

func _physics_process(delta: float) -> void:
	if player_chase and player:
		var direction = (player.position - position).normalized()
		position += direction * SPEED * delta
		
		# Flip sprite based on movement direction
		$AnimatedSprite2D.flip_h = (direction.x < 0)
'''
func _physics_process(delta: float) -> void:
	if player_chase:
		position += (player.position - position)/SPEED
		if (player.position.x - position.x) < 0:
			$AnimatedSprite2D.flip_h = true
		else:
			$AnimatedSprite2D.flip_h = false

func _on_area_2d_body_entered(body):
	player = body
	player_chase = true

func _on_area_2d_body_exited(body):
	player = null
	player_chase = false
'''


'''
var dir: Vector2
var player_postion
var target_postion
@onready var player = get_node("%CharacterBody2D")
#get_parent().get_parent().get_node("CharacterBody2D")
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	handle_animation()
	player_postion = player.position
	target_postion = (player_postion - position).normalized()
	if position.distance_to(player_postion) > 3:
		move_and_collide(target_postion * SPEED)
		look_at(player_postion)

func handle_animation():
	var animation_sprite = $AnimatedSprite2D
	animation_sprite.play("fly")
	if dir.x == -1:
		animation_sprite.flip_h = true
	elif dir.x == 1:
		animation_sprite.flip_h = false	
'''




'''
var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction:
		self.velocity = direction * SPEED
	else:
		self.velocity = Vector2.ZERO
		
	move_and_slide()
'''
	





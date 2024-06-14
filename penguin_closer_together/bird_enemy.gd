extends CharacterBody2D


const SPEED = 10
var dir: Vector2
#var reduce_health = 5
var is_bird_chase: bool
var player: CharacterBody2D

func _ready():
	is_bird_chase = true

func _process(delta):
	move(delta)
	#update_health()
	handle_animation()

func move(delta):
	if is_bird_chase:
		player = Global.playerBody
		velocity = position.direction_to(player.position) * SPEED
		dir.x = abs(velocity.x) / velocity.x
	elif !is_bird_chase:
		velocity += dir * SPEED * delta
	move_and_slide()

func _on_timer_timeout():
	$Timer.wait_time = choose([0.5, 0.8])
	if !is_bird_chase:
		dir = choose([Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN])
		print(dir)
	
func handle_animation():
	var animation_sprite = $AnimatedSprite2D
	animation_sprite.play("fly")
	if dir.x == -1:
		animation_sprite.flip_h = true
	elif dir.x == 1:
		animation_sprite.flip_h = false


func choose(array):
	array.shuffle()
	return array.front()
'''

'''
func enemy():
	pass
	
	
'''
func _on_detection_area_body_shape_entered(body):
	Global.current_health -= reduce_health
	
func update_health():
	Global.previous_health = Global.current_health
	if Global.current_health < Global.max_health:
		Global.max_health = Global.current_health
	Global.current_health = 0
'''

	

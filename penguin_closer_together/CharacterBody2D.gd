extends CharacterBody2D


const SPEED = 50
#const JUMP_VELOCITY = -400.0
'''
var enemy_attack_range = false
var enemy_attack_cooldown = true
var player_alive = true
'''

var health = 100

func _ready():
	Global.playerBody = self

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction:
		self.velocity = direction * SPEED * delta
	else:
		self.velocity = Vector2.ZERO
	#enemy_attack()
	move_and_slide()
	
	'''
	if health <= 0:
		player_alive = false
		health = 0
		print("Bye")
		self.queue_free()
	'''

'''
func update_heath():
	var healthbar = $healthbar
	healthbar.value = health

func player():
	pass

func _on_area_2d_body_entered(body):
	if body.has_method("enemy"):
		enemy_attack_range = true


func _on_area_2d_body_exited(body):
	if body.has_method("enemy"):
		enemy_attack_range = false

func  enemy_attack():
	if enemy_attack_range:
		health -= 10
		
		print(health)
'''


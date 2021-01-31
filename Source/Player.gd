extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 20
const ACC= 50
const SPEED = 200
const JUMP_HEIGHT = 500
var  motion = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	
	
	
	motion.y += GRAVITY
	var friction = false
	if (Input.is_action_pressed("ui_right")):
		
		motion.x = min(motion.x+ACC,SPEED)
		$Sprite.flip_h = false
		$Sprite.play("Run")
		
	elif (Input.is_action_pressed("ui_left")):
		motion.x = max(motion.x-ACC, -SPEED)
		$Sprite.flip_h = true
		$Sprite.play("Run")
	else:
		
		$Sprite.play("Idle")
		friction = true
		
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = -JUMP_HEIGHT
		if friction:
			motion.x = lerp(motion.x,0,0.2)
	else:
		if motion.y < 0:
			$Sprite.play("Jump")
			pass
		else:
			$Sprite.play("Fall")
			pass
		if friction:
			motion.x = lerp(motion.x,0,0.05)
	if (Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("ui_left")):
		$cimen.play()
	if (Input.is_action_just_pressed("ui_up")):
		$ziplama.play()
	motion = move_and_slide(motion,UP);
	pass





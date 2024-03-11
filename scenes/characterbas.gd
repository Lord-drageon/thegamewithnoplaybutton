extends CharacterBody3D

var moveforthdur:=0.3333
var moveforthtime:=0.0
const SPEED = 2.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	if(moveforthtime>0.0):
		var spd=Vector3.FORWARD;
		var direction = (transform.basis * spd).normalized()
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
		moveforthtime-=delta;
	else:
		velocity.x=0.0
		velocity.z=0.0
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.

	move_and_slide()


func _on_obj_tools_player_forward():
	moveforthtime=moveforthdur;
	pass # Replace with function body.


func _on_obj_tools_cam_move(direction, amount):
	if(direction==0):
		rotate(Vector3.UP, -1*amount)
	if(direction==2):
		rotate(Vector3.UP,amount)
	if(direction==1):
		$pCam.rotate_x(amount)
	if(direction==3):
		$pCam.rotate_x(-1*amount)
	pass # Replace with function body.

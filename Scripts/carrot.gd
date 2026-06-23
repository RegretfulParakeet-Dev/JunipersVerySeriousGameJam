extends Area2D

@export var speed: int = Global.carrotSpeed
@export var steering_force = 20.0

var velocity = Vector2()
var acceleration = Vector2()
var target:Node2D


func start(_transform, _target):
	global_transform = _transform
	rotation += randf_range(-0.09, 0.09)
	velocity = transform.x * speed
	target = _target

func _physics_process(delta):
	acceleration += steer()
	velocity += acceleration * delta
	velocity = velocity.limit_length(speed)
	position += velocity * delta
	rotation = velocity.angle()

func steer():
	var steering = Vector2()
	target = get_tree().get_nodes_in_group("Chomper")[0]
	var idealVelocity = (target.position - position).normalized() * speed
	steering = (idealVelocity - velocity).normalized() * steering_force
	return steering
	
	
func _on_body_entered(body: CharacterBody2D) -> void:
	if body.name == "Chompers":
		queue_free()

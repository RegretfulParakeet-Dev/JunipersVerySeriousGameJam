extends Node2D

@export var carrot_scene: PackedScene
@onready var carrottimer = $CarrotFirstTimer
@onready var carrot_spawn1 = $CarrotSpawn1
@onready var carrot_spawn2 = $CarrotSpawn2
@onready var carrot_spawn3 = $CarrotSpawn3
@onready var carrot_spawn4 = $CarrotSpawn4
@onready var carrot_spawn5 = $CarrotSpawn5
@onready var carrot_spawn6 = $CarrotSpawn6
@onready var carrot_spawn7 = $CarrotSpawn7
@onready var carrot_spawn8 = $CarrotSpawn8
@onready var carrot_spawn9 = $CarrotSpawn9
@onready var carrot_spawn10 = $CarrotSpawn10

const carrot_scen = preload("res://Scenes/carrot.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	carrottimer.timeout.connect(_on_timeout)
	configure_and_start_timer()

func configure_and_start_timer():
	carrottimer.wait_time = randf_range(1.0, 3.0)
	carrottimer.start()

func _on_timeout():
	spawn_carrot()

func spawn_carrot():
	@warning_ignore("narrowing_conversion")
	var spawnrandomizer: int = randf_range(1,10)
	print(spawnrandomizer)
	
	if spawnrandomizer == 1:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot1 = carrot_scene.instantiate()
		get_parent().add_child(carrot1)
		carrot1.global_position = carrot_spawn1.global_position
	
	if spawnrandomizer == 2:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot2 = carrot_scene.instantiate()
		add_child(carrot2)
		carrot2.global_position = carrot_spawn2.global_position
	
	if spawnrandomizer == 3:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot3 = carrot_scene.instantiate()
		add_child(carrot3)
		carrot3.global_position = carrot_spawn3.global_position
	
	if spawnrandomizer == 4:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot4 = carrot_scene.instantiate()
		add_child(carrot4)
		carrot4.global_position = carrot_spawn4.global_position

	if spawnrandomizer == 5:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot5 = carrot_scene.instantiate()
		add_child(carrot5)
		carrot5.global_position = carrot_spawn5.global_position

	if spawnrandomizer == 6:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot6 = carrot_scene.instantiate()
		add_child(carrot6)
		carrot6.global_position = carrot_spawn6.global_position

	if spawnrandomizer == 7:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot7 = carrot_scene.instantiate()
		add_child(carrot7)
		carrot7.global_position = carrot_spawn7.global_position

	if spawnrandomizer == 8:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot8 = carrot_scene.instantiate()
		add_child(carrot8)
		carrot8.global_position = carrot_spawn8.global_position

	if spawnrandomizer == 9:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot9 = carrot_scene.instantiate()
		add_child(carrot9)
		carrot9.global_position = carrot_spawn9.global_position

	if spawnrandomizer == 10:
		Global.carrotSpeed = randf_range(150, 300)
		var carrot10 = carrot_scene.instantiate()
		add_child(carrot10)
		carrot10.global_position = carrot_spawn10.global_position

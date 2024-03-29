extends KinematicBody2D
class_name Player

onready var state_machine: StateMachine = $StateMachine

onready var collider: CollisionShape2D = $CollisionShape2D
onready var hook: Hook = $Hook

onready var camera_rig: Position2D = $CameraRig
onready var shaking_camera: Camera2D = $CameraRig/ShakingCamera


const FLOOR_NORMAL: = Vector2.UP

var is_active: = true setget set_is_active


func set_is_active(value: bool) -> void:
	is_active = value
	if not collider:
		return
	collider.disabled = not value

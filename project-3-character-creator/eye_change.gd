extends Node2D
@onready var eyes = [
	get_node("CompositeSprites/EyeSprite/Eyes #1"),
	get_node("CompositeSprites/EyeSprite/Eyes #2"),
	get_node("CompositeSprites/EyeSprite/Eyes #3"),
	get_node("CompositeSprites/EyeSprite/Eyes #4"),
	get_node("CompositeSprites/EyeSprite/Eyes #5"),
	get_node("CompositeSprites/EyeSprite/Eyes #6")
]

var current_eye = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	update_eyes()

func update_eyes():
	for eye in eyes:
		eye.visible = false
	
	eyes[current_eye].visible = true

func _on_Right_Eye_Button_pressed():
	current_eye += 1
	
	if current_eye >= eyes.size():
		current_eye = 0
	
	update_eyes()

func _on_left_eye_button_pressed():
	current_eye -= 1
	
	if current_eye < 0:
		current_eye = eyes.size() - 1
	
	update_eyes()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

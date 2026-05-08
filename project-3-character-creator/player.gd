extends Node2D
@onready var eye_sprite = $CompositeSprites/EyeSprite



var eyes = [
	preload("res://creator creator folder/Character eyes #1.png"),
	preload("res://creator creator folder/Character eyes #2.png"),
	preload("res://creator creator folder/Character eyes #3.png"),
	preload("res://creator creator folder/Character eyes #4.png"),
	preload("res://creator creator folder/Character eyes #5.png"), 
	preload("res://creator creator folder/character eyes #6.png"),
	
	]
	
var current_eye = 0
	
# Called when the node enters the scene tree for the first time.
func _ready():
	eye_sprite.texture = eyes[current_eye]

func _on_Right_Eye_Button_pressed():
	current_eye += 1
	
	if current_eye >= eyes.size():
		current_eye = 0
	
	eye_sprite.texture = eyes[current_eye]

func _on_left_eye_button_pressed():
	current_eye -= 1
	
	if current_eye < 0:
		current_eye = eyes.size() - 1
	
	eye_sprite.texture = eyes[current_eye]
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_eye_button_left_pressed() -> void:
	pass # Replace with function body.


func _on_eye_button_right_pressed() -> void:
	pass # Replace with function body.

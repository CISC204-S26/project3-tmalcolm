extends Control

@onready var eyes = $Eyes
@onready var hair = $hair
@onready var clothes = $Clothes

var eye_options = [
	preload("res://creator creator folder/Character eyes #1.png"), 
	preload("res://creator creator folder/Character eyes #2.png"), 
	preload("res://creator creator folder/Character eyes #3.png"), 
	preload("res://creator creator folder/Character eyes #4.png"),
	preload("res://creator creator folder/Character eyes #5.png"), 
	preload("res://creator creator folder/character eyes #6.png")
]
 
var hair_options = [
	preload("res://creator creator folder/Hair#1.png"),
	preload("res://creator creator folder/Hair#2.png"), 
	preload("res://creator creator folder/Hair#3.png"), 
	preload("res://creator creator folder/Hair#4.png")
	
]

var clothes_options = [
	preload("res://creator creator folder/Outfit#1.png"), 
	preload("res://creator creator folder/Outfit#2.png"),
	preload("res://creator creator folder/Outfit#3.png"), 
	preload("res://creator creator folder/Outfit#4.png")
]

var eye_index = 0
var hair_index = 0
var clothes_index = 0

#EYES
func eye_left():
	eye_index -= 1
	if eye_index < 0:
		eye_index = eye_options.size() - 1
	eyes.texture = eye_options[eye_index]

func eye_right():
	eye_index += 1
	if eye_index >= eye_options.size():
		eye_index = 0
	eyes.texture = eye_options[eye_index]
	
#HAIR
func hair_left():
	hair_index -= 1
	if hair_index < 0:
		hair_index = hair_options.size() - 1
	hair.texture = hair_options[hair_index]

func hair_right():
	hair_index += 1
	if hair_index >= hair_options.size():
		hair_index = 0
	hair.texture = hair_options[hair_index]


#CLOTHES
func clothes_left():
	clothes_index -= 1
	if clothes_index < 0:
		clothes_index = clothes_options.size() - 1
	clothes.texture = clothes_options[clothes_index]

func clothes_right():
	clothes_index += 1
	if clothes_index >= clothes_options.size():
		clothes_index = 0
	clothes.texture = clothes_options[clothes_index]
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	eyes.texture = eye_options[0]
	hair.texture = hair_options[0]
	clothes.texture = clothes_options[0]
	
	eyes.texture = eye_options[0]

func _on_left_arrow_pressed():
	eye_index -= 1
	if eye_index < 0:
		eye_index = eye_options.size() - 1
	eyes.texture = eye_options[eye_index]

func _on_right_arrow_pressed():
	eye_index += 1
	if eye_index >= eye_options.size():
		eye_index = 0
	eyes.texture = eye_options[eye_index]

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_left_arrow_eye_pressed() -> void:
	pass # Replace with function body.


func _on_right_arrow_eyes_pressed() -> void:
	pass # Replace with function body.

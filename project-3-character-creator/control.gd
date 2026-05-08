extends Control

@onready var eyes = $"../CompositeSprites/Eyes".get_children()
@onready var hair = $"../CompositeSprites/Hair".get_children()
@onready var clothes = $"../CompositeSprites/Clothes".get_children()



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


	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show_only(eyes, eye_index)
	show_only(hair, hair_index)
	show_only(clothes, clothes_index)
	
	for i in range(eyes.size()):
		eyes[i].visible = false

	eyes[0].visible = true

func show_only(group, index):
	for item in group:
		item.visible = false
	if group.size() > 0:
		group[index].visible = true

func _on_left_arrow_pressed():
	eye_index -= 1
	if eye_index < 0:
		eye_index = eyes.size() - 1
	show_only(eyes, eye_index)

func _on_right_arrow_pressed():
	eye_index += 1
	if eye_index >= eyes.size():
		eye_index = 0
	show_only(eyes, eye_index)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass


func _on_left_arrow_eye_pressed() -> void:
	eyes[eye_index].visible = false

	eye_index -= 1
	if eye_index < 0:
		eye_index = eyes.size() - 1

	eyes[eye_index].visible = true
	
	pass # Replace with function body.


func _on_right_arrow_eyes_pressed() -> void:
	eyes[eye_index].visible = false

	eye_index += 1
	if eye_index >= eyes.size():
		eye_index = 0

	eyes[eye_index].visible = true
	pass # Replace with function body.


func _on_left_clothes_button_pressed() -> void:
	clothes[clothes_index].visible = false

	clothes_index -= 1
	if clothes_index < 0:
		clothes_index = clothes.size() - 1

	clothes[clothes_index].visible = true
	pass # Replace with function body.


func _on_right_clothes_button_pressed() -> void:
	clothes[clothes_index].visible = false

	clothes_index += 1
	if clothes_index >= clothes.size():
		clothes_index = 0

	clothes[clothes_index].visible = true
	pass # Replace with function body.


func _on_right_hair_button_pressed() -> void:
	hair[hair_index].visible = false

	hair_index += 1
	if hair_index >= hair.size():
		hair_index = 0

	hair[hair_index].visible = true

	pass # Replace with function body.


func _on_left_hair_button_pressed() -> void:
	hair[hair_index].visible = false

	hair_index -= 1
	if hair_index < 0:
		hair_index = hair.size() - 1

	hair[hair_index].visible = true
	pass # Replace with function body.

extends Node2D

export var text = "hello there" 

func _ready():
	get_node("RichTextLabel").set_text(text)
	set_process(true)
	pass


func _process(delta):
	
	
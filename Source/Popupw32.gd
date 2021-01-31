extends Popup
var dialog = ["It’s getting dark. We need to be hurry. At least I know better where we are now but it will be harder to move on in the dark. "
	,"Leo, what will you do when you return back home? Will you going to return back here since we cleaned the garbage. And you can your way easily!",
		"I wish it was that easy. But we cannot return back as humans keep polluting this forest. It can become trashy in a short time again.",
		"But I am also an human and I wanna help you! I am sure there are people like me. We should break this cycle and build a new one."]
var page=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	 pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if page < dialog.size():
			 $RichTextLabel.bbcode_text = dialog[page]
			 if (Input.is_action_just_pressed("ui_accept")): 
				 page +=1
	if page == 7:
		get_tree().change_scene("res://Level4.tscn")
	


		
	


func _on_PopupDialog_popup_hide():
	pass # Replace with function body.


func _on_ToolButtonw32_pressed():
	popup()

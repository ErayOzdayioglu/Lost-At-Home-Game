extends Popup

var dialog = ["We collected this many garages and my arms started to hurt actually. Where can I throw these? ",
 "Unfortunately you have to carry them because there is no trash cans in the forest.",
"But these are very heavy!",
"How do you think so many garbage accumulated. I think we should continue to walk forward, I feel like I remember this area from my bird friends. Yes! They were living just there! But from now we must be careful because we are entering to Bugs Town. You shouldn’t touch to the bugs."]
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
	if page == 6:
		get_tree().change_scene("res://Level3.tscn")
	


		
	


func _on_PopupDialog_popup_hide():
	pass # Replace with function body.


func _on_ToolButtonw21_pressed():
	popup()

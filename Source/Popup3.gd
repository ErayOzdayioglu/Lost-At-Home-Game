extends Popup
var dialog = ["This part of the forest is very dangerous. Watch out the rocks and wood blocks!"]
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

	


		
	


func _on_PopupDialog_popup_hide():
	pass # Replace with function body.


func _on_ToolButtonw2_pressed():
	popup()

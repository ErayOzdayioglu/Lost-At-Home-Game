extends Popup
var dialog2 = ["I can believe how much trash this forest has! How this could be happened?",
				"People ate and drank here but they didn’t collect their garbage. Because they didn’t live here!",
				"I think anyone would want to live here anymore. So does environment look more familiar now?"
				,"I guess so. But I can guess we are just in the beginning of the road. By the way, I’m Leo!",
				"Nice to meet you Leo! I am Mathilda."	]
var page=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	 pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if page < dialog2.size():
			 $RichTextLabel.bbcode_text = dialog2[page]
			 if (Input.is_action_just_pressed("ui_accept")): 
				 page +=1
	else:
		$RichTextLabel.bbcode_text = dialog2[page-8]
		if (Input.is_action_just_pressed("ui_accept")): 
			 page +=1
	if page == 13:
		get_tree().change_scene("res://Level2.tscn")
	


	
	
		
	


func _on_PopupDialog_popup_hide():
	pass # Replace with function body.


func _on_ToolButton2_pressed():
	popup()

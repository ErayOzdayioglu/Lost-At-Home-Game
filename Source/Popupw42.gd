extends Popup
var dialog = ["Leo, Leo! Look, my house is there!",
"Ah yes I can see Mathilda. Look I told you we will find you house.",
"But what should I do with all these garbage, Leo?",
"If you want those garbage not to harm another creature again, you should sort them out correctly and throw them into the appropriate trash. For example, you should throw food in organic waste, plastic and paper near recyclable waste, this is called recycling, and this is important so that garbage does not come back here.",
"What else can I do? I don’t want you to find your house into this kind of dirt again.",
"You can tell everyone you can reach what you see here, and if there is no trash can, you can tell that they should carry their garbage with them. If they don't know, you can teach them recycling Mathilda. Maybe I can't do these things, but you can do that, so I still need your help. The world needs people like you, so don't forget what you learned here. I have to go now, Mathilda. But in this journey, we found both our ways and a very good friendship. Now you are my friend forever",
"Good bye Leo! Be careful on way back home.",
"See you later little thing!"]
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
	if page == 12:
		get_tree().change_scene("res://end.tscn")
	


		
	


func _on_PopupDialog_popup_hide():
	pass # Replace with function body.


func _on_ToolButtonw42_pressed():
	popup()

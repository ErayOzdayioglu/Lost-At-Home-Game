extends Popup
var dialog1 = ["Hello little bunny, I followed you until this very big forest but I don’t know how to return back to my house now. Can you help me?"
			,"Oh hi! I didn’t even noticed that you were behind me! I also didn’t noticed that I went out of the forest while looking for help. But since this forest is beyond recognition, I can’t remember which road I brought you."
			,"Why you need help? Why this forest changed that much?"
			,"Its normal to not to understand the difference for someone who never saw this forest before. Have you ever seen another animal while you were coming until here?"	
			,"No."
			,"Let me tell you the reason. Because there is anyone.",
			"But why? How this forest became this lonely?"
			,"Because this magnificent forest is a huge garbage right now, so all animals had to run away to somewhere else to live. Although I return back here to get rid of this trashes  but I got lost and can’t find the way back because of the trashes. If we want to return back, we need find a way to get rid of from this dirt."
			]
var page=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	 pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if page < dialog1.size():
			 $RichTextLabel.bbcode_text = dialog1[page]
			 if (Input.is_action_just_pressed("ui_accept")): 
				 page +=1

	


func _on_ToolButton_pressed():
	popup()
	
		
	


func _on_PopupDialog_popup_hide():
	pass # Replace with function body.

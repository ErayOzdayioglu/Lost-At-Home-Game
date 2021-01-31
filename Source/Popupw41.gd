extends Popup
var dialog = ["It became dark, I started to scare Leo. And I cant feel my arms anymore because of the heaviness of the garbage.",
	"Ah little thing, You always carry the consequences of what your unconscious elders did, throwing these garbage here. But hold on! You will be find your house after this hill. I promise!",
	"Being far from your house is so scary Leo.",
	"Everyone gets scared from time to time, Mathilda. But the most important thing is not to get lost in this fear and continue on your way. Finding a way to get rid of whatever scares you. That's why I came back here. I even did that with the awareness of I was going to disappear but look, I found you. So being afraid doesn't always have to be as bad as you think. Now let's continue."]
	
var page=0


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

func _on_ToolButtonw41_pressed():
	popup()

extends Area2D
var dialog = ["Hello little bunny, I followed you until this very big forest but I don’t know how to return back to my house now. Can you help me?"
			,"Oh hi! I didn’t even noticed that you were behind me! I also didn’t noticed that I went out of the forest while looking for help. But since this forest is beyond recognition, I can’t remember which road I brought you."
			,"Why you need help? Why this forest changed that much?"
			,"Its normal to not to understand the difference for someone who never saw this forest before. Have you ever seen another animal while you were coming until here?"	]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var page=0
var pop = load("res://PopupDialog.gd").new()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			pass
			
			


func load_dialog():
	if page == dialog.size():
		pass
	else:
		$RichTextLabel.bbcode_text = dialog[page]
	page +=1
	

extends RichTextLabel

var dialog = ["Once upon a time, there was a little girl crosses with a bunny while playing in her house’s garden.","She decides to follow the bunny until she gets lost in a very big forest…"]
var page = 0

func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)




func _on_Timer_timeout():
	set_visible_characters(get_visible_characters() + 1)
				

func _input(event):
	if  event.is_pressed():
		if get_visible_characters() > get_total_character_count():
			if page == dialog.size() -1:
				get_tree().change_scene("res://World.tscn")
			else:
				page+= 1
				set_bbcode(dialog[page])
				set_visible_characters(0)
		else:
			set_visible_characters(get_total_character_count())

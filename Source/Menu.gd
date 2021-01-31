extends Control


func _ready():
	pass # Replace with function body.




func _on_Start_pressed():
	get_tree().change_scene("res://OpeningScreen.tscn")


func _on_Quit_pressed():
	get_tree().quit()


func _on_Button_pressed():
	get_tree().change_scene("res://HowtoPlay.tscn")

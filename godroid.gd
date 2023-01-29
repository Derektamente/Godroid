extends Node


var plugin


func _ready() -> void:
	if Engine.has_singleton("Godroid"):
		plugin = Engine.get_singleton("Godroid")
		print('Godroid loaded and ready to fire')
	else:
		push_warning('Godroid not loaded!')
		
		
func sendToast(message : String) -> void:
	if plugin != null:
		plugin.sendToast(message)
		
		
func shareText(title : String, subject : String, text : String) -> void:
	if plugin != null:
		plugin.shareText(title, subject, text)
		

func shareFile(path : String, fileType : String, title : String) -> void:
	if plugin != null:
		plugin.shareFile(path, fileType, title)

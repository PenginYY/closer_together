extends RichTextLabel

var defult_text = "HEALTH: "
func _process(delta):
	var text = str(defult_text, str(Global.current_health))
	self.text = (text)

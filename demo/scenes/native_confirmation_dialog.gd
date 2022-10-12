extends PanelContainer


@onready var native_confirmation_dialog: NativeConfirmationDialog = $NativeConfirmationDialog
@onready var text_edit: TextEdit = $HBoxContainer/VBoxContainer/Text/TextEdit
@onready var result: LineEdit = $HBoxContainer/VBoxContainer/Result/LineEdit


func text_changed():
	native_confirmation_dialog.set_text(text_edit.text)


func set_confirmed():
	result.text = "Confirmed"


func set_cancelled():
	result.text = "Cancelled"

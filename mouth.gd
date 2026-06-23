extends Area2D

func _on_area_entered(area: Area2D):
	print("mouth")
	if area.name == "Carrot":
		print("carrot")
		Global.score += 1
	else:
		print(area.name)

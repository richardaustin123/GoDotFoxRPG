extends Sprite

const GrassEffect = preload("res://Effects/GrassEffect.tscn")

func create_grass_effect():
	var grassEffect =  GrassEffect.instance()
	var world = get_tree().current_scene
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position #grass effect global position set to global position of the Grass


func _on_HurtBox_area_entered(_area):
	create_grass_effect()
	queue_free()

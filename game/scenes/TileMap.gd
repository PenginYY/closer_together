extends TileMap

enum layers{
	level0 = 0,
	level1 = 1,
	level2 = 2,
}
const ice_block = Vector2i(0,0)
const main_source = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for y in range(3):
		for x in range(3):
			set_cell(layers.level0, Vector2i(2 + x, 2 + y), main_source, ice_block)


extends TileMap

'''
enum layers{
	level0 = 0,
	level1 = 1,
	level2 = 2,
}
const ice_block_atlas_pos = Vector2i(0,0) #source 0
const ice_block_source = 0
const boundary_atlas_pos = Vector2i(0,0) #source 1
const boundary_source = 1

func _ready() -> void:
	place_boundaries()
	
func place_boundaries():
	var offsets = [
		Vector2i(0, -1),
		Vector2i(0, 1),
		Vector2i(1, 0),
		Vector2i(-1, 0),
	]
	var used = get_used_cells(layers.level0)
	for spot in used:
		for offset in offsets:
			var current_spot = spot + offset
			# This spot is empty
			if get_cell_source_id(layers.level0, current_spot) == -1:
				set_cell(layers.level0, current_spot, boundary_source, boundary_atlas_pos)
func place_platform():
	for y in range(3):
		for x in range(3):
			set_cell(layers.level0, Vector2i(2 + x, 2 + y), ice_block_source, ice_block_atlas_pos)
	set_cell(layers.level1, Vector2i(2, 2), ice_block_source, ice_block_atlas_pos)
'''
# Called when the node enters the scene tree for the first time.


'''
func _process(delta):
	pass
'''


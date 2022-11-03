function _init()
	create_player()
	start = flr(time())
	state = 0
end

function _update()
	if state == 0 then
		move_player()
		update_camera()
	end
end 

function _draw()
	cls()
	draw_map()
	draw_player()
	draw_ui()
	draw_finish()
end


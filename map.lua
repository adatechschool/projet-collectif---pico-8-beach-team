--map

function draw_map()
	map(0,0,0,0,128,64)
end

function check_flag(flag,x,y)
	local sprite=mget(x,y)
	return fget(sprite,flag)
end

function update_camera()
 camx=mid(0,p.x-7.5,41-15)
 camy=mid(0,p.y-7.5,41-15)
 camera(camx*8,camy*8)
end

function next_tile(x,y)
 sprite=mget(x,y)
 mset(x,y,sprite+1)
end 

function pick_up_waste(x,y)
	if clamp==true then
	 add(picked_waste,{x=x,y=y,
	 s=mget(x,y)})
	 next_tile(x,y)
	 p.waste+=1
	 sfx(0)
	end
end

-- player

function create_player()
	p={
	x=10,
	y=12,
	sprite=3,
	waste=0,
	clamp=false
	}
	picked_waste={}
	picked_clamp={}
	door={}
end

function move_player()
	newx=p.x
	newy=p.y
	if (btn(➡️)) newx+=1
	if (btn(⬆️)) newy-=1
	if (btn(⬅️)) newx-=1
	if (btn(⬇️)) newy+=1
	if (btn(❎)) interact(newx,newy)
	if (btn(🅾️)) open_door(newx,newy)
	
	if not check_flag(0,newx,newy) then
	  p.x=mid(0,newx,127)
	  p.y=mid(0,newy,63)
	end
	
	if check_flag(3,newx,newy+1) then
			clamp=true
	  next_tile(newx,newy+1)
	  add(picked_clamp,{x=newx,y=newy+1})
	end
end

function interact(x,y)
 if check_flag(1,x+1,y) then
 	pick_up_waste(x+1,y)
 elseif check_flag(1,x,y+1) then
 	pick_up_waste(x,y+1)
 elseif check_flag(1,x-1,y) then
 	pick_up_waste(x-1,y)
 elseif check_flag(1,x,y-1) then
 	pick_up_waste(x,y-1)
 end
end

function draw_player()
	spr(p.sprite, p.x*8, p.y*8)
end

function open_door(x,y)
 if check_flag(2,x,y+1) then
 next_tile(x,y+1)
 add(door,{x=x,y=y+1})
 end
end




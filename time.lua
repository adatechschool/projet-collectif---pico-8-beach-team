--time
function draw_finish()
	print(flr(time())-start,99,2)
	if (time() - start) > 40 then
		state = 1
		clamp=false
		cls(8)
		rectfill(15,40,117,74,4)
		print("score : "..p.waste,45,50,7)
		print("press enter to continue",19,60)
		for waste in all(picked_waste) do
			mset(waste.x,waste.y,waste.s)
		end
		
		for clamp in all(picked_clamp) do
			mset(clamp.x,clamp.y,23)
		end
		
		for door in all(door) do
			mset(door.x,door.y,20)
		end
		if (btn(🅾️)) _init()
	end	
end


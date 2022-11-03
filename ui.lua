--ui

function draw_ui()
    camera()
    spr(7,2,2)
    print_outline("x"..p.waste,10,2,7)
   end 
   
function print_outline(text,x,y)
    print(text,x-1,y,0)
    print(text,x+1,y,0)
    print(text,x,y-1,0)
    print(text,x,y+1,0)
    print(text,x,y,7)
end 
   

function findImages()

	os.execute("find midia/images/RG/ -name *.jpg > imagelist.txt")
	os.execute("find midia/images/RG/ -name *.jpeg >> imagelist.txt")
	os.execute("find midia/images/RG/ -name *.bmp >> imagelist.txt")
	os.execute("find midia/images/RG/ -name *.gif >> imagelist.txt")
	os.execute("find midia/images/RG/ -name *.png >> imagelist.txt")

    local images = {}
    

	for line in io.lines("imagelist.txt") do
	   print(#images .. " - " .. line)
	   table.insert(images, line)
	end

    return images
end



function moveImageIndex(images, index, forward)
  if forward then
  	 index = index + 1
  	 if index > #images then
  	    index = 1
  	 end
  else
  	 index = index - 1
  	 if index <= 0 then
  	    index = #images
  	 end;
  end
  return index
end 

function showImage(images, index)
  if #images > 0 then


  	
  	canvas:drawRect('fill', 0, 0, canvas:attrSize());
	
  
    img = canvas:new(images[index])
    main_w,main_h = canvas:attrSize()
    img_w,img_h = img:attrSize()

   stopped = true
    x = 0
   velocidade = 0

	canvas:compose(10, 10, img)

    canvas:flush()
    
  

  end
end



function carrossel()  

    canvas:attrColor(0, 0, 0, 0)
    canvas:clear( x, 0 ,img_h, img_w )
    
    x = x + 30
    canvas:compose(x,0,img)
    canvas:flush()
    
    if x < main_w - img_w -300 then
        event.timer(velocidade, carrossel)
       
    else
       stopped = true
       
    end
  end



local index = 1

local images = findImages()





function handler(evt)

  print("Evento disparado: " .. evt.class .. " " .. evt.type)
 
  
  
   showImage(images, index)
   carrossel()
   showImage(images, index)
  if (evt.class == 'key' and evt.type == 'press') then
	  print(evt.key)



	  if evt.key == "CURSOR_RIGHT" then
      
      carrossel()
        stopped = false
        canvas:clear()
       
	     index = moveImageIndex(images, index, true)
       canvas:flush()
       
       
	  elseif evt.key == "CURSOR_LEFT" then
      
      
      carrossel()
       stopped = false
       canvas:clear()
       
	     index = moveImageIndex(images, index, false)
       canvas:flush()

	  end
		end
    
  
end


event.register(handler)


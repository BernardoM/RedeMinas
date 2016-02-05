---Lua Slide Show: Exibidor de fotos para TV Digital<br/>
---@author Manoel Campos da Silva Filho<br/> 
---Professor do Instituto Federal de Educação, Ciência e Tecnologia do Tocantins<br/>
---http://manoelcampos.com

---Obtêm a lista de imagens existentes no diretório images
--@return Retorna uma tabela contendo o endereço das imagens localizadas no diretório images.
function findImages()
	--A função utiliza o módulo "os" de lua e executa 
	--o comando find (uma aplicação Linux escrita em C)
	--para buscar as imagens no diretório images e gerar 
    --a saída em um arquivo de texto, contendo a lista 
    --de arquivo encontrados.
	os.execute("find midia/images/PERFIL/ -name *.jpg > imagelist.txt")
	os.execute("find midia/images/PERFIL/ -name *.jpeg >> imagelist.txt")
	os.execute("find midia/images/PERFIL/ -name *.bmp >> imagelist.txt")
	os.execute("find midia/images/PERFIL/ -name *.gif >> imagelist.txt")
	os.execute("find midia/images/PERFIL/ -name *.png >> imagelist.txt")

    --Tabela que armazena o endereço de cada imagem localizada pela função 
    local images = {}
    
    --Carrega o arquivo de texto criado e o percorre linha a linha,
    --adicionando em uma tabela, os endereços das imagens encontradas.
	for line in io.lines("imagelist.txt") do
	   print(#images .. " - " .. line)
	   table.insert(images, line)
	end

    return images
end


---Retorna um novo índice de imagem a ser exibida.
--@param images Tabela contendo a lista de endereços das imagens
--a serem exibidas pela aplicação
--@param index Valor do índice da figura atualmente exibida
--@param forward Se igual a true, incrementa o índice em 1,
--senão, decrementa em 1.
--@returns Retorna o novo índice da figura a ser exibida.
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

---Exibe a imagem cujo endereço está armazenado
--em images[index].
--@param images Tabela contendo a lista de endereços das imagens
--a serem exibidas pela aplicação
--@param index Valor do índice da figura a ser exibida
function showImage(images, index)
  if #images > 0 then
    --print(index .. " - " .. images[index]);

    
    canvas:drawRect('fill', 0, 0, canvas:attrSize());
  
    --Cria um novo canvas para carregar a imagem
    img = canvas:new(images[index])
    main_w,main_h = canvas:attrSize()
    img_w,img_h = img:attrSize()

   stopped = true
    x = 0
   velocidade = 0
    --Desenha a imagem na área destinada à aplicação lua,
    --definida automaticamente dentro do arquivo NCL quando 
    --se associa um region à uma mídia lua.
  canvas:compose(10, 10, img)

    --Exibe os desenhos realizados no canvas
    canvas:flush()
    
  

    --[[
      event.post {
       class    = 'ncl',
       type     = 'attribution',
       property = 'fileName',
       action   = 'start',
       value    = images[index],
     } 
    --]]
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


---Índice da imagem atualmente exibida
local index = 1

---Tabela que armazena a lista de endereços das imagens
--a serem exibidas na aplicação
local images = findImages()




---Função tratadora de eventos recebidos a partir
--da aplicação NCL.

function handler(evt)

  print("Evento disparado: " .. evt.class .. " " .. evt.type)
 
  --Verifica se uma tecla foi pressionada na aplicação NCL
  
   showImage(images, index)
   carrossel()
   showImage(images, index)
  if (evt.class == 'key' and evt.type == 'press') then
    print(evt.key)

      --Se a tecla pressionada foi a seta para direita ou esquerda,
      --altera o índice da imagem a ser exibida.
      --Implementa uma "lista circular" para exibição das imagens.

    if evt.key == "CURSOR_RIGHT" then
      
      carrossel()
        stopped = false
        canvas:clear()
        canvas:flush()
       index = moveImageIndex(images, index, true)
       
       
    elseif evt.key == "CURSOR_LEFT" then
      
      carrossel()
       stopped = false
       canvas:clear()
       canvas:flush()
       index = moveImageIndex(images, index, false)

    end
    end
    
  
end

--Registra a função handler como tratador de eventos NCL
event.register(handler)

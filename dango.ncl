<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Generated	by NCL Eclipse -->
<ncl id="menuEx" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
								<!-- REGION BASE-->
		<regionBase>
			<!--REGIAO DO VIDEO -->
			<region id="regiaoVideo" width="100%" height="100%" zIndex="4">
			
			<!--REGIAO DO MENU -->
			<region id="regiaoMenu"	 width="100%" height="100%" zIndex="2"/>

			<!--BOTAO ICONE -->
			<region id="regiaoBotaoIcone"    top="1%" width="10%"  height="10%" left="90%" zIndex="4"/>

			<!--BOTAO Sair -->
			<region id="regiaoBotaoSair"  left="0.1%" top="0.1%" width="7%"  height="7%" zIndex="3"/>

			<!--BOTAO VERMELHO -->
			<region id="vermelhoReg" left="4.5%" top="35%" width="25.5%" height="19%" zIndex="3"/>
		
			<!--BOTAO VERDE -->
			<region id="verdeReg" left="4.39%" top="53%" width="25.8%" height="12.3%" zIndex="3"/>

			<!--BOTAO AMARELO -->
			<region id="amareloReg" left="4.5%" top="65%" width="25.5%" height="15%" zIndex="3"/>

			<!--BOTAO AZUL -->
			<region id="azulReg" left="4.2%" top="79%" width="26%" height="18.3%" zIndex="3"/>
			
			<!--DICIONARIO BOTAO VERMELHO -->
			<region id="RegiaoDicionario"  top="58.5%" width="100%" height="41.5%" zIndex="2"/>

			<!--GAME DANGO BALANGO BOTAO VERDE -->
			<region id="regiaoGameDango" left="40%" top="54.5%" width="55%" height="41.5%" zIndex="2"/>

			<!--PERSONAGENS BOTAO AMARELO -->
			<region id="regiaoPersonagens"  top="58.5%" width="100%" height="41.5%" zIndex="2"/>

			<!--IDENTIDADE BOTAO AZUL -->
			<region id="regiaoInformacoes" top="58.5%" width="100%" height="41.5%" zIndex="2"/>
				</region>
		</regionBase>
		
								<!-- DESCRIPTOR BASE-->
		<descriptorBase>
			<!--DESCRITOR DO VIDEO -->
			<descriptor id="videoDesc"     region="regiaoVideo"/>

			<!--DESCRITOR DO MENU -->
			<descriptor id="menuDesc"      region="regiaoMenu"/>

			<!--BOTAO ICONE -->
		    <descriptor id="BtDesc"        region="regiaoBotaoIcone" focusIndex="1" focusBorderWidth="0" />

		    <!--BOTAO ICONE -->
		    <descriptor id="botaoSairDesc" region="regiaoBotaoSair" focusIndex="6" moveDown="2" focusBorderWidth="0"  />
			
			<!--BOTAO VERMELHO -->
	        <descriptor id="vermelhoDesc"  region="vermelhoReg" focusIndex="2" moveDown="3" moveUp="6" moveRight="7" focusBorderWidth="0" />

			<!--BOTAO VERDE -->
			<descriptor id="verdeDesc"     region="verdeReg" focusIndex="3" moveDown="4" moveUp="2" moveRight="8" focusBorderWidth="0"  />

			<!--BOTAO AMARELO -->	
			<descriptor id="amareloDesc"   region="amareloReg" focusIndex="4" moveDown="5" moveUp="3" moveRight="9" focusBorderWidth="0" />
		
			<!--BOTAO AZUL -->
			<descriptor id="azulDesc"      region="azulReg" focusIndex="5" moveUp="4"  moveRight="10" focusBorderWidth="0" />


			<!--DICIONARIO BOTAO VERMELHO -->
			<descriptor id="dicionarioDesc" region="RegiaoDicionario" moveLeft="2" moveRight="2" focusIndex="7" focusBorderWidth="0"/>

			<!--GAME DANGO BALANGO BOTAO VERDE -->
			<descriptor id="gameDangoDesc"  region="regiaoGameDango" moveLeft="3" moveRight="3"  focusIndex="8" focusBorderWidth="0"/>

			
			<!--PERSONAGENS BOTAO AMARELO -->
			<descriptor id="personagensDesc" region="regiaoPersonagens" moveLeft="4" moveRight="4" focusIndex="9" focusBorderWidth="0"/>

			<!--INFORMAÇÕES BOTAO AZUL -->		
			<descriptor id="informacoesDesc" region="regiaoInformacoes" moveLeft="5" moveRight="5" focusIndex="10" focusBorderWidth="0"/>
		</descriptorBase>


								<!-- CONECTOR BASE-->
		<connectorBase>
			<!--CONECTOR BASE -->	
			<importBase documentURI="causalConnBase.ncl" alias="conEx"/>
		</connectorBase>


	</head>

	<body>

						    <!-- PORTAS -->

		<!-- PORTA DO VIDEO -->
		<port id="entry" component="video1"/>

		<!-- PORTA DO BOTAO DO ICONE -->
		<port id="entr" component="botaoIcone"/>

		<!-- PORTA DO BOTAO DO SAIR -->
		<port id="ent" component="Sair"/>
			


							 <!-- MIDIA -->
		<!-- MIDIA VIDEO -->
		<media id="video1" src="midia/dango.mp4" descriptor="videoDesc">
			<property name= "bounds"/>
		</media>

		<!-- MIDIA BOTAO DO ICONE -->
		<media id="botaoIcone" src="midia/red.png" descriptor="BtDesc"/>

				<!-- MIDIA BOTAO SAIR -->
		<media id="Sair" src="voltar.png" descriptor="botaoSairDesc"/>

		<!-- MIDIA FOTOS DICIONARIO LUA -->
		<media id="dicionario" type="application/x-ginga-NCLua" src="main2.lua" descriptor="dicionarioDesc"/>

		<!-- MIDIA GAME DANGO LUA -->
		<media id="gameDango" type="application/x-ginga-NCLua" src="GameDango/game.lua" descriptor="gameDangoDesc"/>
		
		<!-- MIDIA FOTOS PERFIL PERSONAGENS LUA -->
		<media id="personagens" type="application/x-ginga-NCLua" src="main3.lua" descriptor="personagensDesc">
		</media>
		
		<!-- MIDIA FOTOS INFORMACOES DOS PERSONAGENS LUA -->
		<media id="informacoes" type="application/x-ginga-NCLua" src="main.lua" descriptor="informacoesDesc"/>

		<!-- MIDIA MENU -->
		<media id="menu" src="midia/menu.png" descriptor="menuDesc"/>

		<!-- MIDIA BOTAO VERMELHO 1 -->
		<media id="vermelho1" src="vermelho1.png" descriptor="vermelhoDesc"/>

		<!-- MIDIA BOTAO VERDE 1 -->
		<media id="verde1" src="verde1.png" descriptor="verdeDesc"/>

		<!-- MIDIA BOTAO AMARELO 1 -->
		<media id="amarelo1" src="amarelo1.png" descriptor="amareloDesc"/>

		<!-- MIDIA BOTAO AZUL 1 -->
		<media id="azul1" src="azul1.png" descriptor="azulDesc"/>

		<!-- MIDIA BOTAO VERMELHO 2 -->
		<media id="vermelho2" src="vermelho2.png" descriptor="vermelhoDesc"/>

		<!-- MIDIA BOTAO VERDE 2 -->
		<media id="verde2" src="verde2.png" descriptor="verdeDesc"/>

		<!-- MIDIA BOTAO AMARELO 2 -->
		<media id="amarelo2" src="amarelo2.png" descriptor="amareloDesc"/>

		<!-- MIDIA BOTAO AZUL 2 -->
		<media id="azul2" src="azul2.png" descriptor="azulDesc"/>





						<!--KEYMASTER -->
  		    <media id="settings" type="application/x-ginga-settings" >
	        <property name="service.currentKeyMaster" value=""/>
	   	    </media>
	    	



						<!-- INÍCIO DO PROGRAMA-->

			<link id="onInicio" xconnector="conEx#onBeginStart">				
				<bind role="onBegin" component="video1"/>
				<bind role="start"   component="botaoIcone"/>
			    <bind role="stop"    component="informacoes"/>		
			    <bind role="stop"    component="dicionario"/>	
			    <bind role="stop" 	 component="personagens"/>
			    <bind role="stop" 	 component="gameDango"/>
			    <bind role="stop" 	 component="Sair"/>	
			</link>

						<!-- ICONE-->

		<link id="OnRedmenuPrincipal" xconnector="conEx#onKeySelectionStopSetStart">
				<bind role="onSelection" component="botaoIcone">
					<bindParam name="keyCode" value="RED"/>
				</bind>	
				<bind role="stop" component="botaoIcone"/>
				<bind role="set" component="video1" interface="bounds"> 
				<bindParam name="varSet" value="47%,14.7%,40%,40%"/>
				</bind>
				<bind role="start" component="menu"/> 
				<bind role="start" component="vermelho1"/>
				<bind role="start" component="verde1"/>
				<bind role="start" component="amarelo1"/>
				<bind role="start" component="azul1"/> 
				<bind role="start" component="Sair"/> 
			</link>



						<!-- BOTAO VERMELHO-->

			<link id="OnRed" xconnector="conEx#onKeySelectionStopStart">
				<bind role="onSelection" component="vermelho1">
					<bindParam name="keyCode" value="RED"/>
				</bind>	
				<bind role="stop" component="vermelho1"/> 
				<bind role="start" component="vermelho2"/> 
				<bind role="stop" component="verde2"/> 
				<bind role="stop"  component="amarelo2"/>
				<bind role="stop"  component="azul2"/>
				<bind role="start" component="verde1"/>
				<bind role="start" component="amarelo1"/>
				<bind role="start" component="azul1"/> 
				<bind role="stop" component="personagens"/>
				<bind role="stop" component="informacoes"/>
				<bind role="stop" component="gameDango"/>
				<bind role="start" component="dicionario"/>

			</link>
			


						<!-- BOTAO VERDE-->

			<link id="OnGreen" xconnector="conEx#onKeySelectionStopStart">
				<bind role="onSelection" component="verde1">
					<bindParam name="keyCode" value="GREEN"/>
				</bind>	
				<bind role="stop"  component="verde1"/> 
				<bind role="start" component="verde2"/> 
				<bind role="stop"  component="vermelho2"/> 
				<bind role="stop"  component="amarelo2"/>
				<bind role="start" component="amarelo1"/>
				<bind role="stop"  component="azul2"/>
				<bind role="start" component="azul1"/> 
				<bind role="stop"  component="dicionario"/>
				<bind role="stop"  component="informacoes"/>
				<bind role="stop"  component="personagens"/>
				<bind role="start" component="vermelho1"/>
				<bind role="start" component="gameDango"/>
			
			</link>




						<!-- BOTAO AMARELO-->

			<link id="OnYellow" xconnector="conEx#onKeySelectionStopStart">
				<bind role="onSelection" component="amarelo1">
					<bindParam name="keyCode" value="YELLOW"/>
				</bind>	
				<bind role="stop" component="amarelo1"/> 
				<bind role="start" component="amarelo2"/> 
				<bind role="stop" component="vermelho2"/> 
				<bind role="stop"  component="verde2"/>
				<bind role="stop"  component="azul2"/>
				<bind role="start" component="verde1"/>
				<bind role="start" component="vermelho1"/>
				<bind role="start" component="azul1"/> 
				<bind role="start" component="personagens"/>
				<bind role="stop" component="dicionario"/>
				<bind role="stop" component="informacoes"/>
				<bind role="stop" component="gameDango"/>
				
			</link>


							<!-- BOTAO AZUL-->

			<link id="OnBlue" xconnector="conEx#onKeySelectionStopStart">
				<bind role="onSelection" component="azul1">
					<bindParam name="keyCode" value="BLUE"/>
				</bind>	
				<bind role="stop" component="azul1"/> 
				<bind role="stop" component="vermelho2"/> 
				<bind role="stop"  component="verde2"/>
				<bind role="stop"  component="amarelo2"/>
				<bind role="start" component="azul2"/> 
				<bind role="start" component="vermelho1"/>
				<bind role="start" component="verde1"/>
				<bind role="start" component="amarelo1"/>
				<bind role="stop" component="dicionario"/>
				<bind role="stop" component="personagens"/>
				<bind role="stop" component="gameDango"/>
				<bind role="start" component="informacoes"/>
			</link>



							<!-- BOTAO SAIR-->

			<link id="OnExit" xconnector="conEx#onKeySelectionStopSetStart">
				<bind role="onSelection" component="Sair">
					<bindParam name="keyCode" value="EXIT"/>
				</bind>	
				<bind role="set" component="video1" interface="bounds"> 
				<bindParam name="varSet" value="0,0,100%,100%"/>
				</bind>
				<bind role="stop" component="Sair"/> 
				<bind role="stop" component="menu"/> 
				<bind role="stop" component="vermelho1"/>
				<bind role="stop" component="verde1"/>
				<bind role="stop" component="amarelo1"/>
				<bind role="stop" component="azul1"/> 
				<bind role="stop" component="menu"/> 
				<bind role="stop" component="vermelho2"/>
				<bind role="stop" component="verde2"/>
				<bind role="stop" component="amarelo2"/>
				<bind role="stop" component="azul2"/> 
				<bind role="stop" component="informacoes"/>
				<bind role="stop" component="personagens"/>
				<bind role="stop" component="dicionario"/> 
				<bind role="stop" component="gameDango"/> 
				<bind role="start" component="botaoIcone"/> 

			</link>


						<!--CONTROLE FOCO -->
	
		<link id="link_focoBeginGameDango" xconnector="conEx#onBeginSet">
			<bind role="onBegin" component="gameDango"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="gameDango"/>
			</bind>
		</link>

		<link id="link_focoEndGameDangoBalango" xconnector="conEx#onEndSet">
			<bind role="onEnd" component="gameDango" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
		</link>

		<link id="link_focoBeginSlideDic" xconnector="conEx#onBeginSet">
			<bind role="onBegin" component="dicionario"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="dicionario"/>
			</bind>
		</link>

		<link id="link_focoEndSlideDic" xconnector="conEx#onEndSet">
			<bind role="onEnd" component="dicionario" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
		</link>

		<link id="link_focoBeginSlideper" xconnector="conEx#onBeginSet">
			<bind role="onBegin" component="personagens"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="personagens"/>
			</bind>
		</link>

		<link id="link_focoEndSlideper" xconnector="conEx#onEndSet">
			<bind role="onEnd" component="personagens" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
		</link>

			<link id="link_focoBeginSlideinf" xconnector="conEx#onBeginSet">
			<bind role="onBegin" component="informacoes"/>
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value="informacoes"/>
			</bind>
		</link>

		<link id="link_focoEndSlideinf" xconnector="conEx#onEndSet">
			<bind role="onEnd" component="informacoes" />
			<bind role="set" component="settings" interface="service.currentKeyMaster">
				<bindParam name="value" value=""/>
			</bind>
		</link>
						<!-- FINAL DO PROGRAMA-->

			<link id="OnFinal" xconnector="conEx#onEndStart_Stop">
				<bind role="onEnd" component="video1"/>
				<bind role="stop" component="verde1"/>
				<bind role="start" component="amarelo1"/>
				<bind role="start" component="azul1"/>
				<bind role="start" component="vermelho2"/>
		</link>
			
	</body>
	</ncl>
	
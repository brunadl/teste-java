<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://images.vexels.com/media/users/3/136498/isolated/preview/588187d92d423fb320f4a4cf8b2486c5---cone-de-cadeado-aberto-by-vexels.png" type="image/gif">
<title>ACESSO</title>
</head>
<body>

	<style>
	
		::selection{
	    
	    	background-color: #00ffff;
	    	color: #000;
	    	text-shadow: none;
	    	
	    }
	
		html, body{
			font-family: 'K2D', sans-serif;
		}
		
		body{
			background-image: url(https://www.innovationnewsnetwork.com/wp-content/uploads/2019/12/SCITECH%C2%A9-iStock-from2015.jpg);
			background-size: 100%;
		}
		
		h1{
			font-size: 30px;
			font-weight: 400;
			margin-bottom: 40px;
		}
		
		.botao{
			border: solid 1px black;
	   		border-radius: 10px;
	    	background-color: #00ffff;
	    	height: 40px;
	    	width: 100px;
	    	font-size: 15px;
	    	font-family: 'K2D', sans-serif;
	    	font-weight: bold;
	    	box-shadow: 2px 2px 10px 3px #00000077;
	    	cursor: pointer;
		}
		
		.botao:hover{
    
	    	background-color: #000;
	    	color: #48e4ff;
	    	box-shadow: 0px 0px 10px 0px #48e4ff;
    	
    	}
		
		.campo{
			text-align: center;
			border: solid 1px black;
			background-color: #00ffff;
	    	height: 37px;
	    	width: 250px;
	    	font-family: 'K2D', sans-serif;
	    	border-radius: 10px;
		}
		
		.GPS{
			box-sizing: border-box;
			padding: 15px 0px;
			position:fixed;
			bottom:5px;
			right:5px;
			box-shadow: 2px 2px 3px #999;
			z-index:100;
			font-size: 20px;
			text-align: center;
			background-color: rgba(0, 0, 0, 0.822);
			width: 300px;
			height: 210px;
			border-radius: 20px;
		}
		.GPS > p{
			margin: 0;
			color: #48e4ff;
			font-weight: bold;
			font-size: 35px;
		}

		.GPS > div > .campo{
			text-align: center;
			border: solid 1px black;
			background-color: #48e4ff;
			border-radius: 5px;
			height: 90%;
			width: 75%;
			margin-right: 5px;
		}

		.GPS > div > .botao{
			border-radius: 5px;
			border: solid 1px black;
			background-color: #48e4ff;
			font-family: 'K2D', sans-serif;
    		font-weight: bold;
			font-size: 19px;
			height: 100%;
			width: 20%;
		}

		#div-campos{
			margin: 25px auto;
			height: 20%;
			width: 90%;
			display: flex;
			align-items: center;
		}
		.coordenadas{
			
			padding: 15px 15%;
			box-sizing: border-box;
			position:fixed;
			bottom:5px;
			z-index:100;
			background-color: rgba(0, 0, 0, 0.856);
			height: 210px;
			border-radius: 17px;
			color: #48e4ff;
			width: 960px;
		}
		.coordenadas > p {
			margin: 4px;
		}

		#descricao{
			font-size: 18px;
			font-weight: 100;
		}

		.informacoes{
			margin-top: 20px;
			color: #00ffff;
			font-size: 25px;
			box-sizing: border-box;
			text-align: center;
			background-color: rgba(0, 0, 0, 0.800);
			height: 420px;
			border-radius: 15px;
			padding: 10px;
		}

		.dados{
			padding: 1%;
			margin: 0px auto;
			background-color: #00ffffb2;
			height: auto;
			width: 60%;
			text-align: center;
			border-radius: 20px;
		}
		.dados > p{
			text-align: center;
			color: #000;
			
		}

		.dados > .dado{
			padding: 2px;
			color: #00ffff;
			width: auto;
			background-color: #000;
			margin: 0px auto;
		} 
		
		#seila{
			margin: 100px 0 40px 0;
		}
		
	</style>
	
	<section class="informacoes">
		
		<form action="Jogo" method="post">
			<h1>${local.endereco} - ${local.id_local} </h1>
			<input type="hidden" name="usuarioId" value="${usuario.id_usuario}">
			<input type="hidden" name="localId" value="${local.id_local}">
			
			<p id="seila">Para acessar as informações presentes no local, digite a senha de acesso:</p>
			
			<input class="campo" type="text" name="senhaDeAcesso">
			<input type="submit" class ="botao" name="botao" value="ACESSAR"><br><br>
			${resposta}
		</form>
	</section>
	
	
	<section class="coordenadas">

 		<p>419009124832 - Piazza di Trevi, 00187 Roma RM, Itália</p>
		<p>418946124830 - Piazza Venezia, 00186 Roma RM, Itália</p>
		<p>419010124426 - Via Anastasio II, 274, 00165 Roma RM, Itália</p>
		<p>418989124731 - Fontana dei Quattro Fiumi, 00186 Roma RM, Itália</p>
		<p>418902124930 - Colosseo, 00184 Roma RM, Itália</p>
		<p>418986124768 - Santa Maria ad Martyres, 00186 Roma RM, Itália</p>
		<p>419062124527 - 00120 Vatican City, Vaticano</p>
		<p>418910124466 - Via Giovanni Bessarione, 33, 00165 Roma RM, Itália</p>

	</section>
	
	<form class="GPS" action="Jogo" method="post">
	
		<input type="hidden" name="usuarioId" value="${usuario.id_usuario}">
		<input type="hidden" name="localId" value="${local.id_local}">
		
		<p>GPS</p><br>
		<p id="descricao">Digite a coordenada do local que pretende ir:</p>
		<div id="div-campos">
			<input required class="campo" type="text" name="coordenada">
			<input  class="botao" type="submit" class ="botao" name="botao" value="IR">
		</div>
	</form>
	
	
	
	
</body>
</html>
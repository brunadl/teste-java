<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://images.vexels.com/media/users/3/136498/isolated/preview/588187d92d423fb320f4a4cf8b2486c5---cone-de-cadeado-aberto-by-vexels.png" type="image/gif">
<title>Primeira Dica</title>
</head>

<body>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=K2D:wght@300&display=swap');
    
		::selection{
		
			background-color: #00ffff;
			color: #000;
			text-shadow: none;
			
		}

		body{
			font-family: 'K2D', sans-serif;
			background-image: url(https://i.pinimg.com/originals/25/40/ef/2540efd77361e01d5a700cff1d9d5846.jpg);
			background-size: 100%;
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
			
			padding: 10px 15%;
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
			margin: 3px;
		}

		#descricao{
			font-size: 18px;
		}

		.informacoes{
			margin-top: 20px;
			color: #00ffff;
			font-size: 25px;
			box-sizing: border-box;
			text-align: center;
			background-color: rgba(0, 0, 0, 0.699);
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

	</style>

	<section class="informacoes">

		<div class="dados"> 
			<p class="enunciado">A pista para a coordenada do primeiro destino é:</p>
			<p class="dado">${local.pista}</p>
		</div><br>
		<div class="dados"> 
			<p>Para acessar o arquivo desse local, você deverá usar a chave de acesso: </p>
			<p class="dado">${local.chaveDeAcesso}</p>
		</div>

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
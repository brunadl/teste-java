<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CADASTRAR PISTAS</title>
<link rel="icon" href="https://images.vexels.com/media/users/3/136498/isolated/preview/588187d92d423fb320f4a4cf8b2486c5---cone-de-cadeado-aberto-by-vexels.png" type="image/gif">
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
			width: 100%;
		}
		.coordenadas > p {
			width: 60%;
			margin: 3px auto;
			
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
			
			margin: 0px auto;
			margin-top: -50px;
			background-color: #00ffffb2;
			height: auto;
			width: 60%;
			text-align: center;
			border-radius: 20px;
		}
		.dados > p{
			font-size: 18px;
			text-align: center;
			color: #000;
			
		}

		.dados > .dado{
		
			border: solid 1px #00ffff;
			padding: 2px;
			color: #00ffff;
			width: auto;
			background-color: #000;
			margin: 0px auto;
		} 
		
		#proximo > .dados{
			margin-top: 30px;
			width: 45%;
		}
		
		#proximo{
			display: flex;
		}
		
		h1{
			margin: 0px;
		}
		
		#cadastrarPistas .campo{
    
    	border: 1px solid #1c89c6;
    	background-color: #000;
    	border-radius: 7px;
    	width: 30%;
    	height: 40px;
    	margin: 5px 0px;
    	color: #1c89c6;
    	text-align: center;
    	margin-bottom: 20px;
    	margin-top: 10px;
    	
    }
    
    #cadastrarPistas .campo:focus{
    
    	border: 1px solid #1c89c6;
    	background-color: #000;
    	border-radius: 7px;
    	margin: 5px 0px;
    	color: #1c89c6;
    	text-align: center;
    	
    }
    
    #cadastrarPistas .botao{
    
    	border: solid 1px black;
   		border-radius: 10px;
    	background-color: #48e4ff;
    	height: 40px;
    	width: 20%;
    	font-size: 20px;
    	font-family: 'K2D', sans-serif;
    	font-weight: bold;
    	box-shadow: 2px 2px 10px 3px #00000077;
    	cursor: pointer;
    }
    
	    #cadastrarPistas .botao:hover{
	    
	    	background-color: #000;
	    	color: #48e4ff;
	    	box-shadow: 0px 0px 10px 0px #48e4ff;
	    	
	    }
	    
	    
	    
	</style>
	
		${resposta2}
		
	
	
	<section class="informacoes">
	
		
		<form id="cadastrarPistas" action="CadastrarPistas"><h1>Cadastrar pistas/dicas para os locais<br><br></h1>
			<label for="id_local">Coordenadas</label><br>
			<input class="campo" required type="text" name="id_local"><br>
			
			<label for="pista">Dica/Pista</label><br>
			<input class="campo" required type="text" name="pista"><br>
			
		 	<input class="botao" type="submit" name="botao" value="Cadastrar Pista">
		 	${resposta}
	 	</form>
	</section>
	
	${resposta2}
	
	<section class="coordenadas">

 		<p id="419009124832">419009124832 - Piazza di Trevi, 00187 Roma RM, Itália</p>
		<p id="418946124830">418946124830 - Piazza Venezia, 00186 Roma RM, Itália</p>
		<p id="419010124426">419010124426 - Via Anastasio II, 274, 00165 Roma RM, Itália</p>
		<p id="41898912473">418989124731 - Fontana dei Quattro Fiumi, 00186 Roma RM, Itália</p>
		<p id="418902124930">418902124930 - Colosseo, 00184 Roma RM, Itália</p>
		<p id="418986124768">418986124768 - Santa Maria ad Martyres, 00186 Roma RM, Itália</p>
		<p id="419062124527">419062124527 - 00120 Vatican City, Vaticano</p>
		<p id="418910124466">418910124466 - Via Giovanni Bessarione, 33, 00165 Roma RM, Itália</p>

	</section>
	
	

</body>
</html>
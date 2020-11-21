<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>ADMNISTRADOR</title>
	
	<link rel="icon" href="https://images.vexels.com/media/users/3/136498/isolated/preview/588187d92d423fb320f4a4cf8b2486c5---cone-de-cadeado-aberto-by-vexels.png" type="image/gif">
	

	<style>
		
		
		@import url('https://fonts.googleapis.com/css2?family=K2D:wght@300&display=swap');
    	
    	::selection{
    		background-color: #00ffff;
    		color: #000;
    		text-shadow: none;
    	}
    	
		
    	html, body{
    
			font-family: 'K2D', sans-serif;
			color: #fff;
			height: 100%;
		}

		body{
			background: url(https://image.cnbcfm.com/api/v1/image/106341604-1579261030301thumbnailreports_deepfakevideo_clean_03.jpg?v=1579261049);
			background-size: 100%;
			display: flex;
			justify-content: center;
			align-items: center;
		}

		#geral{
			box-sizing: border-box;
			width: 95%;
			height: 90%;
			background-color: #0000008e;
			border-radius: 50px;
			padding: 20px;
			box-shadow: 0px 0px 20px 0px #00ffff;
		}
		
		

		#botoes{
			width: 100%;
			text-align: center;
		}

		section div{
			width: 100%;
			text-align: center;
			font-size: 25px;
			color: #00e1ff;
			text-shadow: 5px 5px 5px #000;
		}

		#titulo{
			width: 100%;
			text-align: center;
			font-size: 25px;
			color: #00e1ff;
			text-shadow: 0px 0px 20px 0px #000;
			margin: 60px 0px 100px 0px;
		}

		#botoes{
			box-sizing: border-box;
			width: 90%;
			margin: 50px auto 110px auto;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}


		input{
		
			border: 0.5px solid #48e4ff;
			background-color: #000;
			color: #48e4ff;
    		font-size: 20px;
    		font-family: 'K2D', sans-serif;
    		font-weight: bold;
    		box-shadow: 2px 2px 40px 3px #48e4ff6e;
			cursor: pointer;
			width: 300px;
			height: 70px;
			
		}

		input:hover{
			border: solid 2px black;
			background-color: #48e4ff;
			color: #000;
			text-align: center;
		}

		#aviso{
			margin: 0 auto;
		}
		
		#menu{
			display: flex;
			justify-content: space-between;
			width: 100%;
			margin: 10px auto;
		}
		#menu div{
			width: 10%;
			display: flex;
			justify-content: center;
			align-items: center;
		}
		
		#menu div a{
			display: flex;
			align-items: center;
			color: #48e4ff;
			text-decoration: none;
		}
		
		#menu div a p{
			margin: 0px;
		}
		
		#menu div a p:hover{
			color: black;
			text-shadow: 0px 0px 10px #4bf3ff;
			font-weight: bold;
		}
		
		
		
		img{
			margin-left: 10px;
			width: 30px;
			height: 30px;
		}
		
	</style>

</head>
<body>
	
	

	<section id="geral">
	
	<div id="menu">
		<div><a></a></div>
		<div>
			<a href="./index.jsp"><p>SAIR</p>
				<img src="https://images.vexels.com/media/users/3/136608/isolated/preview/ca3ee33112a496b810e6a2b14f2b4ac9---cone-de-bot--o-de-energia-de-gradiente-by-vexels.png" alt="">
			</a>
		</div>
	</div>
	
		<div id="titulo">
				<h1>TELA DO ADMINISTRADOR</h1>
		</div>

		<div>
			<p> O que você deseja fazer? </p>
		</div>

		<section id="botoes">
				
				
				<form action="login">
					<input type="submit" name="botao" value="Cadastrar Usuário Cliente">
				</form>
			
				<form action="CadastrarPistas">
					<input type="submit" name="botao" value="Cadastrar Dicas/Pistas">
				</form>
				
				<form action="">
					<input type="hidden" name="usuarioId" value="${usuario.id_usuario}">
					<input type="submit" name="botao" value="Testar Programa">
				</form>

		</section>

		<div id="aviso">
			<p>* Se não houver pelo menos uma pista cadastrada em cada local, você não conseguirá testar o programa!</p>
		</div>
		
	</section>
	
	
 
</body>
</html>
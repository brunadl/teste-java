<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="icon" href="https://images.vexels.com/media/users/3/136498/isolated/preview/588187d92d423fb320f4a4cf8b2486c5---cone-de-cadeado-aberto-by-vexels.png" type="image/gif">
	
	<title>Cadastro</title>

	<style>
		@import url('https://fonts.googleapis.com/css2?family=K2D:wght@300&display=swap');
    
    ::selection{
    
    	background-color: #00ffff;
    	color: #000;
    	text-shadow: none;
    	
    }
    	
    html, body{
    
    	font-family: 'K2D', sans-serif;
        background: url(https://image.freepik.com/vector-gratis/fondo-concepto-tecnologia-futuro-cyber-azul_42077-480.jpg);
		background-size: 100%;
		height: 100%;
		color: #fff;
		
    }
    
    
    body{
    	width: 100%;
    	display: flex;
    	justify-content: space-between;
    }
    
    #campoLogin form h2{
    
    	font-size: 40px;
    	margin: 10px 0px 30px;
    	color: #48e4ff;
    	text-shadow: 2px 2px 5px #48e4ffab;
    	
    }
    
    h3{
    
    	margin: 0px 0px 5px;
    	font-size: 20px;
    	color: #aaf2ff;
    	text-shadow: 1px 1px 2px #aaf2ff;
    	
    }
    
    #campoLogin{
    
    	width: 50%;
    	height: 100%;
    	display: flex;
    	justify-content: center;
    	align-items: center;
    	
    }
    
    #campoLogin form{
    
		border-radius: 20px;
		text-align: center;
    	width: 100%;
    	height: 85%;
		background-color: #000000b8;
		box-shadow: 0px 0px 20px 0px #00ccff;
		
    }
    
    #campoLogin form .campo{
    
    	border: 1px solid #1c89c6;
    	background-color: #000;
    	border-radius: 7px;
    	width: 70%;
    	height: 10%;
    	margin: 5px 0px 30px;
    	color: #1c89c6;
    	text-align: center;
    	
    }
    
    #campoLogin form .campo:focus{
    
    	border: 1px solid #1c89c6;
    	background-color: #000;
    	border-radius: 7px;
    	width: 70%;
    	height: 10%;
    	color: #1c89c6;
    	text-align: center;
    	
    }
    
    #campoLogin form .botao{
    
    	border: solid 1px black;
   		border-radius: 10px;
    	background-color: #48e4ff;
    	height: 11%;
    	width: 40%;
    	font-size: 20px;
    	font-family: 'K2D', sans-serif;
    	font-weight: bold;
    	box-shadow: 2px 2px 10px 3px #00000077;
    	cursor: pointer;
    }
    
    #campoLogin form .botao:hover{
    
    	background-color: #000;
    	color: #48e4ff;
    	box-shadow: 0px 0px 10px 0px #48e4ff;
    
    	
    }
	
		
	div a p{
		margin: 0px;
	}
		
	div a p:hover{
		text-shadow: 0px 0px 2px #4bf3ff;
		font-weight: bold;
		color: white;
	}
		
		
		
	img{
		margin-left: 10px;
		width: 20px;
		height: 20px;
	}
		
	.botao-menu{
		
		height: 8%;
		box-sizing: border-box;
		width: 25%;
		display: flex;
		margin-top: 5%;
		justify-content: center;
		align-items: center;

	}
	
	.botao-menu > a{
		border-radius: 20px;
		background-color: #000000;
		color: #00ffff;
		height: 70%;
		align-items: center;
		width: 35%;
		display: flex;
		text-decoration: none;
		font-size: 20px;
		justify-content: center;
		align-items: center;
		box-shadow: 0px 0px 10px 0px #48e4ff;
	}
	</style>

</head>
<body>
		
		
	<div class="botao-menu">
		<a href="./telaAdm.jsp"><p>VOLTAR</p></a>
	</div>

	<div id="campoLogin">
	
		<form action="cadastro" method="post">
			<h2>Cadastro de Usuario</h1>
				
				<h3>Nome</h3>
				<input class="campo" required type="text" name="nome">
				
				<h3>Email</h3>
				<input class="campo" required type="text" name="email">
				 
				<h3>Senha</h3>
				<input class="campo" required type="password" name="senha">
				<input type="submit" class="botao" name="botao" value="Cadastrar">
				<p style="margin-top: 15px; font-size: 23px; color: red">${resposta}</p>
		</form>
		
	</div>
	
	<div class="botao-menu">
		<a href="./index.jsp"><p>SAIR</p>
			<img src="https://images.vexels.com/media/users/3/136608/isolated/preview/ca3ee33112a496b810e6a2b14f2b4ac9---cone-de-bot--o-de-energia-de-gradiente-by-vexels.png" alt="">
		</a>
	</div>
	
</body>
</html>ml>

<%@page import="br.fiap.dao.LocalDAO"%>
<%@page import="br.fiap.avl.AVLCoordenadas"%>
<%@page import="br.fiap.controle.LoginServlet"%>
<%@page import="br.fiap.dao.UsuarioDAO"%>
<%@page import="br.fiap.entidade.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
	<link rel="icon" href="https://images.vexels.com/media/users/3/136498/isolated/preview/588187d92d423fb320f4a4cf8b2486c5---cone-de-cadeado-aberto-by-vexels.png" type="image/gif">
</head>

<style>

	@import url('https://fonts.googleapis.com/css2?family=K2D:wght@300&display=swap');
    
    ::selection{
    
    	background-color: #00ffff;
    	color: #000;
    	text-shadow: none;
    	
    }
    	
    html, body{
    
    	font-family: 'K2D', sans-serif;
        background: url(https://www.stantec.com/content/dam/stantec/images/ideas/blogs/014/seize-the-moment-shift-1.jpg);
		background-size: 100%;
		height: 100%;
		color: #fff;
		
    }
    
    #campoLogin form h2{
    
    	font-size: 40px;
    	margin: 10px 0px 0px;
    	color: #48e4ff;
    	text-shadow: 2px 2px 5px #48e4ffab;
    	
    }
    
    h3{
    
    	margin: 0;
    	font-size: 20px;
    	color: #aaf2ff;
    	text-shadow: 1px 1px 2px #aaf2ff;
    	
    }
    
    #campoLogin{
    
    	width: 100%;
    	height: 100%;
    	display: flex;
    	justify-content: center;
    	align-items: center;
    	
    }
    
    #campoLogin form{
    
		border-radius: 20px;
		text-align: center;
    	width: 40%;
    	height: 70%;
		background-color: #000000b8;
		
    }
    
    #campoLogin form .campo{
    
    	border: 1px solid #1c89c6;
    	background-color: #000;
    	border-radius: 7px;
    	width: 70%;
    	height: 10%;
    	margin: 5px 0px;
    	color: #1c89c6;
    	text-align: center;
    	
    }
    
    #campoLogin form .campo:focus{
    
    	border: 1px solid #1c89c6;
    	background-color: #000;
    	border-radius: 7px;
    	width: 70%;
    	height: 10%;
    	margin: 5px 0px;
    	color: #1c89c6;
    	text-align: center;
    	
    }
    
    #campoLogin form .botao{
    
    	border: solid 1px black;
   		border-radius: 10px;
    	background-color: #48e4ff;
    	height: 14%;
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
    
</style>
<body>
	<div id="campoLogin">
		<form action="login" method="post">
		
				
				
				<h2>LOGIN</h2>
				<br>
				<h3>EMAIL</h3>
				<br>
				<input required class="campo" type="text" name="email"> 
				<br> <br>
				<h3>SENHA</h3>
				<br>
				<input required class="campo" type="password" name="senha"> 
				<br> <br>
				<input type="submit" class ="botao" name="botao" value="ENTRAR">
				
				
				${resposta}

		</form>
		
	</div>
	
	
	
</body>
</html>
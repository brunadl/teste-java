<%@page import="br.fiap.entidade.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USUÁRIO</title>
</head>
<body>

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
    	width: 90%;
    	height: 85%;
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
    
    .regras{
    	width: 80%;
    	text-align: center;
    	margin: 50px auto 60px;
    }
    
    .regras > p {
    	font-size: 18px;
    	color: #48e4ff;
    	margin-top: 5px;
    }

    </style>

	<div id="campoLogin">
	<form action="Jogo" method="post">
		<h2>COMO JOGAR</h2>
		<div class="regras">
		
			<p>- Para seguir sua jornada, navegará usando o campo "GPS", colocando a coordenada do local no qual você quer ir;</p>
			<p>- Para acessar o arquivo contido em cada local, você precisará da senha de acesso, fornecida no local anterior, se você errar a senha, é porque está no local errado;</p>
			<p>- Ao acessar um local, terá as informações: Arquivo (uma frase incompleta), Dica e chave de acesso para o próximo local;</p>
			<p>- Depois de obter essas informações, é só navegar para o próximo loca, e assim consecutivamente, até chegar no último local, onde terá a pista final;</p>
			<p class="obs">OBS: Guarde todas as chaves de acesso e arquivos, você precisará deles!</p>
		
		</div>
	
		<input type="hidden" name="usuarioId" value="${usuario.id_usuario}">		
		<input type="submit" class ="botao" name="botao" value="COMECAR">
		
		${resposta2}
	</form>
	</div>
	
</body>
</html>
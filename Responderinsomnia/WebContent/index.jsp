<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String nome = request.getParameter("nome");
		int idade = Integer.parseInt(request.getParameter("idade"));
		
		String classificacao = "";
		if(idade >= 60){
			classificacao = "Velho(a)";
		}else if(idade > 30){
			classificacao = "Adulto(a)";
		}else if(idade > 25){
			classificacao ="Jovem";
		}else if(idade > 17){
			classificacao = "Adolecsente";
		}else if(idade > 10){
			classificacao = "criança";
		}
			
		
		String sexo = request.getParameter("sexo");
		
		if(sexo != null){
			if(sexo.toUpperCase().equals("M")){
				sexo = "Homem";
			}else if(sexo.toUpperCase().equals("F")){
				sexo = "Mulher";
			}else if(sexo.toUpperCase().equals("T")){
				sexo = "Trans";
			}
	
		}
		
		out.print("Oi "+nome+", você tem "+idade+" anos, é "+sexo+" e é "+classificacao);
	%>
</body>
</html>
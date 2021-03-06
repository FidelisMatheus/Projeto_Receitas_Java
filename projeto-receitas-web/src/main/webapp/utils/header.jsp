<%@page import="model.Usuario" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

				<!DOCTYPE html>
				<html>
				<link href="css/geral.css" rel="stylesheet">
				

				<head>
					<meta charset="ISO-8859-1">
					<meta name="viewport" content="width=device-width, initial-scale=1">
					<title>Insert title here</title>
					<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
						rel="stylesheet"
						integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
						crossorigin="anonymous">
					<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
						integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
						crossorigin="anonymous"></script>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
						integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
						crossorigin="anonymous"></script>
					<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
						integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
						crossorigin="anonymous"></script>

					<style>
						@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');
					</style>

				</head>

				<body>

					<div>
						<nav style="background:white !important" class="navbar navbar-expand-lg navbar-dark bg-dark">

							<div class="container-fluid">

								<div>
									<a style="display: flex;flex-direction: row;align-items: center;"
										class="navbar-brand" href="Home.jsp">
										<img src="./images/logo.png" alt="" width="30" height="30"
											class="d-inline-block align-text-top">
										<h2
											style="font-family:'Poppins';font-weight:400 !important;font-size:16px; padding-left:8px; color: #EF7D00;margin-bottom: 0;">
											RECEITAS DE CASA</h2>
									</a>
								</div>


								<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
									data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
									aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>

								<!-- Pesquisa
			    	<form method="post" action="pagina_de_resultados.html">
					  <input type="text" name="q" value="Pesquisar...">
					  <input type="submit" value="Pesquisar">
					</form>
			     -->

								<div class="nav justify-contente-center">
									<form action="Search" method="post" class="d-flex">
										<input style="border-radius: 200px;margin-right: 10px;border: 1px solid #DBDBDB;outline: none;font-size: 16px;" type="text" name="pesquisa" id="pesquisa">
										<input class="btn-pesq" type="submit" value="Pesquisar" />
									</form>
								</div>

								<div>
									<div class="collapse navbar-collapse" id="navbarSupportedContent">

										<ul class="header-direita">
											<!--<li class="nav-item">
					          <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
					        </li>-->

											<li>
												<a href="usuariosadd.jsp">
													<img style="width: 20px;height: 20px;" src="./images/cadastrar.png"
														alt="">
													<h6>Cadastrar-se</h6>
												</a>
											</li>

											<% String user=(String) session.getAttribute("user"); if (user !=null) {
												session=request.getSession(); %>
												<li>
													<a href="receitasadd.jsp">
														<img style="width: 20px;height: 20px;"
															src="./images/receita.png" alt="">
														<h6>Envie sua receita</h6>
													</a>

													<% } else { %>
														<a
															style="background: transparent; border: none !important;font-size:0;">

														</a>
														<% } %>
												</li>

												<li>
													<% user=(String) session.getAttribute("user"); if (user !=null) {
														session=request.getSession(); %>
														<div class="dropdown">
															<button style="background-color:#EF7D00;border:none;"
																class="btn btn-secondary dropdown-toggle" type="button"
																id="dropdownMenuButton" data-toggle="dropdown"
																aria-haspopup="true" aria-expanded="false">
																${ user }
															</button>
															<div style="width:100%" class="dropdown-menu"
																aria-labelledby="dropdownMenuButton">
																<a class="dropdown-item"
																	href="usuariosadd.jsp">Adicionar</a>
																<a class="dropdown-item" href="usuarioscon.jsp">Ver
																	todos</a>
																<a class="dropdown-item" href="usuariosedit.jsp">Editar
																	Cadastro</a>
																<a class="dropdown-item"
																	href="LoginJSP/Deslogar.jsp">Sair</a>
															</div>
														</div>
														<% } else { %>
															<a href="Login.jsp">
																<img style="width: 20px;height: 20px;"
																	src="./images/entrar.png" alt="">
																<h6>Entrar</h6>
															</a>
															<% } %>
												</li>
										</ul>
									</div>
								</div>
							</div>
						</nav>
					</div>

					<!-- Categorias -->

					<div>
						<nav class="navbar navbar-dark bg-secundary">

							<div class="container-fluid">

								<button type="button" class="btn-nav">Bolos</button>
								<button type="button" class="btn-nav">Carne</button>
								<button type="button" class="btn-nav">Peixe</button>
								<button type="button" class="btn-nav">Salada</button>
								<button type="button" class="btn-nav">Molho</button>
								<button type="button" class="btn-nav">Sopas</button>
								<button type="button" class="btn-nav">Bebidas</button>
								<button type="button" class="btn-nav">Lanches</button>
								<button type="button" class="btn-nav">Saudavel</button>
								<button type="button" class="btn-nav">Natal</button>

							</div>

						</nav>

					</div>


				</body>

				</html>
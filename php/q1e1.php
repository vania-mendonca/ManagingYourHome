<html>
	<head>

		<!-- Propriedades do documento -->
		<meta content="text/html; charset=UTF-8" http-equiv="content-type"/>

		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="../stylesheet.css">

		<!-- JQuery -->
		<script type="text/javascript" src="../scripts/jquery.js"></script>

		<title>Managing Your Home: Estore 1</title>
	</head>


	<body>
		<style type="text/css">
		/* MOVER PARA O STYLESHEET! */

			#blind_feedback {
				position: relative; 
				width: 90%; 
				max-height: 50%;
				margin-left: auto; 
				margin-right: auto;
			}

			#estore_q1e1 {
				background-color: #112211;
				position: absolute;
				-webkit-transform:rotate(180deg);
				width: 350px; 
			}

			#estore {				
				position: absolute; 
				z-index: 1; 
			}

			#estore img {		
				height: 300px;
			} 

			#blind_controls {			
				position: relative;
			}

			#open {
				margin-left: 45px; 
				color: #112211;
				font-family: Arial;
				font-size: 16pt;
				font-weight: bold;
			}

			#closed {

				margin-left: 40px; 
				color: #112211;
				font-family: Arial;
				font-size: 16pt;
				font-weight: bold;
			}

			#slider_geral {
				position: relative;
			/*	background-color: #5500FF;*/
				height: 220px;

			}

			/* Blind Slider */
			input[type="range"]#blind_slider {
			    -webkit-appearance: none;
			    background-color: #112211;
			    width: 200px;
			    height: 20px;			    
			    -webkit-transform:rotate(90deg);       
			    -moz-transform:rotate(90deg);
			    -o-transform:rotate(90deg);
			    -ms-transform:rotate(90deg);
			    transform:rotate(90deg); 
			    z-index: 0;
			    margin-top: 100px;
			    margin-left: -20px; 
			}

			input[type="range"]#blind_slider::-webkit-slider-thumb {
			    -webkit-appearance: none;			    
			    background-color: #94c600;
			    opacity: 1.0;
			    width: 25px;
			    height: 50px;
			}

			

		</style>
		<!-- *************************************************************** -->

		<table width="100%" height="100%">
			<tr><td id="container">
				<table id="layout" border="0">
					<tr>
						<td id="sidebar">
							<div class="sbaritem" id="sbarlogo">
								<img src="../media/img/minilogo.png"/>
							</div>

							<div class="sbaritem" id="logout">
									<?php 
										require 'procedures/connection.php';
										$query = "SELECT uNome FROM utilizador NATURAL JOIN login;";
										$result = pg_query($query) or die(pg_last_error());
										foreach (pg_fetch_assoc($result) as $value)
											$nome = $value;
										$token = explode(' ',trim($nome));
										echo $token[0];
										pg_free_result($result);
										pg_close();
									?><br>
									<img src="../media/img/logout.png"/>
							</div>
						
							<div class="sbaritem" id="edit">
								<img src="../media/img/editar.png"/>
							</div>
						
							<div class="sbaritem" id="help">
								<img src="../media/img/ajuda.png"/>
							</div>

						</td>
						<td id="main">
							<table id="sublayout">
								<tr id="cabecalho"><td>
									<div class="hcentered">	
										<table id="currentLocation">
											<tr>
												<td id="back" style="opacity: 100"><a href="planta.php"><img src="../media/img/seta.png"></a></td>
												<td id="divisionTitle"><span id="path">Planta ► <?php 
														require 'procedures/connection.php';
														$query = "select dNome from divisao NATURAL JOIN equipada where eID = 'q1e1';";
														$result = pg_query($query) or die(pg_last_error());
														foreach (pg_fetch_assoc($result) as $value)
															$nome = $value;
														echo $value;
														pg_free_result($result);
														pg_close();
													?> ► </span>
												<span id="location"><?php 
														require 'procedures/connection.php';
														$query = "select eNome from equipamento where eID = 'q1e1';";
														$result = pg_query($query) or die(pg_last_error());
														foreach (pg_fetch_assoc($result) as $value)
															$nome = $value;
														echo $value;
														pg_free_result($result);
														pg_close();
													?></span></td>
											</tr>
										</table>
									</div>
								</td></tr>
								<tr id="corpo"><td>	

									<table width="100%" height="100%">
										<tr>
											<td width="10%"></td>
											<td width="40%">        
												<div style="position: relative; max-width: 60%; margin-top: -30%;">
													<div id="blind_feedback">
														<?php 
															require 'procedures/connection.php';

															$query = "select v1 from equipamento where eID = 'q1e1';";
															$result = pg_query($query) or die(pg_last_error());
															foreach (pg_fetch_assoc($result) as $value)
																$valor = $value;
															pg_free_result($result);

															echo "<div id=\"estore_q1e1\" style=\"height:" . $valor . "px;\">&nbsp;</div>";                        			
																echo "<div id=\"estore\" width=\"100%\" height=\"100%\">";

																echo "<img src=\"../media/img/janelaAberta.png\"><br>";
															//	echo "<div id=\"value\">" . $valor . "%</div>";
														?>
														</div>														
													</div>
												</div>
											</td>
											<td width="50%" style="background-color: #0055FF;">
												<div id="blind_controls">

													<?php 
															echo "<div id=\"open\">Aberto</div><div id=\"slider_geral\"><input id=\"blind_slider\" type=\"range\" name=\"blind\" 
															min=\"0\" max=\"300\" value=\"" . $valor . "\" 
															onchange=\"updateBlind('#estore_q1e1', this.value)\"
															onmouseup=\"updateBlindDB('q1e1')\"></div><div id=\"closed\">Fechado</div>";
													?>
														
												</div> 
											</td>
										</tr>
									</table>

								</td></tr>
								<tr id="rodape"><td style="background-color: #AACC00;">
									<div id="error">&nbsp;</div>
								</td></tr>			

							</table>

							<div class="toggle" id="ajuda">ajuda</div>
							<div class="toggle" id="editar">editar</div>
						</td>
					</tr>
				</table>
			</td></tr>
		</table>
	<!-- JavaScripts -->
		<script type="text/javascript" src="../scripts/scripts.js"></script>		

	</body>
</html>
<?php
echo'
			<div id="content_f">
				<div id="n1_titulo">
					<h2>Formulario de registro</h2>
				</div>
				<div id="n1_texto" class="texto_login">
					<form method="post" action="#">  
					<table>
							<tr>
								<td>Nombre:</td>
								<td><input type="text" id="name" name="name" value="" placeholder="Tu nombre" required autofocus/></td>
							</tr>
							<tr>
								<td>Email:</td>
								<td><input type="password" name="pass"></td>
							</tr>
							<tr>
								<td>Mensaje:</td>
								<td> <textarea id="message" name="message" placeholder="Escriba su mensaje." required></textarea> </td>
							</tr>
							<tr>
								<td></td>
								<td><input class="boton" type="submit" value="Enviar"></td>
							</tr>	
						</table>	
				   </form>  
									
					
					
				</div>				
			</div>
';
?>
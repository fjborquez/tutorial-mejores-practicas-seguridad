<%@ page import="org.owasp.encoder.Encode" %>

<html>
	<body>
		Ejemplo sin usar encoder: <%= request.getAttribute("message").toString() %><br/>
		Ejemplo usando encoder básico: <%= Encode.forHtml(request.getAttribute("message").toString()) %><br/>
		Ejemplo usando encoder para textarea:
		<textarea name="text">
			<%= Encode.forHtmlContent(request.getAttribute("message").toString()) %>
		</textarea>
		<br/>
		Ejemplo usando encoder para atributos html: <input type="text" name="address" value="<%= Encode.forHtmlAttribute(request.getAttribute("message").toString()) %>" />
	</body>
</html>
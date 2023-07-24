<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<f:view>
		<f:loadBundle basename="org.jboss.tools.examples.message" var="msg" />
		<h:messages></h:messages>

		<h:form>
			<h:dataTable value="#{employeeBean.list}" var="emp" border="2">
				<h:column id="column1">
					<f:facet name="header">
						<h:outputText value="Id" />
					</f:facet>
					<h:outputText value="#{emp.id }"></h:outputText>
				</h:column>
				<h:column id="column2">
					<f:facet name="header">
						<h:outputText value="Name" />
					</f:facet>
					<h:outputText value="#{emp.name}"></h:outputText>
				</h:column>
				<h:column id="column3">
					<f:facet name="header">
						<h:outputText value="Age" />
					</f:facet>
					<h:outputText value="#{emp.age }"></h:outputText>
				</h:column>
			</h:dataTable>
		</h:form>
	</f:view>
</body>
</html>
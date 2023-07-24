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
	<h3>List Students</h3>
</f:view>
	<h:form rendered="#{not empty studentBean.list}">

		<h:dataTable value="#{studentBean.list}" var="std">

			<h:column>
				<f:facet name="header">ID</f:facet>#{std.id} </h:column>
			<h:column>
				<f:facet name="header">Name</f:facet>#{std.name}</h:column>
			<h:column>
				<f:facet name="header">Age</f:facet>#{std.age}</h:column>

			<h:column>
				<h:commandButton value="edit" action="#{studentBean.edit(std) }" />
			</h:column>
			<h:column>
				<h:commandButton value="delete"
					action="#{studentBean.delete(std) }" />
			</h:column>
		</h:dataTable>

	</h:form>

	<h:panelGroup rendered="#{empty studentBean.list }">
		<p>No students! Please add student.</p>
	</h:panelGroup>

	<h:panelGroup rendered="#{!studentBean.edit }">
		<h3>Add student</h3>
		<h:form>
			<p>
			<p>
				Age:
				<h:inputText value="#{studentBean.std.age }"></h:inputText>
			</p>
			<p>
				Name:
				<h:inputText value="#{studentBean.std.name }"></h:inputText>
			</p>
			<p>
				<h:commandButton value="add" action="#{studentBean.add() }" />
				<h:commandButton value="reset" action="#{studentBean.resetAdd() }" />
			</p>
		</h:form>
	</h:panelGroup>

	<h:panelGroup rendered="#{studentBean.edit}">
		<h3>Edit Student #{studentBean.std.id }</h3>
		<h:form>
			<p>
				Age:
				<h:inputText value="#{studentBean.std.age }" />
			</p>
			<p>
				Name:
				<h:inputText value="#{studentBean.std.name }" />

			</p>
			<p>
				<h:commandButton value="Save" action="#{studentBean.saveEdit() }" />
				<h:commandButton value="Cancel"
					action="#{studentBean.cancelEdit() }" />
			</p>
		</h:form>
		
	</h:panelGroup>
	
	<p>
		<a href="#{appUrlStore.baseUrl}">Go back to index</a>
	</p>
	
</body>

</html>
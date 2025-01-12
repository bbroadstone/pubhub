
<!-- Header -->
<jsp:include page="header.jsp" />

<!-- JSTL includes -->
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- 	Just some stuff you need -->
<header>
	<div class="container">


		<c:choose>
			<c:when test="${not empty message }">
				<p class="alert ${messageClass}">${message }</p>
				<%
					session.setAttribute("message", null);
							session.setAttribute("messageClass", null);
				%>
			</c:when>
		</c:choose>

		<h1>
			PubHub <small>Add Book to PubHub</small>
		</h1>
		<hr class="book-primary">

		<form action="/book/add" method="post" class="form-horizontal"
			enctype="multipart/form-data">
			<sec:csrfInput />
			<sec:csrfMetaTags />
			<div class="form-group">
				<label for="isbn13" class="col-sm-4 control-label">ISBN 13</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="isbn13" name="isbn13"
						placeholder="ISBN 13" required="required" value="${param.isbn13 }" />
				</div>
			</div>
			<div class="form-group">
				<label for="title" class="col-sm-4 control-label">Title</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="title" name="title"
						placeholder="Title" required="required" value="${param.title }" />
				</div>
			</div>
			<div class="form-group">
				<label for="author" class="col-sm-4 control-label">Author</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="author" name="author"
						placeholder="Author" required="required" value="${param.author }" />
				</div>
			</div>
			<div class="form-group">
				<label for="content" class="col-sm-4 control-label">Content</label>
				<div class="col-sm-5">
					<input type="file" class="form-control" id="content" name="content"
						placeholder="Content" value="${param.content }" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-1">
					<button type="submit" class="btn btn-info">Publish Book</button>
				</div>
			</div>
		</form>
	</div>
</header>



<!-- Footer -->
<jsp:include page="footer.jsp" />

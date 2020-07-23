<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Studentska Sluzba</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Studentska Sluzba</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="/login">Login
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/create-student">Create Student <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/show-students">All Students <span class="sr-only">(current)</span>
				</a></li>
		</div>
	</nav>

	
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container py-3" id="homediv">
				<div class="jumbotron text-center">
					<h1>Dobrodosli U IMI Studensku Sluzbu</h1>
					<h3>SAasklsakl eqopEDEDEwdjke</h3>
				</div>
			</div>
		</c:when>
		
		<c:when test="${mode=='MODE_CREATE_STUDENT'}">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-student">
					<input type="hidden" name="id" value="${student.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Ime</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="ime"
								value="${student.ime }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Prezime</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="prezime"
								value="${student.prezime }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email"
								value="${student.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Jmbg </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="jmbg"
								value="${student.jmbg }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${student.password }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Indeks</label>
						<div class="col-md-7">
						<input type="text" class="form-control" name="indeks"
							value="${student.indeks }" />
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Godina</label>
						<div class="col-md-7">
							<input type="number" class="form-control" name="godina"
								value="${student.godina }" />
						</div>
					</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
		
		<c:when test="${mode=='ALL_STUDENTS'}">
		<div class="container text-center" id="tasksDiv">
			<h3>All Users</h3>
			<hr>
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Ime</th>
							<th>Prezime</th>
							<th>Email</th>
							<th>Jmbg</th>
							<th>Password</th>
							<th>Indeks</th>
							<th>Godina</th>
							<th>Obrisi</th>
							<th>Edit</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="student" items="${students }">
							<tr>
								<td>${student.id}</td>
								<td>${student.ime}</td>
								<td>${student.prezime}</td>
								<td>${student.email}</td>
								<td>${student.jmbg}</td>
								<td>${student.password}</td>
								<td>${student.indeks}</td>
								<td>${student.godina}</td>
								
								<td><a href="/delete-student?id=${student.id }">Obrisi</a></td>
								<td><a href="/edit-student?id=${student.id }">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		</c:when>
		
		<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update Student</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-student">
					<input type="hidden" name="id" value="${student.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Ime</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="ime"
								value="${student.ime }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Prezime</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="prezime"
								value="${student.prezime }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email"
								value="${student.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Jmbg </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="jmbg"
								value="${student.jmbg }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${student.password }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Indeks</label>
						<div class="col-md-7">
						<input type="text" class="form-control" name="indeks"
							value="${student.indeks }" />
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Godina</label>
						<div class="col-md-7">
							<input type="number" class="form-control" name="godina"
								value="${student.godina }" />
						</div>
					</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
</body>
</html>
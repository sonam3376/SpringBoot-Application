<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  width:50%;
  align:center;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>


</head>
<body>

<h2>State/City Details..</h2>

<div class="container">
  <form action="updateLoc" method="post">
  
  <div class="row">
    <div class="col-25">
      <label for="fname">Id</label>
    </div>
    <div class="col-75">
      <input type="text" id="id" name="id" value="${location.id}" readonly="true" >
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Code</label>
    </div>
    <div class="col-75">
      <input type="text" id="code" name="code" value="${location.code}">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="name" value="${location.name}">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="country">Country</label>
    </div>
    <div class="col-75">
      <select id="country" name="country">
        <option value="india">India</option>
        <option value="usa">USA</option>
      </select>
    </div>
  </div>
  
  <div class="row">
    		<div class="col-25">
      			<label for="subject">Type</label>
    		</div>
    		<div class="col-75">
      			<input type="radio"  name="type" value="Urban" ${location.type == 'Urban'?'checked':''}/><label for="Urban">Urban</label>
     			 <input type="radio"  name="type" value="Rural" ${location.type == 'Rural'?'checked':''}/><label for="Rural">Rural</label>      
   			 </div>
  		</div>
  <div class="row">
    <input type="submit" value="Submit">
  </div>
  
  
  </form>
  
  
</div>

</body>
</html>
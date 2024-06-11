<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body class="container-fluid">
	<h1>Box Cricket Registration Form</h1>
	<form action="saveStudCricket" method="post">
	
	<!-- Name -->
	<label class="form-label" for="name">Name : </label>
	<input type="text" id="name" class="form-control" name="name" value="${nameValue}" />
	<span style="color:red">${nameError}</span>
	<br/>

	<!-- Playing Type -->
	<label for="type" class="form-label">Playing Type : </label>
	<input type="radio" class="form-check-input" id="batsman" name="playerType" value="Batsman" ${playerTypeValue!=null && playerTypeValue.equals("Batsman")?"checked":""} >
	<label for="batsman" class="form-check-label" class="form-label">Batsman </label>
	<input type="radio" class="form-check-input" id="bowler" name="playerType" value="Bowler" ${playerTypeValue!=null && playerTypeValue.equals("Bowler")?"checked":""} >
	<label for="bowler" class="form-check-label" class="form-label">Bowler</label>
	<input type="radio" class="form-check-input" id="allRounder" name="playerType" value="AllRounder" ${playerTypeValue!=null && playerTypeValue.equals("AllRounder")?"checked":""} >
	<label for="allRounder" class="form-check-label" class="form-label">All Rounder</label>
	<span style="color:red">${playerTypeError}</span>
	<br/>
	
	<!-- Food Preference -->
	<label class="form-label" for="foodPreference">Food Preference : </label>
	<select class="form-select form-select-sm mb-3" id="foodPreference" name="foodPreference">
		<option value="-1">--- Select Your Food Preference ---</option>
		<option value="Regular" ${foodPreferenceValue!=null && foodPreferenceValue.equals("Regular")?"selected":""} >Regular</option>
		<option value="Jain" ${foodPreferenceValue!=null && foodPreferenceValue.equals("Jain")?"selected":""} >Jain</option>
	</select>
	<span style="color:red">${foodPreferenceError}</span>
	<br/>
	
	<!-- Drink -->
	<label class="form-label">Drink :- </label>
	<div class="form-check">
	<input type="checkbox" class="form-check-input" id="redbull" name="drink" value="RB" ${drinkValue.contains("RB")?"selected":""} /> 
	<label for="redbull" class="form-check-label" id="drink ">RB </label>
	</div>
	<div class="form-check">
	<input type="checkbox" class="form-check-input" id="mountainDue" name="drink" value="MD" /> 
	<label for="mountainDue" class="form-check-label" id="drink ">MD </label>
	</div>
	<div class="form-check">
	<input type="checkbox" class="form-check-input" name="drink" value="TH" /> 
	<label for="thumsUp" class="form-check-label" id="drink ">TH </label>
	</div>
	<div class="form-check">
	<input type="checkbox" class="form-check-input" name="drink" value="LJ" /> 
	<label for="lemonJuice" class="form-check-label" id="drink ">LJ </label>
	</div>
	<div class="form-check">
	<input type="checkbox" class="form-check-input" name="drink" value="CO" /> 
	<label for="cocaCola" class="form-check-label" id="drink ">CO </label>
	</div>
	<span style="color:red">${drinkError}</span>
	<br/>

	<!-- Submit Button -->
	<input type="submit" value="Register" class="btn btn-info" />
	</form>
</body>
</html>
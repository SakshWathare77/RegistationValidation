<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">

</style>


</head>
<body>
	<div class="container">
<div class="row">
<div class="col-md-6 offset-md-3 mt-2">
<div class="card">
<div class="card-header text-center fs-3">Student Registration</div>
<div class="card-body">

<form  method="post"  onsubmit="return validation()" >
 
 <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">First Name</label>
    <input type="text" class="form-control" name="firstname" id="firstname">
    <span id="firstnameError" class="text-danger font-weight-bold"></span>
  </div>
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Last Name</label>
    <input type="text" class="form-control" name="lastname" id="lastname">
   <span id="lastnameError" class="text-danger font-weight-bold"></span>
  </div>
  
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Address</label>
    <input type="text" class="form-control" name="address" id="address">
   <span id="addressError" class="text-danger font-weight-bold"></span>
  </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" name="email" id="email" >
    <span id="emailError" class="text-danger font-weight-bold"></span>
  </div>
  
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Contact</label>
    <input type="text" class="form-control" name="contact" id="contact">
   <span id="contactError" class="text-danger font-weight-bold"></span>
  </div>

  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" name="password" id="pass">
   <span id="passwordError" class="text-danger font-weight-bold"></span>
  </div>
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
    <input type="password" class="form-control" name="confirmpassword" id="cpass">
   <span id="cpasswordError" class="text-danger font-weight-bold"></span>
  </div>
  
  
  <button type="submit" class="btn btn-success" name="submit" value="submit">Submit</button>
   <button type="reset" class="btn btn-primary">Clear</button>
</form>
</div>
</div>
</div>
</div>
</div>

<!-- Display form data after submission -->
        <%
       // if (request.getMethod().equalsIgnoreCase("POST")){
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String firstName = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
           // String password = request.getParameter("password");
            //String confirmPassword = request.getParameter("confirmpassword");

            //if (firstName != null || lastName != null || address != null || email != null || contact != null || password != null || confirmPassword != null) {
             request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("address", address);
        request.setAttribute("email", email);
        request.setAttribute("contact", contact);
        //request.setAttribute("password", password);
       // request.setAttribute("confirmPassword", confirmPassword);

        // Redirect to Result.jsp
        request.getRequestDispatcher("Result.jsp").forward(request, response);
            }
            	
            	
            	%>
           
            

<script type="text/javascript">

   function validation()
   {
	   var FirstName =document.getElementById('firstname').value;
	   var LastName =document.getElementById('lastname').value;
	   var Address =document.getElementById('address').value;
	   var Email =document.getElementById('email').value;
	   var Contact =document.getElementById('contact').value;
	   var Password =document.getElementById('pass').value;
	   var Cpassword =document.getElementById('cpass').value;
	 // const name= /^[A-Za-z]+$/;
	   
	   if(FirstName == "")
		   {
		   document.getElementById('firstnameError').innerHTML="**please fill firstname";
		   return false;
		   }
	  
	   else if(FirstName.length < 2)
	   {
	   document.getElementById('firstnameError').innerHTML="**please enter valid name,length should be greater than 2";
	   return false;
	   }
	   else if(!isNaN(FirstName))
	   {
	   document.getElementById('firstnameError').innerHTML="**please enter valid name,only charactors are allowed";
	   return false;
	   }
	   else if(LastName == "")
	   {
	   document.getElementById('lastnameError').innerHTML="**please fill lastname";
	   return false;
	   }
	   else if(LastName.length < 3)
	   {
	   document.getElementById('lastnameError').innerHTML="**please enter valid name,length should be greater than 2";
	   return false;
	   }
	   else if(!isNaN(LastName))
	   {
	   document.getElementById('lastnameError').innerHTML="**please enter valid name,only charactors are allowed";
	   return false;
	   }
	   else if(Address == "")
	   {
	   document.getElementById('addressError').innerHTML="**please fill Address";
	   return false;
	   }
	   
	   else if(Email == "")
	   {
	   document.getElementById('emailError').innerHTML="**please fill Email";
	   return false;
	   }
	   else if(isNaN(Contact))
	   {
	   document.getElementById('contactError').innerHTML="**user must write digit only";
	   return false;
	   }
	   else if(Contact == "")
	   {
	   document.getElementById('contactError').innerHTML="**please fill contact details";
	   return false;
	   }
	   
	   else if((Contact.length < 10) || (Contact.length > 10))
	   {
	   document.getElementById('contactError').innerHTML="**Please enter valid contact ";
	  return false
	   }
	  
	   else if(Password == "")
	   {
	   document.getElementById('passwordError').innerHTML="**please insert strong password";
	   return false;
	   }
	   
	   else if(Cpassword == "")
	   {
	   document.getElementById('cpasswordError').innerHTML="**please fill field";
	   return false;
	   }
	   
	   else if((Password.length<2))
	   {
	   document.getElementById('passwordError').innerHTML="**please enter strong password";
	   return false;
	   }
	   
	   else if((Password.length>5))
	   {
	   document.getElementById('passwordError').innerHTML="**strong password";
	   }
	   
	   else if(Password != Cpassword)
	   {
	   document.getElementById('cpasswordError').innerHTML="**password is not matching";
	   return false;
	   }
	   
		   
	  
 }

</script>

</body>

</html>

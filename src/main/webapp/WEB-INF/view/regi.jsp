<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<div id="customerregi" class="popup222-effect">
		<div class="popup222">
			<div class="login px-sm-4 mx-auto mw-100">
				<h5 class="text-center mb-4">Register Now</h5>
				
				
				<form name="customerinfo" method="post" action="" class="slides-form margin-bottom-3">
					<div class="form-group">
					
						<label>Full Name</label> <input type="text" class="form-control"
							id="validationDefault01" placeholder="" required="">
					</div>
					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" id="validationDefault02" placeholder=""
							required="">
					</div>
					<div class="form-group">
						<label class="mb-2">Password</label> <input type="password"
							class="form-control" id="password1" placeholder="" required="">
					</div>
					<div class="form-group">
						<label>Confirm Password</label> <input type="password"
							class="form-control" id="password2" placeholder="" required="">
					</div>

					<button type="submit" class="btn btn-primary submit">Register</button>
					<p class="text-center mt-3">
						<a href="#">By clicking Register, I agree to your terms</a>
					</p>
				</form>
				
				<form:error path"user"/>
			</div>
			<a class="close" href="#">&times;</a>
		</div>
	</div>
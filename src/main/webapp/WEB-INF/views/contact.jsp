
<!-- Contact Section -->
<section id="contact">
	<div class="container" ng-app="mainApp" ng-controller="ContactCtrl">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Contact US</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row">
			<div ng-cloak ng-show="success_message" class="alert alert-success">
				<strong>{{success_message}}</strong>
			</div>
			<div ng-cloak ng-show="errors" class="alert alert-danger">
				<ul>
					<li ng-repeat="error in errors"><strong>{{error.message}}</strong></li>
				</ul>
			</div>
			<div class="col-lg-8 col-lg-offset-2">
				<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
				<!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
				<form name="form" role="form" ng-submit="sendMessage()">
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Name</label> <input type="text" class="form-control"
								placeholder="Name" id="name" name="name" required ng-model="message.name"
								data-validation-required-message="Please enter your name.">
							<p ng-cloak class="help-block text-danger" ng-show="submitted && form.name.$error.required">
									Please enter your name.</p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Email Address</label> <input type="email"
								ng-model="message.email" class="form-control"
								placeholder="Email Address" id="email" required name="email"
								data-validation-required-message="Please enter your email address.">

							<p ng-cloak class="help-block text-danger" ng-show="submitted && form.email.$error.required">
									Please enter your email.</p>
							<p ng-cloak class="help-block text-danger" ng-show="submitted && form.email.$error.email">
									Please enter valid email.</p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Phone Number</label> <input type="tel"
								class="form-control" placeholder="Phone Number" id="phone"
								required ng-model="message.phone" name="phone"
								ng-minlength="10" ng-maxlength="10"
								data-validation-required-message="Please enter your phone number.">

							<p ng-cloak class="help-block text-danger" ng-show="submitted && form.phone.$error.required">
									Please enter your phone number.</p>
							<p ng-cloak class="help-block text-danger" ng-show="submitted && ((form.phone.$error.minlength || form.phone.$error.maxlength) && form.phone.$dirty)">
									Please enter valid phone number.</p>
						</div>
					</div>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Message</label>
							<textarea rows="5" class="form-control" placeholder="Message"
								id="message" required ng-model="message.message" name="message"
								data-validation-required-message="Please enter a message."></textarea>

							<p ng-cloak class="help-block text-danger" ng-show="submitted && form.message.$error.required">
									Please enter a message.</p>
						</div>
					</div>
					<br>
					<div id="success"></div>
					<div class="row">
						<div class="form-group col-xs-12">
							<button type="submit" class="btn btn-success btn-lg" ng-click="submitted=true">Send</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>


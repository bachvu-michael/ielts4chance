<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.lat" default="10.7994154" />
<cfparam name="args.long" default="106.7116815" />
<cfparam name="args.zoom" default="10" />
<cfparam name="args.content" default="" />
<cfscript>
	event.include(assetId="js-googlemap");
</cfscript>
<cfoutput>
	<section class="contact-section py-5">
		<div class="container">
		  <div class="row contact-info bg-light">
			<div class="col-md-12 m-4">
				#args.content#
			</div>
		  </div>
		</div>
	  </section>
	<section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
		<div class="container">
			<div class="row d-flex align-items-stretch no-gutters">
				<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
					<form action="##">
					<div class="form-group">
					<input type="text" class="form-control" placeholder="Your Name">
					</div>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="Your Email">
					</div>
					<div class="form-group">
					<input type="text" class="form-control" placeholder="Subject">
					</div>
					<div class="form-group">
					<textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
					</div>
					<div class="form-group">
					<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
					</div>
				</form>
			</div>
				<div class="col-md-6 d-flex align-items-stretch">
					<div id="map" data-lat="#args.lat#" data-long="#args.long#" data-zoom="#args.zoom#"></div>
				</div>
			</div>
		</div>
	</section>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0cSb_T-3-Tm67hY6kXnvY-ZNolF1h5gc"></script>
</cfoutput>


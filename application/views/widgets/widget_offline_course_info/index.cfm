<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.paragrap_1" default="" />
<cfparam name="args.paragrap_2" default="" />
<cfoutput>
	<style>
		.offline-1 h2{
			color:##fff;
		}
	</style>
	<section class="ftco-section ftco-no-pt ftc-no-pb offline-1">
		<div class="mx-3">
			<div class="row">
				<div class="col-md-5 order-md-last wrap-about py-5 wrap-about bg-light px-5" style="background-color:##033ca5!important;color:##fff;">
					<div class="text px-4 ftco-animate">
						#args.paragrap_2#
					</div>
				</div>
				<div class="col-md-7 wrap-about py-5 pr-md-4 ftco-animate px-5" style="background-color:##cc1f1a!important;color:##fff;">
					#args.paragrap_1#
				</div>
			</div>
		</div>
	</section>
	
</cfoutput>
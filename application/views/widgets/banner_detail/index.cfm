<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.title" default="" />
<cfparam name="args.subtitle" default="" />
<cfparam name="args.image" default="" />
<cfscript>
	img = "/assets/kiddos/images/bg_2.jpg";
	if(!isEmpty(args.image)){
		img = event.buildLink(assetId=args.image);
	}
</cfscript>
<cfoutput>
	<section class="hero-wrap hero-wrap-2" style="background-image: url(#img#);">
		<div class="overlay"></div>
		<div class="container">
		  <div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
			  <h1 class="mb-2 bread">#args.title#</h1>
			  <p class="breadcrumbs"><span class="mr-2">#args.subtitle#</p>
			</div>
		  </div>
		</div>
	  </section>
</cfoutput>
<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.title" default="" />
<cfparam name="args.subtitle" default="" />
<cfparam name="args.link" default="" />
<cfparam name="args.image" default="" />
<cfscript>
	img = "/assets/kiddos/images/bg_3.jpg";
	if(!isEmpty(args.image)){
		img = event.buildLink(assetId=args.image)
	}
</cfscript>
<cfoutput>
	<section class="ftco-intro" style="background-image: url(#img#);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <h2>#args.title#</h2>
                    <p class="mb-0">#args.subtitle#</p>
                </div>
                <div class="col-md-3 d-flex align-items-center">
					<p class="mb-0">
						#renderLink( id=args.link,
						class="btn btn-secondary px-4 py-3")#
					</p>
                </div>
            </div>
        </div>
    </section>
</cfoutput>

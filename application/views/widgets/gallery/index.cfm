<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.images" default="" />
<cfoutput>
	<section class="ftco-gallery">
        <div class="container-wrap">
			<div class="row no-gutters">
				<cfif !isEmpty(args.images)>
					<cfloop list="#args.images#" index="img">
						<cfscript>
							small = event.buildLink(assetId=img,derivative="400x400");
							big = event.buildLink(assetId=img);
						</cfscript>
						<div class="col-md-3 ftco-animate">
							<a href="#big#" class="gallery image-popup img d-flex align-items-center"
								style="background-image: url(#small#);">
								<div class="icon mb-4 d-flex align-items-center justify-content-center">
									<span class="icon-instagram"></span>
								</div>
							</a>
						</div>
					</cfloop>
				</cfif>
            </div>
        </div>
    </section>
</cfoutput>

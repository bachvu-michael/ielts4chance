
<cfparam name="args.title" default="" />
<cfparam name="args.price" default="" />
<cfparam name="args.unit" default="" />
<cfparam name="args.description" default="" />
<cfparam name="args.image" default="" />
<cfparam name="args.link" default="" />
<cfscript>
    img = "/assets/kiddos/images/bg_1.jpg";
	if(!isEmpty(args.image)){
		img = event.buildLink(assetId=args.image,derivative="400x250")
	}
</cfscript>
<cfoutput>
    <div class="col-md-6 col-lg-3 ftco-animate">
        <div class="pricing-entry bg-light pb-4 text-center">
            <div>
                <h3 class="mb-3">#args.title#</h3>
                <p><span class="price">#args.price#</span> <span class="per">#args.unit#</span></p>
            </div>
            <div class="img" style="background-image: url(/assets/kiddos/images/bg_1.jpg);"></div>
            <div class="px-4">
                <p>#args.description#</p>
            </div>
            <p class="button text-center">
                #renderLink( id=args.link,
						class="btn btn-primary px-4 py-3")#
            </p>
        </div>
    </div>
</cfoutput>
  

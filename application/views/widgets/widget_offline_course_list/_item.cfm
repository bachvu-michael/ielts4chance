
<cfparam name="args.code" default="" />
<cfparam name="args.title" default="" />
<cfparam name="args.price" default="" />
<cfparam name="args.time" default="" />
<cfparam name="args.description" default="" />
<cfparam name="args.image" default="" />
		
	
<cfscript>
    img = "/assets/kiddos/images/bg_1.jpg";
	if(!isEmpty(args.image)){
		img = event.buildLink(assetId=args.image,derivative="hx240")
	}
</cfscript>
<cfoutput>
    <div class="col-md-4 ftco-animate">
        <a href="##" alt="" class="">
            <div class="pricing-entry bg-light text-center mb-5">
                <div class="img" style="background-image: url(#img#);"></div>
                <div class="p-2 text-left box-text">
                    <h2 class="pl-3">#args.title#</h2>
                    <p><i class="fas fa-tags"></i> #args.price#</p>
                    <p><i class="fas fa-business-time"></i> #args.time#</p>
                    <p><i class="fas fa-quote-left"></i> #args.description#</p>
                </div>
            </div>
        </a>
    </div>
</cfoutput>
  

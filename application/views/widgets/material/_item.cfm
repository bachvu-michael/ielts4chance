
<cfparam name="args.code" default="" />
<cfparam name="args.title" default="" />
<cfparam name="args.type" default="fa-file-word" />
<cfparam name="args.link" default="" />
<cfparam name="args.description" default="" />
<cfparam name="args.image" default="" />
	
<cfscript>
    img = "/assets/kiddos/images/bg_1.jpg";
	if(!isEmpty(args.image)){
		img = event.buildLink(assetId=args.image,derivative="hx240")
	}
</cfscript>
<cfoutput>
 
 <cfsavecontent variable="content">
    <div class="pricing-entry bg-light text-center mb-5">
        <i class="far #args.type# fa-7x p-5"></i>
        <div class="px-4 text-left box-text">
            <h2>#args.title#</h2>
            <p>#args.description#</p>
        </div>
    </div>
</cfsavecontent>
    <div class="col-md-4 ftco-animate">
        #renderLink( id=args.link,
            body=content,
            alt="#args.code#"
        )#
    </div>
</cfoutput>
  


<cfparam name="args.title" default="" />
<cfparam name="args.sub_title_1" default="" />
<cfparam name="args.sub_title_2" default="" />
<cfparam name="args.description" default="" />
<cfparam name="args.image" default="" />
<cfscript>
    img = "assets/kiddos/images/course-1.jpg";
	if(!isEmpty(args.image)){
		img = event.buildLink(assetId=args.image,derivative="400x450")
	}
</cfscript>
<cfoutput>
    <div class="col-md-6 course d-lg-flex ftco-animate">
        <div class="img" style="background-image: url(#img#);"></div>
        <div class="text bg-light p-4">
            <h3><a href="##">#args.title#</a></h3>
            <p class="subheading"><span>#args.sub_title_1#:</span>#args.sub_title_2#</p>
            <p>#args.description#</p>
        </div>
    </div>
</cfoutput>
  

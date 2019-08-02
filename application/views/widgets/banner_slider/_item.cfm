
<cfparam name="args.image"      default="" />
<cfparam name="args.content"    default="" />
<cfparam name="args.link"       default="" />
<cfscript>
    //img = event.buildLink(assetId=args.image,derivative="");
    img = event.buildLink(assetId=args.image);
    //assets/kiddos/images/bg_1.jpg
    link = renderLinkOnly( id=args.link);
    
</cfscript>
<cfoutput>
    
    <div class="slider-item" style="background-image:url(#img#);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center"
                data-scrollax-parent="true">
                <div class="col-md-8 text-center ftco-animate">
                    #args.content#
                    <cfif !isEmpty(args.link)>
                        <p class="mt-4">
                            <a href="#link#" class="btn btn-secondary px-4 py-3 mt-3">Read More</a>
                        </p>
                    </cfif>
                </div>
            </div>
        </div>
    </div>
       
</cfoutput>

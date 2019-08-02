<cfparam name="args.id" />
<cfparam name="args.title" />
<cfparam name="args.publish_date" />
<cfparam name="args.post_author" />
<cfparam name="args.teaser" />
<cfparam name="args.main_image" />
<cfparam name="args.mainImageDerivative" default="blogMainImageTeaserSmall" />

<cfscript>
    pageLink = event.buildLink( page=args.id );
    img = event.buildLink(assetId=args.main_image,derivative=args.mainImageDerivative);
</cfscript>

<cfoutput>
    <div class="col-md-6 col-lg-4 ftco-animate articles-item">
        <div class="blog-entry">
        <a href="#pageLink#" class="block-20 d-flex align-items-end" style="background-image: url(#img#);">
                            <div class="meta-date text-center p-2">
            <span class="day">#dateFormat( args.publish_date, "dd" )#</span>
            <span class="mos">#dateFormat( args.publish_date, "mmm" )#</span>
            <span class="yr">#dateFormat( args.publish_date, "yyyy" )#</span>
            </div>
        </a>
        <div class="text bg-white p-4">
            <h3 class="heading"><a href="#pageLink#">#args.title#</a></h3>
            <p>#args.teaser#</p>
            <div class="d-flex align-items-center mt-4">
                <p class="mb-0"><a href="#pageLink#" class="btn btn-secondary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
                <p class="ml-auto mb-0">
                    <a href="##" class="mr-2">#args.post_author#</a>
                    <a href="##" class="meta-chat"><span class="icon-chat"></span> 3</a>
                </p>
            </div>
        </div>
        </div>
    </div>
</cfoutput>


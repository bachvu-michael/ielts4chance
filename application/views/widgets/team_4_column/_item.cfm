
<cfparam name="args.title" default="" />
<cfparam name="args.subtitle" default="" />
<cfparam name="args.description" default="" />
<cfparam name="args.image" default="" />
<cfscript>
    img = "/assets/kiddos/images/teacher-1.jpg";
    if(!isEmpty(args.image)){
        img = event.buildLink(assetId=args.image,derivative="400x425");
    }
</cfscript>
<cfoutput>
    <div class="col-md-6 col-lg-3 ftco-animate">
        <div class="staff">
            <div class="img-wrap d-flex align-items-stretch">
                <div class="img align-self-stretch" style="background-image: url(#img#);">
                </div>
            </div>
            <div class="text pt-3 text-center">
                <h3>#args.title#</h3>
                <span class="position mb-2">#args.subtitle#</span>
                <div class="faded">
                    <p>#args.description#</p>
                    <ul class="ftco-social text-center">
                        <li class="ftco-animate"><a href="##"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="##"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="##"><span class="icon-google-plus"></span></a>
                        </li>
                        <li class="ftco-animate"><a href="##"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</cfoutput>

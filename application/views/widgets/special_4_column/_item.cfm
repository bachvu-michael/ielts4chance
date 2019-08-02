
<cfparam name="args.title" default="" />
<cfparam name="args.subtitle" default="" />
<cfparam name="args.icon" default="" />
<cfparam name="args.background" default="##000000" />
<cfoutput>
    <div class="col-md-3 d-flex services align-self-stretch pb-4 px-4 ftco-animate" style="background-color:#args.background#;">
        <div class="media block-6 d-block text-center">
            <div class="icon d-flex justify-content-center align-items-center">
                <span class="#args.icon#"></span>
            </div>
            <div class="media-body p-2 mt-3">
                <h3 class="heading">#args.title#</h3>
                <p>#args.subtitle#</p>
            </div>
        </div>
    </div>
</cfoutput>



<cfparam name="args.title"    default="" />
<cfparam name="args.sub_title"       default="" />
<cfparam name="args.description"       default="" />
<cfparam name="args.image"      default="" />
<cfscript>
    //img = event.buildLink(assetId=args.image,derivative="");
    img = event.buildLink(assetId=args.image,derivative= "120x120");
    
</cfscript>
<cfoutput>
       
<div class="item">
    <div class="testimony-wrap d-flex">
      <div class="user-img mr-4" style="background-image: url(#img#)">
      </div>
      <div class="text ml-2 bg-light">
          <span class="quote d-flex align-items-center justify-content-center">
          <i class="icon-quote-left"></i>
        </span>
        <p>#args.description#</p>
        <p class="name">#args.sub_title#</p>
        <span class="position">#args.title#</span>
      </div>
    </div>
</div>

</cfoutput>

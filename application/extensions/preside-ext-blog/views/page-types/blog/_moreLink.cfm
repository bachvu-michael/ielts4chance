<cfscript>
    if(event.getCurrentPresideUrlPath()==event.getCurrentUrl()){
        link = event.getCurrentUrl()&'?maxrows='& ( args.maxRows + 10 );
    }else{
        index = event.getCurrentUrl().find('maxrows');
        if(index){
            link = event.getCurrentUrl().left(index - 1)&'maxrows='& ( args.maxRows + 10 );
        }else{
            link = event.getCurrentUrl()&'&maxrows='& ( args.maxRows + 10 );
        }
    }
</cfscript>
<cfif args.hasMore>
    <cfoutput>
        <p class="load-more u-aligned-center">
            <!--- TODO: i18n --->
            <a href="#link#"><span class="btn btn-primary px-4 py-3">Show more</span></a>
        </p>
    </cfoutput>
</cfif>
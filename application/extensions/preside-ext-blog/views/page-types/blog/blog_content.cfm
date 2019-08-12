<cf_presideparam name="args.title" type="string" field="page.title" editable="true" />
<cf_presideparam name="args.sidebar_content" type="string" field="blog.sidebar_content" editable="true" />

<cfscript>
    // TODO: check if we should integrate that in the extension or have it in the skeleton
    //event.include( assetId="/css/specific/blog-post/", throwOnMissing=false )
</cfscript>
<cfoutput>
    #args.sidebar_content#
    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row ftco-animate fadeInUp ftco-animated">
                <div class="col-md-12">
                        <h2 class="mb-3">#args.title#</h2>
                        #renderView( view="page-types/blog/_filters", args={ tags=prc.tagFilters, authors=prc.authorFilters, archives=prc.archiveFilters, blogId=event.getCurrentPageId() } )#
                </div>
            </div>
            <div class="row articles mod-listing">
                    <cfloop query="prc.blogPosts">
                        #renderView(
                            view='page-types/blog/_item',
                            args={
                                id=id,
                                title=title,
                                publish_date=publish_date,
                                post_author=postAuthor,
                                teaser=teaser,
                                main_image=main_image,
                                mainImageDerivative="blogMainImageTeaser"
                            }
                        )#
                    </cfloop>
            </div>
            <div class="row no-gutters my-5">
                <div class="col text-center">
                    <div class="block-27">
                        #renderView( view="page-types/blog/_moreLink", args={ hasMore=prc.hasMore, maxRows=rc.maxRows ?: prc.presidePage.initial_max_rows } )#
                    </div>
                </div>
            </div>
        </div>
    </section>
</cfoutput>
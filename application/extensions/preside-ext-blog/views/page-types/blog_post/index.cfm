<cf_presideparam name="args.title"        	   field="page.title"        		   editable="true"  />
<cf_presideparam name="args.main_content"      field="page.main_content" 		   editable="true"  />
<cf_presideparam name="args.teaser"      	   field="page.teaser" 		   		   editable="true"  />
<cf_presideparam name="args.main_image"    	   field="page.main_image" 			   editable="false" />
<cf_presideparam name="args.publish_date"      field="blog_post.publish_date" 	   editable="true"  />
<cf_presideparam name="args.allow_comments"    field="blog_post.allow_comments"    editable="false" />
<cf_presideparam name="args.authorName" 	   field="postAuthor.name" 		  	   editable="false" />
<cf_presideparam name="args.authorDescription" field="postAuthor.description" 	   editable="false" />
<cf_presideparam name="args.authorPicture" 	   field="postAuthor.picture" 		   editable="false" />

<cfscript>
	img = "/assets/kiddos/images/bg_2.jpg";
	if(!isEmpty(args.main_image)){
		img = event.buildLink(assetId=args.main_image, derivative= "blogPostBanner");
	}
	//bannerImageSource = len( args.main_image ) ? event.buildLink( assetId=args.main_image, derivative= "blogPostBanner"  ) : "";
	// TODO: check if we should integrate that in the extension or have it in the skeleton
	// event.include( assetId="/css/specific/blog-post/", throwOnMissing=false )
	// 	 .include( assetId="jq-parallax", throwOnMissing=false );
</cfscript>

<cfoutput>
	<section class="hero-wrap hero-wrap-2" style="background-image: url(#img#);">
		<div class="overlay"></div>
		<div class="container">
		  <div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
			  <h1 class="mb-2 bread">#args.title#</h1>
			  <p class="breadcrumbs"><span class="mr-2">#args.teaser#</p>
				<p class="breadcrumbs"><span class="mr-2">#args.publish_date#</p>
			</div>
		  </div>
		</div>
	</section>
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 ftco-animate">
					<div class="wrap_content">
						#args.main_content#
					</div>
					<div class="tag-widget post-tag-container mb-5 mt-5">
						<cfif prc.tags.recordCount>
							<div class="tagcloud">
								<cfloop query="prc.tags">
									<a  class="tag-cloud-link" href="#event.buildLink( page=prc.presidePage.parent_page, queryString='filterAction=add&filterType=tags&filterValue=#prc.tags.id#' )#">#prc.tags.label#</a>
								</cfloop>
							</div>
						</cfif>
					</div>
					<div class="about-author d-flex p-4 bg-light">
						<div class="bio mr-5">
							<img src="#event.buildLink(assetId=args.authorPicture, derivative= "blogPostAuthor")#" alt="Image placeholder" class="img-fluid mb-4">
						</div>
						<div class="desc">
							<h3>#args.authorName#</h3>
							<cfif len( args.authorDescription )>
								<p>#args.authorDescription#</p>
							</cfif>
						</div>
					</div>

				</div> <!-- .col-md-8 -->

				<div class="col-lg-4 sidebar ftco-animate">
					<div class="sidebar-box ftco-animate">
						<h3>Category</h3>
					<ul class="categories">
						<li><a href="##">Art <span>(6)</span></a></li>
						<li><a href="##">Sports <span>(8)</span></a></li>
						<li><a href="##">Language <span>(2)</span></a></li>
						<li><a href="##">Food <span>(2)</span></a></li>
						<li><a href="##">Music <span>(2)</span></a></li>
					</ul>
					</div>

					<div class="sidebar-box ftco-animate">
					<h3>Popular Articles</h3>
					<div class="block-21 mb-4 d-flex">
						<a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
						<div class="text">
						<h3 class="heading"><a href="##">Even the all-powerful Pointing has no control about the blind texts</a></h3>
						<div class="meta">
							<div><a href="##"><span class="icon-calendar"></span> Jan. 27, 2019</a></div>
							<div><a href="##"><span class="icon-person"></span> Dave Lewis</a></div>
							<div><a href="##"><span class="icon-chat"></span> 19</a></div>
						</div>
						</div>
					</div>
					<div class="block-21 mb-4 d-flex">
						<a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
						<div class="text">
						<h3 class="heading"><a href="##">Even the all-powerful Pointing has no control about the blind texts</a></h3>
						<div class="meta">
							<div><a href="##"><span class="icon-calendar"></span> Jan. 27, 2019</a></div>
							<div><a href="##"><span class="icon-person"></span> Dave Lewis</a></div>
							<div><a href="##"><span class="icon-chat"></span> 19</a></div>
						</div>
						</div>
					</div>
					<div class="block-21 mb-4 d-flex">
						<a class="blog-img mr-4" style="background-image: url(images/image_3.jpg);"></a>
						<div class="text">
						<h3 class="heading"><a href="##">Even the all-powerful Pointing has no control about the blind texts</a></h3>
						<div class="meta">
							<div><a href="##"><span class="icon-calendar"></span> Jan. 27, 2019</a></div>
							<div><a href="##"><span class="icon-person"></span> Dave Lewis</a></div>
							<div><a href="##"><span class="icon-chat"></span> 19</a></div>
						</div>
						</div>
					</div>
					</div>

					<div class="sidebar-box ftco-animate">
					<h3>Tag Cloud</h3>
					<ul class="tagcloud m-0 p-0">
						<a href="##" class="tag-cloud-link">School</a>
						<a href="##" class="tag-cloud-link">Kids</a>
						<a href="##" class="tag-cloud-link">Nursery</a>
						<a href="##" class="tag-cloud-link">Daycare</a>
						<a href="##" class="tag-cloud-link">Care</a>
						<a href="##" class="tag-cloud-link">Kindergarten</a>
						<a href="##" class="tag-cloud-link">Teacher</a>
					</ul>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3>Archives</h3>
					<ul class="categories">
						<li><a href="##">December 2018 <span>(30)</span></a></li>
						<li><a href="##">Novemmber 2018 <span>(20)</span></a></li>
						<li><a href="##">September 2018 <span>(6)</span></a></li>
						<li><a href="##">August 2018 <span>(8)</span></a></li>
					</ul>
					</div>
				</div><!-- END COL -->
				</div>
		</div>
	</section>
</cfoutput>
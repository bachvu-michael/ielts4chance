<cfscript>
    mainNav 	= renderViewlet( event="core.navigation.mainNavigation", args={ depth=1 });
	site    	= event.getSite();
    logo 		= site.logo ?: "";
	logoSource  = len(logo) ? event.buildLink( assetId=logo , derivative= "headerLogo"  ) : "";
	address 	= site.address ?: "223/12 đường 120 tân phú Q9 HCM";
    phone 		= site.phone ?: "035 222 2222";
    email 		= site.email ?: "helloword@email.com";
</cfscript>
<cfoutput>
	<header>
		<div class="py-2 bg-primary">
			<div class="container">
				<div class="row no-gutters d-flex align-items-start align-items-center px-3 px-md-0">
					<div class="col-lg-12 d-block">
						<div class="row d-flex">
							<div class="col-md-5 pr-4 d-flex topper align-items-center">
								<div class="icon bg-fifth mr-2 d-flex justify-content-center align-items-center"><span class="icon-map"></span></div>
								<span class="text">#address#</span>
							</div>
							<div class="col-md pr-4 d-flex topper align-items-center">
								<div class="icon bg-secondary mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
								<span class="text">#email#</span>
							</div>
							<div class="col-md pr-4 d-flex topper align-items-center">
								<div class="icon bg-tertiary mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
								<span class="text">#phone#</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco_navbar ftco-navbar-light" id="ftco-navbar">
			<div class="container d-flex align-items-center">
				<a class="navbar-brand" href="/">
					<img src="/assets/img/logo75x77-white.png" alt="logo"/>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="/" class="nav-link pl-0"></a></li>
					#mainNav#
					<!--
					<li class="nav-item"><a href="teacher.html" class="nav-link">Teacher</a></li>
					<li class="nav-item"><a href="courses.html" class="nav-link">Courses</a></li>
					<li class="nav-item"><a href="pricing.html" class="nav-link">Pricing</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
					-->
				</ul>
			</div>
			</div>
		</nav>
	</header>
</cfoutput>
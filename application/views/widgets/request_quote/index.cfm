<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->
<cfparam name="args.image" default="" />
<cfparam name="args.title" default="Request a quote" />
<cfparam name="args.sub_title" default="xxx" />
<cfscript>
	event.include(assetId="js-notify")
    .include(assetId="js-request-quote");
    img = "/assets/kiddos/images/bg_5.jpg";
    if(!isEmpty(args.image)){
        img = event.buildLink(assetId=args.image);
    }
</cfscript>
<cfoutput>

    <section class="ftco-section ftco-consult ftco-no-pt ftco-no-pb" style="background-image: url(#img#);"
        data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-md-6 py-5 px-md-5 bg-primary">
                    <div class="heading-section heading-section-white ftco-animate mb-5">
                        <h2 class="mb-4">#args.title#</h2>
                        <p>#args.sub_title#</p>
                    </div>
                    <form action="##" id="form-request-quote" class="appointment-form ftco-animate">
                        <div class="d-md-flex">
                            <div class="form-group">
                                <input type="text" id="request-name" class="form-control" placeholder="Enter Your Name" required>
                            </div>
                        </div>
						<div class="d-md-flex">
                            <div class="form-group">
                                <input type="email" id="request-email" class="form-control" placeholder="Enter Your Email" required>
                            </div>
                            <div class="form-group ml-md-4">
                                <input type="text"  id="request-phone" class="form-control" placeholder="Enter Your Phone" required>
                            </div>
                        </div>
                        <div class="d-md-flex">
                            <div class="form-group">
                                <textarea name=""  id="request-message" cols="30" rows="2" class="form-control"
                                    placeholder="Message" required></textarea>
                            </div>
                            <div class="form-group ml-md-4">
                                <input type="submit" value="Request A Quote" class="btn btn-secondary py-3 px-4">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</cfoutput>
<cfscript>
    site                    = event.getSite();
   
    socialLinkSectionTitle  = site.social_link_section_title ?: "Follow us"; // TODO: i18n
    socialLinks             = site.social_links              ?: "";

    linksSectionTitle     = site.links_section_title     ?: "Contact us"; // TODO: i18n
    links                   = site.links           ?: "";

    linksSectionTitle2     = site.links_section_title_2     ?: "Contact us"; // TODO: i18n
    links2                   = site.links_2           ?: "";

    address                 = site.address                 ?: "";
    phone                   = site.phone              ?: "";
    email                   = site.email              ?: "";
    infoSectionTitle        = site.info_section_title              ?: "";
    messager_config         = site.messager_config ?: "";
</cfscript>
<cfoutput>
    <footer class="ftco-footer ftco-bg-dark ftco-section">
        <div class="container">
          <div class="row mb-5">
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-5">
                  <h2 class="ftco-heading-2">#infoSectionTitle#</h2>
                  <div class="block-23 mb-3">
                    <ul>
                      <li><span class="icon icon-map-marker"></span><span class="text">#address#</span></li>
                      <li><a href="##"><span class="icon icon-phone"></span><span class="text">#phone#</span></a></li>
                      <li><a href="##"><span class="icon icon-envelope"></span><span class="text">#email#</span></a></li>
                    </ul>
                  </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-5 ml-md-3">
                <h2 class="ftco-heading-2">#linksSectionTitle#</h2>
                <ul class="list-unstyled">
                  <cfloop list="#links#" index="link">
                      <li class="py-2">
                          #renderLink(id="#link#",before="<span class='ion-ios-arrow-round-forward mr-2'></span>")#
                      </li>
                  </cfloop>
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-5 ml-md-3">
                <h2 class="ftco-heading-2">#linksSectionTitle2#</h2>
                <ul class="list-unstyled">
                  <cfloop list="#links2#" index="link">
                      <li class="py-2">
                          #renderLink(id="#link#",before="<span class='ion-ios-arrow-round-forward mr-2'></span>")#
                      </li>
                  </cfloop>
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-5">
                <cfif !isEmpty(socialLinks)>
                  <h2 class="ftco-heading-2 mb-0">#socialLinkSectionTitle#</h2>
                  <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                      #renderView(
                                    view          = "/general/_social_link"
                                  , presideObject = "social_link"
                                  , filter        = { id=listToArray( socialLinks ) }
                                  , orderBy       = "FIELD( id, #listqualify( socialLinks, "'" )# )"
                                )#       
                  </ul>
                </cfif>		
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 text-center">
              <p>Website made by <a href="http://maydental.vn">Maydental</a></p>
            </div>
          </div>
        </div>
      </footer>
      #messager_config#
</cfoutput>
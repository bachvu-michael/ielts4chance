component {
    property name="links_section_title"       type="string"   dbtype="varchar" default="links";
    property name="links"                     type="string"   dbtype="text" control="linkPicker"multiple="true" sortable="true" quickadd="true" quickedit="true";
   
    property name="social_link_section_title"   type="string"   dbtype="varchar" default="Follow us";
    property name="social_links"                type="string"   dbtype="text";

    property name="info_section_title"   type="string"   dbtype="varchar" default="Have a Questions?";
    property name="address"     type="string"   dbtype="varchar"  maxLength="100" default="";
    property name="phone"       type="string"   dbtype="varchar"  maxLength="100" default="";
    property name="email"       type="string"   dbtype="varchar"  maxLength="100" default="";

    property name="logo"                        relationship="many-to-one" relatedto="asset" allowedTypes="images";
}
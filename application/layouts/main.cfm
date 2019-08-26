<cfscript>
    body     = renderView();
    //metaTags = renderView( "/general/_pageMetaForHtmlHead"    );
    header   = renderView( "/general/_header"                 );
    footer   = renderView( "/general/_footer"                 );
    adminBar = renderView( "/general/_adminToolbar"           );

    // event.include( assetId="jq-core-jquery"                   )
    //      .include( assetId="jq-core-placeholders"             )
    //      .include( assetId="/js/core/"                        )
    //      .include( assetId="css-core-google-font"             )
    //      .include( assetId="css-core-bootstrap"               )
    //      .include( assetId="css-core-icomoon"                 )
    //      .include( assetId="/css/core/"                       )
    //      .include( assetId="css-ie8"                          )
    //      .include( assetId="js-modernizr"                     )
    //      .include( assetId="js-respond"         , group="top" );
    event.include( assetId="js-notify");
    
</cfscript>

<cfoutput><!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie10 lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie10 lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="no-js lt-ie10 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js gt-ie8" lang="en"> <!--<![endif]-->
    <head>
        <title>Ielts4chance - English for you</title>
        <meta charset="utf-8">
        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="Description" content="website for people learn English">
    
    
        <link rel="stylesheet" href="/assets/kiddos/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="/assets/kiddos/css/animate.min.css">
        
        <link rel="stylesheet" href="/assets/kiddos/css/owl.carousel.min.css">
        <link rel="stylesheet" href="/assets/kiddos/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="/assets/kiddos/css/magnific-popup.min.css">
    
        <link rel="stylesheet" href="/assets/kiddos/css/aos.css">
    
        <link rel="stylesheet" href="/assets/kiddos/css/ionicons.min.css">
        
        <link rel="stylesheet" href="/assets/kiddos/css/flaticon.min.css">
        <link rel="stylesheet" href="/assets/kiddos/css/icomoon.min.css">
        <link rel="stylesheet" href="/assets/kiddos/css/style.min.css">
        <link rel="stylesheet" href="/assets/css/core/custom.css">

        <link rel="shortcut icon" href="/assets/img/logo50x50.png" type="image/x-icon">

        #event.renderIncludes( "css" )#
        #event.renderIncludes( "js", "top" )#
    </head>
    <body class="#( prc.body_class ?: '' )#">
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        #header#

        <div class="main-wrapper">
            #body#
        </div>

        #footer#
        #adminBar#
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="##eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="##F96D00"/></svg></div>
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">

        <script src="/assets/kiddos/js/jquery.min.js"></script>
        <script src="/assets/kiddos/js/jquery-migrate-3.0.1.min.js"></script>
        <script src="/assets/kiddos/js/popper.min.js"></script>
        <script src="/assets/kiddos/js/bootstrap.min.js"></script>
        <script src="/assets/kiddos/js/jquery.easing.1.3.min.js"></script>
        <script src="/assets/kiddos/js/jquery.waypoints.min.js"></script>
        <script src="/assets/kiddos/js/jquery.stellar.min.js"></script>
        <script src="/assets/kiddos/js/owl.carousel.min.js"></script>
        <script src="/assets/kiddos/js/jquery.magnific-popup.min.js" ></script>
        <script src="/assets/kiddos/js/aos.js"></script>
        <script src="/assets/kiddos/js/jquery.animateNumber.min.js" ></script>
        <script src="/assets/kiddos/js/scrollax.min.js"></script>
        <script src="/assets/kiddos/js/scrollax.min.js"></script>
        <script src="/assets/kiddos/js/main.min.js"></script>
        #event.renderIncludes("js")#
      
    </body>
</html></cfoutput>
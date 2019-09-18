<cf_presideparam name="args.title" type="string" field="page.title" editable="true" />
<cf_presideparam name="args.main_content" type="string" field="page.main_content" editable="true" />

<cfoutput>
    #args.main_content#
    <!--
    <div id="player"></div>
    -->
    <script>
    //   // 2. This code loads the IFrame Player API code asynchronously.
    //   var tag = document.createElement('script');

    //   tag.src = "https://www.youtube.com/iframe_api";
    //   var firstScriptTag = document.getElementsByTagName('script')[0];
    //   firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

    //   // 3. This function creates an <iframe> (and YouTube player)
    //   //    after the API code downloads.
    //   var player;
    //   function onYouTubeIframeAPIReady() {
    //     player = new YT.Player('player', {
    //       height: '390',
    //       width: '640',
    //       videoId: 'WkS75goz-FM',
    //       playerVars: { 'autoplay': 1, 'controls': 1 ,'modestbranding':1,'iv_load_policy':3},
    //       events: {
    //         'onReady': onPlayerReady,
    //         'onStateChange': onPlayerStateChange
    //       }
    //     });
    //   }
    //   // 4. The API will call this function when the video player is ready.
    //   function onPlayerReady(event) {
    //     event.target.playVideo();
    //   }

    //   // 5. The API calls this function when the player's state changes.
    //   //    The function indicates that when playing a video (state=1),
    //   //    the player should play for six seconds and then stop.
    //   var done = false;
    //   function onPlayerStateChange(event) {
    //     if (event.data == YT.PlayerState.PLAYING && !done) {
    //       setTimeout(stopVideo, 6000);
    //       done = true;
    //     }
    //   }
    //   function stopVideo() {
    //     player.stopVideo();
    //   }
    </script>
</cfoutput>
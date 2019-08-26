<cf_presideparam name="args.title" type="string" field="page.title" editable="true" />
<cf_presideparam name="args.main_content" type="string" field="page.main_content" editable="true" />

<cfoutput>
    #args.main_content#
    <div id="player"></div>

    <script>
      // 2. This code loads the IFrame Player API code asynchronously.
      var tag = document.createElement('script');

      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

      // 3. This function creates an <iframe> (and YouTube player)
      //    after the API code downloads.
      var player;
      function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
          height: '390',
          width: '640',
          videoId: 'WkS75goz-FM',
          playerVars: { 'autoplay': 1, 'controls': 1 ,'modestbranding':1,'iv_load_policy':3},
          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }
        });
      }
      // 4. The API will call this function when the video player is ready.
      function onPlayerReady(event) {
        event.target.playVideo();
      }

      // 5. The API calls this function when the player's state changes.
      //    The function indicates that when playing a video (state=1),
      //    the player should play for six seconds and then stop.
      var done = false;
      function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
          setTimeout(stopVideo, 6000);
          done = true;
        }
      }
      function stopVideo() {
        player.stopVideo();
      }
    </script>
    <!--
    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-2">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4"><span>Recent</span> Blog</h2>
                    <p>Separated they live in. A small river named Duden flows by their place and supplies it with the
                        necessary regelialia. It is a paradisematic country</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4 ftco-animate">
                    <div class="blog-entry">
                        <a href="blog-single.html" class="block-20 d-flex align-items-end"
                            style="background-image: url('/assets/kiddos/images/image_1.jpg');">
                            <div class="meta-date text-center p-2">
                                <span class="day">27</span>
                                <span class="mos">January</span>
                                <span class="yr">2019</span>
                            </div>
                        </a>
                        <div class="text bg-white p-4">
                            <h3 class="heading"><a href="##">Skills To Develop Your Child Memory</a></h3>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                                there live the blind texts.</p>
                            <div class="d-flex align-items-center mt-4">
                                <p class="mb-0"><a href="##" class="btn btn-secondary">Read More <span
                                            class="ion-ios-arrow-round-forward"></span></a></p>
                                <p class="ml-auto mb-0">
                                    <a href="##" class="mr-2">Admin</a>
                                    <a href="##" class="meta-chat"><span class="icon-chat"></span> 3</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 ftco-animate">
                    <div class="blog-entry">
                        <a href="blog-single.html" class="block-20 d-flex align-items-end"
                            style="background-image: url(/assets/kiddos/images/image_2.jpg);">
                            <div class="meta-date text-center p-2">
                                <span class="day">27</span>
                                <span class="mos">January</span>
                                <span class="yr">2019</span>
                            </div>
                        </a>
                        <div class="text bg-white p-4">
                            <h3 class="heading"><a href="##">Skills To Develop Your Child Memory</a></h3>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                                there live the blind texts.</p>
                            <div class="d-flex align-items-center mt-4">
                                <p class="mb-0"><a href="##" class="btn btn-secondary">Read More <span
                                            class="ion-ios-arrow-round-forward"></span></a></p>
                                <p class="ml-auto mb-0">
                                    <a href="##" class="mr-2">Admin</a>
                                    <a href="##" class="meta-chat"><span class="icon-chat"></span> 3</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 ftco-animate">
                    <div class="blog-entry">
                        <a href="blog-single.html" class="block-20 d-flex align-items-end"
                            style="background-image: url(/assets/kiddos/images/image_3.jpg);">
                            <div class="meta-date text-center p-2">
                                <span class="day">27</span>
                                <span class="mos">January</span>
                                <span class="yr">2019</span>
                            </div>
                        </a>
                        <div class="text bg-white p-4">
                            <h3 class="heading"><a href="##">Skills To Develop Your Child Memory</a></h3>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                                there live the blind texts.</p>
                            <div class="d-flex align-items-center mt-4">
                                <p class="mb-0"><a href="##" class="btn btn-secondary">Read More <span
                                            class="ion-ios-arrow-round-forward"></span></a></p>
                                <p class="ml-auto mb-0">
                                    <a href="##" class="mr-2">Admin</a>
                                    <a href="##" class="meta-chat"><span class="icon-chat"></span> 3</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    -->
</cfoutput>
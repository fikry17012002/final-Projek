<div class="col-lg-4">
   <div class="right_sidebar">


         <div class="main_title2 mb-5">
            <h2>Trending Now</h2>
         </div>
         <div class="news_slider owl-carousel">
            <?php foreach($trending as $t) : ?>
               <div class="item">
                  <div class="choice_item">
                     <img src="<?= base_url('images/posting/xsmall/' . $t->photo) ?>" alt="">
                     <div class="choice_text">
                        <a href="<?= base_url("blog/read/$t->seo_title") ?>">
                           <h4><?= $t->title ?></h4>
                        </a>
                        <div class="date">
                           <a href="<?= base_url("blog/read/$t->seo_title") ?>"><i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($t->date) ?></a>       
                        </div>
                     </div>
                  </div>
               </div>
            <?php endforeach ?>
         </div>
      </aside>

      <aside class="r_widgets social_widgets mt-5">
         <div class="main_title2">
            <h2>Social Networks</h2>
         </div>
         <ul class="list">
            <li><a href="#"><i class="fa fa-envelove-o"></i>Iniberita<span>Like our page</span></a></li>
            <li><a href="#"><i class="fa fa-instagram"></i>@iniberita<span>Follow Us</span></a></li>
            <li><a href="#"><i class="fa fa-youtube-play"></i>Ini Berita<span>Subscribe</span></a></li>
         </ul>
      </aside>

   </div>
</div>
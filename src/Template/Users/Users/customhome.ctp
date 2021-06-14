<?php
namespace Cake\I18n;
use Cake\I18n\Time;
$widgets = explode('(,)',$homepageModel['widgets']);
$sliders = json_decode($homepageModel['slider'], true);
$webslidercount = 0;
$appslidercount = 0;
foreach ($sliders as $key => $webslider) {
  if($webslider['mode'] == 'web')
    $webslidercount++;
  if($webslider['mode'] == 'app')
    $appslidercount++;
}
//echo"Loguser=<pre>";print_r($loguser['id']); die;
//echo"here thou reside";die;
//$slidercount = count($sliders);
$sliderProperty = json_decode($homepageModel['properties'], true);
$sliderstyle = "style='box-shadow:none;height:".$sliderProperty['sliderheight'].";background-color:".$sliderProperty['sliderbg'].";'";

$widgetSettings = json_decode($homepageModel['widget_settings']);
?>
<div class=" card main-side-nav-card left_sidebar scrollbar_hide    multi-collapse">
    <div class="sidebar_inner">
        <div class="card-body with-nav">
            <div class=" left_sidebar_inner ">
                <ul class=" main-left-side-nav ">
                    <li class="">
                        <a href="<?php echo STRATUS_LATEST ?>" class="">
                            <div class="svg-container">
                                <img src="http://localhost/markethub//img/svg_icon/favoritesN.svg" class="">
                            </div>
                            <span class="nav-text">Latest Posts</span>
                        </a>
                    </li>
                </ul>
                <ul class=" main-left-side-nav local_hub_nav_item">
                    <li class=" ">
                        <a href="<?php echo STRATUS_URL ?>">
                            <div class="svg-container">
                                <img src="http://localhost/markethub//img/svg_icon/local_hubN.svg" class="">
                            </div>
                            <span class="nav-text">Local Hub</span>
                        </a>
                    </li>
                </ul>
                <ul class=" main-left-side-nav global_hub_nav_item">
                    <li class=" ">
                        <a href="<?php echo STRATUS_GLOBAL ?>">
                            <div class="svg-container">
                                <img src="http://localhost/markethub//img/svg_icon/globle_hubN.svg" class="">
                            </div>
                            <span class="nav-text">Global Hub</span>
                        </a>
                    </li>
                </ul>


                <ul class=" main-left-side-nav video_hub_list">
                  <li class="<?php echo ($pt->page == 'home') ? 'active' : ''; ?>">
                        <a href="{{LINK }}">
                            <div class="svg-container">
                                <img src="http://localhost/markethub//img/svg_icon/video_hub_icon.svg" class="">
                            </div>
                            <span class="nav-text">Video Hub</span>
                        </a>
                    </li>
                </ul>

                <ul class=" main-left-side-nav ">
                    <li class="">
                        <a href="<?php echo STRATUS_BLOG ?>">
                            <div class="svg-container">
                                <img src="http://localhost/markethub//img/svg_icon/blog_hubN.svg" class="">
                            </div>
                            <span class="nav-text"> Blog Hub </span>
                        </a>
                    </li>
                </ul>
                <ul class=" main-left-side-nav">
                    <li class="">
                        <a href="<?php echo STRATUS_ADS ?>">
                            <div class="svg-container">
                                <img src="http://localhost/markethub//img/svg_icon/ad_hubN.svg" class="">
                            </div>
                            <span class="nav-text"> Ads Hub </span>
                        </a>
                    </li>
                </ul>

                <!-- investment module -->
                <ul class=" main-left-side-nav ">
                    <li class="">
                    <a href="<?php echo INVESTMENT_HUB ?>">
                    <div class="svg-container ">
                    <img src="http://localhost/markethub//img/svg_icon/Wallet-active.svg" class="whiteicon">
                    </div>
                    <span class="nav-text"> Investment </span>
                    </a>
                    </li>
                    </ul>
                    <!-- -->



                <ul class=" main-left-side-nav">
                    <li class="">
                        <a href="<?php echo STRATUS_MARKET ?>">
                            <div class="svg-container ">
                                <img src="http://localhost/markethub//img/svg_icon/market_hubN.svg" class="">
                            </div>
                            <span class="nav-text"> Market Hub </span>
                        </a>
                    </li>
                </ul>
                <ul class=" main-left-side-nav ">
                    <li class="">
                        <a href="<?php echo STRATUS_WALLET ?>">
                            <div class="svg-container ">
                                <img src="http://localhost/markethub//img/svg_icon/Wallet-active.svg" class="whiteicon">
                            </div>
                            <span class="nav-text"> Wallet </span>
                        </a>
                    </li>
                </ul>
                <ul class=" main-left-side-nav left-sidebar-five-ul">
                    <li>
                        <a href="{{LINK logout}}">
                            <div class="svg-container">
                                <img src="http://localhost/markethub//img/svg_icon/logOut_activeNew.svg" class="whiteicon">
                            </div>
                            <span class="nav-text"> Log Out </span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
 <div class="row parent_reverce">
      <section class="inner_body">
      <section class="side-collapse-container mainPage">

         <section class="slider">
            <div class="banner"> 
            <?php
        $sliderkey = 0;
        //echo '<pre>';print_r($sliders);
        //foreach($sliders as $skey => $slider){
          if($sliders[0]['mode'] == 'web'){ 
              echo '<a href="'.$sliders[0]['link'].'" target="_blank" style="display:block;">
                  <img src="'.SITE_URL.'images/slider/'.$sliders[0]['image'].'" alt="'.$sliders[0]['image'].'">
                </a>';
         }?>
            </div>


            <section class="regular slider">
    <div>
      <img src="http://placehold.it/350x300?text=1">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=2">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=3">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=4">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=5">
    </div>
    <div>
      <img src="http://placehold.it/350x300?text=6">
    </div>
  </section>



         </section>
         <!--Daily Deals-->
      <?php date_default_timezone_set("Asia/KolKata");
        $date = date('d');
        $month = date('m');
        $year = date('Y');
        $today = $month.'/'.$date.'/'.$year;
        $date1 = date('Y-m-d H:i:s');
        $date2 = date("Y-m-d", strtotime($today)).' 24:00:00';
        $diff = abs(strtotime($date2) - strtotime($date1));

        $hours = floor(($diff % 86400) / 3600);
        $mins = floor(($diff % 86400 % 3600) / 60);
        $sec = ($diff % 60);

        ?>
        <script type="text/javascript">
        // Initialize the Date object.
        //  The set methods should be filled in by PHP

        var _date = new Date();
        _date.setHours(<?php echo $hours; ?>);
        _date.setMinutes(<?php echo $mins; ?>);
        _date.setSeconds(<?php echo $sec; ?>);

        // Generates a HH:MM:SS string
        function parseDate(dateObj) {
          var output = "";
          if(dateObj.getHours() < 10) {
              output += "";
          }
          output += dateObj.getHours() + ":";

          if(dateObj.getMinutes() < 10) {
           output += "0";
          }
          output += dateObj.getMinutes() + ":";

          if(dateObj.getSeconds() < 10) {
           output += "0";
          }
          output += dateObj.getSeconds();
          console.log(output);
          return output;
        }

        // Start the countdown
        setInterval(function() {
            _date.setSeconds(_date.getSeconds() - 1);
            document.getElementById('timer').innerHTML = parseDate(_date);
        }, 1000);
         </script>
       
      <!-- phase 3 categories section -->
      <?php if(count($featuredcat)>0){?>
        <section class="clearfix">
            <h4 class="title"><?php echo __d('user','Categories');?></h4>
            <div class="allImg categorie">
            
                <?php foreach($featuredcat as $cat){
                  $imageurl = SITE_URL.'images/category/'.$cat->category_webimage;
                  ?>
              <span id="figcaption_titles" figcaption_title="<?php echo $cat->category_name;?>"></span>
              <span class="figcaption"
                id="figcaption_title_url" figcaption_url="<?php echo $cat->category_urlname;?>"
                style="position: relative; top: 10px; left: 7px;display:none;"><?php echo $cat->category_urlname;?></span><span id="price_vals"
                price_val="$100"></span><a href="<?php echo SITE_URL.'shop/'.$cat->category_urlname;?>" id="user_n"
                usernameval=""><span id="img"
                class="nodisply"><?php echo $imageurl;?></span>
              <div class="product_cnt clearfix col-xs-12 col-sm-4 col-md-4 col-lg-4 custom_col_1">
                <div class="bg_product" id="item_cnt97">
                  <img src="<?php echo $imageurl;?>" class="img-responsive">
                </div>
                <div class="prodDescrip new_prod_nam bold-font ">
                  <h3><?php echo $cat->category_name;?></h3>
                  <a href="<?php echo SITE_URL.'shop/'.$cat->category_urlname;?>"><?php echo __d('user','See more');?></a>
                </div>
              </div>
              </a>
          <?php }?>
              
            
              
              
            </div>

            <div class="loadMore seeallcat btn primary-color-bg primary-color-bg deals" ><a href="<?php echo SITE_URL.'allcategories';?>"><?php echo __d('user','See all Categories');?>
             </a></div>
          </section>
        <?php }?>
      <!-- E O cat section -->
         <?php
    if(count($todaydeal) > 0)
    {
    ?>
       <section class="new-arrivals paddigs todaysDeal clearfix">
            <div class="product_align_cnt  no-hor-padding">
              <div class="item-slider grid no-hor-padding">
                <div class="section_header tdyDeal col-xs-12 col-sm-3 col-md-3 col-lg-3">
                  <div class="todayDeal">
                    <div>
                      <div class="deals">
                        <h2 class="section_heading bold-font">
                          <?php echo __d("user","Today's deal");?></h2>
                      </div>
                      <div class="timerToday deals">
                        <div class="timer"><img src="./img/Timer@2x.png" alt="timer"></div>
                        <div class="timerClock" id="timer"></div>
                      </div>
                      <div class="view-all-btn btn primary-color-bg primary-color-bg deals">
                        <a href="<?php echo SITE_URL.'viewmore/dailydeals';?>"><?php echo __d('user','View all');?></a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-8  product-sec-slide heroSlider-fixed">

                  <div class="dealsslick">
                    <?php
            //echo '<pre>'; print_r($rating_counts); die;
              foreach($todaydeal as $dealkey => $deal)
              {
                $itemid = base64_encode($deal->id."_".rand(1,9999));

                $item_title = $deal['item_title'];
                $item_title_url = $deal['item_title_url'];
                $item_price = $deal['price'];
                $favorte_count = $deal['fav_count'];
                $username = $deal['user']['username'];
                $currencysymbol = $deal['forexrate']['currency_symbol'];
                $items_image = $deal['photos'][0]['image_name'];
                


                    $item_image = $deal['photos'][0]['image_name'];
                    if($item_image == "")
                    {
                      $itemimage = SITE_URL.'media/items/original/usrimg.jpg';
                    }
                    else
                    {
                      $itemimage = WWW_ROOT.'media/items/original/'.$item_image;
                      /*$header_response = get_headers($itemimage, 1);*/
                      if (file_exists($itemimage))
                      {
                        $itemimage = SITE_URL.'media/items/original/'.$item_image;
                      }
                      else
                      {
                        $itemimage = SITE_URL.'media/items/original/usrimg.jpg';
                      }
                    }


                  $itemprice = $deal['price'];
          $discountprice = $itemprice * ( 1 - $deal['discount'] / 100 );

          $item_url = base64_encode($deal['id']."_".rand(1,9999));

          $user_currency_price =  $currencycomponent->conversion($deal['forexrate']['price'],$_SESSION['currency_value'],$itemprice);

          $user_currency_dealprice = $currencycomponent->conversion($deal['forexrate']['price'],$_SESSION['currency_value'],$discountprice);
          if($loguser=="")
          {
            $temp = ""; 
            $temp1= "";
          }
          else
          {
            $temp = "modal";
            $temp1=  "#share-modal";
          }
            ?>
                    <div class="item1 box_shadow_img">
                      <div class="product_cnt clearfix">
                        <a class="img-hover1" href="<?php echo SITE_URL.'listing/'.$itemid;?>">
                          <div class="bg_product">
                            <img src="<?php echo $itemimage;?>" class="img-responsive">
                          </div>
                        </a>

                      <div class="hover-visible">

                    <span class="hover-icon-cnt like_hover unmatched" href="javascript:void(0);" onclick="itemcou(<?php echo $deal['id'];?>)">
                    <!--   <img src="<?php //echo SITE_URL.'/img/like.png'; ?>" id="like-icon<?php echo $popular['id'];?>" class="like-icon<?php //echo $popular['id'];?>"> -->
                      <span class="like-txt<?php echo $deal['id'];?> nodisply" id="like-txt<?php echo $deal['id'];?>"><?php echo $setngs['like_btn_cmnt'];?></span>
                      <?php if (count($likeditemid) != 0 && in_array($deal['id'], $likeditemid)) {
                echo '<img src="' . SITE_URL . 'img/Heart filled@2x.png" id="like-icon' . $deal['id'] . '" class="like-icon' . $deal['id'] . '" alt="liked">
                <span style="display:none" class="like-txt' . $deal['id'] . ' nodisply" id="like-txt' . $deal['id'] . '" >' . $setngs['liked_btn_cmnt'] . '</span>';
              } else {
                
                echo '<img src="' . SITE_URL . 'img/like.png" id="like-icon' . $deal['id'] . '" class="like-icon' . $deal['id'] . '" alt="unliked">
                <span style="display:none" class="like-txt' . $deal['id'] . ' nodisply" id="like-txt' . $deal['id'] . '" >' . $setngs['like_btn_cmnt'] . '</span>';
              }?>
                    </span>

                    <span class="hover-icon-cnt share_hover" href="#" onclick="share_posts(<?php echo $deal['id'];?>);" data-toggle="modal"
                      data-target="#share-modal">
                      <img src="<?php echo SITE_URL.'/img/Mask Group 66.png'?>"> </span>

                    <span id="figcaption_titles<?php echo $deal['id'];?>" figcaption_title="<?php echo $deal['item_title'];?>"
                      style="display:none;width:0px !important;"><?php echo $deal['item_title'];?></span><span class="figcaption"
                      id="figcaption_title_url" figcaption_url="<?php echo $deal['item_title_url'];?>"
                      style="display:none;width:0px !important;"><?php echo $deal['item_title_url'];?></span><a href="<?php echo SITE_URL.'/people/'?>" id="user_n<?php echo $deal['id'];?>" usernameval="<?php echo $deal['shop']['shop_name'];?>"
                      style="display:none;width:0px !important;"></a><span id="img_<?php echo $deal['id'];?>" class="nodisply"
                      style="display:none;width:0px !important;"><?php echo $itemimage;?></span><span
                      class="fav_count" id="fav_count<?php echo $deal['id'];?>" fav_counts="<?php echo $deal['like_count'];?>" style="display:none;width:0px !important;"><?php echo $deal['like_count'];?></span>
                  </div>



                        <div class="new_prod_nam bold-font col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                          <a class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding"
                            href="<?php echo SITE_URL.'listing/'.$itemid;?>">
                            <span><?php echo $item_title;?></span> </a>

                          <div class="price col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                            <?php if(isset($_SESSION['currency_symbol'])){
                                              echo $_SESSION['currency_symbol'].' '.$user_currency_dealprice;
                                            } else{echo $currencysymbol.' '.$user_currency_dealprice;
                                          }?>
                           
                            <strike class="bold-font"> <?php if(isset($_SESSION['currency_symbol'])){
                                              echo $_SESSION['currency_symbol'].' '.$user_currency_price;
                                            } else{echo $currencysymbol.' '.$user_currency_price;
                                          }?> </strike>
                          </div>
                          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                            <div class="d-flex ratings">
                             
                              <div>
                              <?php 
                               for ($i = 1;$i <= 5;$i++)
                  {
                      $status = ($i <= $deal['avg_rating']) ? 'fa fa-star checked' : 'fa fa-star';
                      echo '<i id="" class="' . $status . '"></i>';
                  }
                              ?>
                            </div><div>
                              <span><?php if($deal['avg_rating']!="") echo '('.$reviewscount[$dealkey].')'; else echo "(0)";?></span>
                                  </div>
                            </div>

                          </div>
                          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                            <a href="<?php echo SITE_URL.'listing/'.$itemid;?>">
                            <div class="buyPlus">
                              <div class="buY"><button class="btn buyCart">
                                  <div class="pluS"><i class="fa fa-plus" aria-hidden="true"></i></div>
                                  <div><?php echo __d('user','Buy');?></div>
                                </button></div>

                            </div>
                          </a>
                          </div>


                          <span id="price_vals<?php echo $deal['id'];?>" price_val="<?php echo $currencysymbol.' '.$user_currency_dealprice?>" style="display:none;width:0px !important;"></span>

                        </div>
                      </div>
                    </div>
                    <?php } ?>
                 
                  </div>

                </div>
              </div>
            </div>
          </section> 
        <?php }?>
          <!-- E O daily deals-->
          <?php 

  foreach ($widgets as $widget){
  switch ($widget){
    case 'Recently Added':
      echo $this->element('recentlyadded',array('slider'=>$widgetSettings->recently_added,'model'=>'recentlyadded'));
      break;
    case 'Most Popular':
      echo $this->element('mostpopular',array('slider'=>$widgetSettings->most_popular,'model'=>'mostpopular'));
      break;
    // case 'Categories':
    //   echo $this->element('categories',array('slider'=>$widgetSettings->categories,'model'=>'categories'));
    //   break;
    case 'Top Rated':
      echo $this->element('top_rated',array('slider'=>$widgetSettings->top_rated,'model'=>'top_rated'));
      break;
    // case 'Suggested Items':
    //   echo $this->element('suggested_items',array('slider'=>'slider6'));
    //   break;
    case 'Top Stores':
      echo $this->element('topstores',array('slider'=>'slider6'));
      break;
    case 'Discounts':
      echo $this->element('discount_items',array('slider'=>$widgetSettings->discounts,'model'=>'discount_items'));
      break;
    case 'Featured Items':
      echo $this->element('featured',array('slider'=>$widgetSettings->featured_items,'model'=>'featured'));
      break;
  }
} 
?>
       
          
        
         
         
      </section>  <!-- E O main section-->
   </section>
   <!-- filters -->
    <!-- <section class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
        <div class="cateGory">
          <div class="category">
            <div id="sidebar">
              <div class="sidebar__inner border_right_grey" style="position: relative; ">
                <div class="parent">
                  <form action="<?php echo SITE_URL.'searchproduct'?>" method="post">
                  <input type="search" placeholder="<?php echo __d('user','Search here...');?>" class="" name="searchkey">
                  <div class="price_range">
                    <p><?php echo __d('user','Price Range');?></p>
                    <div class="priceSlider">
                   
                      <input id="range" type="range" min="0" max="5000" value="5000">
                    </div>
                      <span id="value" ></span>
                     <input type="hidden" id="price_value"  name="price" />
                  </div>

                  <input type="submit" class="btn primary-color-bg primary-color-bg deals" value="<?php echo __d('user','Search');?>" />
                </form>
                </div>
                <div id="accordion1" class="panel-group margin-bottom0">
                  <div id="" class="panel panel-default box_shadow0">
                    <div class="panel-heading padding0">
                      <a data-toggle="collapse" data-parent="#accordion1" href="#collapsezero" class=""
                        aria-expanded="true">
                        <h4 class="panel-title bold-font filter_accordion accordion_shop primary-color-bg white-txt">
                          <div class="inlined-display shop_filter_menu_padding">
                            <?php echo __d('user','Filter');?></div><i class="more-less glyphicon glyphicon-minus bold-font white-txt"></i>
                        </h4>
                      </a>
                    </div>
                    <div id="collapsezero" class="colla-hei panel-collapse collapse in" aria-expanded="true">
                      <div class="no-hor-padding padding-top0">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                          <div class="panel panel-default">
                            <div class="panel-heading padding0" role="tab" id="headingOne">
                              <a role="button" class="accordion_one" data-toggle="collapse" data-parent="#accordion"
                                href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <h4 class="panel-title accordion_shop bold-font">
                                  <div class="inlined-display shop_filter_menu_padding">
                                    <?php echo __d('user','Categories');?></div><i class="more-less glyphicon glyphicon-minus"></i>

                                </h4>
                              </a>
                            </div>

                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
                              aria-labelledby="headingOne">
                              <div class="panel-body list_menu" style="max-height: 350px">

                                <?php foreach($parent_categories as $parent_cat){
                                        $imageurl = SITE_URL.'images/category/'.$parent_cat->category_webicon;

                                  ?>
                                <a class="shop_menu" data-parent="#nested"
                                  href="<?php echo SITE_URL.'shop/'.$parent_cat->category_urlname;?>">
                                  <div class="icon">
                                    <img src="<?php echo $imageurl;?>">
                                  </div>
                                  <h4 class="panel-title sub_menu_panel"><?php echo $parent_cat->category_name?></h4>
                                </a>
                                <?php }?>
                              

                               
                              </div>
                            </div>
                          </div>


                        </div>



                      </div>

                    </div>
                  </div>
                </div>
              </div>
              <object
                style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%;overflow: hidden; pointer-events: none; z-index: -1;"
                type="text/html"></object>
            </div>
          </div>
        </div>
      </section>
 -->
 <div id="right-sidebar " class="right-sidebar scrollbar_hide ">
 <section id="" class=" ">
        <div class="cateGory">
          <div class="category">
            <div id="sidebar">
              <div class="sidebar__inner" style="position: relative; ">
                <div id="accordion1" class="panel-group margin-bottom0">
                  <div id="" class="panel panel-default box_shadow0">
                    <div class="panel-heading padding0">
                      <a data-toggle="collapse" data-parent="#accordion1" href="#collapsezero" class=""
                        aria-expanded="true">
                        <h4 class="panel-title bold-font filter_accordion accordion_shop primary-color-bg white-txt">
                          <div class="inlined-display shop_filter_menu_padding">
                            <?php echo __d('user','Filters');?></div><i class="more-less glyphicon glyphicon-plus bold-font"></i>
                        </h4>
                      </a>
                    </div>
                    <div id="collapsezero" class="filteraccordian colla-hei panel-collapse collapse" aria-expanded="true">
                      <div class="no-hor-padding padding-top0">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                           <div class="parent">
                              <form action="<?php echo SITE_URL.'searchproduct'?>" method="post">
                              <input type="search" placeholder="<?php echo __d('user','Search here...');?>" class="" name="searchkey">
                              <div class="price_range">
                                <p><?php echo __d('user','Price Range');?></p>
                                <div class="priceSlider">
                              
                                  <input id="range" type="range" min="0" max="5000" value="5000">
                                </div>
                                  <span id="value" ></span>
                                <input type="hidden" id="price_value"  name="price" />
                              </div>

                              <input type="submit" class="btn primary-color-bg primary-color-bg deals" value="<?php echo __d('user','Search');?>" />
                            </form>
                            </div>
                          <div class="panel panel-default">
                            <div class="panel-heading padding0" role="tab" id="headingOne">
                              <a role="button" class="accordion_one" data-toggle="collapse" data-parent="#accordion"
                                href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <h4 class="panel-title accordion_shop bold-font">
                                  <div class="inlined-display shop_filter_menu_padding">
                                    <?php echo __d('user','Categories');?></div><!-- <i class="more-less glyphicon glyphicon-minus"></i> -->
                                </h4>
                              </a>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
                              aria-labelledby="headingOne">
                              <div class="panel-body list_menu" style="max-height: 350px">

                                <?php foreach($parent_categories as $parent_cat){
                                        $imageurl = SITE_URL.'images/category/'.$parent_cat->category_webicon;
                                  ?>
                                <a class="shop_menu" data-parent="#nested"
                                  href="<?php echo SITE_URL.'shop/'.$parent_cat->category_urlname;?>">
                                  <div class="icon">
                                    <img src="<?php echo $imageurl;?>">
                                  </div>
                                  <h4 class="panel-title sub_menu_panel"><?php echo $parent_cat->category_name?></h4>
                                </a>
                                <?php }?>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <object
                style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%;overflow: hidden; pointer-events: none; z-index: -1;"
                type="text/html"></object>
            </div>
          </div>
        </div>
      </section>
 </div>

   <!-- E O filters -->
   </div>
   </div>



<?php

if(isset($loguser['id'])){
  echo '<input type="hidden" id="loguserid" value="'.$loguser['id'].'">';
}
else{
  echo '<input type="hidden" id="loguserid" value="0">';
}
echo '<input type="hidden" id="likebtncnt" value="'.$setngs['like_btn_cmnt'].'" />';
echo '<input type="hidden" id="likedbtncnt" value="'.$setngs['liked_btn_cmnt'].'" />';

?>

<script type="text/javascript">
  


</script>
 <script>
    function rtl_slick() {
      if ($('body').hasClass("rtl")) {
        return true;
      } else {
        return false;
      }
    }
  </script>
  <!-- <script>
    $(window).on("load", function () {
      var range = $("#range").attr("value");
      $(".value").val(range);
      $(".slide").css("width", "100%");
      $(document).on('input change', '#range', function () {
        $('.value').val($(this).val());
        var slideWidth = $(this).val() * 100 / 50000;

        $(".slide").css("width", slideWidth + "%");
      });
    });

  </script>
 -->
<script>
  
  

    $(window).on("load", function () {
       $(".slide").css("width", "100%");
      var range = $("#range").attr("value");
    
    //  $("#value").html(range);
      if(range=='5000'){
       $("#value").html(range+'+');
     }
     else{
       $("#value").html(range);
     }

      $(document).on('input change', '#range', function () {
        
       if($(this).val()=='5000'){
          $('#value').html($(this).val()+'+');
     }
     else{
       $('#value').html($(this).val());
     }
        $("#price_value").val($(this).val());
        var slideWidth = $(this).val() * 100 / 5000;
        $(".slide").css("width", slideWidth + "%");
      });
    });

  </script>

  <script type="text/javascript" src="https://kenwheeler.github.io/slick/slick/slick.js"></script>
  <script>

    $('.dealsslick').slick({
      arrows: true,
      spaceBetween: 30,
      infinite: false,
      slidesToShow: 2,
      slidesToScroll: 2,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2,
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
          }
        },
      ]

    });
  </script>
  <script>
    $('.newslick-class').slick({
      arrows: true,
      spaceBetween: 30,
      infinite: false,
      slidesToShow: 3,
      slidesToScroll: 3,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2,
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
          }
        },
      ]

    });
  </script>
  <!-- <script>


    $('.slider-for').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      fade: true,
      asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
      slidesToShow: 4,
      slidesToScroll: 1,
      vertical: true,
      loop: false,
      asNavFor: '.slider-for',
      dots: false,
      focusOnSelect: true,
      verticalSwiping: true,
      arrow: true,
      responsive: [
        {
          breakpoint: 992,
          settings: {
            vertical: false,
          }
        },
        {
          breakpoint: 768,
          settings: {
            vertical: false,
          }
        },
        {
          breakpoint: 580,
          settings: {
            vertical: false,
            slidesToShow: 3,
          }
        },
        {
          breakpoint: 380,
          settings: {
            vertical: false,
            slidesToShow: 2,
          }
        }
      ]
    });
  </script> -->


  <script type="text/javascript">
    $(document).on('ready', function() {
      $(".vertical-center-4").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 2
      });
      $(".vertical-center-3").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".vertical-center-2").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 2,
        slidesToScroll: 2
      });
      $(".vertical-center").slick({
        dots: true,
        vertical: true,
        centerMode: true,
      });
      $(".vertical").slick({
        dots: true,
        vertical: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 5,
        slidesToScroll: 3
      });
      $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true
      });
      $(".lazy").slick({
        lazyLoad: 'ondemand', // ondemand progressive anticipated
        infinite: true
      });
    });
</script>
<script>


    $('.custom_featured_slider_for').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      fade: true,
      asNavFor: '.custom_featured_slider_nav'
    });
    $('.custom_featured_slider_nav').slick({
      slidesToShow: 4,
      slidesToScroll: 1,
      vertical: true,
      loop: false,
      asNavFor: '.custom_featured_slider_for',
      dots: false,
      focusOnSelect: true,
      verticalSwiping: true,
      arrow: true,
      // responsive: [
      // {
      //     breakpoint: 1199,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 992,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 768,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 580,
      //     settings: {
      //       vertical: false,
      //       slidesToShow: 3,
      //     }
      //   },
      //   {
      //     breakpoint: 380,
      //     settings: {
      //       vertical: false,
      //       slidesToShow: 2,
      //     }
      //   }
      // ]
      responsive: [
        {
          breakpoint: 1199,
          settings: {
            vertical: false,
          }
        },
        {
          breakpoint: 992,
          settings: {
            vertical: false,
            
          }
        },
        {
          breakpoint: 768,
          settings: {
            vertical: false,
            slidesToShow: 5,
          }
        },
        {
          breakpoint: 580,
          settings: {
            vertical: false,
            slidesToShow: 3,
          }
        },
        {
          breakpoint: 380,
          settings: {
            vertical: false,
            slidesToShow: 2,
          }
        }
      ]
    });
  </script>
 <script>


    $('.custom_recent_slider_for1').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      fade: true,
      asNavFor: '.custom_recent_slider_nav1'
    });
    $('.custom_recent_slider_nav1').slick({
      slidesToShow: 4,
      slidesToScroll: 1,
      vertical: true,
      loop: false,
      asNavFor: '.custom_recent_slider_for1',
      dots: false,
      focusOnSelect: true,
      verticalSwiping: true,
      arrow: true,
      // responsive: [
      // {
      //     breakpoint: 1199,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 992,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 768,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 580,
      //     settings: {
      //       vertical: false,
      //       slidesToShow: 3,
      //     }
      //   },
      //   {
      //     breakpoint: 380,
      //     settings: {
      //       vertical: false,
      //       slidesToShow: 2,
      //     }
      //   }
      // ]
      responsive: [
        {
          breakpoint: 1199,
          settings: {
            vertical: false,
          }
        },
        {
          breakpoint: 992,
          settings: {
            vertical: false,
            
          }
        },
        {
          breakpoint: 768,
          settings: {
            vertical: false,
            slidesToShow: 5,
          }
        },
        {
          breakpoint: 580,
          settings: {
            vertical: false,
            slidesToShow: 3,
          }
        },
        {
          breakpoint: 380,
          settings: {
            vertical: false,
            slidesToShow: 2,
          }
        }
      ]
    });
  </script>
<script>


    $('.custom_recent_slider_for2').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      fade: true,
      asNavFor: '.custom_recent_slider_nav2'
    });
    $('.custom_recent_slider_nav2').slick({
      slidesToShow: 4,
      slidesToScroll: 1,
      vertical: true,
      loop: false,
      asNavFor: '.custom_recent_slider_for2',
      dots: false,
      focusOnSelect: true,
      verticalSwiping: true,
      arrow: true,
      // responsive: [
      
      // {
      //     breakpoint: 1199,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 992,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 768,
      //     settings: {
      //       vertical: false,
      //     }
      //   },
      //   {
      //     breakpoint: 580,
      //     settings: {
      //       vertical: false,
      //       slidesToShow: 3,
      //     }
      //   },
      //   {
      //     breakpoint: 380,
      //     settings: {
      //       vertical: false,
      //       slidesToShow: 2,
      //     }
      //   }
      // ]
      responsive: [
        {
          breakpoint: 1199,
          settings: {
            vertical: false,
          }
        },
        {
          breakpoint: 992,
          settings: {
            vertical: false,
            
          }
        },
        {
          breakpoint: 768,
          settings: {
            vertical: false,
            slidesToShow: 5,
          }
        },
        {
          breakpoint: 580,
          settings: {
            vertical: false,
            slidesToShow: 3,
          }
        },
        {
          breakpoint: 380,
          settings: {
            vertical: false,
            slidesToShow: 2,
          }
        }
      ]
    });
  </script>
  <style>
    /*.allImg {
      min-height: 500px
    }*/

    #ui-id-1.ui-menu {
      overflow-x: hidden;
      overflow-y: scroll;
      min-height: 50px;
      max-height: 150px;
    }


    .scrollbar {
      padding: 0 11px;
    }

    #usesrch li {
      padding: 6px;
    }

    .fiXed {
      overflow: hidden;
    }

    .list_menu {
      /*  max-height: 440px; */
    }
   /* .price_range .priceSlider .slide {
      width:100%;
    }*/
  </style>
  <script type="text/javascript">
    document.getElementById("range").oninput = function() {
  var value = (this.value-this.min)/(this.max-this.min)*100
  this.style.background = 'linear-gradient(to right, #1B33B7 0%, #1B33B7 ' + value + '%, #cdcdcd ' + value + '%, #cdcdcd 100%)'
  
};
  </script>
 <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->

  <script>
 $(window).on("load", function () {

      if(window.matchMedia("(max-width: 767px)").matches){
        // The viewport is less than 768 pixels wide
        // alert("This is a mobile device.");
        $(".filteraccordian").removeClass('in');

    } else{
        // The viewport is at least 768 pixels wide
       // alert("This is a tablet or desktop.");
       $(".filteraccordian").addClass('in');
    }
    });

</script>
<?php
namespace Cake\I18n;
use Cake\I18n\Time;
//echo $this->element($slider,array('model'=>$model));
?>
<?php 
//foreach ($topRated as $key => $topRated) {
  
  $itemprice1 = $topRated['price'];

      //$user_currency_price = $currencycomponent->conversion($topRated['forexrate']['price'], $_SESSION['currency_value'], $itemprice);
       $date = date('d');
      $month = date('m');
      $year = date('y');
      $tdy = strtotime($month . '/' . $date . '/' . $year);
      $newdate = strtotime($topRated['dealdate']);
       //$discount_exists='no';
        if (($topRated['discount_type'] == 'daily' && $newdate == $tdy) || $topRated['discount_type'] == 'regular') {
         // echo "discount"; 
       // $discount_exists='yes';

        $dealprice = $itemprice * (1 - $topRated['discount'] / 100);

        $user_currency_dealprice = $currencycomponent->conversion($topRated['forexrate']['price'], $_SESSION['currency_value'], $dealprice);

        if (isset($_SESSION['currency_code'])) { 
          $price= $_SESSION['currency_symbol'] . ' ' . $user_currency_dealprice;
        } else { ?><?php
        
          $price=$topRated['forexrate']['currency_symbol'] . ' ' . $dealprice;
        }
      } else {
       

        if (isset($_SESSION['currency_code'])) { ?>
          <?php
          $price= $_SESSION['currency_symbol'] . ' ' . $user_currency_price;
          $original_price=$price;
        } else { ?>
          <?php
          $price= $topRated['forexrate']['currency_symbol'] . ' ' . $itemprice;
          $original_price=$price;
        }

       
      }
       if (isset($_SESSION['currency_code'])) { ?>
          <?php
          $original_price= $_SESSION['currency_symbol'] . ' ' . $user_currency_price;
         
        } else { ?>
          <?php
          $original_price= $toprated['forexrate']['currency_symbol'] . ' ' . $itemprice;
        
        }
//}
//print_r($price);die;
?>
 <!-- Top rated section -->
          <section class="dis_item">
              <div class="section_header col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                <h2 class="section_heading bold-font">
                  <?php echo __d('user','Top Rated Products');?></h2>
                <div class="view-all-btn btn primary-color-bg primary-color-bg pull-right">
                  <a href="<?php echo SITE_URL.'viewmore/toprated';?>"><?php echo __d('user','View all');?></a>
                </div>
              </div>
  
              <div class="row top_rated_poduct">
                
                <div class="col-lg-8 newdproduct cmn_sec_style1">
                  <div class="product_cnt clearfix">
                    <a class="just_products" href="<?php echo $topRated[1]['product_url'];?>">
  
                      <img src="<?php echo $topRated[1]['orig_image'];?>" class="justimg-responsive">
  
                    </a>
  
                    <div class="hover-visible">

                    <span class="hover-icon-cnt like_hover unmatched" href="javascript:void(0);" onclick="itemcou(<?php echo $topRated[1]['id'];?>)">
                    <!--   <img src="<?php //echo SITE_URL.'/img/like.png'; ?>" id="like-icon<?php echo $popular['id'];?>" class="like-icon<?php echo $popular['id'];?>"> -->
                      <span class="like-txt<?php echo $topRated[1]['id'];?> nodisply" id="like-txt<?php echo $topRated[1]['id'];?>"><?php echo $setngs['like_btn_cmnt'];?></span>
                      <?php if (count($likeditemid) != 0 && in_array($topRated[1]['id'], $likeditemid)) {
                echo '<img src="' . SITE_URL . 'img/Heart filled@2x.png" id="like-icon' . $topRated[1]['id'] . '" class="like-icon' . $topRated[1]['id'] . '" alt="liked">
                <span style="display:none" class="like-txt' . $topRated[1]['id'] . ' nodisply" id="like-txt' . $topRated[1]['id'] . '" >' . $setngs['liked_btn_cmnt'] . '</span>';
              } else {
                
                echo '<img src="' . SITE_URL . 'img/like.png" id="like-icon' . $topRated[1]['id'] . '" class="like-icon' . $topRated[1]['id'] . '" alt="unliked">
                <span style="display:none" class="like-txt' . $topRated[1]['id'] . ' nodisply" id="like-txt' . $topRated[1]['id'] . '" >' . $setngs['like_btn_cmnt'] . '</span>';
              }?>
                    </span>

                    <span class="hover-icon-cnt share_hover" href="#" onclick="share_posts(<?php echo $topRated[1]['id'];?>);" data-toggle="modal"
                      data-target="#share-modal">
                      <img src="<?php echo SITE_URL.'/img/Mask Group 66.png'?>"> </span>

                    <span id="figcaption_titles<?php echo $topRated[1]['id'];?>" figcaption_title="<?php echo $topRated[1]['item_title'];?>"
                      style="display:none;width:0px !important;"><?php echo $topRated[1]['item_title'];?></span><span class="figcaption"
                      id="figcaption_title_url" figcaption_url="<?php echo $topRated[1]['item_title_url'];?>"
                      style="display:none;width:0px !important;"><?php echo $topRated[1]['item_title_url'];?></span><a href="<?php echo SITE_URL.'/people/'?>" id="user_n<?php echo $topRated[1]['id'];?>" usernameval="<?php echo $topRated[1]['shop_name'];?>"
                      style="display:none;width:0px !important;"></a><span id="img_<?php echo $topRated[1]['id'];?>" class="nodisply"
                      style="display:none;width:0px !important;"><?php echo $topRated[1]['image'];?></span><span
                      class="fav_count" id="fav_count<?php echo $topRated[1]['id'];?>" fav_counts="<?php echo $topRated[1]['like_count'];?>" style="display:none;width:0px !important;"><?php echo $topRated[1]['like_count'];?></span>
                  </div>
  
                    <div class="just_prod_nam bold-font >
                      <a class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding"
                        href="<?php echo $topRated[1]['product_url'];?>">
                        <span><?php echo $topRated[1]['item_title'];?></span> </a>
  
                      <!--<div class="price col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
            ‎$ 24250</div>-->
                           <?php  $itemprice = $topRated[1]['price'];

      $user_currency_price = $currencycomponent->conversion($topRated[1]['forexrate']['price'], $_SESSION['currency_value'], $itemprice);
       $date = date('d');
      $month = date('m');
      $year = date('y');
      $tdy = strtotime($month . '/' . $date . '/' . $year);
      $newdate = strtotime($topRated[0]['dealdate']);
       //$discount_exists='no';
        if (($topRated[1]['discount_type'] == 'daily' && $newdate == $tdy) || $topRated[1]['discount_type'] == 'regular') {
         // echo "discount"; 
       // $discount_exists='yes';

        $dealprice = $itemprice * (1 - $topRated[1]['discount'] / 100);

        $user_currency_dealprice = $currencycomponent->conversion($topRated[1]['forexrate']['price'], $_SESSION['currency_value'], $dealprice);

        if (isset($_SESSION['currency_code'])) { 
          $price= $_SESSION['currency_symbol'] . ' ' . $user_currency_dealprice;
        } else { ?><?php
        
          $price=$topRated[1]['forexrate']['currency_symbol'] . ' ' . $dealprice;
        }
      } else {
       

        if (isset($_SESSION['currency_code'])) { ?>
          <?php
          $price= $_SESSION['currency_symbol'] . ' ' . $user_currency_price;
          $original_price=$price;
        } else { ?>
          <?php
          $price= $topRated[1]['forexrate']['currency_symbol'] . ' ' . $itemprice;
          $original_price=$price;
        }

       
      }
       if (isset($_SESSION['currency_code'])) { ?>
          <?php
          $original_price= $_SESSION['currency_symbol'] . ' ' . $user_currency_price;
         
        } else { ?>
          <?php
          $original_price= $toprated[1]['forexrate']['currency_symbol'] . ' ' . $itemprice;
        
        } ?>
                       <span id="price_vals<?php echo $topRated[1]['id'];?>" price_val="<?php echo $price;//echo $topRated[0]['currency'].$topRated[0]['mainprice'];?>" style="display:none;width:0px !important;"></span>
                      <div class="price col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">‎<?php echo $price;//echo $topRated[0]['currency'].$topRated[0]['mainprice'];?>
                      <?php  if (($topRated[1]['discount_type'] == 'daily' && $newdate == $tdy) || $topRated[1]['discount_type'] == 'regular') {?>
                       <strike><?php echo $original_price;?>
                                              
                                            </strike>
                                          <?php }?>
                       </div>
                      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                        <div class="d-flex ratings">
                          <div>
                              <?php 
                               for ($i = 1;$i <= 5;$i++)
                                {
                                    $status = ($i <= $topRated[1]['avg_rating']) ? 'fa fa-star checked' : 'fa fa-star';
                                    echo '<i id="" class="' . $status . '"></i>';
                                }
                              ?>
                            </div>
                            <div>
                              <span><?php if($topRated[1]['avg_rating']!="") echo '('.$topRated[1]['rating_count'].')'; else echo "(0)";?></span>
                            </div>
                        </div>
  
                      </div>
                      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                        <a href="<?php echo $topRated[1]['product_url'];?>">
                        <div class="buyPlus">
                          <div class="buY"><button class="btn buyCart" tabindex="0">
                              <div class="pluS"><i class="fa fa-plus" aria-hidden="true"></i></div>
                              <div><?php echo __d('user','Buy');?></div>
                            </button></div>
  
                        </div>
                        </a>
                      </div>
                    </div>
  
  
                  </div>
                </div>
     
                <div class="col-lg-4 newdproduct cmn_sec_style1">
                  <div class="product_cnt clearfix">
                    <a class="just_products" href="<?php echo $topRated[0]['product_url'];?>">
  
                      <img src="<?php echo $topRated[0]['orig_image'];?>" class="justimg-responsive">
  
                    </a>
  
                  
                  <div class="hover-visible">

                    <span class="hover-icon-cnt like_hover unmatched" href="javascript:void(0);" onclick="itemcou(<?php echo $topRated[0]['id'];?>)">
                    <!--   <img src="<?php //echo SITE_URL.'/img/like.png'; ?>" id="like-icon<?php echo $popular['id'];?>" class="like-icon<?php echo $popular['id'];?>"> -->
                      <span class="like-txt<?php echo $topRated[0]['id'];?> nodisply" id="like-txt<?php echo $topRated[0]['id'];?>"><?php echo $setngs['like_btn_cmnt'];?></span>
                      <?php if (count($likeditemid) != 0 && in_array($topRated[0]['id'], $likeditemid)) {
                echo '<img src="' . SITE_URL . 'img/Heart filled@2x.png" id="like-icon' . $topRated[0]['id'] . '" class="like-icon' . $topRated[0]['id'] . '" alt="liked">
                <span style="display:none" class="like-txt' . $topRated[0]['id'] . ' nodisply" id="like-txt' . $topRated[0]['id'] . '" >' . $setngs['liked_btn_cmnt'] . '</span>';
              } else {
                
                echo '<img src="' . SITE_URL . 'img/like.png" id="like-icon' . $topRated[0]['id'] . '" class="like-icon' . $topRated[0]['id'] . '" alt="unliked">
                <span style="display:none" class="like-txt' . $topRated[0]['id'] . ' nodisply" id="like-txt' . $topRated[0]['id'] . '" >' . $setngs['like_btn_cmnt'] . '</span>';
              }?>
                    </span>

                    <span class="hover-icon-cnt share_hover" href="#" onclick="share_posts(<?php echo $topRated[0]['id'];?>);" data-toggle="modal"
                      data-target="#share-modal">
                      <img src="<?php echo SITE_URL.'/img/Mask Group 66.png'?>"> </span>

                    <span id="figcaption_titles<?php echo $topRated[0]['id'];?>" figcaption_title="<?php echo $topRated[0]['item_title'];?>"
                      style="display:none;width:0px !important;"><?php echo $topRated[0]['item_title'];?></span><span class="figcaption"
                      id="figcaption_title_url" figcaption_url="<?php echo $topRated[0]['item_title_url'];?>"
                      style="display:none;width:0px !important;"><?php echo $topRated[0]['item_title_url'];?></span><a href="<?php echo SITE_URL.'/people/'?>" id="user_n<?php echo $topRated[0]['id'];?>" usernameval="<?php echo $topRated[0]['shop_name'];?>"
                      style="display:none;width:0px !important;"></a><span id="img_<?php echo $topRated[0]['id'];?>" class="nodisply"
                      style="display:none;width:0px !important;"><?php echo $topRated[0]['image'];?></span><span
                      class="fav_count" id="fav_count<?php echo $topRated[0]['id'];?>" fav_counts="<?php echo $topRated[0]['like_count'];?>" style="display:none;width:0px !important;"><?php echo $topRated[0]['like_count'];?></span>
                  </div>
  
                    <div class="just_prod_nam bold-font col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                      <a class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding"
                        href="<?php echo $topRated[0]['product_url'];?>">
                        <span><?php echo $topRated[0]['item_title'];?> </span> </a>
  
                      <!--<div class="price col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
             ‎$ 24250</div>-->
                    <?php  $itemprice = $topRated[0]['price'];

      $user_currency_price = $currencycomponent->conversion($topRated[0]['forexrate']['price'], $_SESSION['currency_value'], $itemprice);
       $date = date('d');
      $month = date('m');
      $year = date('y');
      $tdy = strtotime($month . '/' . $date . '/' . $year);
      $newdate = strtotime($topRated[0]['dealdate']);
       //$discount_exists='no';
        if (($topRated[0]['discount_type'] == 'daily' && $newdate == $tdy) || $topRated[0]['discount_type'] == 'regular') {
         // echo "discount"; 
       // $discount_exists='yes';

        $dealprice = $itemprice * (1 - $topRated[0]['discount'] / 100);

        $user_currency_dealprice = $currencycomponent->conversion($topRated[0]['forexrate']['price'], $_SESSION['currency_value'], $dealprice);

        if (isset($_SESSION['currency_code'])) { 
          $price= $_SESSION['currency_symbol'] . ' ' . $user_currency_dealprice;
        } else { ?><?php
        
          $price=$topRated[0]['forexrate']['currency_symbol'] . ' ' . $dealprice;
        }
      } else {
       

        if (isset($_SESSION['currency_code'])) { ?>
          <?php
          $price= $_SESSION['currency_symbol'] . ' ' . $user_currency_price;
          $original_price=$price;
        } else { ?>
          <?php
          $price= $topRated[0]['forexrate']['currency_symbol'] . ' ' . $itemprice;
          $original_price=$price;
        }

       
      }
       if (isset($_SESSION['currency_code'])) { ?>
          <?php
          $original_price= $_SESSION['currency_symbol'] . ' ' . $user_currency_price;
         
        } else { ?>
          <?php
          $original_price= $toprated[0]['forexrate']['currency_symbol'] . ' ' . $itemprice;
        
        } ?>
                      <span id="price_vals<?php echo $topRated[0]['id'];?>" price_val="<?php echo $price;//echo $topRated[0]['currency'].$topRated[0]['mainprice'];?>" style="display:none;width:0px !important;"></span>
                      <div class="price col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">‎<?php echo $price;//echo $topRated[0]['currency'].$topRated[0]['mainprice'];?>
                      <?php  if (($topRated[0]['discount_type'] == 'daily' && $newdate == $tdy) || $topRated[0]['discount_type'] == 'regular') {?>
                       <strike><?php echo $original_price;?>
                                              
                                            </strike>
                                          <?php }?>
                       </div>
                      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                        <div class="d-flex ratings">
                          <div>
                              <?php 
                               for ($i = 1;$i <= 5;$i++)
                                {
                                    $status = ($i <= $topRated[0]['avg_rating']) ? 'fa fa-star checked' : 'fa fa-star-o unchecked';
                                    echo '<i id="" class="' . $status . '"></i>';
                                }
                              ?>
                            </div>
                            <div>
                                <span><?php if($topRated[0]['avg_rating']!="") echo '('.$topRated[0]['rating_count'].')'; else echo "(0)";?></span>
                            </div>
                        </div>
  
                      </div>
                      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                        <a href="<?php echo $topRated[0]['product_url'];?>">
                        <div class="buyPlus">
                          <div class="buY">
                            <button class="btn buyCart" tabindex="0">
                              <div class="pluS"><i class="fa fa-plus" aria-hidden="true"></i></div>
                              <div><?php echo __d('user','Buy');?></div>
                            </button>
                          </div>
  
                        </div>
                        </a>
                      </div>
                    </div>
  
  
                  </div>
                </div>
  
              </div>
  
  
            </section>
          <!-- E O top rated section -->
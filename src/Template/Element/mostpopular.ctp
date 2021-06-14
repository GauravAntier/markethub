<?php
namespace Cake\I18n;
use Cake\I18n\Time;
//echo $this->element($slider,array('model'=>$model));
?>
 <!-- Popular product section -->
              <section class="popular_product_sec">
               
            <div class="section_header col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding ">
              <h2 class="section_heading bold-font">
                 <?php echo __d('user','Popular Products');?></h2>
              <div class="view-all-btn btn primary-color-bg primary-color-bg pull-right">
                <a href="<?php echo SITE_URL.'viewmore/popular';?>"> <?php echo __d('user','View all');?></a>
              </div>
            </div>
              <?php
  if (isset($loguser['id']))
    echo '<input type="hidden" id="loguserid" value="' . $loguser['id'] . '">';
  else
    echo '<input type="hidden" id="loguserid" value="0">';

  echo '<input type="hidden" id="likebtncnt" value="' . $setngs['like_btn_cmnt'] . '" />';
  echo '<input type="hidden" id="likedbtncnt" value="' . $setngs['liked_btn_cmnt'] . '" />';
  ?>
            <div class="newslick-class">
                      

               <?php //echo "<pre>";print_r($mostpopularModel); die;
              // echo "cnt=".count($mostpopularModel);
              // print_r($likeditemid);
               foreach ($mostpopularModel as $key => $popular) {
                //echo  "pop=".$popular['id'];
                 $itemid = base64_encode($popular['id'] . "_" . rand(1, 9999));
                 if (isset($popular['photos'][0])) {
        $image_name = $popular['photos'][0]['image_name'];
      } else {
        $image_name = "usrimg.jpg";

      }
      $shopname_url = $popular['shop']['shop_image'];
      $username_url = $popular['user']['profile_image'];
      if ($shopname_url == '') {
        $shopname_url = 'usrimg.jpg';
      }
      if ($username_url == '') {
        $username_url = 'usrimg.jpg';
      }
      $user_level = $popular['user']['user_level'];
      $username = $popular['user']['username'];
      $sellername = $popular['shop']['shop_name'];
      $sellername_id = $popular['shop']['user_id'];
      $sellername_url_ori = $popular['shop']['shop_name_url'];

      $username_url_ori = $popular['user']['username_url'];
      $favorte_count = $popular['fav_count'];

      $item_price = $popular['price'];
      $item_default_price = round($item_price * $popular['forexrate']['price'], 2);
      $size_options = $popular['size_options'];
      $sizeoptions = json_decode($size_options, true);
      if (!empty($sizeoptions['size'])) {
        $item_price = reset($sizeoptions['price']);
        $item_default_price = round(reset($sizeoptions['price']) * $popular['Forexrates']['price'], 2);
      }
     // $items_image = $popular['photos'][0]['image_name'];



                    // $item_image = $popular['photos'][0]['image_name'];
                    // echo "image=".$item_image;
                    // if($item_image == "")
                    // {
                    //   $itemimage = SITE_URL.'media/items/original/usrimg.jpg';
                    // }
                    // else
                    // {
                    //   $itemimage = WWW_ROOT.'media/items/original/'.$item_image;
                    //   /*$header_response = get_headers($itemimage, 1);*/
                    //   if (file_exists($itemimage))
                    //   {
                    //     $itemimage = SITE_URL.'media/items/original/'.$item_image;
                    //   }
                    //   else
                    //   {
                    //     $itemimage = SITE_URL.'media/items/original/usrimg.jpg';
                    //   }
                    // }

      $itemprice = $popular['price'];

      $user_currency_price = $currencycomponent->conversion($popular['forexrate']['price'], $_SESSION['currency_value'], $itemprice);
       $date = date('d');
      $month = date('m');
      $year = date('y');
      $tdy = strtotime($month . '/' . $date . '/' . $year);
      $newdate = strtotime($popular['dealdate']);
       //$discount_exists='no';
        if (($popular['discount_type'] == 'daily' && $newdate == $tdy) || $popular['discount_type'] == 'regular') {
         // echo "discount"; 
       // $discount_exists='yes';

        $dealprice = $itemprice * (1 - $popular['discount'] / 100);

        $user_currency_dealprice = $currencycomponent->conversion($popular['forexrate']['price'], $_SESSION['currency_value'], $dealprice);

        if (isset($_SESSION['currency_code'])) { 
          $price= $_SESSION['currency_symbol'] . ' ' . $user_currency_dealprice;
        } else { ?><?php
        
          $price=$popular['forexrate']['currency_symbol'] . ' ' . $dealprice;
        }
       
        // if (isset($_SESSION['currency_code'])) { ?><?php
        //  $price=$_SESSION['currency_symbol'] . ' ' . $user_currency_price;
        // } else { ?><?php
        //  $price= $popular['forexrate']['currency_symbol'] . ' ' . $itemprice;
        // }

      } else {
       

        if (isset($_SESSION['currency_code'])) { ?>
          <?php
          $price= $_SESSION['currency_symbol'] . ' ' . $user_currency_price;
          $original_price=$price;
        } else { ?>
          <?php
          $price= $popular['forexrate']['currency_symbol'] . ' ' . $itemprice;
          $original_price=$price;
        }

       
      }
       if (isset($_SESSION['currency_code'])) { ?>
          <?php
          $original_price= $_SESSION['currency_symbol'] . ' ' . $user_currency_price;
         
        } else { ?>
          <?php
          $original_price= $popular['forexrate']['currency_symbol'] . ' ' . $itemprice;
        
        }

      if ($loguser == "") {
        $temp = "";
        $temp1 = "";
      } else {
        $temp = "modal";
        $temp1 = "#share-modal";
      }

             
               ?>
              <div class="item1 box_shadow_img custom_style2">
                <div class="product_cnt clearfix">
                  <a class="img-hover1" href="<?php echo $popular['product_url'];?>">
                    <div class="bg_product">
                      <img src="<?php echo $popular['orig_image'];?>" class="img-responsive">
                    </div>
                  </a>

                  <div class="hover-visible">

                    <span class="hover-icon-cnt like_hover unmatched" href="javascript:void(0);" onclick="itemcou(<?php echo $popular['id'];?>)">
                    <!--   <img src="<?php //echo SITE_URL.'/img/like.png'; ?>" id="like-icon<?php //echo $popular['id'];?>" class="like-icon<?php// echo $popular['id'];?>"> -->
                      <span class="like-txt<?php echo $popular['id'];?> nodisply" id="like-txt<?php echo $popular['id'];?>"><?php echo $setngs['like_btn_cmnt'];?></span>
                      <?php if (count($likeditemid) != 0 && in_array($popular['id'], $likeditemid)) {
                echo '<img src="' . SITE_URL . 'img/Heart filled@2x.png" id="like-icon' . $popular['id'] . '" class="like-icon' . $popular['id'] . '" alt="liked">
                <span style="display:none" class="like-txt' . $popular['id'] . ' nodisply" id="like-txt' . $popular['id'] . '" >' . $setngs['liked_btn_cmnt'] . '</span>';
              } else {
                
                echo '<img src="' . SITE_URL . 'img/like.png" id="like-icon' . $popular['id'] . '" class="like-icon' . $popular['id'] . '" alt="unliked">
                <span style="display:none" class="like-txt' . $popular['id'] . ' nodisply" id="like-txt' . $popular['id'] . '" >' . $setngs['like_btn_cmnt'] . '</span>';
              }?>
                    </span>

                    <span class="hover-icon-cnt share_hover" href="#" onclick="share_posts(<?php echo $popular['id'];?>);" data-toggle="modal"
                      data-target="#share-modal">
                      <img src="<?php echo SITE_URL.'/img/Mask Group 66.png'?>"> </span>

                    <span id="figcaption_titles<?php echo $popular['id'];?>" figcaption_title="<?php echo $popular['item_title'];?>"
                      style="display:none;width:0px !important;"><?php echo $popular['item_title'];?></span><span class="figcaption"
                      id="figcaption_title_url" figcaption_url="<?php echo $popular['item_title_url'];?>"
                      style="display:none;width:0px !important;"><?php echo $popular['item_title_url'];?></span><a href="<?php echo SITE_URL.'/people/'?>" id="user_n<?php echo $popular['id'];?>" usernameval="<?php echo $popular['shop_name'];?>"
                      style="display:none;width:0px !important;"></a><span id="img_<?php echo $popular['id'];?>" class="nodisply"
                      style="display:none;width:0px !important;"><?php echo $popular['image'];?></span><span
                      class="fav_count" id="fav_count<?php echo $popular['id'];?>" fav_counts="<?php echo $popular['like_count'];?>" style="display:none;width:0px !important;"><?php echo $popular['like_count'];?></span>
                  </div>



                  <div class="new_prod_nam bold-font col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                    <a class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding"
                      href="<?php echo $popular['product_url'];?>">
                      <span><?php echo $popular['item_title'];?></span> </a>

                    <div class="price col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                     <?php //echo $popular['currency'].$popular['mainprice']; ?> 
                       <?php  
                        echo $price; 
                      
                  
                   ?>
                     ‎<strike class="bold-font"><?php   if (($popular['discount_type'] == 'daily' && $newdate == $tdy) || $popular['discount_type'] == 'regular') {echo $original_price;}?></strike>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                      <div class="d-flex ratings">
                      
   
                              <div>
                              <?php 
                               for ($i = 1;$i <= 5;$i++)
                  {
                      $status = ($i <= $popular['avg_rating']) ? 'fa fa-star checked' : 'fa fa-star';
                      echo '<i id="" class="' . $status . '"></i>';
                  }
                              ?>
                            </div><div>
                               <span><?php if($popular['avg_rating']!="") echo '('.$popular['rating_count'].')'; else echo "(0)";?></span>
                                  </div>
   
                             
   
   
                      </div>

                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                        <a href="<?php echo $popular['product_url'];?>" class="">
                      <div class="buyPlus">
                        <div class="buY"><button class="btn buyCart">
                            <div class="pluS"><i class="fa fa-plus" aria-hidden="true"></i></div>
                            <div><?php echo __d('user','Buy');?></div>
                          </button></div>

                      </div>
                    </a>
                    </div>


                    <span id="price_vals<?php echo $popular['id'];?>" price_val="<?php echo $price;//echo $popular['currency'].$popular['mainprice']?>" style="display:none;width:0px !important;"></span>

                  </div>
                </div>

              </div>
            <?php }?>
             
            

            </div>
          </section>
          <!-- E O popular products -->
  
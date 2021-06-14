<?php
use Cake\Routing\Router;
/**
* CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
* Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
*
* Licensed under The MIT License
* For full copyright and license information, please see the LICENSE.txt
* Redistributions of files must retain the above copyright notice.
*
* @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
* @link          http://cakephp.org CakePHP(tm) Project
* @since         0.10.0
* @license       http://www.opensource.org/licenses/mit-license.php MIT License
*/

$cakeDescription = $setngs['site_title'];

$baseurl = Router::url('/');
 // print_r($loguser);die;
?>
<!DOCTYPE html>
<html>
<head>
  <?= $this->Html->charset() ?>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- title>
      <?//= $cakeDescription ?>:
      <?php
      //  echo " - ".$title_for_layout;
      ?>
      <?//= $this->fetch('title') ?>
    </title -->

    <title>
      <?= $cakeDescription ?>
    </title>
    
     <meta id="meta_site_name" property="og:site_name" content="<?php echo $setngs['site_name']; ?>" />

<?php

if(isset($metavalue) && $metavalue == 'itemdetails')
{
  //echo '<pre>'; print_r($item_datas); die;
  $itemid = base64_encode($item_datas['id'] . "_" . rand(1, 9999) . "_" . $loguser['id']);
  //echo base64_decode($itemid);die;
  //echo $itemid;die;
  ?>
    <meta id="meta_title" property="og:title" content="<?php echo substr($item_datas['item_title'], 0, 10); ?>" />
     <meta id="meta_type" property="og:type" content="website" />
  <meta id="meta_url" property="og:url" content="<?php echo SITE_URL.'listing/'.$itemid; ?>" />
  <meta id="meta_description" property="og:description" content="<?php echo strip_tags($item_datas['item_description']); ?>" />
  <meta property="og:image" content="<?php echo SITE_URL.'media/items/original/'.$item_datas['photos'][0]['image_name']; ?>" />
  <?php
}elseif(isset($metavalue) && $metavalue == 'storeprofile'){

  $shop_img = ($shopsdet['shop_image'] == '') ? 'usrimg.jpg' : $shopsdet['shop_image'];
  ?>
 <meta id="meta_title" property="og:title" content="<?php echo $shopsdet['shop_name']; ?>" />
     <meta id="meta_type" property="og:type" content="website" />
  <meta id="meta_url" property="og:url" content="<?php echo SITE_URL.'stores/'.$shopsdet['shop_name_url']; ?>" />
  <meta id="meta_description" property="og:description" content="<?php echo strip_tags($shopsdet['shop_description']); ?>" />
  <meta property="og:image" content="<?php echo SITE_URL . 'media/avatars/thumb150/' .$shop_img; ?>" />
  <?php
} elseif(isset($metavalue) && $metavalue == 'groupgift') { ?>

<meta id="meta_title" property="og:title" content="<?php echo $items_list_data['title'];?>" />
     <meta id="meta_type" property="og:type" content="website" />
  <meta id="meta_url" property="og:url" content="<?php echo SITE_URL."gifts/".$items_list_data['id']."_".$currentUser; ?>" />
  <meta id="meta_description" property="og:description" content="<?php echo strip_tags($items_list_data['description']); ?>" />
  <meta property="og:image" content="<?php echo $_SESSION['media_url'].'media/items/original/'.$item_datas['photos'][0]['image_name'];?>" />


<?php } else {
  ?>
  <meta id="meta_title" property="og:title" content="<?php echo $setngs['site_name']; ?>" />
     <meta id="meta_type" property="og:type" content="website" />
<meta id="meta_url" property="og:url" content="<?php echo SITE_URL; ?>" />
<meta id="meta_description" property="og:description" content="<?php echo $setngs['meta_desc']; ?>" />
<meta property="og:image" content="<?php echo SITE_URL . 'media/avatars/thumb150/appicon.png'; ?>" />
  <?php
}
?>

     
<meta id="meta_width" property="og:image:width" content="400" /> 
<meta id="meta_height" property="og:image:height" content="300" />
<!-- meta property="fb:app_id" content="245308646001038" / -->

    <?= $this->Html->meta('icon') ?>
    <?php
  //print_r($_SESSION);
    ?>

    <?= $this->Html->css('frontcss/bootstrap.min.css') ?>
    <?php
    if(isset($_SESSION['languagecode']) && $_SESSION['languagecode'] == "ar")
    {
      ?>
      <?= $this->Html->css('bootstrap-rtl.css') ?>
      <?php } ?>
      
      <?= $this->Html->css('jquery-ui.css') ?>
      <?= $this->Html->css('frontcss/common.css') ?>
      <?= $this->Html->css('frontcss/core.css') ?>
      
      <?php
      if(isset($_SESSION['languagecode']) && $_SESSION['languagecode'] == "ar")
      {
        ?>
        <?= $this->Html->css('rtl.css') ?>
        <?php } ?>
        <?= $this->Html->css('frontcss/slider.css') ?>
        <?= $this->Html->css('frontcss/font-awesome.css') ?>

        <?= $this->Html->css('assets/plugins/toast-master/css/jquery.toast.css') ?>
        <?= $this->Html->css('assets/plugins/datatables/media/css/jquery.dataTables.min.css') ?>
        <!--?= $this->Html->css('assets/plugins/datatables/media/css/buttons.dataTables.min.css') ?-->
        <?= $this->Html->css('assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css') ?>

        <!--Phase2 css-->
        <?= $this->Html->css('core.css') ?>
        <?= $this->Html->css('bootstrap-select.css') ?>

        <?= $this->Html->script('jquery.min.js') ?>
        <?= $this->Html->script('bootstrap.min.js') ?>
        <?= $this->Html->script('front.js') ?>
      <!--   <?= $this->Html->script('jquery.waypoints.min.js') ?>
        <?= $this->Html->script('jquery.magnific-popup.min.js') ?> -->
        <?= $this->Html->script('main.js') ?>
        <?= $this->Html->script('easyResponsiveTabs.js') ?>
        <?= $this->Html->script('assets/plugins/datatables/jquery.dataTables.min.js') ?>
        <?= $this->Html->script('jquery-ui.1.12.js') ?>
        <?= $this->Html->script('sticky-sidebar.js') ?>
        <?= $this->Html->script('assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js') ?>

        <!--Phase2 js-->
        <?= $this->Html->script('bootstrap-select.js') ?>
        
        <?= $this->fetch('meta') ?>
        <?= $this->fetch('css') ?>
        <?= $this->fetch('script') ?>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pushbar.js@1.0.0/src/pushbar.min.css">
        <?= $this->Html->css('custom_style.css') ?>
        <?= $this->Html->css('custom_ui_ux.css') ?>
        <?= $this->Html->css('media.css') ?>
        <style type="text/css">
          .test
          {

            padding: 1px;
          }
          .errcls{
            display: none;
          }
          .a{
            cursor:pointer;
          }
        </style>
      </head>
      <body>
        <?php
        $baseurl = Router::url('/');
        ?>
      <header>
         <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid navHeader d-flex align-items-center">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                  <div data-pushbar-id="sidepushbar" data-pushbar-direction="left" class="mob_sidebar">
                     <!-- <button data-pushbar-close class="close_btn">Close</button> -->
                     <div class="profile-section">
                        <div class="d-flex align-items-center">
                           <?php if(count($userDetailss)==0){
                              $img=SITE_URL.'/img/profile@2x.png';
                              $user_imges = "usrimg.jpg";
                              $name="Guest";
                              } 
                              else{
                              $user_imges = $userDetailss['profile_image'];
                              $name=$userDetailss['first_name'];
                              }
                              ?>
                           <div class="profile-circle"><span class="">
                              <img src="<?php echo SITE_URL.'media/avatars/thumb70/'.$user_imges;?>" style="width:100%;height:100%;">
                              </span>
                           </div>
                           <div class="welcome-text">
                              <div class="welcome">Welcome</div>
                              <div class="name"><?php echo $name;?></div>
                           </div>
                        </div>
                     </div>
                     <div class="panel-group" id="accordion">
                        <?php if(count($loguser)==0)
                           { ?>
                        <div class="panel-heading">
                           <h3 class="panel-title">
                              <a class="accordion-toggle" href="<?php echo SITE_URL.'login';?>">
                                 <div class="d-flex align-items-center">
                                    <div><img src="<?php echo SITE_URL.'img/affli@2x.png';?>" class="w-35" style="margin-right: 10px;">
                                    </div>
                                    <span class="header_color"><?php echo __d('user','Affiliate');?></span>
                                 </div>
                              </a>
                           </h3>
                        </div>
                        <?php } else{?>
                        <div class="panel-heading">
                           <h3 class="panel-title">
                              <a class="accordion-toggle" href="<?php echo SITE_URL.'affiliateproducts';?>">
                                 <div class="d-flex align-items-center">
                                    <div><img src="<?php echo SITE_URL.'img/affli@2x.png';?>" class="w-35" style="margin-right: 10px;">
                                    </div>
                                    <span class="header_color"><?php echo __d('user','Affiliate');?></span>
                                 </div>
                              </a>
                           </h3>
                        </div>
                        <?php }?>
                        <?php if(count($loguser)>0)
                           { ?>
                        <div class="panel-heading">
                           <h3 class="panel-title">
                              <a class="accordion-toggle" href="<?php echo SITE_URL.'cart';?>">
                                 <div class="d-flex align-items-center">
                                    <div><img src="<?php echo SITE_URL.'img/Cart@2x.png';?>" class="w-35" style="margin-right: 10px;"></div>
                                    <span class="header_color"><?php echo __d('user','Cart');?></span>
                                 </div>
                              </a>
                           </h3>
                        </div>
                        <div class="panel-heading">
                           <h3 class="panel-title">
                              <a class="accordion-toggle" href="<?php echo SITE_URL.'push_notifications';?>">
                                 <div class="d-flex align-items-center">
                                    <div><img src="<?php echo SITE_URL.'/img/Notification@2x.png'?>" class="w-35" style="margin-right: 10px;"></div>
                                    <span class="header_color"><?php echo __d('user','Notification');?></span>
                                 </div>
                              </a>
                           </h3>
                        </div>
                        <div class="panel-heading">
                           <h3 class="panel-title">
                              <a class="accordion-toggle" href="<?php echo SITE_URL.'livefeeds';?>">
                                 <div class="d-flex align-items-center">
                                    <div><img src="<?php echo SITE_URL.'/img/Activity@2x.png'?>" class="w-35" style="margin-right: 10px;"></div>
                                    <span class="header_color"><?php echo __d('user','Live Feeds');?></span>
                                 </div>
                              </a>
                           </h3>
                        </div>
                        <?php }?>
                        <div class="panel panel-default">
                           <div class="panel-heading">
                              <h3 class="panel-title">
                                 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#currency">
                                    <span class="arrow"></span>
                                    <div class="d-flex align-items-center">
                                       <div><img src="<?php echo SITE_URL.'/img/Currency@2x.png';?>" class="w-35" style="margin-right: 10px;"></div>
                                       <span class="header_color"><?php echo __d('user','Currency');?></span>
                                    </div>
                                 </a>
                              </h3>
                           </div>
                           <div id="currency" class="panel-collapse collapse">
                              <div class="panel-body" style="padding: 5px 0 0 60px;">
                                 <?php
                                    $uniquecountrycodes = array();
                                    foreach ($languages as $lang) {
                                    if (!in_array($lang['countrycode'], $uniquecountrycodes)) {
                                    echo '<p class="header_color"><a href="' . SITE_URL . 'changecurrency/' . $lang['countrycode'] . '">' . $lang['countrycode'] . '</a></p>';
                                    array_push($uniquecountrycodes, $lang['countrycode']);
                                    }
                                    }
                                    ?>
                              </div>
                           </div>
                        </div>
                        <?php 
                           if(count($loguser)==0) {
                           ?>
                        <div class="panel-heading">
                           <h3 class="panel-title">
                              <a class="accordion-toggle" href="<?php echo SITE_URL.'login'?>">
                                 <div class="d-flex align-items-center">
                                    <div><img src="<?php echo SITE_URL.'/img/profile@2x.png';?>" class="w-35" style="margin-right: 10px;"></div>
                                    <span class="header_color"><?php echo __d('user','Profile');?></span>
                                 </div>
                              </a>
                           </h3>
                        </div>
                        <?php } else{?>
                        <div class="panel panel-default">
                           <div class="panel-heading">
                              <h3 class="panel-title">
                                 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#profile">
                                    <span class="arrow"></span>
                                    <div class="d-flex align-items-center">
                                       <div><img src="<?php echo SITE_URL.'/img/profile@2x.png';?>" class="w-35" style="margin-right: 10px;"></div>
                                       <span class="header_color"><?php echo __d('user','Profile');?></span>
                                    </div>
                                 </a>
                              </h3>
                           </div>
                           <div id="profile" class="panel-collapse collapse">
                              <div class="panel-body" style="padding: 5px 0 0 60px;">
                                 <a href="<?php echo SITE_URL.'people/'.$userDetailss['username_url'];?>">
                                    <p class="header_color"><?php echo __d('user', 'My Profile'); ?></p>
                                 </a>
                                 <a href="<?php echo SITE_URL.'search/people';?>">
                                    <p class="header_color"><?php echo __d('user', 'Find Friends'); ?></p>
                                 </a>
                                 <a class="header_color" href="<?php echo SITE_URL.'invite_friends';?>">
                                    <p class="header_color"><?php echo __d('user', 'Invite Friends'); ?></p>
                                 </a>
                                 <a class="header_color" href="<?php echo SITE_URL.'group_gift_lists';?>">
                                    <p class="header_color"><?php echo __d('user', 'Group Gift List'); ?></p>
                                 </a>
                                 <a class="header_color" href="<?php echo SITE_URL.'purchases';?>">
                                    <p><?php echo __d('user', 'Track Orders'); ?></p>
                                 </a>
                                 <a class="header_color" href="<?php echo SITE_URL.'profile';?>">
                                    <p><?php echo __d('user', 'Settings'); ?></p>
                                 </a>
                              </div>
                           </div>
                        </div>
                        <?php }?>
                     </div>
                     <?php if(count($loguser)>0)
                        { ?>
                     <div class="logSignin"><a href="<?php echo SITE_URL.'logout';?>" class="logSignin"><?php echo __d('user', 'Logout'); ?> </a></div>
                     <?php }?>
                     <?php if(count($loguser)==0) {?>
                     <div class="logSignin"><a href="<?php echo SITE_URL.'login';?>" class="logSignin"><?php echo __d('user', 'Login'); ?> </a>
                        <a href="<?php echo SITE_URL.'signup';?>" class="sigUp"> &nbsp;<?php echo __d('user', 'Signup'); ?></a>
                     </div>
                     <?php }?>;
                  </div>
                  <div class="d-flex align-items-center custom_header_nav">
                     <button class="sidebar_icon" data-pushbar-target="sidepushbar"></button>
                     <li class="drop">
                        <a href="<?php echo SITE_URL;?>" class=""> <img src="<?php echo SITE_URL.'/img/Logo@2x.png';?>" alt="homepage" class="logo"></a>

                           <!-- <a href="<?php echo SITE_URL;?>" class=""> <img src="<?php echo SITE_URL.'/img/Logo@2x.png';?>"
                alt="homepage" class="logo"></a> -->
                        <!-- <a href="http://services.hitasoft.in/dev/stratus/" > -->
                        <!-- <a href="#" id="logo_dropdown" class="dropdown-toggle loGo" data-toggle="dropdown" role="button"
                           aria-haspopup="true" aria-expanded="false">
                           <div class="logoArrow "><i class="fa fa-angle-down"></i></div>
                           <!--  </a> --
                        </a> -->
                        <ul class="dropdown-menu logoDropDown">
                           <li><a href="<?php echo SITE_URL.'merchant';?>"><span class="headImg"><img
                              src="<?php echo SITE_URL.'/img/Sell@2x.png';?>" alt="Sell"></span>
                              <span><?php echo __d('user','Sell');?></span></a>
                           </li>
                           <?php if(count($loguser)==0)
                              {
                                echo '<li><a href="'.SITE_URL.'login"><span class="headImg"><img src="'.SITE_URL.'/img/Gifts@2x.png" alt="Gift"></span>
                              <span>'.__d('user','Gift').'</span></a></li>';
                              }
                              else
                              {
                                echo '<li><a href="'.SITE_URL.'creategiftcard"><span class="headImg"><img src="'.SITE_URL.'/img/Gifts@2x.png" alt="Gift"></span>
                              <span>'.__d('user','Gift').'</span></a></li>';
                              } ?>
                           <li><a href="" data-toggle="modal" data-dismiss="modal" data-target="#app-modal"><span class="headImg"><img src="<?php echo SITE_URL.'/img/Our app.png';?>" alt="Our App"></span><span><?php echo __d('user','Our App');?></span></a></li>
                           <li><a href="<?php echo SITE_URL.'allstores';?>"><span class="headImg"><img src="<?php echo SITE_URL.'/img/Stores@2x.png';?>" alt="Stores"></span><span><?php echo __d('user','All Stores');?></span></a></li>
                        </ul>
                     </li>
                     <span class="navbar-form navbar-left searchBar header_cmn_wraper" style="border:none;">
                        <div class="header_back_btn">
                          <a href="javascript:window.history.back()" class="back_btn  headerBackButtonGlobal"><i
                          class="fa fa-chevron-left"></i> <span>Back</span></a>
                        </div>
                        <div class="form-group inputSearch search_wrapper">
                        <form class="header-search-form" role="search"method="GET">
                        <div class="search-input-icon">
                          <img itemprop="" src="https://videohub.stratus-stage.xyz//themes/default/img/svg_img/Search2.svg" alt="{{CONFIG title}}">
                        </div>
                           <input id="search-query" name="q" class="form-control" autocomplete="off" onkeyup="indexSearch(event);"
                              type="text" placeholder="<?php echo __d('user','Search for products, brands and more...');?>">
                           <div class="feed-search nodisply" style="display: none;">
                              <ul id="usesrch" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front custom_search_dropdown_content"
                                 style="display: none;"></ul>
                           </div>
                        </div>
                        <div class="searchHeader">
                           <button type="submit" class="btn btn-default search1" onclick="indcall(event);"><?php echo __d('user','Search');?></button>
                        </div>
                            </form>
                     </span>
                  </div>
                  <!-- <a class="navbar-brand" href="#">Brand</a> -->
               </div>
               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse navBarcollapse" id="bs-example-navbar-collapse-1">
                  <!--  <span class="navbar-form navbar-left searchBar">
                     <div class="form-group inputSearch">
                       <input id="search-query" name="q" class="form-control" autocomplete="off" onkeyup="indexSearch(event);"
                         type="text" placeholder="Search for products, brands and more...">
                       <div class="feed-search nodisply" style="display: none;">
                         <ul id="usesrch" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front"
                           style="display: none; top: 93px; left: 222px; width: 350px;border-radius:20px;"></ul>
                       </div>
                     </div>
                     <div class="searchHeader">
                       <button type="submit" class="btn btn-default search1" onclick="indcall(event);">Search</button>
                     </div>
                     </span> -->
                  <ul class="nav navbar-nav navbar-right riGHt" >
                     <!-- <li  class="myDIV" ><img src="./img/affli@2x.png" alt="Affiliate" onclick="newFn()">
                        <div class="hide">sdfs</div>
                        </li> -->
                     <!-- <?php if(count($loguser)==0)
                        {
                          echo '<li class="affi"><a href="'.SITE_URL.'login"><img src="'.SITE_URL.'/img/affli@2x.png" alt="Affiliate"><span class="affiText">'.__d('user','Affiliate').'</span></a></li>';
                        }
                        else
                        {
                          echo '<li class="affi"><a href="'.SITE_URL.'affiliateproducts"><img src="'.SITE_URL.'/img/affli@2x.png" alt="Affiliate"><span class="affiText">'.__d('user','Affiliate').'</span></a></li>';
                          
                        }
                        ?> -->
                     <!-- <li class="currenCy">
                        <img src="./img/Currency@2x.png" alt="Affiliate">
                        <span class="currText">Currency</span>
                        </li> -->
                     <!-- <li class="currenCy">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<?php echo SITE_URL.'/img/Currency@2x.png';?>" alt="Affiliate" />
                        <span class="currText">
                        <?php
                           if(isset($_SESSION['currency_code']))
                             echo $_SESSION['currency_code'];
                           else
                           {
                            //echo '<pre>';print_r($languages[0]);die;
                             echo $languages[0]['countrycode'];
                           }
                           ?></span>
                        </a>
                        <ul class="dropdown-menu currencyDropDown">
                           <?php
                              /* latest fixes 4.1 */
                              $uniquecountrycodes = array();
                              foreach ($languages as $lang) {
                                if (!in_array($lang['countrycode'], $uniquecountrycodes)) {
                                  echo '<li><a href="' . SITE_URL . 'changecurrency/' . $lang['countrycode'] . '">' . $lang['countrycode'] . '</a></li>';
                                  array_push($uniquecountrycodes, $lang['countrycode']);
                                }
                              }
                              /* latest fixes 4.1 */
                              ?>
                        </ul>
                     </li> -->
                     <a class="cmn_icon_style" href="#">
                        <li class="plus_icon">
                              <span class="svg_icon">
                                 <img src="http://localhost/markethub//img/svg_icon/plus_icon.svg" alt="Affiliate">
                              </span>
                        </li>
                     </a>
                     <a class="cmn_icon_style" href="#">
                        <li class="email_icon">
                              <span class="svg_icon">
                                 <img src="http://localhost/markethub//img/svg_icon/Email_icon.svg" alt="Affiliate">
                              </span>
                        </li>
                     </a>
                     <?php 
                        if(count($loguser)==0){ 
                          echo '<a class="cmn_icon_style" href="'.SITE_URL.'login"><li class="pRofile ">
                            <span class="svg_icon">
                              <img src="'.SITE_URL.'/img/profile@2x.png" alt="Affiliate">
                            </span>
                            <span class="pRofileText">'. __d('user','Profile').'</span>
                            
                          </li></a>';
                        }
                        else{
                        
                         //  echo '<li class="affi"><a href="'.SITE_URL.'people/'.$loguser['username_url'].'"><img src="'.SITE_URL.'/img/profile@2x.png" alt="Profile"><span class="pRofileText"></span></a></li>';
                        }
                        
                           ?>
                     <!-- <?php
                        if(count($loguser)>0)
                        {
                          echo '<li class="dropdown caRt" style="cursor:pointer;">
                                     <img src="'.SITE_URL.'/img/Cart@2x.png" data-toggle="dropdown" alt="cart" onclick="showcarthov();">';
                          
                        
                              if(isset($defaultcart_total_itms) && !empty($defaultcart_total_itms) && $defaultcart_total_itms>0)
                                 echo '<div class="dot"></div>';
                                //echo '<span id="cartnoti" class="counter-label">'.$defaultcart_total_itms.'</span>';
                             
                            echo'</a>
                              <ul class="notification-dd dropdown-menu">
                                <li class="dd-heading bold-font">'.__d('user','My cart').':</li>
                                <div class="notification-list-cnt" id="cartmousehoverval">';
                        // CART SECTION
                                  $imageurl=$baseurl.'listing/'.base64_encode($setcart['itemid']."_".rand(1,9999));
                                  foreach($defaultcart as $setcart){
                                    if ($setcart['image']!="")
                                      { $itemimageurl=SITE_URL.'media/items/thumb70/'.$setcart['image'];
                                  }else{
                                    $itemimageurl=$baseurl.'media/items/original/usrimg.jpg';
                                  }
                                  echo '<li class="notification-list">
                                  <a class="square-profile" href="'.$imageurl.'">
                                    <div class="profile-square" style="background:url('.$itemimageurl.')" ></div></a>
                                    <div class="notification-detail">
                                      <a href="'.SITE_URL.'cart">
                                        <span class="product-name-text extra_text_tablecell test">'.$setcart['name'].'</span>
                                        <span class="product-qty">'.__d('user','Qty').' :'.$setcart['qty'].'</span>
                                        <span class="product-price-text">'.__d('user','Price').' :'.$setcart['price'].'</span>
                                      </a>
                                    </div>
                                  </li>';
                        
                                }
                                echo'</div>
                                <li class="dd-footer top-border">
                                  <div class="all-notification-text"><a class="centered-text" href="'.SITE_URL.'cart">'.__d('user','Checkout').'</a></div>
                                </li>
                              </ul>
                            </li>';
                            echo '<input type="hidden" id="logguserid" value="'.$loguser['id'].'">';
                          }
                          ?>
                     <?php
                        if(count($loguser)>0){
                        
                           echo '<li class="liveFeeds"><a href="'.SITE_URL.'livefeeds"><img src="'.SITE_URL.'/img/Activity@2x.png" alt="Activity"></a></li>';
                        
                        }
                        // else{
                        //   echo '<li class="logSignin"><a href="'.SITE_URL.'login" class="logSignin">'.__d('user','Login').' / </a> <a href="'.SITE_URL.'signup"class="sigUp"> &nbsp;Signup</a></li>';
                        //   echo '<input type="hidden" id="logguserid" value="0">';
                        // }
                        ?>-->
                     <?php
                        if(count($userDetailss)>0){
                          //print_r('userdetail '.$userdetail);
                           $user_imges = $userDetailss['profile_image'];
                        if ($user_imges == "") $user_imges = "usrimg.jpg";
                        else $user_imges = $userDetailss['profile_image'];
                         ?>
                     <li class="userProfDrop cmn_icon_style">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                           <div class="prOfileDropdown">
                              <span class="svg_icon">
                              <img src="<?php echo SITE_URL.'media/avatars/thumb70/'.$user_imges ;?>" alt="user">
                           </span>
                              <div>
                                 <div class="headName"><?php echo $userDetailss['first_name'];?></div>
                                 <div class="headText">@<?php echo $userDetailss['username_url'];?></div>
                              </div>
                           </div>
                        </a>
                        <ul class="dropdown-menu usProfHeader">
                           <a href="<?php echo SITE_URL.'people/'.$userDetailss['username_url'];?>" class="header_color">
                              <li><?php echo __d('user', 'My Profile'); ?></li>
                           </a>
                           <a href="<?php echo SITE_URL.'search/people';?>" class="header_color">
                              <li><?php echo __d('user', 'Find Friends'); ?></li>
                           </a>
                           <a href="<?php echo SITE_URL.'invite_friends';?>" class="header_color">
                              <li><?php echo __d('user', 'Invite Friends'); ?></li>
                           </a>
                           <a href="<?php echo SITE_URL.'group_gift_lists';?>" class="header_color">
                              <li><?php echo __d('user', 'Group Gift List'); ?></li>
                           </a>
                           <a href="<?php echo SITE_URL.'purchases';?>" class="header_color">
                              <li><?php echo __d('user', 'Track Orders'); ?></li>
                           </a>
                           <a href="<?php echo SITE_URL.'profile';?>" class="header_color">
                              <li><?php echo __d('user', 'Settings'); ?></li>
                           </a>
                           <li role="separator" class="divider"></li>
                           <a href="<?php echo SITE_URL.'logout';?>" class="header_color">
                              <li><?php echo __d('user', 'Logout'); ?></li>
                           </a>
                        </ul>
                     </li>
                     <li class="notiFicationHead dropdown notif cmn_icon_style" >
                        <!-- <a class="nav-menu-padding" href="javascript:void(0)" data-toggle="dropdown" onclick="shownoti();"><img src="<?php //echo SITE_URL.'/img/Notification@2x.png'?>" alt="Notification"> -->
                        <a class="nav-menu-padding" href="<?php echo SITE_URL.'push_notifications'?>" onclick="shownoti();" >
                           <span class="svg_icon">
                              <img src="<?php echo SITE_URL.'/img/svg_icon/notification_icon.svg'?>" alt="Notification">
                          </span>
                           <?php if($userDetailss['unread_notify_cnt']>0){?>
                           <!-- <span id="noticnt" class="counter-label"><?php //echo $userDetailss['unread_notify_cnt'];?></span> -->
                           <div class="dot"></div>
                           <?php }?>
                        </a>
                        <ul class="notification-dd dropdown-menu" id="pushappend">
                           <li class="notification-text"></li>
                        </ul>
                     </li>
                     <?php 
                        // echo '<li class="dropdown notif"><a class="nav-menu-padding" data-toggle="dropdown" href="javascript:void(0)" onclick="shownoti();"><span class="notification"></span>';
                        //     //echo $loguser['unread_notify_cnt'];
                        //     if($userDetailss['unread_notify_cnt']>0)
                        //       echo '<span id="noticnt" class="counter-label">'.$userDetailss['unread_notify_cnt'].'</span>';
                        //     echo '<span class="mobile-menu-txt">';echo __d('user','Notifications'); echo'</span></a>
                            
                        //   </li>';
                        } ?>
                     <li class="dropdown open hide1">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="#">Action</a></li>
                           <li><a href="#">Another action</a></li>
                           <li><a href="#">Something else here</a></li>
                           <li role="separator" class="divider"></li>
                           <li><a href="#">Separated link</a></li>
                        </ul>
                     </li>
                  </ul>
               </div>
               <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
         </nav>
      </header>

<!--- Modal Codes -->
<!--Login popup-->
<div class="modal fade" id="Login" role="dialog">
  <div class="login-popup modal-dialog">

    <!-- Modal content-->
    <div class="pop-up modal-content">
      <div class="pop-up-cnt login-body modal-body">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <div class="login-left-cnt col-xs-12 col-sm-7 col-md-7 col-lg-7 no-hor-padding">
          <h2 class="login-header-text bold-font txt-uppercase col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Login to Fantacy</h2>
          <form>
            <div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Email Address:</div>
              <input type="text" class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" name="fname" placeholder="Enter your email address">
            </div>
            <div class="pwd padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Password:</div>
              <input type="password" class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" name="fname" placeholder="Enter your password">
            </div>
            <div class="remember-pwd padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <input type="checkbox" value="" class="remember-me-checkbox">
              <div class="remember-me-txt">Remember me</div>
            </div>
            <div class="login-forget-pwd col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <a href="" class="btn primary-color-bg col-xs-4 col-sm-4 col-md-4 col-lg-4 no-hor-padding"><span class="login-text bold-font txt-uppercase">Login</span></a>
              <a href="" class="forgot-pwd-txt">Forgot password?</a>
            </div>
          </form>
          <div class="or bold-font">OR</div>
        </div>
        <div class="login-right-cnt col-xs-12 col-sm-5 col-md-5 col-lg-5 no-hor-padding">
          <div class="social-buttons col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
            <a href="" class="social-button fb-button bold-font txt-uppercase col-xs-12 col-sm-12 col-md-12 col-lg-12">facebook</a>
            <a href="" class="social-button google-button bold-font txt-uppercase col-xs-12 col-sm-12 col-md-12 col-lg-12">google</a>
            <a href="" class="social-button twitter-button bold-font txt-uppercase col-xs-12 col-sm-12 col-md-12 col-lg-12">twitter</a>
            <div class="new-to-website col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">New to Fantacy? <a href="" data-toggle="modal" data-target="#sign-up" class="sign-up-now-txt bold-font txt-uppercase">Sign up now</a></div>
          </div>
        </div>
      </div>
      <div class="login-footer modal-footer col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding"><?php echo __d('user','Interested in selling?');?><a href="<?php echo SITE_URL.'merchant';?>">Get started</a>
      </div>
    </div>

  </div>
</div>
<!--E O Login popup-->

<!--Signup popup-->
<div class="modal fade" id="sign-up" role="dialog">
  <div class="login-popup modal-dialog">

    <!-- Modal content-->
    <div class="pop-up modal-content">
      <div class="pop-up-cnt login-body modal-body">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <div class="signup-left-cnt col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
          <h2 class="login-header-text bold-font txt-uppercase col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Join Fantacy Today</h2>
          <form>
            <div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Full Name:</div>
              <input type="text" class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" name="fname" placeholder="Enter your Full Name">
            </div>
            <div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">User Name:</div>
              <input type="text" class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" name="fname" placeholder="Enter your User Name">
            </div>
            <div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Email Address:</div>
              <input type="text" class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" name="fname" placeholder="Enter your email address">
            </div>
            <div class="pwd padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Password:</div>
              <input type="password" class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" name="fname" placeholder="Enter your password">
            </div>
            <div class="pwd padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Captcha:</div>
              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
                <div class="captcha-bg col-xs-12 col-sm-12 col-md-6 col-lg-6 no-hor-padding"><div class="captcha-code bold-font">zpmc9j</div></div>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 padding-right0 margin-top20">Can't read? <a href="">Reload.</a></div>
              </div>
            </div>
            <div class="pwd padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Enter the security code shown above:</div>
              <input type="text" class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" name="fname" placeholder="Enter your password">
            </div>
            <div class="login-forget-pwd col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding padding-bottom15">
              <a href="" class="btn primary-color-bg col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding"><span class="login-text bold-font txt-uppercase">Join Fantacy</span></a>
            </div>
            <div class="signup-tc col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding padding-bottom15">
              By clicking the "Join Fantacy" you are agree that you have read and agree the Fantacy "Terms and Conditions"
            </div>
            <div class="centered-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
              ----or use your mail----
            </div>
          </form>
        </div>
        <div class="signup-right-cnt col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding margin-top30">
          <div class="social-buttons col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
            <a href="" class="social-button fb-button bold-font txt-uppercase col-xs-12 col-sm-12 col-md-12 col-lg-12">facebook</a>
            <a href="" class="social-button google-button bold-font txt-uppercase col-xs-12 col-sm-12 col-md-12 col-lg-12">google +</a>
            <div class="new-to-website col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">Already a member? <a href="" data-toggle="modal" data-target="#sign-up" class="sign-up-now-txt bold-font txt-uppercase">Login</a></div>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
<!--E O Signup popup-->

<!-- Download App Modal -->
<div id="app-modal" class="modal fade" role="dialog">
  <div class="modal-dialog downloadapp-modal">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h1 class="modal-title bold-font margin-bottom15"><?php echo $setngs['site_name'].__d('user',' App');?></h1>
        <div class="modal-header-subheading">
          <?php echo __d('user','Fast, Simple & Delightful. All it takes is 30 seconds to Download!');?></div>
        </div>
        <div class="modal-body">
          <div class="download-app-container margin-bottom20">

           <?php 
           $link = explode('//', $mobilepages['ioslink']);
           if (count($link) == 1) {
             $ios_link = '//'.$mobilepages['ioslink'];
           }else{
            $ios_link = $mobilepages['ioslink'];
           }

              ?>
            <div class="download-app-col">
              <a href="<?php echo $ios_link;?>" class="download-app-icon-cnt right-float" target="_blank">
                <img class="download-app-icon primary-color-bg" src="<?php echo SITE_URL;?>images/icons/apple-white-icon.png">
                <div class="download-app-icon-label margin-top30">
                  <?php echo __d('user','iOS app store');?></div>
                </a>
              </div>
              <?php 
           $alink = explode('//', $mobilepages['androidlink']);
           if (count($alink) == 1) {
             $an_link = '//'.$mobilepages['androidlink'];
           }else{
            $an_link = $mobilepages['androidlink'];
           }

              ?>
              <div class="download-app-col">
                <a href="<?php echo $an_link;?>" class="download-app-icon-cnt left-float" target="_blank">
                  <img class="download-app-icon primary-color-bg" src="<?php echo SITE_URL;?>images/icons/android-white-icon.png">
                  <div class="download-app-icon-label margin-top30">
                    <?php echo __d('user','Android play store');?></div>
                  </a>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

      <!-- Share Modal -->
      <div id="share-modal" class="modal fade" role="dialog">
        <div class="modal-dialog downloadapp-modal">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-body">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <div class="share-container margin-bottom20">
                <div class="share-cnt-row">
                  <h2 class="bold-font text-center">SHARE THIS THING</h2>
                  <div class="popup-heading-border"></div>
                </div>
                <div class="share-cnt-row">
                  <div class="share-details-cnt margin-top30">
                    <div class="share-details">
                      <div class="share-img margin-right20"><img class="img-responsive" src="images/Home/home-3.jpeg" id="share_item_img"></div>
                      <div class="share-details-txt">
                        <div class="bold-font" id="share_item_title">Sparx Brown Casual Shoes</div>
                        <div class="" id="share_item_username">By Mobile Mela Kingdom</div>
                        <div class="bold-font margin-top20" id="share_item_price">$150 ($120)</div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="share-cnt-row">
                  <div class="share-details-cnt margin-top30 share-icons-cnt padding-top20 padding-bottom20">
                    <div class="share-details margin-top10 margin-bottom10">
                      <a href="" class="share-icons facebook fa fa-facebook-official"></a>
                      <a href="" class="share-icons twitter fa fa-twitter-square"></a>
                      <a href="" class="share-icons google"><img src="<?php echo $baseurl;?>images/icons/gmail_icon.png" class="gmail-icon"></a>
                      <a href="" class="share-icons linkedin fa fa-linkedin-square"></a>
                      <a href="" class="share-icons tumblr fa fa-tumblr-square"></a>
                    </div>
                  </div>
                </div>
                <div class="share-cnt-row">
                  <div class="share-details-cnt margin-top30">
                    <a href="javascript:void(0);" data-dismiss="modal" class="share-popup-btn btn primary-color-bg bold-font">CANCEL</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

      <div id="share-store-modals" class="modal fade" role="dialog">
        <div class="modal-dialog downloadapp-modal">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-body">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <div class="share-container margin-bottom20">
                <div class="share-cnt-row">
                  <h2 class="bold-font text-center">SHARE THIS THING</h2>
                  <div class="popup-heading-border"></div>
                </div>
                <div class="share-cnt-row">
                  <div class="share-details-cnt margin-top30">
                    <div class="share-details">
                      <div class="share_store_img margin-right20">

                      <img class="img-responsive" src="images/Home/home-3.jpeg" id="share_store_img">
                      </div>
                      <div class="share-details-txt">
                        <div class="bold-font" id="share_title"></div>
                        <div class="" id="share_username">By Mobile Mela Kingdom</div>
                        
                      </div>
                    </div>
                  </div>
                </div>
                <div class="share-cnt-row">
                  <div class="share-details-cnt margin-top30 share-icons-cnt padding-top20 padding-bottom20">
                    <div class="share-details margin-top10 margin-bottom10">
                      <a href="" class="share-icons facebook fa fa-facebook-official" target="_blank"></a>
                      <a href="" class="share-icons twitter fa fa-twitter-square" target="_blank"></a>
                      
                      <a href="" class="share-icons linkedin fa fa-linkedin-square" target="_blank"></a>
                      <a href="" class="share-icons tumblr fa fa-tumblr-square" target="_blank"></a>
                    </div>
                  </div>
                </div>
                <div class="share-cnt-row">
                  <div class="share-details-cnt margin-top30">
                    <a href="javascript:void(0);" data-dismiss="modal" class="share-popup-btn btn primary-color-bg bold-font">CANCEL</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

      <!--- E O Modal Codes -->
      <section class="side-collapse-container">
        <!--Stick floating div code-->
        <section class="container-fluid no-hor-padding sticker-cnt" style="display: none;">
          <div id="sticker">
            <a href=""><div class="active-view default_view bold-font">Default View</div></a>
          </div>
          <div id="sticker">
            <a href="homepage.html"><div class="normal_view custom_view bold-font">custom view</div></a>
          </div>
        </section>
        <!--E O Stick floating div code-->
      </section>
      <input type="hidden" id="languagecode" value="<?php echo $_SESSION['languagecode'];?>">
      <!--section class="container-fluid no-hor-padding sticker-cnt"-->
      <section class="container-fluid side-collapse-container fullPage ">
        <?php $a=$this->request->controller.'/'.$this->request->action; 
        if($a!='Users/login') { ?>
        <?= $this->Flash->render() ?>
        <?php } ?>
        <?= $this->fetch('content') ?>
      </section>
      <div id="backtotop"><?php echo __d('user','<i class="fa fa-angle-up"></i>'); ?></div>

      <footer class="container-fluid footer_section margin-top40" id="footer">
        <div class="container">
          <div class="footer_container col-xs-12 col-sm-12 col-md-12 col-lg-12 padding-top30 padding-bottom30">
            <div class="footer_column col-xs-12 col-sm-4 col-md-4 col-lg-4 no-hor-padding">
              <ul class="no-hor-padding">
                 <!-- <?php 
                // echo '<li class="footer_links"><a href="'.SITE_URL.'help/faq">'.__d('user','FAQ').'</a></li>
                // <li class="footer_links"><a href="'.SITE_URL.'help/contact">'.__d('user','Contact').'</a></li>
                // <li class="footer_links"><a href="'.SITE_URL.'help/copyright">'.__d('user','Copyright policy').'</a></li>
                // <li class="footer_links"><a href="'.SITE_URL.'help/terms_sales">'.__d('user','Terms of sales').'</a></li>
                // <li class="footer_links"><a href="'.SITE_URL.'help/terms_service">'.__d('user','Terms of service').'</a></li>
                // <li class="footer_links"><a href="'.SITE_URL.'help/terms_condition">'.__d('user','Terms & condition').'</a></li>
                // <li class="footer_links"><a href="'.SITE_URL.'help/privacy">'.__d('user','Privacy').'</a></li>';
                // ?>-->
                <?php
                echo '<li class="footer_links"><a href="'.SITE_URL.'help/faq">'.__d('user','Apparel & Accessories').'</a></li>
                <li class="footer_links"><a href="'.SITE_URL.'help/contact">'.__d('user','Autos & Vehicles').'</a></li>
                <li class="footer_links"><a href="'.SITE_URL.'help/copyright">'.__d('user','Baby & Children’s Products').'</a></li>
                <li class="footer_links"><a href="'.SITE_URL.'help/terms_sales">'.__d('user','Beauty Products & Servises').'</a></li>';
                ?>
              </ul>
            </div>
            <div class="footer_column col-xs-12 col-sm-4 col-md-4 col-lg-4 no-hor-padding">
              <ul class="no-hor-padding">
                <!-- <?php
                // if(count($loguser)>0)
                // {
                  // echo '<li class="footer_links"><a href="'.SITE_URL.'profile">'.__d('user','My account').'</a></li>
                  // <li class="footer_links"><a href="'.SITE_URL.'cart">'.__d('user','My cart').'</a></li>
                  // <li class="footer_links"><a href="'.SITE_URL.'purchases">'.__d('user','Track orders').'</a></li>
                  // ';
                // }
                // else
                // {
                  // echo '<li class="footer_links"><a href="'.SITE_URL.'login">'.__d('user','My account').'</a></li>
                  // <li class="footer_links"><a href="'.SITE_URL.'login">'.__d('user','My cart').'</a></li>
                  // <li class="footer_links"><a href="'.SITE_URL.'login">'.__d('user','Track orders').'</a></li>
                  // ';
                // }
                ?> -->
                <?php
                echo '<li class="footer_links"><a href="'.SITE_URL.'profile">'.__d('user','Computers & Peripherals').'</a></li>
                <li class="footer_links"><a href="'.SITE_URL.'login">'.__d('user','Consumer Electronics').'</a></li>
                <li class="footer_links"><a href="'.SITE_URL.'login">'.__d('user','Dating Services').'</a></li>
                <li class="footer_links"><a href="'.SITE_URL.'login">'.__d('user','Gifts & Occasions').'</a></li>';
                ?>
              </ul>
              </div>
              <div class="footer_column col-xs-12 col-sm-4 col-md-4 col-lg-4 no-hor-padding">
                <ul class="no-hor-padding">
                  <!-- <?php
                  // echo '<li class="footer_links"><a href="'.SITE_URL.'help/about">'.__d('user','About').'</a></li>
                  // <li class="footer_links"><a href="'.SITE_URL.'help/documentation">'.__d('user','Documentation').'</a></li>
                  // <li class="footer_links"><a href="'.SITE_URL.'help/press">'.__d('user','Press').'</a></li>
                  // <li class="footer_links"><a href="'.SITE_URL.'help/pricing">'.__d('user','Pricing').'</a></li>
                  // <li class="footer_links"><a href="'.SITE_URL.'help/talk">'.$setngs['site_name'].' '.__d('user','Talk').'</a></li>';
                  ?> -->
                  <?php
                  echo '<li class="footer_links"><a href="'.SITE_URL.'help/about">'.__d('user','Home & Garden').'</a></li>
                  <li class="footer_links"><a href="'.SITE_URL.'help/documentation">'.__d('user','Finantical Services').'</a></li>
                  <li class="footer_links"><a href="'.SITE_URL.'help/press">'.__d('user','Other').'</a></li>';
                  ?>
                </ul>
              </div>
           </div>
         </div>
       </footer>
        <!-- script for header dropdown  -->
    <script>
    </script>
  <script>
  if($(window).width() > 767){
  $('.currenCy').click(function() {
     
     $( '.dropdown-toggle', this ).trigger( 'click' );
   $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
 }, function() {
  // $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
 });
  }
  else{
    $('.currenCy').click(function() {
     
     $( '.dropdown-toggle', this ).trigger( 'click' );
   $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
 }, function() {
   //$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
 });
  }
   
  </script>
       <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
       <!-- Magnific Popup -->
       <!-- staggered grid js -->
       <script src="<?php echo $baseurl;?>js/salvattore.min.js"></script>
       <script src="<?php echo SITE_URL.'js/frontjs/slider.js';?>"></script>
       <script src="<?php echo SITE_URL.'js/multiple-emails.js';?>"></script>
       <script src="<?php echo SITE_URL.'js/frontjs/custom.js';?>"></script>
       <script src="https://cdn.jsdelivr.net/npm/pushbar.js@1.0.0/src/pushbar.min.js"></script>
       <script>
    new Pushbar({
      blur: true,
      overlay: true
    });

  </script>
       <?php
       if(isset($_SESSION['languagecode']) && $_SESSION['languagecode'] == "ar")
       {
        ?>
        <script src="<?php echo SITE_URL.'js/frontjs/slider_rtl.js';?>"></script>
        <?php } else { ?>
        <script src="<?php echo SITE_URL.'js/frontjs/slider_ltr.js';?>"></script>
        <?php } ?>
        <script src="<?php echo SITE_URL.'js/jquery.translate.js';?>"></script>
        <script src="<?php echo SITE_URL.'js/translate.js';?>"></script>

        <!-- script for side bar  -->
   <script>
      /* $(document).scroll(function () {
          if ($('.category').offset().top + $('.category').height() >= $('footer').offset().top - 10) {
             $('.category').css('position', 'absolute');
             $('.category').css('max-width', '100%');
          }

          if ($(document).scrollTop() + window.innerHeight < $('footer').offset().top) {
             $('.category').css('position', 'fixed');
             $('.category').css('max-width', '22%');
             //  $(".category").addClass("new");
          }

       });*/
  //     $(document).scroll(function () {
  //       //alert("scroll");
  // //       var elmnt = document.getElementById("content");
  // // var x = elmnt.scrollHeight;
  // var x = $('#content')[0].scrollHeight;
  // // alert(x)
  //       //  var x = $('.allImg').height();
  //        var y = $('.category').height();
        
  //        if (x > y){

  //          if ($('.category').offset().top + $('.category').height() >= $('footer').offset().top - 10) {
  //          // $('.category').css('position', 'static');
  //           //$('.category').css('max-width', '100%');
  //        }
         
  //        if ($(document).scrollTop() + window.innerHeight < $('footer').offset().top) {
  //          // $('.category').css('position', 'fixed');
  //          // $('.category').css('max-width', '20%');
  //        }

  //        }
  //     });
      $(".checkbox").click(function(){
      //   $(document).scroll(function () {
      //   //  alert(x)
      //   //  alert(y)
      //     var x = $('#content')[0].scrollHeight;
      //     var y = $('.category').height();
        
      //    if (x > y){

      //      if ($('.category').offset().top + $('.category').height() >= $('footer').offset().top - 10) {
      //       $('.category').css('position', 'static');
      //       $('.category').css('max-width', '100%');
      //    }
         
      //    if ($(document).scrollTop() + window.innerHeight < $('footer').offset().top) {
      //       $('.category').css('position', 'fixed');
      //       $('.category').css('max-width', '20%');
      //    }

      //    }
      // });
  })
   </script>
<script>
  $('body').on('click', function (e) {
   if ($('.logoArrow').is(e.target) || $('.logoArrow i').is(e.target)) {
      if ($(".drop").hasClass("open"))  {
         
         $('.logoArrow i').removeClass('rotate');
    $('.logoArrow i').addClass('rotate-reset');
   
  }
  else{
   
   $('.logoArrow i').addClass('rotate');
    $('.logoArrow i').removeClass('rotate-reset');
    
  }
   }
   else{
      $('.logoArrow i').removeClass('rotate');
   $('.logoArrow i').removeClass('rotate-reset');
   }
 });
</script>
<!-- script for img toggle  -->
<script>
   var BaseURL = getBaseURL();
   var togSrc = [ BaseURL+"./img/like.png", BaseURL+"./img/Heart after like@2x.png" ];

// $(".tog").click(function() {
// this.src =  togSrc.reverse()[0];
// });
</script>
<script>
var BaseURL = getBaseURL();
// var togSrc1 = [ BaseURL+"./img/like.png", BaseURL+"./img/Heart filled@2x.png" ];
// var togSrc3 = [ BaseURL+"./img/like.png", BaseURL+"./img/Heart after like@2x.png" ];
// $(".likeIcon img").hover(function() {
// this.src =  togSrc1.reverse()[0];
// });
// var togSrc4 = [ BaseURL+"./img/Heart after like@2x.png", BaseURL+"./img/Heart filled@2x.png" ];
// $('.like-icon').hover(function() { 
//     var id = $(this).attr('alt');
//     if(id=='unliked'){
//      this.src =  togSrc1.reverse()[0];
//    }
//    // else if(id=='liked'){
//    //   this.src =  togSrc4.reverse()[0];
//    // }
   
// });
// $(".likeIcon img").click(function() {
//   this.src =  togSrc3.reverse()[0];
// });
</script>
<script>
  var BaseURL = getBaseURL();
   var togSrc2 = [ BaseURL+"./img/share.png", BaseURL+"./img/Share filled.png" ];

// $(".shareIcon img").hover(function() {
// this.src =  togSrc2.reverse()[0];
// });
</script>

   <script>
      $(document).ready(function(){

        
         $(".slick-next").click(function(){
        if($(".slick-prev").hasClass("slick-disabled")){
            document.querySelector(".section_header").style.display = "block"
            document.querySelector(".heroSlider-fixed").classList.remove("sliderFull");
         }
         else{
            document.querySelector(".section_header").style.display = "none"
            document.querySelector(".heroSlider-fixed").classList.add("sliderFull");
         }
      });
      $(".slick-prev").click(function(){
        if($(".slick-prev").hasClass("slick-disabled")){
            document.querySelector(".section_header").style.display = "block"
            document.querySelector(".heroSlider-fixed").classList.remove("sliderFull");
         }
         else{
            document.querySelector(".section_header").style.display = "none"
            document.querySelector(".heroSlider-fixed").classList.add("sliderFull");
         }
      });
});
     
   </script>

        <!-- Main JS -->
        <script type="text/javascript">

          $(document).ready(function(){
            setTimeout(function(){ $("#notify-message").hide(); }, 5000);
          });
          function shownotiresp()
          {
            var BaseURL=getBaseURL();
            var loguserid = $('#logguserid').val();
    //var loadingimg = $('.loading').val();
    if(pushnoii){
      pushnoii=false;
        //alert(loguserid);
        $.ajax({
          url: BaseURL+"getpushajax/",
          type: "post",
          data : { 'loginuserid': loguserid},
          dataType: "html",
          beforeSend: function() {
            $('.loading').show();
            //$(button).attr("disabled", "disabled");
          },
          success: function(responce){
              //alert(responce);
              $('#noticnts').hide();
              //$(".feed-notification").show();
              $('#pushappends').html(responce);
            }
          });
      }
    }

    /***************search menu***************************/

    $( function() {
      var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
      ];
      $( ".tags" ).autocomplete({
        source: availableTags
      });
    } ); 


    /************Nav right to left slide************/
  </script>
<?php
      if(isset($_SESSION['languagecode']) && $_SESSION['languagecode'] == "ar")
      {
        ?>
        <script>
  function rtl_slick(){
if ($('body').hasClass("rtl")) {
   return true;
} else {
   return false;
}}
</script>
<script>

  $(document).ready(function () {

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite:false,
        arrows: false,
        draggable: false,
        rtl: true,
        centerMode:true,
        fade: true,
        asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
        slidesToShow: 4, // 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: true,
        rtl: true,
        
        // centerMode: true,
    infinite:false,
    arrows: true,
        focusOnSelect: true,

    responsive: [
      {
        breakpoint: 1024,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true
        },
      },
      {
        breakpoint: 600,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true

        },
      },

      {
        breakpoint: 480,
        settings: {
          infinite: false,
          arrows: true,
          slidesToShow: 3,
          slidesToScroll: 1,

        },
      }


    ],
    });

    $('.slider-for1').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        rtl: true,
        draggable: false,
        centerMode:true,
        infinite:false,
        fade: true,
        asNavFor: '.slider-nav1'
    });
    $('.slider-nav1').slick({
        slidesToShow: 4, // 3,
        slidesToScroll: 3,
        asNavFor: '.slider-for1',
        dots: true,
    arrows:true,
    infinite:false,
        // centerMode: true,
        
        rtl: true,
        focusOnSelect: true,


    responsive: [
      {
        breakpoint: 1024,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true
        },
      },
      {
        breakpoint: 600,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true

        },
      },

      {
        breakpoint: 480,
        settings: {
          infinite: false,
          arrows: true,
          slidesToShow: 3,
          slidesToScroll: 1,

        },
      }


    ],
    });
   
   
    $('.slider-for2').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        rtl: true,
        centerMode:true,
        draggable: false,
        infinite:false,
        fade: true,
        asNavFor: '.slider-nav2'
    });
    $('.slider-nav2').slick({
        slidesToShow: 4, // 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for2',
        dots: true,
        
    arrows:true,
    infinite:false,
    rtl: true,
        // centerMode: true,
        focusOnSelect: true,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true
        },
      },
      {
        breakpoint: 600,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true

        },
      },

      {
        breakpoint: 480,
        settings: {
          infinite: false,
          arrows: true,
          slidesToShow: 3,
          slidesToScroll: 1,

        },
      }


    ],
    });


});  

</script>

<!-- vertical sliders  -->

<script>
  $(document).ready(function () {
      
      $('.slider-verical_for3').each(function (key, item) {
      
      var sliderIdName = 'slider' + key;
      var sliderNavIdName = 'sliderNav' + key;
      
      this.id = sliderIdName;
      $('.slider-verical_nav3')[key].id = sliderNavIdName;
      
      var sliderId = '#' + sliderIdName;
      var sliderNavId = '#' + sliderNavIdName;
      
      $(sliderId).slick({
           slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          centerMode:true,
          draggable: false,
          rtl: true,
          fade: true,
          speed: 100,
          infinite:false,
          asNavFor: sliderNavId
      });
      
      $(sliderNavId).slick({
      slidesToShow: 4, // 3,
          slidesToScroll: 1,
          vertical: true,
      verticalSwiping: true,
      asNavFor: sliderId,
      draggable: false,
            dots: true,
          centerMode: true,
        centerPadding: '10px',
      infinite:false,
      arrows: true,
          focusOnSelect: true,
      
              responsive: [
        {
          breakpoint: 992,
          settings: {
            arrows: true,
            infinite: false,
             rtl: true,
            vertical: false,
                        centerMode: false,
            slidesToShow: 4,
            slidesToScroll: 1,

          }
        },
        {
          breakpoint: 480,
          settings: {
            arrows: true,
            infinite: false,
             rtl: true,
            vertical: false,
                        infinite: false,
                        centerMode:false,
                        arrows: true,
                        slidesToShow: 3,
                        slidesToScroll: 1,
          }
        },


      ],
      });
      
      });
      });
</script>



<!-- suggestitem popular sliders -->
<script>
  $(() => {
    var createSlick = () => {
      let slider = $(".Popular_sliders");
      

      slider.not('.slick-initialized').slick({
        rtl: rtl_slick(),
        autoplay: false,
        infinite: false,
         rtl: true,
        arrows: false,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 1,
               rtl: true,
              arrows: false,
              adaptiveHeight: true,
            },
          },

          {
            breakpoint: 992,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1,
               rtl: true,
              arrows: false,
              adaptiveHeight: true,
            },
          },

          {
            breakpoint: 600,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
               rtl: true,
              centerMode: false,
              arrows: false,


            },
          },
        ],
      });
    }

    createSlick();

    $(window).on('resize orientationchange', createSlick);
  })
</script>

<!-- top selslider  -->
<script>
  $(() => {
    var createSlick = () => {
      let slider = $(".top_selslider");

      slider.not('.slick-initialized').slick({
        autoplay: false,
        infinite: false,
        rtl: true,
        arrows: true,
        slidesToShow: 2,
        slidesToScroll: 2,
        responsive: [

          {
            breakpoint: 600,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
            },
          },
        ],
      });
    }

    createSlick();

    $(window).on('resize orientationchange', createSlick);
  })
</script>

<script>


  $('.slider-for_suggestiem').slick({
    slidesToShow: 1,
    slidesToScroll: false,
    fade: true,
    rtl: true,
    arrows: false,
    infinite:true,
    asNavFor: '.slider-nav_suggestitem'

  });
  $('.slider-nav_suggestitem').slick({
    vertical: true,
    verticalSwiping: true,
    slidesToShow: 4,
    infinite:true,
    slidesToScroll: 1,
    asNavFor: '.slider-for_suggestiem',
    arrows: true,
    infinite:true,
    focusOnSelect: true,

    responsive: [
      {
        breakpoint: 992,
        settings: {
          arrows: true,
          infinite: false,
          rtl: true,
          vertical: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: true,
          infinite: false,
          rtl: true,
          vertical: false,
          slidesToShow: 3,
          slidesToScroll: 1,
        }
      },

      
    ]


  });




</script>


<script>
  $(() => {
    var createSlick = () => {
      let slider = $(".Popular_slider_2");
      

      slider.not('.slick-initialized').slick({
        autoplay: false,
        infinite: false,
        rtl: true,
        arrows: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1,
              rtl: true,
              arrows: false,
              adaptiveHeight: true,
            },
          },

          {
            breakpoint: 992,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              rtl: true,
              arrows: false,
              adaptiveHeight: true,
            },
          },

          {
            breakpoint: 600,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              rtl: true,
              centerMode: false,
              arrows: false,


            },
          },
        ],
      });
    }

    createSlick();

    $(window).on('resize orientationchange', createSlick);
  })

</script>



<!-- Topstores script  -->
<script>

  $('.top_stores').slick({
    slidesToShow: 4,
    rtl: true,
    arrows: true,
    infinite:false,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: false,
          centerMode: true,
          rtl: true,
          centerPadding: '40px',
          slidesToShow: 2

        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          slidesToShow: 1,
          slidesToScroll: 1,
          rtl: true,
        }
      },
    ]
  });


</script>


<!-- new arrivals script  -->

<script>

  
      $('.new_arrivals').slick({
         slidesToShow: 2,
         // rtl: true,
         arrows: true,
         
         infinite: false,
         responsive: [
            {
               breakpoint: 992,
               settings: {
                  arrows: true,
                  draggable: false,
                  centerMode: false,
                  slidesToShow: 2,
                  slidesToScroll: 1,
                 
                  // rtl: true,

               }
            },
            {
               breakpoint: 767,
               settings: {
                  arrows: true,
                  centerMode: false,
                  slidesToShow: 3,
                  slidesToScroll: 1,
                  // rtl: true,

               }
            },
            {
               breakpoint: 580,
               settings: {
                  arrows: true,
                  centerMode: false,
                  slidesToShow: 2,
                  slidesToScroll: 1,
                  // rtl: true,
               }
            },
            {
               breakpoint: 320,
               settings: {
                  arrows: true,
                  centerMode: false,
                  slidesToShow: 1,
                  slidesToScroll: 1,
                  // rtl: true,
               }
            },
         ]
      });


  $('.new_arrivals_deal').slick({
    slidesToShow: 5,
    rtl: true,
    arrows:true,
    infinite:false,
    responsive: [
      {
        breakpoint: 992,
        settings: {
          arrows: true,
          centerMode: false,
          slidesToShow: 2,
          slidesToScroll: 1,
          rtl: true,

        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: true,
          centerMode: false,
          slidesToShow: 1,
          slidesToScroll: 1,
          // rtl: true,
        }
      },
    ]
  });


</script>


        <?php }else{ ?>


        <script>
          $(() => {
    var createSlick = () => {
      let slider = $(".Popular_sliders");
      

      slider.not('.slick-initialized').slick({
        rtl: rtl_slick(),
        autoplay: false,
        infinite: false,
        // rtl: false,
        arrows: false,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 1,
              // rtl: true,
              arrows: false,
              adaptiveHeight: true,
            },
          },

          {
            breakpoint: 992,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1,
              // rtl: true,
              arrows: false,
              adaptiveHeight: true,
            },
          },

          {
            breakpoint: 600,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              // rtl: true,
              centerMode: false,
              arrows: false,


            },
          },
        ],
      });
    }

    createSlick();

    $(window).on('resize orientationchange', createSlick);
  })
        </script>

<script>

  $(document).ready(function () {

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite:false,
        draggable: false,
        arrows: false,
    centerMode:true,
        fade: true,
        asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
        slidesToShow: 4, // 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: true,
        // centerMode: true,
        
    infinite:false,
    arrows: true,
        focusOnSelect: true,

    responsive: [
      {
        breakpoint: 1024,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true
        },
      },
      {
        breakpoint: 600,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true

        },
      },

      {
        breakpoint: 480,
        settings: {
          infinite: false,
          arrows: true,
          slidesToShow: 3,
          slidesToScroll: 1,

        },
      }


    ],
    });

    $('.slider-for1').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        centerMode:true,
        draggable: false,
        infinite:false,
        fade: true,
        asNavFor: '.slider-nav1'
    });
    $('.slider-nav1').slick({
        slidesToShow: 4, // 3,
        slidesToScroll: 3,
        asNavFor: '.slider-for1',
        dots: true,
    arrows:true,
    infinite:false,
    
        // centerMode: true,
        focusOnSelect: true,


    responsive: [
      {
        breakpoint: 1024,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true
        },
      },
      {
        breakpoint: 600,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true

        },
      },

      {
        breakpoint: 480,
        settings: {
          infinite: false,
          arrows: true,
          slidesToShow: 3,
          slidesToScroll: 1,

        },
      }


    ],
    });
   
   
    $('.slider-for2').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        centerMode:true,
        draggable: false,
        infinite:false,
        fade: true,
        asNavFor: '.slider-nav2'
    });
    $('.slider-nav2').slick({
        slidesToShow: 4, // 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for2',
        dots: true,
        
    arrows:true,
    infinite:false,
        // centerMode: true,
        focusOnSelect: true,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true
        },
      },
      {
        breakpoint: 600,
        settings: {
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          focusOnSelect: true

        },
      },

      {
        breakpoint: 480,
        settings: {
          infinite: false,
          arrows: true,
          slidesToShow: 3,
          slidesToScroll: 1,

        },
      }


    ],
    });


});  

</script>

<!-- vertical sliders  -->

<script>
  $(document).ready(function () {
      
      $('.slider-verical_for3').each(function (key, item) {
      
      var sliderIdName = 'slider' + key;
      var sliderNavIdName = 'sliderNav' + key;
      
      this.id = sliderIdName;
      $('.slider-verical_nav3')[key].id = sliderNavIdName;
      
      var sliderId = '#' + sliderIdName;
      var sliderNavId = '#' + sliderNavIdName;
      
      $(sliderId).slick({
           slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
      centerMode:true,
          fade: true,
          draggable: false,
          speed: 100,
          infinite:false,
          asNavFor: sliderNavId
      });
      
      $(sliderNavId).slick({
      slidesToShow: 4, // 3,
          slidesToScroll: 1,
          vertical: true,
          verticalSwiping: true,
          asNavFor: sliderId,
          dots: true,
          draggable: false,
          centerMode: true,
          centerPadding: '10px',
          infinite:false,
          arrows: true,
          focusOnSelect: true,
      
              responsive: [
        {
          breakpoint: 992,
          settings: {
            arrows: true,
            infinite: false,
            // rtl: true,
            vertical: false,
                        centerMode: false,
            slidesToShow: 4,
            slidesToScroll: 1,

          }
        },
        {
          breakpoint: 480,
          settings: {
            arrows: true,
            infinite: false,
            // rtl: true,
            vertical: false,
                        infinite: false,
                        centerMode:false,
                        arrows: true,
                        slidesToShow: 3,
                        slidesToScroll: 1,
          }
        },


      ],
      });
      
      });
      });
</script>



<!-- top selslider  -->
<script>
  $(() => {
    var createSlick = () => {
      let slider = $(".top_selslider");

      slider.not('.slick-initialized').slick({
        autoplay: false,
        infinite: false,
        // rtl: true,
        arrows: true,
        slidesToShow: 2,
        slidesToScroll: 2,
        responsive: [

          {
            breakpoint: 600,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
            },
          },
        ],
      });
    }

    createSlick();

    $(window).on('resize orientationchange', createSlick);
  })


</script>





<script>


  $('.slider-for_suggestiem').slick({
    slidesToShow: 1,
    slidesToScroll: false,
    fade: true,
    // rtl: true,
    arrows: false,
    infinite:true,
    asNavFor: '.slider-nav_suggestitem'

  });
  $('.slider-nav_suggestitem').slick({
    vertical: true,
    verticalSwiping: true,
    slidesToShow: 4,
    infinite:true,
    slidesToScroll: 1,
    asNavFor: '.slider-for_suggestiem',
    arrows: true,
    infinite:true,
    focusOnSelect: true,

    responsive: [
      {
        breakpoint: 992,
        settings: {
          arrows: true,
          infinite: false,
          // rtl: true,
          vertical: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: true,
          infinite: false,
          // rtl: true,
          vertical: false,
          slidesToShow: 3,
          slidesToScroll: 1,
        }
      },

      
    ]


  });




</script>


<script>
  $(() => {
    var createSlick = () => {
      let slider = $(".Popular_slider_2");
      

      slider.not('.slick-initialized').slick({
        autoplay: false,
        infinite: false,
        // rtl: false,
        arrows: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1,
              // rtl: true,
              arrows: false,
              adaptiveHeight: true,
            },
          },

          {
            breakpoint: 992,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              // rtl: true,
              arrows: false,
              adaptiveHeight: true,
            },
          },

          {
            breakpoint: 600,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              // rtl: true,
              centerMode: false,
              arrows: false,


            },
          },
        ],
      });
    }

    createSlick();

    $(window).on('resize orientationchange', createSlick);
  })

</script>



<!-- Topstores script  -->
<script>

  $('.top_stores').slick({
    slidesToShow: 4,
    // rtl: true,
    arrows: true,
    infinite:false,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: false,
          centerMode: true,
          // rtl: true,
          centerPadding: '40px',
          slidesToShow: 2

        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          slidesToShow: 1,
          slidesToScroll: 1,
          // rtl: true,
        }
      },
    ]
  });


</script>


<!-- new arrivals script  -->

<script>

  
      $('.new_arrivals').slick({
         slidesToShow: 2,
         // rtl: true,
         arrows: true,
         
         infinite: false,
         responsive: [
            {
               breakpoint: 992,
               settings: {
                  arrows: true,
                  draggable: false,
                  centerMode: false,
                  slidesToShow: 2,
                  slidesToScroll: 1,
                 
                  // rtl: true,

               }
            },
            {
               breakpoint: 767,
               settings: {
                  arrows: true,
                  centerMode: false,
                  slidesToShow: 3,
                  slidesToScroll: 1,
                  // rtl: true,

               }
            },
            {
               breakpoint: 580,
               settings: {
                  arrows: true,
                  centerMode: false,
                  slidesToShow: 2,
                  slidesToScroll: 1,
                  // rtl: true,
               }
            },
            {
               breakpoint: 320,
               settings: {
                  arrows: true,
                  centerMode: false,
                  slidesToShow: 1,
                  slidesToScroll: 1,
                  // rtl: true,
               }
            },
         ]
      });


  $('.new_arrivals_deal').slick({
    slidesToShow: 3,
    arrows:true,
    infinite:false,
    responsive: [
      {
        breakpoint: 992,
        settings: {
          arrows: true,
          centerMode: false,
          slidesToShow: 2,
          slidesToScroll: 1,

        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: true,
          centerMode: false,
          slidesToShow: 1,
          slidesToScroll: 1,
          // rtl: true,
        }
      },
    ]
  });


</script>

         <?php  } ?>

  

<script>
  function rtl_slick(){
if ($('body').hasClass("rtl")) {
   return true;
} else {
   return false;
}}
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


    .scrollbar
    {
      padding: 0 11px;
    }
      #usesrch li{
      padding:6px;
    }
       .fiXed{
         overflow: hidden;
      }
      .list_menu {
   /*  max-height: 440px; */
  }
  .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover{
    background-color: #1B33B7 !important;
    color: #ffffff!important;
  }
  .header_color{
    color:#000;
  }
  .header_color a{
    color:#000;
  }
 .affi{
  margin-right:0px!important;
 }
 .currenCy{
  margin-right:0px!important;
 }
  </style>
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script>
$(document).ready(function(){
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
</body>
<?php
if($googlecode['status'] == 'yes') {
  echo "<pre>";print_r($googlecode['google_code']);
}
?>
</html>
<?php
use Cake\Routing\Router;
$baseurl = Router::url('/');
?>
<div class="list-group margin0">
	<!-- <span class="list-group-item sidebar-top-title list-group-item sidebar-top-title active">
		<h4 class="panel-title accordion_shop bold-font txt-uppercase"><?php echo __d('user','Account');?></h4>
		<span class="pull-right" id="slide-submenu">
			<img src="<?php echo SITE_URL;?>images/icons/close-gray.png" width="16" height="20">
		</span>
	</span> -->
	<!-- SELECT CLASS ACTIVE-->
	<?php $action = $this->request->getParam('action');
			//echo  $action;
			$activeClass="list-group-item active";
			$nonactiveClass="list-group-item";
			?>
	<div class="acnt-submenu border_bottom_grey">
		<a href="<?php echo $baseurl.'profile/';?>" class="<?php if($action=="profile") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-profile"> </span>
			<?php echo __d('user','Profile');?>
		</a>
		<a href="<?php echo $baseurl.'password/';?>" class="<?php if($action=="password") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Password"> </span>
			<?php echo __d('user','Password');?>
		</a>
		<a href="<?php echo $baseurl.'notifications/';?>" class="<?php if($action=="notifications") { echo $activeClass; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-notification"> </span>

			<?php echo __d('user','Notifications');?>
			<!--NOTIFICATION COUNT--><?php //echo $notifyCount; ?>
			<?php if($notifyCount!='0' && $notifyCount!=""){ ?>
				<!--<span class="badge notifyCount"></span>-->
			<?php } ?>

		</a>
		<a href="<?php echo $baseurl.'dispute/'.$loguser['username_url'].'?buyer';?>" class="<?php if($action=="disputepro" || $action=="disputemessage") { echo $activeClass; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Disputes"> </span>
			<?php echo __d('user','Disputes');?>
		</a>
		<a href="<?php echo $baseurl.'messages/';?>" class="<?php if($action=="messages" || $action=="viewmessage") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Messages"> </span>
			<?php echo __d('user','Messages');?>
			<!--MESSAGE COUNT-->
			<?php if($msgCount!='0' && $msgCount!=""){ ?>
			<span class="badge msgCount"><?php echo $msgCount; ?></span>
			<?php }?>
		</a>
	<!-- </div> -->

	<!-- <span class="list-group-item sidebar-top-title list-group-item sidebar-top-title">
		<h4 class="panel-title accordion_shop bold-font txt-uppercase ">
			<?php echo __d('user','Shop');?></h4>
	</span> -->
	<!-- <div class="acnt-submenu border_bottom_grey"> -->
		<a href="<?php echo $baseurl.'purchases/';?>" class="<?php if($action=="purchaseditem" || $action=="buyerorderdetails" || $action=="buyerconversation") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Orders"> </span>
			<?php echo __d('user','My Orders');?>
		</a>
		<a href="<?php echo $baseurl.'address/';?>" class="<?php if($action=="shipping") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Notes"> </span>
			<?php echo __d('user','Address Notes');?>
		</a>
		<a href="<?php echo $baseurl.'addaddress/';?>" class="<?php if($action=="addshipping") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Address"> </span>
			<?php echo __d('user','Add Address');?>
		</a>
	<!-- </div> -->

	<!-- <span class="list-group-item sidebar-top-title list-group-item sidebar-top-title">
		<h4 class="panel-title accordion_shop bold-font txt-uppercase">
			<?php echo __d('user','Sharing');?></h4>
	</span> -->
	<!-- <div class="acnt-submenu border_bottom_grey"> -->
		<a href="<?php echo $baseurl.'credits/';?>" class="<?php if($action=="credits") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Credits"> </span>
			<?php echo __d('user','Credits');?>
		</a>
		<a href="<?php echo $baseurl.'referrals/';?>" class="<?php if($action=="referrals") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Referrals"> </span>
			<?php echo __d('user','Referrals');?>
		</a>
		<a href="<?php echo $baseurl.'creategiftcard';?>" class="<?php if($action=="createGiftcard") { echo $activeClass ; } else{ echo $nonactiveClass;}?>">
			<span class="margin-right10 sidebar-img img-Gift"> </span>
			<?php echo __d('user','Gift card');?>
		</a>
	</div>
</div>
 <?php
     use Cake\Routing\Router;
     $baseurl = Router::url('/');

     $userid = $loguser['id'];
     $site = $_SESSION['site_url'];
     @$username = $_SESSION['media_server_username'];
     @$password = $_SESSION['media_server_password'];
     @$hostname = $_SESSION['media_host_name'];
?>


<!-- breadcrumb start -->
<div class="container-fluid margin-top10 no_hor_padding_mobile">
  <div class="container">
<div class="breadcrumb col-xs-12 col-sm-12 col-md-12 col-lg-12 margin_top_150_tab margin-bottom10">
     <div class="breadcrumb">
      <a href="<?php echo $baseurl;?>"><?php echo __d('user','Home');?></a>
      <span class="breadcrumb-divider1">/</span>
      <a href="#"><?php echo __d('user','Profile');?></a>
     
     </div>
    </div>
     
  </div>
    </div>
    <!-- breadcrumb end -->
	<div class="container-fluid margin-top10 margin_top165_mobile">
	

		<div id="content" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-hor-padding clearfix min-height-profile">
			<div class="cnt-top-header border_bottom_grey col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
				<h2 class="user_profile_inner_heading pro-title-head section_heading bold-font extra_text_hide fint-height col-lg-6 col-md-6 col-sm-6 col-xs-12"><?php echo __d('user','Edit Profile');?> </h2>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margin-top10 fint-height margin-bottom10 text-right responsive-text-center">
					<a href="<?php echo SITE_URL.'people/'.$usr_datas['username_url'];?>"><small><?php echo __d('user','View Profile');?></small></a>
				</div>
			</div>

			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding popular-pdt-cnt margin_top0_tab margin0_mobile clearfix">
						<?php
							echo $this->Form->create('Profile', [
							'url' => ['controller' => 'Users', 'action' => 'profile'],'onsubmit'=>'return userchk();'
						]);
						?>

					<div class="border_bottom_grey padding-top15 clearfix">
						<div class="col-12">
							<div class="email-addr padding-bottom30 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
								<div class="messag-img left-float">
									<div class="profile-set-img">
										<?php
										if(empty($usr_datas['profile_image'])) {
										$image_computer = '';
										}else{
										$image_computer = $usr_datas['profile_image'];
										}
										if(!empty(trim($image_computer))){
											?>
											<img class="" id="show_url" src="<?php echo $_SESSION['site_url'].'media/avatars/thumb70/'.$image_computer; ?>">
											<?php
											} else { ?>
											<img class="" id="show_url" src="<?php echo $_SESSION['site_url'].'media/avatars/thumb70/usrimg.jpg'; ?>">

											<?php
											}
										?>
									</div>
								</div>
								<ul class="profile-editoption left-padding right-padding padding-top15">
									<li class="prof-edit-img clearfix">
										<?php echo '<iframe class="" id="frame" name="frame" src="'.$site.'userupload.php?media_url='.$site.'&site_url='.$site.'&username='.$username.'&password='.$password.'&hostname='.$hostname.'&userid='.$userid.'&merchantprofile=merchant'.'" frameborder="0" height="15px" width="30px" scrolling="no" HSPACE=0 VSPACE=0 style="float:left;"></iframe>';
											echo $this->Form->input('profile_image', array('type'=>'hidden','id'=>'image_computer', 'class'=> '','class'=>'celeb_name','value'=>$image_computer,'name'=>'profile_image'));?>
									</li>
									<li class="prof-del-img" onclick='removeusrimg(1);'>
										<div class="remove-profile" ></div>
									</li>
								</ul>

							</div>
						</div>
					</div>

					<div class="border_bottom_grey padding-top30 clearfix">
						<div class="padding-bottom15 clearfix">
							<!-- <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label class="font-weight-normal primary-color-txt margin-bottom20"><?php echo __d('user','Profile');?></label>
							</div> -->
							<div class="row">
								<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
									<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','Full Name');?></div>
									<input class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" id="name" name="setting-fullname" maxlength="30" type="text" value="<?php echo $usr_datas['first_name']; ?>" placeholder="<?php echo __d('user','Enter Your Full Name');?>">
									<!-- <p class="text-right font-size12 col-sm-12 margin-top5 margin0 padding0 pull-right"><?php echo __d('user','Your real name, so your friends can find you');?>.</p> -->
								</div>
								<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-6 col-lg-6">
									<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','Username');?></div>
									<input class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding grey-color-bg" type="text" value="<?php echo $usr_datas['username']; ?>" disabled="true">
								</div>
								<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-6 col-lg-6">
									<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','Age');?></div>
									<?php $agebtween = $usr_datas['age_between']; ?>
									<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 padding0">
										<div class="selectdiv">
											<label>
												<select name="agebtwen" id="agebtwen">
													<option value="none">I'd rather not say</option>
													<option value="0" <?php if($agebtween == '0'){ echo "selected";}else{ echo "";} ?> >13 to 17</option>
													<option value="1" <?php if($agebtween == '1'){ echo "selected";}else{ echo "";} ?> >18 to 24</option>
													<option value="2" <?php if($agebtween == '2'){ echo "selected";}else{ echo "";} ?> >25 to 34</option>
													<option value="3" <?php if($agebtween == '3'){ echo "selected";}else{ echo "";} ?> >35 to 44</option>
													<option value="4" <?php if($agebtween == '4'){ echo "selected";}else{ echo "";} ?> >45 to 54</option>
													<option value="5" <?php if($agebtween == '5'){ echo "selected";}else{ echo "";} ?> >55+</option>
												</select>
											</label>
										</div>
									</div>
								</div>
								<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-6 col-lg-6">
									<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','Gender');?></div>
									<!-- <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding option-radio">
										<?php if($usr_datas['gender'] == 'male'){ ?>
											<input type="radio" name="gender" value="male" id="gender1" checked />
											<label class="" for="gender1"><span class="margin-left10"></span><?php echo __d('user','Male');?></label>
										<?php }else{ ?>
											<input type="radio" name="gender" value="male" id="gender1"/>
											<label class="" for="gender1"><span class="margin-left10"></span><?php echo __d('user','Male');?></label>
										<?php  } if($usr_datas['gender'] == 'female'){ ?>
											<input type="radio" name="gender" value="female" id="gender2" checked />
											<label class="" for="gender2"><span class="margin-left10"></span><?php echo __d('user','Female');?></label>
										<?php }else{ ?>
											<input type="radio" name="gender" value="female" id="gender2"/>
											<label class="" for="gender2"><span class="margin-left10"></span><?php echo __d('user','Female');?></label>
										<?php  }  ?>
										<?php if($usr_datas['gender'] == null){ ?>
											<input type="radio" name="gender" value="none" id="gender3" checked/>
											<label class="" for="gender3"><span class="margin-left10"></span><?php echo __d('user','Unspecified');?></label>
										<?php }else{ ?>
											<input type="radio" name="gender" value="none" id="gender3"/>
											<label class="" for="gender3"><span class="margin-left10"></span><?php echo __d('user','Unspecified');?></label>
										<?php  }  ?>
									</div> -->
									<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 padding0">
										<div class="selectdiv">
											<label>
												<select name="agebtwen" id="agebtwen">
													<option value="none">Gender</option>
													<option value="0">Male</option>
													<option value="1">Female</option>
													<option value="2">Unspecified</option>
												</select>
											</label>
										</div>
									</div>
								</div>
								<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-6 col-lg-6">
									<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','Location');?></div>
									<input class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" id="location" autocomplete="off" name="city" type="text" value="<?php echo $usr_datas['city']; ?>" placeholder="<?php echo __d('user','e.g. New York, NY');?>">
								</div>
								<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-6 col-lg-6">
									<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','Website');?></div>
									<input class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" id="website" autocomplete="off" name="website" type="text" value="<?php echo $usr_datas['website']; ?>">
								</div>
								<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<!-- <div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','Birthday');?></div> -->
									<div class="profile-birth">
										<div class="popup-label-text col-xs-4 col-sm-4 col-md-4 col-lg-4 no-hor-padding">
											<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','birthdate');?></div>
											<div class="selectdiv">
												<select id="birthday_day" name="setting-birthday-day">
													<option value="0"><?php echo __d('user','Day');?></option>
													<?php for($i=1;$i<32;$i++){
													if($dates[2] == $i){
														echo '<option value="'.$i.'"  selected>'.$i.'</option>';
													}else{
														echo '<option value="'.$i.'"  >'.$i.'</option>';
													}
													}
													?>
												</select>
											</div>
										</div>
										<div class="popup-label-text col-xs-4 col-sm-4 col-md-4 col-lg-4 no-hor-padding">
										<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','select day');?></div>
											<div class="selectdiv">
												<select id="birthday_month" name="setting-birthday-month">
													<option value="0"><?php echo __d('user','Month');?></option>
													<?php for($i=1;$i<13;$i++){
													if($dates[1] == $i){
														echo '<option value="'.$i.'"  selected>'.$i.'</option>';
													}else{
														echo '<option value="'.$i.'"  >'.$i.'</option>';
													}
													}
													?>
												</select>
											</div>
										</div>
										<div class="popup-label-text col-xs-4 col-sm-4 col-md-4 col-lg-4 no-hor-padding">
										<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','select year');?></div>
											<div class="selectdiv">
												<select id="birthday_year" name="setting-birthday-year">
													<option value="0"><?php echo __d('user','Year');?></option>
													<?php
													$dates = explode("-", $usr_datas ['birthday']);
													for($i=2013;$i>1900;$i--){
													if($dates[0] == $i){
														echo '<option value="'.$i.'"  selected>'.$i.'</option>';
													}else{
														echo '<option value="'.$i.'"  >'.$i.'</option>';
														}
													}
													?>
												</select>
											</div>
										</div>
									</div>
									<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
										<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','About');?></div>
										<?php $strleng = 180-strlen($usr_datas['about']); ?>
										<textarea class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" id="bio" name="setting-bio" maxlength="180" placeholder="<?php echo __d('user','Write somthing about yourself');?>"><?php echo $usr_datas['about']; ?></textarea>
										<span class="text-right font-size12 margin-top5 margin0 padding0 pull-right margin-both5 trn"><?php echo __d('user','characters left');?></span>
										<span id="text_num" class="text-right font-size12 margin-top5 margin0 padding0 pull-right trn"> <?php echo $strleng; ?></span>
										<span id="biodata_tex" style="font-size:13px;" class="trn"></span>

									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- <div class="border_bottom_grey padding-top30 clearfix">
						<div class="padding-bottom15 clearfix">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label class="font-weight-normal primary-color-txt margin-bottom20"><?php echo __d('user','Account');?></label>
							</div>
							<div class="col-12">
								<div class="email-addr padding-bottom15 col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding">
									<div class="popup-label-text col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding bold-font"><?php echo __d('user','Email');?></div>
									<input class="popup-input col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding" id="email" name="setting-email" type="text" value="<?php echo $usr_datas['email']; ?>" disabled>
									<p class="text-right font-size12 col-sm-12 margin-top5 margin0 padding0 pull-right"><?php echo __d('user','Email will not be publicly displayed');?>.</p>
								</div>
								
							</div>
						</div>
					</div> -->

					<div class=" padding-top15 clearfix">
						<div class="">
							<div class="footer-acnt-save">
								<div class="btn primary-color-bg primary-color-bg bold-font txt-uppercase pull-right">
									<input class="btn-primary-inpt" value="<?php echo __d('user','Save');?>" type="submit">
								</div>
								<span>
									<?php
									if($usr_datas['checkdisabled']=='1' && $usr_datas['user_status']=='disable')
									{
										echo '<a id="close_account" onclick="actiateac('.$loguser['id'].');" class="deactivate-txt pull-right margin-right20" href="javascript:void(0);">'.__d('user','Activate My Account').'</a>';
									}
									else
									{
										echo '<a id="close_account" onclick="deactiateac('.$loguser['id'].');" class="deactivate-txt pull-right margin-right20" href="javascript:void(0);">'.__d('user','Deactivate My Account').'</a>';
									}

									?>
								</span>
							</div>
						</div>
					</div>
					<div id="usererr" class="trn red-txt" style="text-align: right;"></div>
				</form>
			</div>
		</div>

		<object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%;overflow: hidden; pointer-events: none; z-index: -1;" type="text/html"></object>
		<div id="sidebar" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-hor-padding settingPageSidebar sidebar is-affixed" style="">
			<div class="sidebar__inner border_right_grey" style="position: relative; ">
				<div class="mini-submenu profile-menu">
			    </div>
			   <!--SETTINGS SIDEBAR PAGE-->
				<?php echo $this->element('settingssidebar'); ?>
				<object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%;overflow: hidden; pointer-events: none; z-index: -1;" type="text/html"></object>
			</div>
		</div>
	</div>

	<div class="modal fade" id="cancel-order" role="dialog" tabindex="-1">
		<div class=" modal-dialog">
			<div class="modal-content">
				<div class=" login-body modal-body clearfix">
					<button class="close" type="button" data-dismiss="modal">×</button>
					<div class="signup-left-cnt col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
						<h2 class="popupheder login-header-text bold-font txt-uppercase col-xs-12 col-sm-12 col-md-12 col-lg-12 no-hor-padding reporttxt trn">Are you want Cancel it?</h2>
					</div>
					<div class=" share-cnt-row col-md-12 padding-bottom10">
						<a class="margin-bottom10  btn txt-uppercase primary-color-bg bold-font yes" href="javascript:void(0);"><?php echo __d('user','Yes');?></a>
						<a class="cancelpop margin-bottom10 btn txt-uppercase primary-color-border-btn bold-font margin-left10 no" data-dismiss="modal" href="javascript:void(0);"><?php echo __d('user','No');?></a>
					</div>

				</div>
			</div>
		</div>
	</div>
	<style>
	.remove-profile {
		background: #fff url("../images/user-remove.jpeg") no-repeat scroll center center / cover ;
		height: 16px;
		padding: 0;
		width: 16px;
	}
	</style>
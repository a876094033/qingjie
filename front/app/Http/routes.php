<?php
/*-- ----------------------------
  ---- 登陆注册
  -- ----------------------------*/

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
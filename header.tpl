<!-- BEGIN: HEADER -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
	<head>
		<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
		<meta name="description" content="{HEADER_META_DESCRIPTION}" />
		<meta name="keywords" content="{HEADER_META_KEYWORDS}" />
		<meta name="generator" content="Cotonti http://www.cotonti.com" />
		<meta http-equiv="expires" content="Fri, Apr 01 1974 00:00:00 GMT" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="last-modified" content="{HEADER_META_LASTMODIFIED} GMT" />
		{HEADER_BASEHREF}
		{HEADER_HEAD}
		<link rel="shortcut icon" href="favicon.ico" />
		<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/reset.css" type="text/css" rel="stylesheet" />
		<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/framework.css" type="text/css" rel="stylesheet" />
		<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/admin.css" type="text/css" rel="stylesheet" />
		<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/buttons.css" type="text/css" rel="stylesheet" />
		<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/adaptive.css" type="text/css" rel="stylesheet" />
		<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/js/respond.min.js" type="text/javascript"></script>
		<!-- IF {PHP.cfg.jquery} -->
		<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/js/jquery.cookie.js" type="text/javascript"></script>
		<!-- ENDIF -->
		<!-- IF {PHP._COOKIE.admin_max_width|intval} > 300 AND {PHP.cfg.jquery}-->
		<style type="text/css">
			.body {max-width: {PHP._COOKIE.admin_max_width|intval}px;}
		</style>
		<!-- ENDIF -->
		<!-- IF {PHP.cfg.jquery} -->
		<script type="text/javascript">
			//<![CDATA[
			$(document).ready(function() {
				$(".maxwidth").bind('click', function() {
					var vals = $(this).attr('rel');
					$(".body").css("max-width", vals+'px');
					$.cookie('admin_max_width', vals, { expires: 30 }); //установить куки с временем жизни 30 дней
					return false;
				});
			});

			//]]>
		</script>
		<!-- ENDIF -->
		{HEADER_COMPOPUP}
		<title>{HEADER_TITLE} </title>
	</head>
	<body>
		<div id="navbar">
			<ul>
				<li class="<!-- IF !{PHP.m} -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin')}" title="{PHP.L.Administration}">
						<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/icon_home.png" alt="{PHP.L.Home}" /></span>{PHP.L.Home}
					</a>
				</li>
				<!-- IF {PHP.usr.admin_config} -->
				<li class="<!-- IF {PHP.m} == 'config' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=config')}" title="{PHP.L.Configuration}">
						<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/icon_config.png" alt="{PHP.L.Configuration}" /></span>{PHP.L.Configuration}
					</a>
				</li>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.admin_structure} -->
				<li class="<!-- IF {PHP.m} == 'structure' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=structure')}" title="{PHP.L.Structure}">
						<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/icon_structure.png" alt="{PHP.L.Structure}" /></span>{PHP.L.Structure}
					</a>
				</li>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.admin_config} -->
				<li class="<!-- IF {PHP.m} == 'extensions' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=extensions')}" title="{PHP.L.Extensions}">
						<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/icon_extensions.png" alt="{PHP.L.Extensions}" /></span>{PHP.L.Extensions}
					</a>
				</li>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.admin_users} -->
				<li class="<!-- IF {PHP.m} == 'users' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=users')}" title="{PHP.L.Users}">
						<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/icon_users.png" alt="{PHP.L.Users}" /></span>{PHP.L.Users}
					</a>
				</li>
				<!-- ENDIF -->
				<li class="<!-- IF {PHP.m} == 'extrafields' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=extrafields')}" title="{PHP.L.adm_extrafields}">
						<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/icon_extrafields.png" alt="{PHP.L.adm_extrafields}" /></span>{PHP.L.adm_extrafields}
					</a>
				</li>
				<li class="<!-- IF {PHP.m} == 'other' -->sel<!-- ENDIF -->">
					<a href="{PHP|cot_url('admin', 'm=other')}" title="{PHP.L.Other}">
						<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/icon_other.png" alt="{PHP.L.Other}" /></span>{PHP.L.Other}
					</a>
				</li>
		<!-- IF {PHP.cfg.jquery} -->
				<li class="bottom" id="resolution_control">
					<div>
						<a href="#" class="maxwidth" rel="960">960px</a>
						<a href="#" class="maxwidth" rel="1080">1080px</a>
						<a href="#" class="maxwidth" rel="1480">1480px</a>
						<a href="#" class="maxwidth paddingright10" rel="3000">3000px</a>
					</div>
					<a href="{PHP|cot_url('admin')}">
						<span><img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/icon_site.png" alt="{PHP.cfg.maintitle}" /></span>{PHP.L.Options}
					</a>
				</li>
		<!-- ENDIF -->
			</ul>
			<div class="clear"></div>
		</div>
		<div id="wrapper">
			<div id="sitetitle">
				<a href="{PHP.cfg.mainurl}" title="{PHP.L.hea_viewsite}"><!-- IF {PHP.cfg.maintitle} && {PHP.cfg.maintitle|mb_strlen} < 50 -->{PHP.cfg.maintitle} <!-- ELSE -->{PHP.L.hea_viewsite} <!-- ENDIF --></a>
			</div>

			<!-- END: HEADER -->
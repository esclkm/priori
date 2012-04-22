<!-- BEGIN: MAIN -->

<div class="block">
	<h3>{PHP.L.Core}</h3>
	<a href="{ADMIN_OTHER_URL_CACHE}" class="thumbicons"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>{PHP.L.adm_internalcache}</a>

	<a href="{ADMIN_OTHER_URL_DISKCACHE}" class="thumbicons"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>{PHP.L.adm_diskcache}</a>

	<a href="{ADMIN_OTHER_URL_LOG}" class="thumbicons"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>{PHP.L.adm_log}</a>

	<a href="{ADMIN_OTHER_URL_INFOS}" class="thumbicons"><img src="{PHP.cfg.system_dir}/admin/img/cfg_info.png"/>{PHP.L.adm_infos}</a>
	<div class="clear height0"></div>
</div>

<!-- BEGIN: SECTION -->
<div class="block clear">
	<h3>{ADMIN_OTHER_SECTION}</h3>

	<!-- BEGIN: ROW -->
	<a href="{ADMIN_OTHER_EXT_URL}" class="thumbicons">
		<!-- IF {ADMIN_OTHER_EXT_ICO} --> 
		<img src="{ADMIN_OTHER_EXT_ICO}"/>
		<!-- ELSE -->
		<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
		<!-- ENDIF -->
		{ADMIN_OTHER_EXT_NAME}</a>
	<!-- END: ROW -->
	<!-- BEGIN: EMPTY -->
	<p>{PHP.L.adm_listisempty}</p>
	<!-- END: EMPTY -->
	<div class="clear height0"></div>
</div>
<!-- END: SECTION -->

<!-- END: MAIN -->
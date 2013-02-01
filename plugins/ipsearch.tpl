<!-- BEGIN: MAIN -->
		<h2>{PHP.L.ipsearch_title}</h2>
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="col3-2 first">
			<div class="block">
				<h3>{PHP.L.ipsearch_dnsrecord}: {IPSEARCH_RES_DNS}</h3>
<!-- BEGIN: IPSEARCH_RESULTS -->
				<p class="inner">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES1} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK1}:</p>
				<ul class="inner">
<!-- BEGIN: IPSEARCH_IPMASK1 -->
					<li>{IPSEARCH_USER_IPMASK1}: {IPSEARCH_USER_LASTIP_IPMASK1}</li>
<!-- END: IPSEARCH_IPMASK1 -->
				</ul>
				<p class="inner">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES2} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK2}.*:</p>
				<ul class="inner">
<!-- BEGIN: IPSEARCH_IPMASK2 -->
					<li>{IPSEARCH_USER_IPMASK2}: {IPSEARCH_USER_LASTIP_IPMASK2}</li>
<!-- END: IPSEARCH_IPMASK2 -->
				</ul>
				<p class="inner">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES3} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK3}.*.*:</p>
				<ul class="inner">
<!-- BEGIN: IPSEARCH_IPMASK3 -->
					<li>{IPSEARCH_USER_IPMASK3}: {IPSEARCH_USER_LASTIP_IPMASK3}</li>
<!-- END: IPSEARCH_IPMASK3 -->
				</ul>
<!-- END: IPSEARCH_RESULTS -->
			</div>
		</div>
		<div class="col3-1">
			<div class="block">
				<h3>{PHP.L.ipsearch_searchthisuser}:</h3>
				<form class="inner" id="search" action="{IPSEARCH_FORM_URL}" method="post">
					<input type="text" class="text" name="id" value="{IPSEARCH_ID}" size="16" maxlength="16" />
					<button type="submit">{PHP.L.Search}</button>
				</form>
			</div>
		</div>
<!-- END: MAIN -->
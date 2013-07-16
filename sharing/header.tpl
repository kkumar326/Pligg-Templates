<!-- begin top navigatie -->
	<div id="header">
		<div id="top_nav">
			<a href="{$my_base_url}{$URL_base}">{#PLIGG_Visual_Published_News#}</a>
			<a href="{$URL_upcoming}">{#PLIGG_Visual_Pligg_Queued#}</a>
			<a href="{$URL_submit}">{#PLIGG_Visual_Submit_A_New_Story#}</a>
		</div>
	</div>
	<!-- einde top navigatie -->
	<!-- begin gewone navigatie -->
	<div id="menu">
		{checkActionsTpl location="tpl_pligg_navbar_start"}
		<a href="{$my_base_url}{$my_pligg_base}">Home</a>
		<a href="#">Live</a>
		<a href="#">Top Users</a>
		<a href="#">Tag Cloud</a>
		{if $enable_group eq "true"}	
			<a href="{$URL_groups}"><span>{#PLIGG_Visual_Groups#}</span></a>
		{/if}	
		{if $user_authenticated eq true}<a href="{$URL_userNoVar}">{#PLIGG_Visual_Profile#}</a>{/if}
		{if isset($isgod) && $isgod eq 1}<a href="{$URL_admin}">{#PLIGG_Visual_Header_AdminPanel#}</a>{/if}
		<a href="#">Login</a>
		<a href="#">Register</a>
		{checkActionsTpl location="tpl_pligg_navbar_end"}
		<script type="text/javascript">
		{if !isset($searchboxtext)}
			{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}			
		{/if}
		var some_search='{$searchboxtext}';
		</script>
		<div id="search">
			<form action="{$my_pligg_base}/search.php" method="get" name="thisform-search" id="thisform-search" {if $urlmethod==2}onsubmit='document.location.href="{$my_base_url}{$my_pligg_base}/search/"+this.search.value.replace(/\//g,"|").replace(/\?/g,"%3F"); return false;'{/if}>
				<input type="text" size="20" name="search" id="searchsite" value="{$searchboxtext}" onfocus="if(this.value == some_search) {ldelim}this.value = '';{rdelim}" onblur="if (this.value == '') {ldelim}this.value = some_search;{rdelim}"/>
				<input type="image" value="{#PLIGG_Visual_Search_Go#}" src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/search_button.png" height="23" width="33" />
			</form>
			{* 
			<input type="text" value="Search ..." />
			<a href="#"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/search_button.png" height="23" width="33" alt="Zoeken" /></a> *}
		</div>
	</div>
	<!-- begin linker kolom -->
		<div id="links">
			<div id="sortby">
				<span>Sort news by <img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/sortby.png" height="16" width="16" alt="Sort news by" class="logo" /></span>
				<a href="#" class="sortby1">Recently polular</a>
				<a href="#" class="sortby2">Top today</a>
				<a href="#" class="sortby2">Yesterday</a>
				<a href="#" class="sortby3">Week</a>
				<a href="#" class="sortby3">Month</a>
				<a href="#" class="sortby3">Year</a>
				<div class="clear"></div>
			</div>
			<br /><br />
			<div class="paginisation">
				<a href="#" class="large">Previous</a>
				<a href="#" class="small">1</a>
				<a href="#" class="small">2</a>
				<a href="#" class="small">3</a>
				<a href="#" class="small">4</a>
				<a href="#" class="small">5</a>
				<a href="#" class="small">6</a>
				<a href="#" class="small">7</a>
				<a href="#" class="small">8</a>
				<span>.....</span>
				<a href="#" class="medium">134</a>
				<a href="#" class="medium">135</a>
				<a href="#" class="large">Next</a>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
				<br /><br />	
				
				<div class="post">
				<h3><a href="#">Themeforest.net - Another way to make money!</a></h3>
				<div class="postbackground">
					<div class="postlinks">
						<span>345</span> votes<br /><br />
						<a href="#"><img src="images/vote.png" height="21" width="70" alt="Vote" /></a>
					</div>
					<div class="postrechts">
						<span class="postedby">Posted by <a href="#">Hein Maas</a>1 day(s) ago&nbsp;&nbsp;&nbsp;(<a href="#">http://www.heinmaas.com</a>)</span>
						<p>Their services include buying and selling of: site templates and themes to skin popular CMS products like WordPress, Drupal and Joomla. Users can sign-up for free and use their …</p>
						<div class="onderregel">	
							<img src="images/comment.png" height="9" width="9" alt="Comment" />&nbsp;<a href="#">124 Comments</a>&nbsp;&nbsp;|&nbsp;&nbsp;
							<img src="images/add.png" height="9" width="7" alt="add this link to..." />&nbsp;<a href="#">Add this link to...</a>&nbsp;&nbsp;|&nbsp;&nbsp;
							<img src="images/bury.png" height="9" width="7" alt="bury" />&nbsp;<a href="#">Bury</a>&nbsp;&nbsp;|&nbsp;&nbsp;
							<span class="category">Category</span>: <a href="#">Design</a>		
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
<!-- START HEADER.TPL -->
<div id="login">
	{if $user_authenticated eq true}{#PLIGG_Visual_Welcome_Back#} <span style="text-transform:capitalize"><a href="{$URL_userNoVar}">{$user_logged_in}</a></span> | <a href="{$URL_logout}"> {#PLIGG_Visual_Logout#}</a>{/if}
	
	{if $user_authenticated neq true}
		<a href='{$URL_register}'>{#PLIGG_Visual_Register#}</a> | <a href='{$URL_login}'>{#PLIGG_Visual_Login_Title#}</a>
    {/if}
	{checkActionsTpl location="tpl_pligg_login_link"}
</div>

<div id="logo"><a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Name#}</a></div>
<script type="text/javascript">
{if !isset($searchboxtext)}
	{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}			
{/if}
var some_search='{$searchboxtext}';
</script>

<!-- START SEARCH -->
<div class="search">

	<form action="{$my_pligg_base}/search.php" method="get" name="thisform-search" id="thisform-search" {if $urlmethod==2}onsubmit='document.location.href="{$my_base_url}{$my_pligg_base}/search/"+this.search.value.replace(/\//g,"|").replace(/\?/g,"%3F"); return false;'{/if}>

		<input type="text" size="20" class="searchfield" name="search" id="searchsite" value="{$searchboxtext}" onfocus="if(this.value == some_search) {ldelim}this.value = '';{rdelim}" onblur="if (this.value == '') {ldelim}this.value = some_search;{rdelim}"/>
		<input type="submit" value="{#PLIGG_Visual_Search_Go#}" class="searchbutton" />
	</form>
</div>
<div class="clear"></div>
<!-- END SEARCH -->

<!-- START NAVBAR -->
<ul id="nav">
	{checkActionsTpl location="tpl_pligg_navbar_start"}
	<li {if $pagename eq "published" || $pagename eq "index"}class="current"{/if}><a href='{$my_base_url}{$URL_base}'>{#PLIGG_Visual_Published_News#}</a></li>
	<li {if $pagename eq "upcoming"}class="current"{/if}><a href="{$URL_upcoming}">{#PLIGG_Visual_Pligg_Queued#}</a></li>
	<li {if $pagename eq "submit"}class="current"{/if}><a href="{$URL_submit}">{#PLIGG_Visual_Submit_A_New_Story#}</a></li>
	{if $enable_group eq "true"}	
		<li {if $pagename eq "groups" || $pagename eq "submit_groups" || $pagename eq "group_story"}class="current"{/if}><a href="{$URL_groups}"><span>{#PLIGG_Visual_Groups#}</span></a></li>
	{/if}	
	{if $user_authenticated eq true}<li {if $pagename eq "user"}class="current"{/if}><a href="{$URL_userNoVar}"><span>{#PLIGG_Visual_Profile#}</span></a></li>{/if}
	{if isset($isgod) && $isgod eq 1}<li><a href="{$URL_admin}"><span>{#PLIGG_Visual_Header_AdminPanel#}</span></a></li>{/if}
	{checkActionsTpl location="tpl_pligg_navbar_end"}
</ul>
{assign var=sidebar_module value="categories"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}
<!-- END NAVBAR -->

<!-- START RSS -->
<div class="rsslink">
	{if $URL_rss_page}
	<a href="{$URL_rss_page}" target="_blank">
		RSS &nbsp;<img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" align="top" border="0" alt="RSS" />
	</a>
	{/if}
</div>
<!-- END RSS -->

<!-- START BREADCRUMBS -->
{if $pagename eq "submit_groups"}<h1>{#PLIGG_Visual_Submit_A_New_Group#}</h1>{/if}
{if $pagename eq "groups"}<h1>{#PLIGG_Visual_Groups#}</h1>{/if}
{if $pagename eq "group_story" }<h1>{$group_name}</h1>{/if}
{if $pagename eq "login"}<h1>{#PLIGG_Visual_Login#}</h1>{/if}
{if $pagename eq "register"}<h1>{#PLIGG_Visual_Register#}</h1>{/if}
{if $pagename eq "editlink"}<h1>{#PLIGG_Visual_EditStory_Header#}: {$submit_url_title}</h1>{/if}
{if $pagename eq "rssfeeds"}<h1>{#PLIGG_Visual_RSS_Feeds#}</h1>{/if}
{if $pagename eq "topusers"}<h1>{#PLIGG_Visual_TopUsers_Statistics#}</h1>{/if}
{if $pagename eq "cloud"}<h1>{#PLIGG_Visual_Tags_Tags#}</h1>{/if}
{if $pagename eq "live" || $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments"}<h1>{#PLIGG_Visual_Live#}</h1>{/if}
{if $pagename eq "advancedsearch"}<h1>{#PLIGG_Visual_Search_Advanced#}</h1>{/if}
{if $pagename eq "profile"}<h1>{#PLIGG_Visual_Profile_ModifyProfile#}</h1>{/if}
{if $pagename eq "user"}<h1><a href="{$user_url_personal_data}"><span style="text-transform:capitalize">{$page_header}</span></a> <a href="{$user_rss, $view_href}" target="_blank"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" style="margin-left:6px;border:0;"></a></h1>{/if}

{if $pagename eq "published" || $pagename eq "index"}<h1>{#PLIGG_Visual_Published_News#}{/if}
{if $pagename eq "upcoming"}<h1>{#PLIGG_Visual_Pligg_Queued#}{/if}
{if $pagename eq "noresults"}<h1>{$posttitle}
{elseif isset($get.search)}<h1>{#PLIGG_Visual_Search_SearchResults#} {if $get.search}{$get.search}{else}{$get.date}{/if}{/if}
{if isset($get.q)}<h1>{#PLIGG_Visual_Search_SearchResults#} {$get.q}{/if} 
{if $pagename eq "index" || $pagename eq "published" || $pagename eq "upcoming" || isset($get.search) || isset($get.q)}
	{if isset($navbar_where.link2) && $navbar_where.link2 neq ""} &#187; <a href="{$navbar_where.link2}">{$navbar_where.text2}</a>{elseif isset($navbar_where.text2) && $navbar_where.text2 neq ""} &#187; {$navbar_where.text2}{/if}
	{if isset($navbar_where.link3) && $navbar_where.link3 neq ""} &#187; <a href="{$navbar_where.link3}">{$navbar_where.text3}</a>{elseif isset($navbar_where.text3) && $navbar_where.text3 neq ""} &#187; {$navbar_where.text3}{/if}
	{if isset($navbar_where.link4) && $navbar_where.link4 neq ""} &#187; <a href="{$navbar_where.link4}">{$navbar_where.text4}</a>{elseif isset($navbar_where.text4) && $navbar_where.text4 neq ""} &#187; {$navbar_where.text4}{/if}
	</h1>
{/if}
{if $posttitle neq "" && $pagename eq "page"}<h1>{$posttitle}</h1>{/if}
<!-- END BREADCRUMBS -->

{checkActionsTpl location="tpl_pligg_breadcrumb_end"}
<!-- END HEADER.TPL -->
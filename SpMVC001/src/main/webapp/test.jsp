<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Maven Repository: Search/Browse/Explore</title>
<link rel="canonical" href="https://mvnrepository.com/" />
<link rel="shortcut icon" type="image/x-icon"
	href="/assets/images/7080b8b0f6f48e6fbaffd5f9d85fcc7f-favicon.ico">
<link rel="search" type="application/opensearchdescription+xml"
	href="/opensearch.xml" title="MvnRepository">
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga');
	ga('create', 'UA-76305-3', 'auto');
	ga('send', 'pageview');
</script>
<script type="text/javascript">
	var enc = encodeURIComponent;
	window.onerror = function(dsc, p, l, c, e) {
		(new Image()).src = "/assets/images/e.gif?v=2&p=" + enc(p) + "&l=" + l
				+ "&c=" + c + "&d=" + enc(dsc) + "&e=" + enc(e);
		if (console) {
			console.error(dsc + "(p: " + p + " l: " + l + "c:" + c + ")");
		}
		return true;
	};
</script>
</head>
<body>
	<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	font-size: 12px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}

h1 {
	border-bottom: 1px solid lightgray;
	padding-bottom: 0.7em;
	margin-top: 0.2em;
	font-size: 18px;
}

h2 {
	color: black;
	font-size: 14px;
}

h3, #tabs {
	color: #222222;
	padding: 2px 10px;
	margin-top: 10px;
	font-size: 12px;
	border: 1px solid #aaa;
}

#left h3 {
	border: 1px solid #aaa;
	font-size: 12px;
	margin-top: 4px;
	background: #efefef;
	color: #175bb0;
}

#left ul {
	list-style-type: none;
	padding: 0;
	margin: 0 0 10px 0;
}

#left li {
	padding-left: 7px;
	padding-top: 4px;
	padding-bottom: 0;
	border-left: 4px solid #bbb;
	font-size: 12px;
	margin: 1px;
	vertical-align: text-bottom;
	min-height: 20px;
	height: 0.8em;
}

#left li.selected {
	background: #d7e6f6;
}

ul.repositories {
	list-style-type: none;
	padding: 0;
	margin: 0 0 10px 0;
	text-align: left;
}

ul.repositories li {
	padding-left: 7px;
	padding-top: 4px;
	padding-bottom: 0;
	font-size: 12px;
	margin: 1px;
	vertical-align: text-bottom;
	min-height: 20px;
	height: 0.8em;
}

#header {
	height: 48px;
	border-top: 2px solid #ddd;
	border-bottom: 1px solid #bbb;
	background: #eee;
	background: linear-gradient(to bottom, #fff, #eee);
}

#logo {
	float: left;
	padding: 3px 13px;
}

#logo .sub {
	font-size: 10px;
	color: #222;
}

#left {
	position: absolute;
	left: 0;
	padding-left: 10px;
	top: 65px;
	width: 200px;
}

#right {
	padding-left: 10px;
	padding-right: 20px;
	padding-top: 5px;
	position: absolute;
	right: 0;
	top: 55px;
	width: 290px;
}

#maincontent {
	margin-left: 221px;
	margin-right: 321px;
	padding: 9px 10px 10px;
	min-height: 1600px;
	border-left: 1px solid #dfdfdf;
	border-right: 1px solid #dfdfdf;
}

#footer {
	text-align: center;
	clear: both;
	background-color: #F5F5F5;
	padding: 10px;
}

a {
	text-decoration: none;
	color: #175bb0;
}

a:hover {
	text-decoration: underline;
}

#logo a:hover {
	text-decoration: none;
}

#navigation {
	position: absolute;
	top: 22px;
	right: 45px;
	font-weight: bold;
	font-size: 13px;
	color: gray;
}

#search {
	padding: 9px 7px 8px 15px;
	position: relative;
	margin-left: 221px;
	margin-right: 321px;
}

#search input {
	background: #fff;
	border: 1px solid darkgray;
	border-radius: 4px;
	font-size: 14px;
	height: 28px;
	padding-right: 6px;
	padding-left: 6px;
}

#search .textfield {
	width: 60%;
	color: #666;
	outline: 0;
	border: 1px solid #999;
	text-shadow: none;
}

#search .button {
	margin-left: 10px;
	padding: 0 15px;
	height: 28px;
}

ul.search-nav {
	margin: 25px 0 20px 0;
	padding: 0;
	list-style-type: none;
	text-align: center;
}

ul.search-nav li {
	display: inline;
	background-color: #1857ad;
	color: #fff;
	padding: .2em 0;
	margin: .2em;
}

.search-nav a {
	text-decoration: none;
	color: #fff;
	padding: .2em 0.8em;
}

.search-nav span {
	padding: .2em 0.8em;
}

.search-nav li.current {
	background-color: #a9a9a9;
}

.adbox {
	margin-top: 10px;
}

.snippet {
	font-size: 12px;
}

.vbtn {
	background: #FAFAFF;
	border: 1px solid #ddd;
	border-radius: 4px;
	border-spacing: 0;
	box-shadow: 1px 1px 1px #eee;
	padding: 1px 4px;
	white-space: nowrap;
	vertical-align: baseline;
}

.vsc {
	background: #FAFAFF;
	border-radius: 4px;
	border-spacing: 0;
	padding: 1px 4px;
	white-space: nowrap;
	vertical-align: baseline;
	line-height: 150%;
}

hr {
	border-top: 1px solid #a9a9a9;
}

.rb {
	display: block;
	background: orange;
	height: 5px;
	box-shadow: 1px 1px 1px #999;
}

.pb {
	width: 100%;
}

.pbv {
	background: #dadada;
	color: #356cb0;
	height: 5px;
}

.beta {
	background: #FAEAEF;
}

.alpha {
	background: #FFCCDD;
}

.candidate {
	background: #FAEAEF;
}

.sidebar {
	background-color: #f5f5f5;
}

.t1 {
	font-size: 12px;
	color: #7b94b0;
}

.t2 {
	font-size: 13px;
	color: #6a89b0;
}

.t3 {
	font-size: 14px;
	color: #5880b0;
}

.t4 {
	font-size: 16px;
	color: #4676b0;
}

.t5 {
	font-size: 18px;
	color: #356cb0;
}

.t6 {
	font-size: 19px;
	color: #2363b0;
}

.t7 {
	font-size: 24px;
	color: #1259b0;
}

.cnt {
	font-style: normal;
	font-size: 11px;
	padding: 1px 2px;
	margin-left: 5px;
	background-color: #efefef;
	color: #444;
	border-radius: 3px;
}

.b {
	display: inline-block;
	font-style: normal;
	font-size: 11px;
	padding: 2px 4px;
	margin: 1px;
	background-color: #d3d3d3;
	color: white;
}

.tag {
	border-left: 4px solid #478be0;
	background-color: #175bb0;
}

.c {
	text-align: center;
	background-color: #df2d4f;
}

.lic {
	text-align: center;
	background-color: #5285c5;
}

.bookimg {
	box-shadow: 4px 4px 2px #888888;
}

.breadcrumb {
	padding: 6px 0 10px 0;
	font-size: 13px;
}

.gridcontainer {
	overflow-x: scroll;
}

table.grid {
	border-spacing: 1px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	background-color: #e1e1e1;
	color: #222;
}

table.grid td, th {
	padding: 4px;
}

table.grid tbody th {
	font-weight: bold;
}

table.grid tbody tr {
	background-color: #FFF;
	text-align: left;
}

table.grid tbody tr td {
	background: #FFF;
	border: 1px solid #FFF;
}

.im {
	border-bottom: 1px solid #ddd;
	padding-bottom: 1.5em;
	font-size: 13px;
}

.im-category {
	color: #555;
	margin: 10px 0;
}

.im-usage {
	color: #444;
	background: #eeeeee;
	padding: 1px 5px;
	border-radius: 2px;
	float: right;
	font-weight: normal;
	font-size: 12px;
}

.im-lic {
	padding: 1px 5px;
	float: right;
	font-weight: normal;
	font-size: 12px;
}

a:hover.im-usage {
	text-decoration: none;
}

.im-title {
	font-size: 13px;
	margin-bottom: 0.8em
}

.im-title a {
	color: black;
}

h2.im-title {
	margin-top: 0.6em;
	margin-bottom: 0.5em;
}

.im-subtitle {
	color: #999;
	font-size: 95%;
	margin: 0;
}

.im-header {
	margin-top: 1.5em;
	margin-left: 65px;
}

.im-description {
	margin-top: 1em;
	margin-left: 65px;
}

.im-logo {
	float: left;
	margin-right: 1em;
	border-radius: 4px;
	padding: 2px;
	box-shadow: 1px 1px 1px 1px #ccc;
}

.im-link {
	color: #006a00;
}

.im-n {
	color: #777777;
	font-weight: normal
}

.version-section {
	padding-bottom: 1.5em;
}
</style>
	<div id="page">
		<div id="header" style="text-align: center">
			<div id="logo">
				<a href="/"><img
					src="/assets/images/392dffac024b9632664e6f2c0cac6fe5-logo.png"
					border="0" width="195" height="39" alt="MavenRepository" /></a>
			</div>
			<div id="search">
				<form action="/search">
					<input class="textfield"
						placeholder="Search for groups, artifacts, categories" type="text"
						id="query" size="45" maxlength="100" name="q" value=""
						onfocus="var cur=this.value; this.value=''; this.value=cur"
						autofocus /><input class="button" type="submit" value="Search" />
				</form>
			</div>
			<div id="navigation">
				<a href="/open-source"><b>Categories</b></a> | <a href="/popular">Popular</a>
				| <a href="mailto:info@mvnrepository.com">Contact Us</a>
			</div>
			<div style="clear: both;"></div>
		</div>
		<div id="left">
			<div>
				<h3>
					<a href="/repos"> Indexed Artifacts (13.4M)</a>
				</h3>
				<div style="text-align: center">
					<a href="/repos"><img
						src="/growth/bffe8fe0164d10d8a4b695067f3918ec" width="170"
						height="120" /></a>
				</div>
			</div>
			<div>
				<h3>
					<a href="/open-source">Popular Categories</a>
				</h3>
				<ul class="categories">
					<li><a href="/open-source/aop-programming">Aspect
							Oriented</a></li>
					<li><a href="/open-source/actor-frameworks">Actor
							Frameworks</a></li>
					<li><a href="/open-source/application-metrics">Application
							Metrics</a></li>
					<li><a href="/open-source/build-tools">Build Tools</a></li>
					<li><a href="/open-source/bytecode-libraries">Bytecode
							Libraries</a></li>
					<li><a href="/open-source/command-line-parsers">Command
							Line Parsers</a></li>
					<li><a href="/open-source/cache-implementations">Cache
							Implementations</a></li>
					<li><a href="/open-source/cloud-computing-integration">Cloud
							Computing</a></li>
					<li><a href="/open-source/code-analyzers">Code Analyzers</a></li>
					<li><a href="/open-source/collections">Collections</a></li>
					<li><a href="/open-source/config-libraries">Configuration
							Libraries</a></li>
					<li><a href="/open-source/core-utilities">Core Utilities</a></li>
					<li><a href="/open-source/date-time-utilities">Date and
							Time Utilities</a></li>
					<li><a href="/open-source/dependency-injection">Dependency
							Injection</a></li>
					<li><a href="/open-source/embedded-sql-databases">Embedded
							SQL Databases</a></li>
					<li><a href="/open-source/html-parsers">HTML Parsers</a></li>
					<li><a href="/open-source/http-clients">HTTP Clients</a></li>
					<li><a href="/open-source/io-utilities">I/O Utilities</a></li>
					<li><a href="/open-source/jdbc-extensions">JDBC
							Extensions</a></li>
					<li><a href="/open-source/jdbc-pools">JDBC Pools</a></li>
					<li><a href="/open-source/jpa-implementations">JPA
							Implementations</a></li>
					<li><a href="/open-source/json-libraries">JSON Libraries</a></li>
					<li><a href="/open-source/jvm-languages">JVM Languages</a></li>
					<li><a href="/open-source/logging-frameworks">Logging
							Frameworks</a></li>
					<li><a href="/open-source/logging-bridges">Logging
							Bridges</a></li>
					<li><a href="/open-source/mail-clients">Mail Clients</a></li>
					<li><a href="/open-source/maven-plugins">Maven Plugins</a></li>
					<li><a href="/open-source/mocking">Mocking</a></li>
					<li><a href="/open-source/orm">Object/Relational Mapping</a></li>
					<li><a href="/open-source/pdf-libraries">PDF Libraries</a></li>
					<li><a href="/open-source"><b>Top Categories</b></a></li>
				</ul>
			</div>
		</div>
		<div id="maincontent">
			<h1>What's New in Maven</h1>
			<div class="posts">
				<div class="im">
					<a
						href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/5198137a4ec4e89d3fbea58d4492c9f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/7122a30d1c455574818d9f357c669e05" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa">EclipseLink
								JPA</a><a class="im-usage"
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa/usages"><b>234</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.eclipse.persistence">org.eclipse.persistence</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa">org.eclipse.persistence.jpa</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa/2.7.4-RC2">2.7.4-RC2</a><span
								class="b lic im-lic">EDL</span><span class="b lic im-lic">EPL</span>
						</p>
					</div>
					<div class="im-description">
						EclipseLink build based upon Git transaction ad5b7c6b2a
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/org.keycloak/keycloak-adapter-spi"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/4ef7863c7edb2dc352e909080085303f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/420b5bd64285ec7cd1f1cd303c479591" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/org.keycloak/keycloak-adapter-spi">Keycloak
								Adapter SPI</a><a class="im-usage"
								href="/artifact/org.keycloak/keycloak-adapter-spi/usages"><b>93</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.keycloak">org.keycloak</a> » <a
								href="/artifact/org.keycloak/keycloak-adapter-spi">keycloak-adapter-spi</a>
							» <a
								href="/artifact/org.keycloak/keycloak-adapter-spi/4.8.3.Final">4.8.3.Final</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Keycloak Adapter SPI
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.liferay.portal/com.liferay.util.java"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/82a2ddeea6fada80f80240e51d1df1cf">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/3a054ba198743a87bb236415a8477745" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.liferay.portal/com.liferay.util.java">Liferay
								Util Java</a><a class="im-usage"
								href="/artifact/com.liferay.portal/com.liferay.util.java/usages"><b>87</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.liferay.portal">com.liferay.portal</a> » <a
								href="/artifact/com.liferay.portal/com.liferay.util.java">com.liferay.util.java</a>
							» <a
								href="/artifact/com.liferay.portal/com.liferay.util.java/3.0.19">3.0.19</a><span
								class="b lic im-lic">LGPL</span>
						</p>
					</div>
					<div class="im-description">
						Contains useful utilities. Classes are loaded separately for each
						plugin.
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/org.eclipse.microprofile.fault-tolerance/microprofile-fault-tolerance-api"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/7ef26d23fce86be7095b37f5eee2c89d">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/cbcc7fefde8e78be32c3cd0dfbf3785d" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.eclipse.microprofile.fault-tolerance/microprofile-fault-tolerance-api">MicroProfile
								Fault Tolerance API</a><a class="im-usage"
								href="/artifact/org.eclipse.microprofile.fault-tolerance/microprofile-fault-tolerance-api/usages"><b>20</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.eclipse.microprofile.fault-tolerance">org.eclipse.microprofile.fault-tolerance</a>
							» <a
								href="/artifact/org.eclipse.microprofile.fault-tolerance/microprofile-fault-tolerance-api">microprofile-fault-tolerance-api</a>
							» <a
								href="/artifact/org.eclipse.microprofile.fault-tolerance/microprofile-fault-tolerance-api/2.0-RC3">2.0-RC3</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Fault Tolerance APIs for MicroProfile :: API
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/jp.co.yahoo.dataplatform.schema/schema-common"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/29e5e11b600c9429760f2e7502cfe5b">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/a6921c6e0be642e3a693056400103e12" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/jp.co.yahoo.dataplatform.schema/schema-common">Schema
								Common</a><a class="im-usage"
								href="/artifact/jp.co.yahoo.dataplatform.schema/schema-common/usages"><b>16</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/jp.co.yahoo.dataplatform.schema">jp.co.yahoo.dataplatform.schema</a>
							» <a
								href="/artifact/jp.co.yahoo.dataplatform.schema/schema-common">schema-common</a>
							» <a
								href="/artifact/jp.co.yahoo.dataplatform.schema/schema-common/1.2.4_hive-1.2.1000.2.6.5.99-1">1.2.4_hive-1....</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Dataplatform Schema is a generalized nested schema. This Package
						provides common interface for our library.
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/org.hswebframework.web/hsweb-commons-service-simple"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/2b8eec31845d36b59be3f15c61f096de">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/6f643577498b9ef1b904c29d59ab4389" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.hswebframework.web/hsweb-commons-service-simple">Hsweb
								Commons Service Simple</a><a class="im-usage"
								href="/artifact/org.hswebframework.web/hsweb-commons-service-simple/usages"><b>15</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.hswebframework.web">org.hswebframework.web</a>
							» <a
								href="/artifact/org.hswebframework.web/hsweb-commons-service-simple">hsweb-commons-service-simple</a>
							» <a
								href="/artifact/org.hswebframework.web/hsweb-commons-service-simple/3.0.5">3.0.5</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						通用增删改查-通用服务本地实现模块
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/org.keycloak/keycloak-jetty-core"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/4ef7863c7edb2dc352e909080085303f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/420b5bd64285ec7cd1f1cd303c479591" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/org.keycloak/keycloak-jetty-core">Keycloak
								Jetty Core Integration</a><a class="im-usage"
								href="/artifact/org.keycloak/keycloak-jetty-core/usages"><b>11</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.keycloak">org.keycloak</a> » <a
								href="/artifact/org.keycloak/keycloak-jetty-core">keycloak-jetty-core</a>
							» <a
								href="/artifact/org.keycloak/keycloak-jetty-core/4.8.3.Final">4.8.3.Final</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Keycloak Jetty Core Integration
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/org.keycloak/keycloak-saml-jetty-adapter-core"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/4ef7863c7edb2dc352e909080085303f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/420b5bd64285ec7cd1f1cd303c479591" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/org.keycloak/keycloak-saml-jetty-adapter-core">Keycloak
								Jetty Core SAML Integration</a><a class="im-usage"
								href="/artifact/org.keycloak/keycloak-saml-jetty-adapter-core/usages"><b>5</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.keycloak">org.keycloak</a> » <a
								href="/artifact/org.keycloak/keycloak-saml-jetty-adapter-core">keycloak-saml-jetty-adapter-core</a>
							» <a
								href="/artifact/org.keycloak/keycloak-saml-jetty-adapter-core/4.8.3.Final">4.8.3.Final</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Keycloak Jetty Core SAML Integration
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/io.micronaut.configuration/micronaut-micrometer-core"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/d71ab516b78c7b13e703a687b8a4283d">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/5106f4272958a51d382aecc5dd931eee" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/io.micronaut.configuration/micronaut-micrometer-core">Micronaut
								Micrometer</a><a class="im-usage"
								href="/artifact/io.micronaut.configuration/micronaut-micrometer-core/usages"><b>4</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/io.micronaut.configuration">io.micronaut.configuration</a>
							» <a
								href="/artifact/io.micronaut.configuration/micronaut-micrometer-core">micronaut-micrometer-core</a>
							» <a
								href="/artifact/io.micronaut.configuration/micronaut-micrometer-core/1.0.4">1.0.4</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Provides integration between Micronaut and Micrometer
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/org.keycloak/keycloak-adapter-core"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/4ef7863c7edb2dc352e909080085303f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/420b5bd64285ec7cd1f1cd303c479591" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/org.keycloak/keycloak-adapter-core">Keycloak
								Adapter Core</a><a class="im-usage"
								href="/artifact/org.keycloak/keycloak-adapter-core/usages"><b>116</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.keycloak">org.keycloak</a> » <a
								href="/artifact/org.keycloak/keycloak-adapter-core">keycloak-adapter-core</a>
							» <a
								href="/artifact/org.keycloak/keycloak-adapter-core/4.8.3.Final">4.8.3.Final</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Keycloak Adapter Core
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/org.eclipse.persistence/org.eclipse.persistence.moxy"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/5198137a4ec4e89d3fbea58d4492c9f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/7122a30d1c455574818d9f357c669e05" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.moxy">EclipseLink
								Moxy</a><a class="im-usage"
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.moxy/usages"><b>101</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.eclipse.persistence">org.eclipse.persistence</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.moxy">org.eclipse.persistence.moxy</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.moxy/2.7.4-RC2">2.7.4-RC2</a><span
								class="b lic im-lic">EDL</span><span class="b lic im-lic">EPL</span>
						</p>
					</div>
					<div class="im-description">
						EclipseLink build based upon Git transaction ad5b7c6b2a
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/org.eclipse.persistence/org.eclipse.persistence.asm"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/5198137a4ec4e89d3fbea58d4492c9f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/7122a30d1c455574818d9f357c669e05" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.asm">EclipseLink
								ASM</a><a class="im-usage"
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.asm/usages"><b>50</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.eclipse.persistence">org.eclipse.persistence</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.asm">org.eclipse.persistence.asm</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.asm/2.7.4-RC2">2.7.4-RC2</a><span
								class="b lic im-lic">EDL</span><span class="b lic im-lic">EPL</span>
						</p>
					</div>
					<div class="im-description">
						EclipseLink build based upon Git transaction ad5b7c6b2a
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/io.github.classgraph/classgraph"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/a13430a4d196a675b07748ef2f020f0">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/c9bb0231a6fefd4f46f122216775b6ba" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/io.github.classgraph/classgraph">ClassGraph</a><a
								class="im-usage"
								href="/artifact/io.github.classgraph/classgraph/usages"><b>45</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/io.github.classgraph">io.github.classgraph</a>
							» <a href="/artifact/io.github.classgraph/classgraph">classgraph</a>
							» <a href="/artifact/io.github.classgraph/classgraph/4.6.18">4.6.18</a><span
								class="b lic im-lic">MIT</span>
						</p>
					</div>
					<div class="im-description">
						Uber-fast, ultra-lightweight Java classpath and module path
						scanner (formerly named FastClasspathScanner).
						https://github.com/classgraph/classgraph
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/io.kotlintest/kotlintest-runner-junit5"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/682655caf0298037fa49bec35085b91e">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/9855e74ae465667df240b880fa489dff" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/io.kotlintest/kotlintest-runner-junit5">KotlinTest</a><a
								class="im-usage"
								href="/artifact/io.kotlintest/kotlintest-runner-junit5/usages"><b>38</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/io.kotlintest">io.kotlintest</a> » <a
								href="/artifact/io.kotlintest/kotlintest-runner-junit5">kotlintest-runner-junit5</a>
							» <a
								href="/artifact/io.kotlintest/kotlintest-runner-junit5/3.2.0">3.2.0</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Kotlin Test Framework
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.aliyun.openservices/ons-client"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/dcb41487a6866f3a05d0df9085087d9">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/a6d76ead7054ebaef6958f93d4c0e400" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.aliyun.openservices/ons-client">Ons
								Client 1.7.9.Final</a><a class="im-usage"
								href="/artifact/com.aliyun.openservices/ons-client/usages"><b>30</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.aliyun.openservices">com.aliyun.openservices</a>
							» <a href="/artifact/com.aliyun.openservices/ons-client">ons-client</a>
							» <a
								href="/artifact/com.aliyun.openservices/ons-client/1.7.9.Final">1.7.9.Final</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Ons Client 1.7.9.Final
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.liferay/com.liferay.journal.api"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/82a2ddeea6fada80f80240e51d1df1cf">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/3a054ba198743a87bb236415a8477745" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.liferay/com.liferay.journal.api">Liferay
								Journal API</a><a class="im-usage"
								href="/artifact/com.liferay/com.liferay.journal.api/usages"><b>29</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.liferay">com.liferay</a> » <a
								href="/artifact/com.liferay/com.liferay.journal.api">com.liferay.journal.api</a>
							» <a href="/artifact/com.liferay/com.liferay.journal.api/3.5.4">3.5.4</a><span
								class="b lic im-lic">LGPL</span>
						</p>
					</div>
					<div class="im-description">
						Liferay Journal API
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/org.keycloak/keycloak-saml-adapter-api-public"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/4ef7863c7edb2dc352e909080085303f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/420b5bd64285ec7cd1f1cd303c479591" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/org.keycloak/keycloak-saml-adapter-api-public">Keycloak
								SAML Client Adapter Public API</a><a class="im-usage"
								href="/artifact/org.keycloak/keycloak-saml-adapter-api-public/usages"><b>22</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.keycloak">org.keycloak</a> » <a
								href="/artifact/org.keycloak/keycloak-saml-adapter-api-public">keycloak-saml-adapter-api-public</a>
							» <a
								href="/artifact/org.keycloak/keycloak-saml-adapter-api-public/4.8.3.Final">4.8.3.Final</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Keycloak SAML Client Adapter Public API
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/com.haoxuer.discover/discover-common-user-hibernate"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/e8391eab195d9fe0ccf78657c19a4e0d">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/db5ce1c1051a40a0a7f16cbc267812c5" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/com.haoxuer.discover/discover-common-user-hibernate">Discover
								Common User Hibernate</a><a class="im-usage"
								href="/artifact/com.haoxuer.discover/discover-common-user-hibernate/usages"><b>20</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.haoxuer.discover">com.haoxuer.discover</a>
							» <a
								href="/artifact/com.haoxuer.discover/discover-common-user-hibernate">discover-common-user-hibernate</a>
							» <a
								href="/artifact/com.haoxuer.discover/discover-common-user-hibernate/2.1.4">2.1.4</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						discover用户模块
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.modelgen.processor"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/5198137a4ec4e89d3fbea58d4492c9f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/7122a30d1c455574818d9f357c669e05" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.modelgen.processor">EclipseLink
								JPA Modelgen (non OSGi)</a><a class="im-usage"
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.modelgen.processor/usages"><b>18</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.eclipse.persistence">org.eclipse.persistence</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.modelgen.processor">org.eclipse.persistence.jpa.modelgen.processor</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.modelgen.processor/2.7.4-RC2">2.7.4-RC2</a><span
								class="b lic im-lic">EDL</span><span class="b lic im-lic">EPL</span>
						</p>
					</div>
					<div class="im-description">
						EclipseLink build based upon Git transaction ad5b7c6b2a
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.jpql"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/5198137a4ec4e89d3fbea58d4492c9f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/7122a30d1c455574818d9f357c669e05" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.jpql">EclipseLink
								Hermes JPQL Parser</a><a class="im-usage"
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.jpql/usages"><b>14</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.eclipse.persistence">org.eclipse.persistence</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.jpql">org.eclipse.persistence.jpa.jpql</a>
							» <a
								href="/artifact/org.eclipse.persistence/org.eclipse.persistence.jpa.jpql/2.7.4-RC2">2.7.4-RC2</a><span
								class="b lic im-lic">EDL</span><span class="b lic im-lic">EPL</span>
						</p>
					</div>
					<div class="im-description">
						EclipseLink build based upon Git transaction ad5b7c6b2a
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/org.hswebframework.web/hsweb-commons-service-api"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/2b8eec31845d36b59be3f15c61f096de">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/6f643577498b9ef1b904c29d59ab4389" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.hswebframework.web/hsweb-commons-service-api">Hsweb
								Commons Service API</a><a class="im-usage"
								href="/artifact/org.hswebframework.web/hsweb-commons-service-api/usages"><b>14</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.hswebframework.web">org.hswebframework.web</a>
							» <a
								href="/artifact/org.hswebframework.web/hsweb-commons-service-api">hsweb-commons-service-api</a>
							» <a
								href="/artifact/org.hswebframework.web/hsweb-commons-service-api/3.0.5">3.0.5</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						通用增删改查-通用服务接口模块
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/org.incode.module.unittestsupport/incode-module-unittestsupport-dom"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/f528f8624819687ff38b1d1f01f15f3c">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/29e55f7fe952431c67901fcf0f04f8c2" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/org.incode.module.unittestsupport/incode-module-unittestsupport-dom">Incode
								Platform Lib Unit TestingSupport Impl</a><a class="im-usage"
								href="/artifact/org.incode.module.unittestsupport/incode-module-unittestsupport-dom/usages"><b>13</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.incode.module.unittestsupport">org.incode.module.unittestsupport</a>
							» <a
								href="/artifact/org.incode.module.unittestsupport/incode-module-unittestsupport-dom">incode-module-unittestsupport-dom</a>
							» <a
								href="/artifact/org.incode.module.unittestsupport/incode-module-unittestsupport-dom/1.17.0">1.17.0</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						A module providing test utilities for unit testing of domain
						modules
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.netflix.conductor/conductor-core"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/cc40ab20668dbc3c00be4c6a9a1632c0">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/633a8a953d40e0211215a3c65e266646" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.netflix.conductor/conductor-core">Conductor
								Core</a><a class="im-usage"
								href="/artifact/com.netflix.conductor/conductor-core/usages"><b>11</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.netflix.conductor">com.netflix.conductor</a>
							» <a href="/artifact/com.netflix.conductor/conductor-core">conductor-core</a>
							» <a href="/artifact/com.netflix.conductor/conductor-core/2.5.5">2.5.5</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						conductor-core
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/org.keycloak/keycloak-saml-core-public"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/4ef7863c7edb2dc352e909080085303f">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/420b5bd64285ec7cd1f1cd303c479591" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/org.keycloak/keycloak-saml-core-public">Keycloak
								SAML Core Public API</a><a class="im-usage"
								href="/artifact/org.keycloak/keycloak-saml-core-public/usages"><b>11</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.keycloak">org.keycloak</a> » <a
								href="/artifact/org.keycloak/keycloak-saml-core-public">keycloak-saml-core-public</a>
							» <a
								href="/artifact/org.keycloak/keycloak-saml-core-public/4.8.3.Final">4.8.3.Final</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Keycloak SAML Core Public API
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.disney.groovity/groovity-servlet"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/b3fe7640d61d38c02f7b2e8e6fe10228">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/97d2bf25118da1643733878a7e4bd7b6" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.disney.groovity/groovity-servlet">Groovity
								Servlet</a><a class="im-usage"
								href="/artifact/com.disney.groovity/groovity-servlet/usages"><b>10</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.disney.groovity">com.disney.groovity</a> »
							<a href="/artifact/com.disney.groovity/groovity-servlet">groovity-servlet</a>
							» <a href="/artifact/com.disney.groovity/groovity-servlet/2.0.2">2.0.2</a><span
								class="b lic im-lic">Apache</span><span class="b lic im-lic">BSD</span><span
								class="b lic im-lic">CDDL</span>
						</p>
					</div>
					<div class="im-description">
						Groovity Servlet
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/org.aesh/aesh"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/e5d73b0a2d17d9165d6b641a31f6be65">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/f61e84740b315c72fc452637e4e17606" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/org.aesh/aesh">Æsh</a><a class="im-usage"
								href="/artifact/org.aesh/aesh/usages"><b>8</b> usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/org.aesh">org.aesh</a> » <a
								href="/artifact/org.aesh/aesh">aesh</a> » <a
								href="/artifact/org.aesh/aesh/1.11">1.11</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Æsh (Another Extendable SHell)
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.disney.groovity/uri-parcel-core"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/b3fe7640d61d38c02f7b2e8e6fe10228">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/97d2bf25118da1643733878a7e4bd7b6" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.disney.groovity/uri-parcel-core">URI
								Parcel Core Utility</a><a class="im-usage"
								href="/artifact/com.disney.groovity/uri-parcel-core/usages"><b>5</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.disney.groovity">com.disney.groovity</a> »
							<a href="/artifact/com.disney.groovity/uri-parcel-core">uri-parcel-core</a>
							» <a href="/artifact/com.disney.groovity/uri-parcel-core/2.0.2">2.0.2</a><span
								class="b lic im-lic">Apache</span><span class="b lic im-lic">BSD</span><span
								class="b lic im-lic">CDDL</span>
						</p>
					</div>
					<div class="im-description">
						URI Parcel Core Utility
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.liferay/com.liferay.message.boards.web"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/82a2ddeea6fada80f80240e51d1df1cf">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/3a054ba198743a87bb236415a8477745" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.liferay/com.liferay.message.boards.web">Liferay
								Message Boards Web</a><a class="im-usage"
								href="/artifact/com.liferay/com.liferay.message.boards.web/usages"><b>5</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.liferay">com.liferay</a> » <a
								href="/artifact/com.liferay/com.liferay.message.boards.web">com.liferay.message.boards.web</a>
							» <a
								href="/artifact/com.liferay/com.liferay.message.boards.web/2.0.37">2.0.37</a><span
								class="b lic im-lic">LGPL</span>
						</p>
					</div>
					<div class="im-description">
						Liferay Message Boards Web
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/io.swagger.codegen.v3/swagger-codegen-generators"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/982a64a2ba65f0043106fe736d12f4df">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/341da10f8d8522341c2fa60f2d5bb728" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/io.swagger.codegen.v3/swagger-codegen-generators">Swagger
								Codegen Generators</a><a class="im-usage"
								href="/artifact/io.swagger.codegen.v3/swagger-codegen-generators/usages"><b>5</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/io.swagger.codegen.v3">io.swagger.codegen.v3</a>
							» <a
								href="/artifact/io.swagger.codegen.v3/swagger-codegen-generators">swagger-codegen-generators</a>
							» <a
								href="/artifact/io.swagger.codegen.v3/swagger-codegen-generators/1.0.4">1.0.4</a>
						</p>
					</div>
					<div class="im-description">
						Swagger Codegen Generators
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/jp.nephy/jsonkt"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/7d789fd7908db0e1fd19e45cc4a3857">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/4a32551bada2b4aa0cb82609655a630f" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/jp.nephy/jsonkt">Json.Kt</a><a
								class="im-usage" href="/artifact/jp.nephy/jsonkt/usages"><b>5</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/jp.nephy">jp.nephy</a> » <a
								href="/artifact/jp.nephy/jsonkt">jsonkt</a> » <a
								href="/artifact/jp.nephy/jsonkt/4.3">4.3</a><span
								class="b lic im-lic">MIT</span>
						</p>
					</div>
					<div class="im-description">
						Json bindings for Kotlin.
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.cyc/cyc-session-client"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/7b84c8161e8cec99681915b6887989a2">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/83000165075e39fb97585050cfec1474" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.cyc/cyc-session-client">Session Client</a><a
								class="im-usage"
								href="/artifact/com.cyc/cyc-session-client/usages"><b>4</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.cyc">com.cyc</a> » <a
								href="/artifact/com.cyc/cyc-session-client">cyc-session-client</a>
							» <a href="/artifact/com.cyc/cyc-session-client/1.2.2">1.2.2</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Session API implementation for managing configurations and
						connections to Cyc servers.
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.netflix.archaius/archaius2-archaius1-bridge"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/8c27a734f9c2b62eb1d228b4ae41b988">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/e95170886f5488d43da2db8b4ec099c8" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/com.netflix.archaius/archaius2-archaius1-bridge">Archaius2
								Archaius1 Bridge</a><a class="im-usage"
								href="/artifact/com.netflix.archaius/archaius2-archaius1-bridge/usages"><b>4</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.netflix.archaius">com.netflix.archaius</a>
							» <a
								href="/artifact/com.netflix.archaius/archaius2-archaius1-bridge">archaius2-archaius1-bridge</a>
							» <a
								href="/artifact/com.netflix.archaius/archaius2-archaius1-bridge/2.3.14">2.3.14</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						archaius2-archaius1-bridge
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.opitzconsulting.orcas/orcas-db-objects"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/a8c1a2d26a2f37780d659eeb781f6308">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/a05577db4afe724b97ab9f03f5626be6" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.opitzconsulting.orcas/orcas-db-objects">Orcas
								DB Objects</a><a class="im-usage"
								href="/artifact/com.opitzconsulting.orcas/orcas-db-objects/usages"><b>4</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.opitzconsulting.orcas">com.opitzconsulting.orcas</a>
							» <a href="/artifact/com.opitzconsulting.orcas/orcas-db-objects">orcas-db-objects</a>
							» <a
								href="/artifact/com.opitzconsulting.orcas/orcas-db-objects/5.3.0">5.3.0</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						orcas database components
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a
						href="/artifact/com.opitzconsulting.orcas/orcas-domainextension-syex"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/a8c1a2d26a2f37780d659eeb781f6308">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/a05577db4afe724b97ab9f03f5626be6" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a
								href="/artifact/com.opitzconsulting.orcas/orcas-domainextension-syex">Orcas
								Domainextension Syex</a><a class="im-usage"
								href="/artifact/com.opitzconsulting.orcas/orcas-domainextension-syex/usages"><b>4</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.opitzconsulting.orcas">com.opitzconsulting.orcas</a>
							» <a
								href="/artifact/com.opitzconsulting.orcas/orcas-domainextension-syex">orcas-domainextension-syex</a>
							» <a
								href="/artifact/com.opitzconsulting.orcas/orcas-domainextension-syex/5.3.0">5.3.0</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						orcas model modified by syntax extensions (contains the original
						model). If custom-syntax-extensions are provided, there will be a
						custom artifact.
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 16, 2019</div>
					</div>
				</div>
				<div class="im">
					<a href="/artifact/com.vectorprint/VectorPrintCommon"><picture>
						<source type="image/webp"
							srcset="https://d2j3q9yua85jt3.cloudfront.net/img/9cb5f79798ac8709145de9467112e397">
						<img class="im-logo" width="48" height="48"
							src="https://d2j3q9yua85jt3.cloudfront.net/img/25772c09ec477bd2449d79e6f4a711cf" /></picture></a>
					<div class="im-header">
						<h2 class="im-title">
							<a href="/artifact/com.vectorprint/VectorPrintCommon">VectorPrintCommon</a><a
								class="im-usage"
								href="/artifact/com.vectorprint/VectorPrintCommon/usages"><b>4</b>
								usages</a>
						</h2>
						<p class="im-subtitle">
							<a href="/artifact/com.vectorprint">com.vectorprint</a> » <a
								href="/artifact/com.vectorprint/VectorPrintCommon">VectorPrintCommon</a>
							» <a href="/artifact/com.vectorprint/VectorPrintCommon/3.13">3.13</a><span
								class="b lic im-lic">Apache</span>
						</p>
					</div>
					<div class="im-description">
						Common, mainly helper classes, featuring finding class of generic
						parameters, thread testing, version information detection,
						ArrayHelper, CertificateHelper, StringConverter
						<div style="color: grey; font-size: 12px; padding-top: 1em">
							Last Release on Jan 15, 2019</div>
					</div>
				</div>
			</div>
		</div>
		<div id="right">
			<div style="text-align: center">
				<h3>
					<a href="/repos">Indexed Repositories (920)</a>
				</h3>
				<ul class="repositories">
					<li><a href="/repos/central"><div class="pb">
								<span>Central</span>
								<div class="pbv" style="width: 100%"></div>
							</div></a></li>
					<li><a href="/repos/sonatype-releases"><div class="pb">
								<span>Sonatype</span>
								<div class="pbv" style="width: 60%"></div>
							</div></a></li>
					<li><a href="/repos/springio-plugins-release"><div
								class="pb">
								<span>Spring Plugins</span>
								<div class="pbv" style="width: 42%"></div>
							</div></a></li>
					<li><a href="/repos/spring-libs-milestone"><div class="pb">
								<span>Spring Lib M</span>
								<div class="pbv" style="width: 38%"></div>
							</div></a></li>
					<li><a href="/repos/hortonworks-releases"><div class="pb">
								<span>Hortonworks</span>
								<div class="pbv" style="width: 23%"></div>
							</div></a></li>
					<li><a href="/repos/atlassian-public"><div class="pb">
								<span>Atlassian</span>
								<div class="pbv" style="width: 20%"></div>
							</div></a></li>
					<li><a href="/repos/jcenter"><div class="pb">
								<span>JCenter</span>
								<div class="pbv" style="width: 9%"></div>
							</div></a></li>
					<li><a href="/repos/jboss-releases"><div class="pb">
								<span>JBoss Releases</span>
								<div class="pbv" style="width: 7%"></div>
							</div></a></li>
					<li><a href="/repos/ibiblio-m2"><div class="pb">
								<span>IBiblio</span>
								<div class="pbv" style="width: 5%"></div>
							</div></a></li>
					<li><a href="/repos/springio-libs-release"><div class="pb">
								<span>Spring Lib Release</span>
								<div class="pbv" style="width: 5%"></div>
							</div></a></li>
				</ul>
			</div>
			<div style="text-align: center">
				<h3>
					<a href="/tags">Popular Tags</a>
				</h3>
				<script type="text/javascript">
					var tags = [ 'android', 'apache', 'api', 'application',
							'archetype', 'assets', 'build', 'build-system',
							'client', 'clojure', 'cloud', 'config', 'database',
							'eclipse', 'example', 'extension', 'framework',
							'github', 'google', 'gradle', 'groovy', 'gwt',
							'http', 'ide', 'io', 'jboss', 'library', 'logging',
							'maven', 'model', 'module', 'osgi', 'persistence',
							'platform', 'plugin', 'repository', 'rest',
							'rlang', 'scala', 'sdk', 'security', 'server',
							'service', 'spring', 'streaming', 'testing',
							'tools', 'ui', 'web', 'webapp' ];
					var sizes = [ 5, 5, 4, 3, 1, 5, 5, 5, 4, 5, 2, 2, 3, 4, 4,
							2, 1, 5, 1, 3, 4, 1, 1, 1, 5, 3, 3, 2, 4, 1, 3, 2,
							2, 2, 5, 2, 1, 3, 2, 3, 1, 4, 3, 4, 1, 4, 2, 4, 5,
							3 ];
					for ( var i in tags) {
						document
								.write("<a href='/tags/" + tags[i] + "' class='t" + sizes[i] + "'>"
										+ tags[i] + "</a>\n");
					}
				</script>
				<br />
				<br />
			</div>
			<br />
			<div
				style="font-size: 13px; border-top: 1px solid gray; text-align: center; padding-top: 1em">
				Web site developed by <a href="https://twitter.com/frodriguez">@frodriguez</a><br />
				<br /> Powered by: <a href="/artifact/org.scala-lang">Scala</a>, <a
					href="/artifact/com.typesafe.play">Play</a>, <a
					href="/artifact/org.apache.spark">Spark</a>, <a
					href="/artifact/com.typesafe.akka">Akka</a> and <a
					href="/artifact/org.apache.cassandra">Cassandra</a>
			</div>
		</div>
	</div>
	<div id="footer">
		Copyright &copy; 2006-2018 MvnRepository. All rights reserved.<br />
		<span style="text-align: center">Web site developed by <a
			href="https://twitter.com/frodriguez">@frodriguez</a></span><br />
		<a href="mailto:info@mvnrepository.com">Contact Us</a>
	</div>
	<script
		src="/assets/javascripts/729ad6b0945dc6b8bdb211b062b33385-perf.js"
		type="text/javascript" async></script>
</body>
</html>
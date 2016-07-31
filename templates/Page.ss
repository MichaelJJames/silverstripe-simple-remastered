<!DOCTYPE HTML>
<html>
	<head>
        <% base_tag %>
        $MetaTags(false)
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="theme-color" content="#34495e" />
		<meta name="msapplication-navbutton-color" content="#34495e" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-capable" content="black-transclucent" />
		<% require themedCSS("styles") %>
		<% require javascript("themes/basic/js/jquery.min.js") %>
		<% require javascript("themes/basic/js/bootstrap.min.js") %>
		<title>$Title | $SiteConfig.Title</title>
	</head>
	<body>

        <% include Navigation %>

		<div class="main">
			<div class="container">
				$Layout
			</div>
		</div>

		<% include Footer %>


	</body>
</html>

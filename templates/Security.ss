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
		<link rel="favicon" type="image/ico" href="favicon.ico" />
		<% require themedCSS("styles") %>
		<% require javascript("themes/simple-remastered/js/jquery.min.js") %>
		<% require javascript("themes/simple-remastered/js/bootstrap.min.js") %>
		<title>$Title | $SiteConfig.Title</title>
	</head>
	<body style="background-color: #34495e;">


        <div class="login-form">
            <div class="content">
				<div class="panel">
	                <div class="panel-heading">
	                    Login
	                </div>
	                <div class="panel-body">
						$Content
		                $Form
					</div>
					<div class="panel-footer">
						<a class="site-name" href="$AbsoluteBaseURL">Return to $SiteConfig.Title</a>
						<a class="attribution" href="http://www.creativegorillas.com" target="_blank">Theme by Creative Gorillas</a>
					</div>
	            </div>
			</div>
        </div>


	</body>
</html>

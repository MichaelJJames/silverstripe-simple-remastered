<nav class="navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#site-navigation" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="$AbsoluteBaseURL">
                $SiteConfig.Title
                <span class="navbar-tagline">$SiteConfig.Tagline</span>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="site-navigation">
            <ul class="nav navbar-nav navbar-right">
                <% if $SearchForm %>
                    <li class="visible-xs">
                        <div class="search-bar">
                            <div class="container">
                                $SearchForm
                            </div>
                        </div>
                    </li>
                <% end_if %>

                <% loop $Menu(1) %>
                    <li class="$LinkingMode"><a href="$Link">$MenuTitle.XML</a></li>
                <% end_loop %>

                <% if $SearchForm %>
                    <li class="search-dropdown dropdown hidden-xs">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search"></i></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="search-bar">
                                    $SearchForm
                                </div>
                            </li>
                        </ul>
                    </li>
                <% end_if %>
            </ul>
        </div>
    </div>
</nav>

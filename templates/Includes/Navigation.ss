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
                <li class="visible-xs">
                    <% if $SearchForm %>
                        <div class="search-bar">
                            <div class="container">
                                $SearchForm
                            </div>
                        </div>
                    <% end_if %>
                </li>
                <% loop $Menu(1) %>
                    <li class="$LinkingMode"><a href="$Link">$MenuTitle.XML</a></li>
                <% end_loop %>

                <li class="search-dropdown dropdown hidden-xs">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search"></i></a>
                    <ul class="dropdown-menu">
                        <li>
                            <% if $SearchForm %>
                                <div class="search-bar">
                                    $SearchForm
                                </div>
                            <% end_if %>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

        <!-- <div class="container searchdiv" id="formsearch">
            <% if $SearchForm %>
                <span class="search-dropdown-icon">L</span>
                <div class="search-bar">
                    $SearchForm
                </div>
            <% end_if %>
        </div> -->
    </div>
</nav>

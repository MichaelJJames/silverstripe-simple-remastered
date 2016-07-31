<div class="row">
    <% if $URLSegment != Home && $Children || $Parent %>
        <div class="col-xs-12 col-sm-8 col-sm-push-4 col-md-9 col-md-push-3">
            <h1 class="page-header">$Title</h1>
            $Content
            $Form
        </div>
        <div class="col-xs-12 col-sm-4 col-sm-pull-8 col-md-3 col-md-pull-9">
            <aside class="sidebar">
                <h3 class="page-header">$Title</h3>
                <ul>
                    <% control $Parent %>
                        <li class="previous"><a href="$Link">Previous Page</a></li>
                    <% end_control %>
                    <% loop $Children %>
                        <li><a href="$Link">$MenuTitle.XML</a></li>
                    <% end_loop %>
                </ul>
            </aside>
        </div>
    <% else %>
        <div class="col-xs-12">
            <h1 class="page-header">$Title</h1>
            $Content
            $Form
        </div>
    <% end_if %>
</div>

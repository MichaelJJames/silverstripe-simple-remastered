<div class="row">
    <div class="col-xs-12">
        <h1 class="page-header">
            $Title<br />
            <small>
                You searched for &quot;{$Query}&quot;
            </small>
        </h1>

        <% if $Results %>
            <div class="container">
                <div class="row">
                    <% loop $Results %>
                        <div class="col-xs-12">
                            <h4><a href="$Link"><% if $MenuTitle %> $MenuTitle.XML <% else %> $Title <% end_if %></a></h4>
                            <% if $Content %>
                                <p>
                                    $Content.LimitWordCountXML
                                </p>
                            <% end_if %>
                            <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
                            <hr />
                        </div>
                    <% end_loop %>
                </div>
            </div>
        <% else %>
            <p>Sorry, your search query did not return any results.</p>
        <% end_if %>

        <div class="page-pagination">
            <% if $Results.MoreThanOnePage %>
                <ul class="pagination pagination-sm">
                    <% if $Results.NotFirstPage %>
                        <li>
                            <a href="$Results.PrevLink" class="prev" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    <% end_if %>

                    <% loop $Results.Pages %>
                        <% if $CurrentBool %>
                            <li class="active"><a href="#">$PageNum <span class="sr-only">(current)</span></a></li>
                            <% else %>
                                <% if $Link %>
                                    <li><a href="$Link">$PageNum</a></li>
                                <% else %>
                                    <span>...</span>
                                <% end_if %>
                        <% end_if %>
                    <% end_loop %>

                    <% if $Results.NotLastPage %>
                        <li>
                            <a href="$Results.NextLink" class="next" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    <% end_if %>
                </ul>
                <p>Page $Results.CurrentPage of $Results.TotalPages</p>
            <% end_if %>
        </div>

    </div>
</div>

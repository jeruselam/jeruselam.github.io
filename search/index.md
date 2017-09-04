---
layout: page
title: "Sûre"
date: 
modified:
excerpt:
image:
  feature:
search_omit: true
sitemap: false
---
  
<!-- Search form -->
<form method="get" action="{{ site.url }}/search/" data-search-form class="simple-search">
  <label for="q">Search {{ site.title }} for:</label>
  <input type="search" name="q" id="q" placeholder="Küçük harflerle yazınız" data-search-input id="goog-wm-qt" autofocus />
  <input type="submit" value="Ara" id="goog-wm-sb" />
</form>

<!-- Search results placeholder -->
<h6 data-search-found>
  &ldquo;<span data-search-found-term></span>&rdquo; için <span data-search-found-count></span> sonuç bulundu.
</h6>
<ul class="post-list" data-search-results></ul>

<!-- Search result template -->
<script type="text/x-template" id="search-result">
  <li><article>
    <a href="##Url##">##Title## <span class="excerpt">##Excerpt##</span></a>
  </article></li>
</script>

<script src="jquery-1.6.1.min.js"></script>
<script src="jquery-tapir.min.js"></script>
<script>
  $('#search_results').tapir({'token': '59addafc14ad6670777d3cb5'});
</script>

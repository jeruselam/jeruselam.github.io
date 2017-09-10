---
layout: page
title: "Ayet"
date: 
modified:
excerpt:
image:
  feature:
search_omit: true
sitemap: false
---
<form action="{{ site.baseurl }}/search/" method="get">
	<input type="search" name="q" {% if include.add_id %}id="search-input"{% endif %} placeholder="What would you like to know?" autofocus>
	
<svg fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
    <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/>
    <path d="M0 0h24v24H0z" fill="none"/>
</svg>
	<input type="submit" value="Bul" style="display: none;">
</form>
  <input type="submit" value="Bul">

<p><span id="search-process">Loading</span> results <span id="search-query-container" style="display: none;">for "<strong id="search-query"></strong>"</span></p>
<ul id="search-results"></ul>

<script>
	window.data = {
		{% for post in site.posts %}
			{% if post.title %}
				{% unless post.excluded_in_search %}
					{% if added %},{% endif %}
					{% assign added = false %}
					"{{ post.url | slugify }}": {
						"id": "{{ post.url | slugify }}",
						"title": "{{ post.title | xml_escape }}",
						"categories": "{{ post.categories | join: ", " | xml_escape }}",
						"url": " {{ post.url | xml_escape }}",
						"content": {{ post.content | strip_html | replace_regex: "[\s/\n]+"," " | strip | jsonify }}
					}
					{% assign added = true %}
				{% endunless %}
			{% endif %}
		{% endfor %}
	};
</script>
<script src="{{ site.baseurl }}/js/lunr.min.js"></script>
<script src="{{ site.baseurl }}/js/search.js"></script>

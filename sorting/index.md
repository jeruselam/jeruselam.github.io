---
layout: page
title: "Alfabetik Sıralama"
date: 
modified:
excerpt:
image:
  feature:
search_omit: true
sitemap: false
---


<ul class="post-list">
{% assign sorted-titles = site.posts | sort: 'title' %}
{% for post in sorted-titles limit: 114 %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

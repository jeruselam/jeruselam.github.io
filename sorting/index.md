---
layout: page
title: Alfabetik
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
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <!-- Read time -->
{% capture words %}
	{{ post.content | number_of_words | divided_by:99 }}
{% endcapture %}
{% assign word_count = words | times: 1 %}
{% if word_count != 0 %}
	<span>{{ word_count }} dk.</span>
{% else %}
	<span> <{{ word_count | plus: 1 }} dk.</span>
{% endif %}<!-- Read time -->
{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

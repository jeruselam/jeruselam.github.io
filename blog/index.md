---
layout: page
title: Blog
excerpt: "My blog posts."
search_omit: true
---


<ul class="post-list">
{% assign B = post.date | date: "%B" %}
{% case B %}
  {% when '1' %}Ocak
  {% when '2' %}Şubat
  {% when '3' %}Mart
  {% when '4' %}Nisan
  {% when '5' %}Mayıs
  {% when '6' %}Haziran
  {% when '7' %}Temmuz
  {% when '8' %}Ağustos
  {% when '9' %}Eylül
  {% when '10' %}Ekim
  {% when '11' %}Kasım
  {% when '12' %}Aralık
{% endcase %}
{% for post in site.categories.blog %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

---
layout: page
permalink: /tag/
search_omit: true
sitemap: false
---

### Sûreler

{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tags_list = site_tags | split:',' | sort %}

<ul class="tag-box inline">
  {% for item in (0..site.tags.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tags_list[item] | strip_newlines }}{% endcapture %}

<ul class="post-list">
  {% for post in site.tags[this_word] %}{% if post.title != null %}
    <li><a href="{{ site.url }}{{ post.url }}">{{ this_word }}</a></li>
  {% endif %}{% endfor %}
</ul>
  {% endunless %}{% endfor %}

</ul>


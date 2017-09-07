---
layout: page
title: "Rasgele"
date: 
modified:
excerpt:
image:
  feature:
search_omit: true
sitemap: false
---
<html>
<head>
	<script>
		var posts = [];
		{% for post in site.posts %}
		posts.push("{{ post.url }}");
		{% endfor %}
		document.write("<meta http-equiv=\"refresh\" content=\"1;url=");
		document.write(posts[Math.floor(Math.random() * posts.length)]);
		document.write("\">");
	</script>
</head>

<body>
	Rasgele bir yayına 
	<script>
		document.write("<a href=\"");
		document.write(posts[Math.floor(Math.random() * posts.length)]);
		document.write("\">yönlendiriliyor</a>...");
	</script>
</body>
</html>

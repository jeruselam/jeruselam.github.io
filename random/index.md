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
	Rasgele bir Sûreye 
	<script>
		document.write("<a href=\"");
		document.write(posts[Math.floor(Math.random() * posts.length)]);
		document.write("\">yönlendiriliyorsunuz</a>...");
	</script>
</body>
</html>

---
title: 归档
icon: fas fa-archive
order: 1
---

{% assign posts_by_year = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}
{% if posts_by_year and posts_by_year.size > 0 %}
  {% for year in posts_by_year %}
<h2>{{ year.name }}</h2>
<ul class="post-list">
    {% for post in year.items %}
  <li>
    <span class="post-meta">{{ post.date | date: "%m-%d" }}</span>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
  </li>
    {% endfor %}
</ul>
  {% endfor %}
{% else %}
暂无文章。
{% endif %}

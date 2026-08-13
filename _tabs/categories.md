---
title: 分类
icon: fas fa-tags
order: 2
---

{% assign categories = site.categories | sort %}
{% if categories and categories.size > 0 %}
<ul class="taxonomy-list">
  {% for category in categories %}
    {% assign category_slug = category[0] | slugify %}
    <li>
      <a href="{{ '/categories/' | append: category_slug | append: '/' | relative_url }}">{{ category[0] }}</a>
      <span class="post-meta">({{ category[1].size }})</span>
    </li>
  {% endfor %}
</ul>
{% else %}
暂无分类。
{% endif %}

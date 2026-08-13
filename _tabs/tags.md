---
title: 标签
icon: fas fa-archive
order: 3
---

{% assign tags = site.tags | sort %}
{% if tags and tags.size > 0 %}
<ul class="taxonomy-list">
  {% for tag in tags %}
    {% assign tag_slug = tag[0] | slugify %}
    <li>
      <a href="{{ '/tags/' | append: tag_slug | append: '/' | relative_url }}">{{ tag[0] }}</a>
      <span class="post-meta">({{ tag[1].size }})</span>
    </li>
  {% endfor %}
</ul>
{% else %}
暂无标签。
{% endif %}

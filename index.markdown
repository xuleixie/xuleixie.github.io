---
layout: page
title: 所有文章
permalink: /blog/
---

<div class="post-list">
  {% for post in site.posts %}
    <div class="post-item">
      <h2>
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      </h2>
      <div class="post-meta">
        <span class="post-date">发布日期: {{ post.date | date: "%Y-%m-%d" }}</span>
        
        {% if post.categories.size > 0 %}
        <span class="post-categories">
          分类: 
          {% for category in post.categories %}
            <a href="/categories/#{{ category | slugize }}">{{ category }}</a>{% unless forloop.last %}, {% endunless %}
          {% endfor %}
        </span>
        {% endif %}
        
        {% if post.tags.size > 0 %}
        <span class="post-tags">
          标签: 
          {% for tag in post.tags %}
            <a href="/tags/#{{ tag | slugize }}">{{ tag }}</a>{% unless forloop.last %}, {% endunless %}
          {% endfor %}
        </span>
        {% endif %}
      </div>
      
      {% if post.description %}
        <p class="post-description">{{ post.description }}</p>
      {% else %}
        <p class="post-excerpt">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
      {% endif %}
      
      <a href="{{ post.url | relative_url }}" class="read-more">阅读全文 &raquo;</a>
    </div>
  {% endfor %}
</div>

<style>
  .post-item {
    margin-bottom: 2rem;
    padding-bottom: 1rem;
    border-bottom: 1px solid #eee;
  }
  .post-meta {
    color: #666;
    font-size: 0.9rem;
    margin-bottom: 0.5rem;
  }
  .post-meta span {
    margin-right: 1rem;
  }
  .read-more {
    display: inline-block;
    margin-top: 0.5rem;
  }
</style>
---
layout: page
title: 카테고리
permalink: /categories/
description: >
  카테고리별로 정리된 블로그 포스트
---

{% assign categories = site.categories | sort %}
<ul>
{% for category in categories %}
  <li>
    <a href="{{ site.baseurl }}/category/{{ category[0] | slugify }}/">
      {{ category[0] }} ({{ category[1].size }})
    </a>
  </li>
{% endfor %}
</ul>

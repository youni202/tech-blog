---
layout: page
title: 태그
permalink: /tags/
description: >
  태그별로 정리된 블로그 포스트
---

{% assign tags = site.tags | sort %}
<ul>
{% for tag in tags %}
  <li>
    <a href="{{ site.baseurl }}/tag/{{ tag[0] | slugify }}/">
      {{ tag[0] }} ({{ tag[1].size }})
    </a>
  </li>
{% endfor %}
</ul>

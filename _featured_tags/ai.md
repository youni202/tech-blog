---
# Featured tags need to have either the `list` or `grid` layout (PRO only).
layout: page

# The title of the tag's page.
title: AI

# The name of the tag, used in a post's front matter (e.g. tags: [<slug>]).
slug: AI

# (Optional) Write a short (~150 characters) description of this featured tag.
description: >
  인공지능 기술과 트렌드에 관한 포스트입니다.

# (Optional) You can disable grouping posts by date.
# no_groups: true
---

{% assign posts = site.tags.AI %}
<ul>
{% for post in posts %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
  </li>
{% endfor %}
</ul>

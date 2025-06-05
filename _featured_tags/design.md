---
# Featured tags need to have either the `list` or `grid` layout (PRO only).
layout: page

# The title of the tag's page.
title: 디자인

# The name of the tag, used in a post's front matter (e.g. tags: [<slug>]).
slug: 디자인

# (Optional) Write a short (~150 characters) description of this featured tag.
description: >
  디자인 도구와 트렌드에 관한 포스트입니다.

# (Optional) You can disable grouping posts by date.
# no_groups: true
---

{% assign posts = site.tags.디자인 %}
<ul>
{% for post in posts %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
  </li>
{% endfor %}
</ul>

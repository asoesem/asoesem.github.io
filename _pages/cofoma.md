---
layout: default
title: Comisión de Fortalecimiento Matemático
permalink: /cofoma/
---

<!-- begin hero -->
<section class="hero hero--left">
  <div class="container">
    {% if page.title %}
    <h1 class="hero__title">{{ page.title }}</h1>
    {% endif %}
  </div>
</section>
<!-- end hero -->

<section class="section animate">
  <div class="container">
    <div class="row">
      {% for post in site.posts %}
        {% for commision in post.commissions %}
          {% if commision == "cofoma" %}
            <div class="col col-4 col-d-6 col-t-12">
              {% include article.html %}
            </div>
          {% endif %}
        {% endfor %}
      {% endfor %}
    </div>
  </div>
</section>
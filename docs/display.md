sample:

{% for code in site.data.sample %} 
<li> <a> n={{ code.n }} {{ code.k }} {{ code.d }} </a> </li>
{% endfor %}


sample2:

{% for code in site.data.sample2 %} 
<li> <a> n={{ code.n }} {{ code.k }} {{ code.d }} </a> </li>
{% endfor %}

tracks:

{% for track in site.data.tracks %}
<li>Title: {{ track.title }}</li>
  {% endfor %}

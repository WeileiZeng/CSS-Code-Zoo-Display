# Full list

|  n|  k|  d|Gx_row|Gz_row| d_x| dz | index|
|---|---|---|---|---|---|---|---| {% for t in site.data.codes %}{% assign code = t.last %}
|{{ code.n }} | {{ code.k }} |{{ code.d }}|{{ code.Gx_row }}|{{ code.Gz_row }}|{{ code.dx }}| {{ code.dz }}| {{code.index}} {% endfor %}



FUll `json`
{% for t in site.data.tmp %}
{% assign code = t.last %}	 
<li>full json: {{ code }}</li>	
  {% endfor %}
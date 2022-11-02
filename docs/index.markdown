---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
## List of CSS codes

## Contents
[Full list](full.md)



create an array

{% assign table = "" | split: ',' %}
{% for n in (1..35) %}
   {% assign row =  "" | split: ',' %}
   {% for k in (1..n) %}
      {% assign row = row | push: 0 %}
   {% endfor %}
   {% assign table = table | push: row %}
{% endfor %}	

{{table}}

find max distance


{% for t in site.data.codes %}{% assign code = t.last %}
   {% assign d=table[code.n][code.k] %}
   {% if code.d > d %}
      {% assign table[code.n][code.k] = code.d %}
   {% endif %}
{% endfor %}

{{table}}

make short list
{% assign short = "" | split: ',' %}
{% assign n = 0 %}
{% assign k = 0 %}
{% assign d = 0 %}

{% for t in site.data.codes %}
   {% assign code = t.last %}
   {% if code.d == d and code.n == n and code.k == k %}
   {% elsif  code.d > 2 %}
<!---      {{ n }} , {{ k }} , {{ d }} . -->
      {% assign short = short | push: t %}
      {% assign n = code.n %}
      {% assign k = code.k %}
      {% assign d = code.d %}	   
   {% endif %}
{% endfor %}




## short list with unique [n,k,d]

|  n|  k|  d|Gx_row|Gz_row| d_x| dz | index|
|---|---|---|---|---|---|---|---| {% for t in short %}{% assign code = t.last %}
|{{ code.n }} | {{ code.k }} |{{ code.d }}|{{ code.Gx_row }}|{{ code.Gz_row }}|{{ code.dx }}| {{ code.dz }}| {{code.index}} {% endfor %}


# jinja2 index.html.tpl  site.yaml > index.html
j2 index.html.tpl site.yaml > index.html
git add .
git commit -a -m .
git push origin gh-pages
ssh cs181@login.fas.harvard.edu "cd public_html; git pull; chmod 755 *.html *.css"

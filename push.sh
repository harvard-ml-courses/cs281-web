jinja2 index.html.tpl  site.yaml > index.html
# j2 index.html.tpl site.yaml > index.html
git add .
git commit -a -m .
<<<<<<< HEAD
git push origin master
# ssh cs281@login.fas.harvard.edu "cd public_html; git pull; chmod 755 *.html *.css"
=======
git push origin gh-pages
# ssh cs281@login.fas.harvard.edu "cd public_html; git pull; chmod 755 *.html *.css"

>>>>>>> 3dde1e4547a55a90606c8669f986c81a55eb5ca9
# Mark needed to install these:
# - pip install pyyaml
# - pip install jinja2-cli

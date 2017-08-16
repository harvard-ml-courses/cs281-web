How to edit the website:
- add weekly contents to site.yaml  
- make other changes (to the top of the webpage) in index.html.tpl  
- do not make changes in index.html. It is generated from the 
yaml and tpl when jinja is run.  
- make sure that jinja is installed before using push.sh
Otherwise, you will push a blank website.

Mark needed to run the following to properly install jinja:  
- pip install pyyaml  
- pip install jinja2-cli

# import bibble
# from pybtex.database.input import bibtex

from yaml import load, Loader
# load entries yaml
data = load(open("site.yaml"), Loader=Loader)

from jinja2 import Environment, FileSystemLoader
env = Environment(loader=FileSystemLoader("."))
# bibble.add(env)
# with open('page.bib') as f:
#     bib_db = bibtex.Parser().parse_stream(f)
# for k, v in bib_db.entries.items():
#     v.fields['key'] = k
# bib_dict = {}
# for entry in bib_database.entries:
#     bib_dict[entry["ID"]] = entry

data["cites"] = []
for date, lecture in zip(data["dates"], data["lectures"]):
    lecture["date"] = date
    # if lecture["papers"]:
        # for paper in lecture["papers"]:
        #     data["cites"].append(bib_db.entries[paper])
            # print(data["cites"])

# data["cites"] = sorted(bib_db.entries.values())
# print(data["cites"])
# create and render template
template = env.get_template("index.html.tpl")
cv = template.render(entries=data)
with open("index.html", "w") as site:
    site.write(cv)

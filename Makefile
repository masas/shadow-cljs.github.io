# To build, install:
#   - Ruby
#   - Gems: asciidoctor, asciidoctor-diagram, and coderay
# then run `make`

book: docs/UsersGuide.html

docs/UsersGuide.html: docs/*.adoc
	bundle exec asciidoctor -o docs/UsersGuide.html -b html5 -r asciidoctor-diagram docs/UsersGuide.adoc

locales/ja.po: docs/*.adoc
	bundle exec asciidoctor -r asciidoctor-i18n -a language=ja -a po-directory=locales docs/UsersGuide.adoc

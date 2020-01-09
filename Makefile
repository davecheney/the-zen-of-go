OUTPUT = output

publish: $(OUTPUT)/index.html

$(OUTPUT)/index.html: the-zen-of-go.adoc style.css | $(OUTPUT)
	bundle exec \
		asciidoctor \
		--failure-level=WARN \
		-o $@ \
		$<

$(OUTPUT):
	install -d $@

clean:
	rm -rf $(OUTPUT)

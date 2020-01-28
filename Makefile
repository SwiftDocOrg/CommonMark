COMMONMARK_SPEC_VERSION=0.29

Tests/CommonMarkSpecTests: Resources/spec.json | Resources/spec
	@mkdir -p $@
	@for section in $(shell jq -c '.[].section' $< | uniq); do \
		filename=`echo "$${section}" | awk -f Resources/camelcase.awk`; \
		jq "map(select(.section == \"$${section}\"))" $< > "$|/$${filename}.json" ; \
		gyb --line-directive '' -o $@/$${filename}Tests.swift -D filename="$${filename}" Resources/CommonMarkSpecTests.swift.gyb; \
	done

Resources/spec:
	@mkdir -p Resources/spec

Resources/spec.json:
	@curl "https://spec.commonmark.org/${COMMONMARK_SPEC_VERSION}/spec.json" > $@

%.swift: %.swift.gyb
	@gyb --line-directive '' -o $@ $<

.PHONY:
clean:
	@rm -f Resources/spec.json
	@rm -rf Resources/spec
	@rm -rf Tests/CommonMarkSpecTests

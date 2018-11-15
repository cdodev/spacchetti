all: format generate validate

format:
	@find src/ -iname "*.dhall" -exec dhall format --inplace {} \;
	@echo formatted dhall files

generate: SHELL:=/bin/bash
generate:
	@dhall-to-json --pretty <<< "./src/packages.dhall" > packages.json
	@psc-package format
	@echo generated to packages.json

validate:
	@./scripts/validate.pl

setup: all setup-only

setup-only:
	@echo '{ "name": "test-package", "set": "testing", "source": "", "depends": [] }' > psc-package.json
	@mkdir -p .psc-package/testing/.set
	@cp packages.json .psc-package/testing/.set/packages.json
	@echo setup testing package set

psc-package2nix: setup
	@echo '{ "name": "test-package", "set": "testing", "source": "", "depends": ' > psc-package.json
	@jq 'keys' packages.json >> psc-package.json
	@echo '}' >> psc-package.json
	psc-package2nix
	nix-shell install-deps.nix --run "echo installation complete."

ci: setup-only
	psc-package verify

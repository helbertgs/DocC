documentation:
	@echo "Building documentation..."
	@sudo swift package --allow-writing-to-directory docs/ generate-documentation --target DocC --disable-indexing --transform-for-static-hosting --hosting-base-path DocC --output-path docs/
	@echo "Comminting..."
	@git add . && git commit -m "chore: update documentation" && git push 
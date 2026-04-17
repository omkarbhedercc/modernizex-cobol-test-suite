COBC = cobc
COBFLAGS = -x -free
BINDIR = bin

# Compile and run a single program
# Usage: make run PROG=programs/001-hello-world/hello.cbl
run:
	@mkdir -p $(BINDIR)
	$(COBC) $(COBFLAGS) -o $(BINDIR)/program $(PROG)
	@echo "--- Output ---"
	$(BINDIR)/program

# Compile only (validate syntax), no run
# Usage: make check PROG=programs/001-hello-world/hello.cbl
check:
	$(COBC) -fsyntax-only $(PROG)
	@echo "✅ Syntax OK: $(PROG)"

# Compile and check all .cbl files under programs/
check-all:
	@find programs -name "*.cbl" | sort | while read f; do \
		$(COBC) -fsyntax-only "$$f" && echo "✅ $$f" || echo "❌ $$f"; \
	done

# Run all .cbl files and capture output
run-all:
	@mkdir -p $(BINDIR)
	@find programs -name "*.cbl" | sort | while read f; do \
		echo ""; \
		echo "=== $$f ==="; \
		$(COBC) $(COBFLAGS) -o $(BINDIR)/program "$$f" && $(BINDIR)/program || echo "❌ compile failed"; \
	done

clean:
	rm -rf $(BINDIR)

.PHONY: run check check-all run-all clean

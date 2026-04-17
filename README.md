# modernizex-cobol-test-suite

COBOL programs written progressively from simple → complex, used to test and improve the [ModernizeX](https://github.com/omkarbhedercc/moderize-x) COBOL→Java migration engine.

## Prerequisites

```bash
brew install gnucobol   # macOS
# or
sudo apt-get install gnucobol  # Ubuntu/Debian
```

## Usage

```bash
# Compile and run a single program
make run PROG=programs/001-hello-world/hello.cbl

# Syntax check a single program
make check PROG=programs/001-hello-world/hello.cbl

# Syntax check ALL programs
make check-all

# Compile and run ALL programs
make run-all
```

## Structure

```
programs/
  001-hello-world/     # DISPLAY, STOP RUN
  002-arithmetic/      # COMPUTE, ADD, SUBTRACT
  003-conditionals/    # IF/ELSE, EVALUATE
  004-loops/           # PERFORM VARYING
  005-strings/         # STRING, UNSTRING
  006-data-structures/ # OCCURS, REDEFINES, 88-levels
  007-file-io/         # READ, WRITE, sequential files
  008-advanced/        # CALL, subroutines, SQL
results/
  001-hello-world/
    run-001.md         # migration result per engine version
```

## CI

GitHub Actions validates syntax on every push to `programs/`.

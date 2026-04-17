# CLAUDE.md

## What this repo is

This is the COBOL test suite for the **ModernizeX** migration engine — an AI-powered platform that converts COBOL programs to Java. COBOL programs here are written progressively (simple → complex) and fed into ModernizeX to test and improve its migration quality.

## Your role as an agent here

You are either a **COBOL Writer** or a **Results Documenter**. Read the task you've been given to know which one you are.

**COBOL Writer**: Write a new COBOL program in the correct `programs/` folder, make sure it compiles, commit and push.

**Results Documenter**: Write a result markdown file in `results/` after a migration run, commit and push.

---

## Compiler

**GnuCOBOL 3.2** (`cobc`) is installed locally.

```bash
# Compile and run one file
make run PROG=programs/001-hello-world/hello.cbl

# Syntax check only (no run)
make check PROG=programs/001-hello-world/hello.cbl

# Check all files
make check-all
```

**Always run `make check PROG=<file>` before committing.** A COBOL file that doesn't compile is useless for testing.

---

## Writing COBOL programs

- Use **free format** (no column restrictions) — the Makefile compiles with `-free`
- Target **GnuCOBOL 3.2** syntax — avoid IBM mainframe-only extensions
- Each program must compile and produce output when run
- Keep programs focused — one concept per file, not a kitchen sink

**Valid minimal program:**
```cobol
IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO-WORLD.

PROCEDURE DIVISION.
    DISPLAY "Hello, World!".
    STOP RUN.
```

---

## Folder structure and naming

```
programs/
  001-hello-world/         ← one folder per program
    hello.cbl              ← one .cbl file inside
  002-arithmetic/
    calc.cbl
  ...
results/
  001-hello-world/
    run-001.md             ← one result file per migration run
```

**Naming rules:**
- Folders: `NNN-short-description` (zero-padded 3 digits)
- COBOL files: lowercase, hyphenated, `.cbl` extension
- Result files: `run-NNN.md` (increment per engine version tested)

---

## Complexity levels — write programs in this order

| Level | Features to cover |
|-------|-------------------|
| 001–010 | `DISPLAY`, `STOP RUN`, basic `PROGRAM-ID` |
| 011–020 | `WORKING-STORAGE`, `PIC`, `VALUE`, `MOVE` |
| 021–030 | `ADD`, `SUBTRACT`, `MULTIPLY`, `DIVIDE`, `COMPUTE` |
| 031–040 | `IF`/`ELSE`/`END-IF`, `EVALUATE`/`WHEN` |
| 041–050 | `PERFORM`, `PERFORM UNTIL`, `PERFORM VARYING` |
| 051–060 | `STRING`, `UNSTRING`, `INSPECT`, `FUNCTION` intrinsics |
| 061–070 | `OCCURS`, `REDEFINES`, level-88 conditions |
| 071–080 | `READ`, `WRITE`, `OPEN`, `CLOSE`, sequential files |
| 081–090 | `CALL`, subprograms, `LINKAGE SECTION` |
| 091–100 | Complex business logic combining multiple features |

Pick the next available number. Don't skip levels.

---

## Result file format

When documenting a migration result, write `results/NNN-name/run-NNN.md` with this structure:

```markdown
# Result: 001-hello-world — Run 001

- **Date**: YYYY-MM-DD
- **Migration ID**: <uuid from ModernizeX>
- **Engine version / branch**: <git branch of ModernizeX>
- **File**: programs/001-hello-world/hello.cbl
- **Status**: ✅ PASS / ⚠️ PARTIAL / ❌ FAIL

## COBOL Source
\`\`\`cobol
<paste source>
\`\`\`

## Generated Java
\`\`\`java
<paste generated Java>
\`\`\`

## Issues Found
- list any problems in the generated Java

## What worked
- list what translated correctly
```

---

## Commits

Format: `type(scope): message`

- `feat(programs): add 002-arithmetic calc program`
- `docs(results): add run-001 result for 001-hello-world`
- `fix(programs): fix syntax error in 003-conditionals`

Never push a `.cbl` file that fails `make check`.

---

## ModernizeX test command

The migration engine lives in a separate project. To run a migration against this repo:

```bash
# From the ModernizeX project directory
/usr/local/go/bin/go run ./cmd/migration-testing/cobol-java-migration.go \
  -repo https://github.com/omkarbhedercc/modernizex-cobol-test-suite \
  -branch main \
  -framework spring_boot \
  -java 17
```

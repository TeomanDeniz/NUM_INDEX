# NUM_INDEX

This project provides implementations of the `NUM_INDEX` function in various programming languages.  
`NUM_INDEX(NUMBER, INDEX)` returns the digit at the specified index of a number, from left to right.

## Supported Languages

### C/C++
- **File**: [`C/NUM_INDEX.c`](https://github.com/TeomanDeniz/NUM_INDEX/blob/main/C/NUM_INDEX.c)
- **Build**: Use any C89+ compatible compiler.
- **Usage**: Call `NUM_INDEX(number, index)` as a function. Works with both K&R and ANSI C via `#ifdef KNR_STYLE`.

### JavaScript
- **File**: [`NUM_INDEX.js`](https://github.com/TeomanDeniz/NUM_INDEX/blob/main/NUM_INDEX.js)
- **Run**: Node.js or browser console.
- **Usage**: `NUM_INDEX(number, index)` returns the digit at the index.

### Lua
- **File**: [`NUM_INDEX.lua`](https://github.com/TeomanDeniz/NUM_INDEX/blob/main/NUM_INDEX.lua)
- **Run**: With any Lua interpreter.
- **Usage**: `NUM_INDEX(number, index)` where `index` starts from 1 (adjusted internally by subtracting 1).

### Pascal
- **File**: [`NUM_INDEX.pas`](https://github.com/TeomanDeniz/NUM_INDEX/blob/main/NUM_INDEX.pas)
- **Compile**: Use FreePascal or Turbo Pascal.
- **Usage**: `NUM_INDEX(number, index): Integer`. Call from `main` or other functions.

### BASIC
- **File**: [`NUM_INDEX.bas`](https://github.com/TeomanDeniz/NUM_INDEX/blob/main/NUM_INDEX.bas)
- **Run**: In QB64, FreeBASIC, or compatible interpreter.
- **Usage**: `NUM_INDEX(number, index)` returns the digit.

### COBOL
- **File**: [`NUM_INDEX.cbl`](https://github.com/TeomanDeniz/NUM_INDEX/blob/main/NUM_INDEX.cbl)
- **Compile**: With GnuCOBOL or similar.
- **Usage**: Set `NUM_INDEX_NUMBER` and `NUM_INDEX_INDEX`, then `PERFORM NUM_INDEX`.

## Return Behavior
- Returns `-1` if index is out of range.
- Supports negative input numbers (digit extraction still works as if positive).
- Index starts from leftmost digit as index `0`.

## Notes
- Lua internally adjusts `index = index - 1` to match 0-based logic.
- COBOL uses `EXIT.` to exit early and stores the result in `NUM_INDEX_RESULT`.
- Pascal version uses `Exit(value)` instead of `Result` for compatibility.

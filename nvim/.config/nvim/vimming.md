## Marks
m + CapitalLetter - set global mark
m + LowercaseLetter - set a local mark
' + Letter - go to mark

## Registers
" + number + p - paste from a register

## Search and replace
:s/foo/baz/gc
Replace `foo` with `baz` `g`lobally in the line, `c`onfirming every replace

For full file prefix with `%`:
:%s/foo/baz/gc

## Macro
qa - start recording into a
q - finish recroding
@a - play a

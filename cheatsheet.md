# Selection:
- `x` - whole line
- `xxd` - 2 lines, delete
- `v2wd` - visual, 2 words, delete
- `vwww` - visual, word, word, word
- `;` - cancel selection at the end
- `<alt> ;` - cancel selection at the begging
- `<mark><ret> s` - search in selection
- `J` - join selected lines 
- `(`, `)` - cycle primary selection
- `<alt> -` - remove primary selection
- `<alt> (`, `<alt> )` - cycle selection
- `<sel> S <regexp>` - regexp in selection, multiple cursors
- `<alt> ;` - reverse selection, reverse cursor
# Undo:
- `u` - undo
- `U` - redo
# Cursors (N):
- `C` - new cursor,  below
- `<alt> C` - new cursor, above
- `<select lines> <alt> s` - cursor after selection
- `<select> &` - align selection
# Search char:
- `f<char>` - search upto
- `t<char>` - search till
# Replace:
- `R` - replace selection with yanked text
- `>` - indent
- `<` - indent
- `<ctrl> a` - increment number under selection
- `<ctrl> x` - decrement number under selection
- `<sel> ~` - switch case
- `<sel> <tick>` - lowercase
- `<sel> <alt> <tick>` - uppercase

# Registers:
- `"<char>` - select register <char>
- `Q` - start/stop recoring macro in selected register
- `q` - run macro
- `<select><word> *v` - puts word in search, enters visual, next match: `n` | `N`
# Moving:
- `gw` - enter 2 char label mode, enter 2 characters to jump
- `mm` - match mode ( -> ) , [ -> ], etc
- `mi [` - select inside []
- `ma [` - select outside []
- `<sel> ms [` - wrap selection with []
- `md [` - delete [ outside
- `mr([` - replace () with ()

# Comments
- `<ctrl> c` - comment line
- `<sel> <ctrl> c` - comment selected lines

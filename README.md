# Basic usage

Before loading, proceed to movitz root directory
(for example ~/quicklisp/local-projects/movitz).

```lisp
(require 'movitz) ;; Or (ql:quickload ‘movitz)
(movitz:create-image)
(movitz:dump-image :path "foo.img")
```

finally
```
qemu-system-i386 -fda foo.img -boot a

```
Toplevel commands:
- :cls - clear screen
  Not working for now. Generates error:
  “Error: No applicable method for #<gf CLEAR-CONSOLE> with arguments (#<function TEXTMODE-CONSOLE>) of classes #’NIL”

- :bt - prints backtrace

- : decimal #xNUM
  converts hex NUM to decimal format

- :cpu-reset

- :z
  I don’t know what it does :)

- :more (form)

- :pop ()

- :trace (&reset args)

- :untrace (&rest function-names)

- :error ()

- :restart (&optional (r 0) &rest args)

- :package (package-name)
  Switch to package package-name

- :help

Functions summary:

- (report-cpu-frequency)

- (set-textmode mode), where supported modes is:
  +vga-state-80x25+
  +vga-state-80x50+
  +vga-state-40x25+
  +vga-state-40x50+
  +vga-state-90x30+
  +vga-state-90x60+

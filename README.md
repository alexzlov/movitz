# Basic usage

There seems to be a path issue. Before loading, proceed to movitz root directory
(for example ~/quicklisp/local-projects/movitz).

```lisp
(require 'movitz) ;; Or (ql:quickload ‘movitz)
(movitz:create-image)
(movitz:dump-image :path "foo.img")
```

finally
```
qemu -fda foo.img -boot a

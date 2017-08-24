### Install
```bash
$ sudo apt-get install clang
$ sudo apt-get install clang-X.Y-doc # X.Y is a specific version
```

### Misc

```bash
$ # Output as AST
$ clang -emit-ast -std=c++11 -I.. time.hpp -o /tmp/time.ast
```

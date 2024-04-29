# Hello World

Thanks to [this Zenn post](https://zenn.dev/yuhr/articles/c68862e7454ce2).


1. Transpile MLIR to LLVM IR
```shell
mlir-opt \
	--convert-arith-to-llvm \
	--convert-func-to-llvm \
	--convert-memref-to-llvm \
	--reconcile-unrealized-casts \
	hello.mlir | mlir-translate --mlir-to-llvmir > hello.ll
```

2. Interprete LLVM IR
```shell
lli hello.ll
```
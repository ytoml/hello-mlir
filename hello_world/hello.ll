; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@string = private constant [14 x i8] c"Hello, World!\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @puts(ptr)

define i64 @main() {
  call void @puts(ptr @string)
  ret i64 0
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

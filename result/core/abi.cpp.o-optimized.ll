; ModuleID = '/home/aaa/llvm-arduino-due/build/core/abi.cpp.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/abi.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

; Function Attrs: noinline noreturn nounwind optnone
define dso_local arm_aapcscc void @__cxa_pure_virtual() #0 !dbg !8 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*
  %ptr2 = alloca i8*
  %i = alloca i32
  br label %while.body, !dbg !12

while.body:                                       ; preds = %while.body, %entry
  br label %while.body, !dbg !12, !llvm.loop !13
}

; Function Attrs: noinline noreturn nounwind optnone
define dso_local arm_aapcscc void @__cxa_deleted_virtual() #0 !dbg !15 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*
  %ptr2 = alloca i8*
  %i = alloca i32
  br label %while.body, !dbg !16

while.body:                                       ; preds = %while.body, %entry
  br label %while.body, !dbg !16, !llvm.loop !17
}

attributes #0 = { noinline noreturn nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/abi.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!8 = distinct !DISubprogram(name: "__cxa_pure_virtual", scope: !9, file: !9, line: 24, type: !10, scopeLine: 24, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/abi.cpp", directory: "/home/aaa")
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocation(line: 27, column: 3, scope: !8)
!13 = distinct !{!13, !12, !14}
!14 = !DILocation(line: 28, column: 5, scope: !8)
!15 = distinct !DISubprogram(name: "__cxa_deleted_virtual", scope: !9, file: !9, line: 31, type: !10, scopeLine: 31, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DILocation(line: 34, column: 3, scope: !15)
!17 = distinct !{!17, !16, !18}
!18 = !DILocation(line: 35, column: 5, scope: !15)

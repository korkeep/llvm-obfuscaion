; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/hooks.c'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/hooks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

@yield = weak dso_local alias void (), void ()* @__empty
@sysTickHook = weak dso_local alias i32 (), i32 ()* @__false
@svcHook = weak dso_local alias void (), void ()* @__halt
@pendSVHook = weak dso_local alias void (), void ()* @__halt

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @__empty() #0 !dbg !8 {
entry:
  ret void, !dbg !12
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc i32 @__false() #0 !dbg !13 {
entry:
  ret i32 0, !dbg !17
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @__halt() #0 !dbg !18 {
entry:
  br label %while.body, !dbg !19

while.body:                                       ; preds = %entry, %while.body
  br label %while.body, !dbg !19, !llvm.loop !20
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/hooks.c", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!8 = distinct !DISubprogram(name: "__empty", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/hooks.c", directory: "/home/aaa")
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocation(line: 30, column: 1, scope: !8)
!13 = distinct !DISubprogram(name: "__false", scope: !9, file: !9, line: 39, type: !14, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{!16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocation(line: 41, column: 2, scope: !13)
!18 = distinct !DISubprogram(name: "__halt", scope: !9, file: !9, line: 52, type: !10, scopeLine: 52, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 54, column: 2, scope: !18)
!20 = distinct !{!20, !19, !21}
!21 = !DILocation(line: 55, column: 3, scope: !18)

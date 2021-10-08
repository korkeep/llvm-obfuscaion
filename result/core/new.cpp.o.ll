; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/new.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/new.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

; Function Attrs: nobuiltin noinline nounwind optnone
define dso_local arm_aapcscc noalias i8* @_Znwj(i32 %size) #0 !dbg !8 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* %size.addr, align 4, !dbg !18
  %call = call arm_aapcscc i8* @malloc(i32 %0) #3, !dbg !19
  ret i8* %call, !dbg !20
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local arm_aapcscc i8* @malloc(i32) #2

; Function Attrs: nobuiltin noinline nounwind optnone
define dso_local arm_aapcscc noalias i8* @_Znaj(i32 %size) #0 !dbg !21 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i32, i32* %size.addr, align 4, !dbg !24
  %call = call arm_aapcscc i8* @malloc(i32 %0) #3, !dbg !25
  ret i8* %call, !dbg !26
}

; Function Attrs: nobuiltin noinline nounwind optnone
define dso_local arm_aapcscc void @_ZdlPv(i8* %ptr) #0 !dbg !27 {
entry:
  %ptr.addr = alloca i8*, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !30, metadata !DIExpression()), !dbg !31
  %0 = load i8*, i8** %ptr.addr, align 4, !dbg !32
  call arm_aapcscc void @free(i8* %0) #3, !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nounwind
declare dso_local arm_aapcscc void @free(i8*) #2

; Function Attrs: nobuiltin noinline nounwind optnone
define dso_local arm_aapcscc void @_ZdaPv(i8* %ptr) #0 !dbg !35 {
entry:
  %ptr.addr = alloca i8*, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !36, metadata !DIExpression()), !dbg !37
  %0 = load i8*, i8** %ptr.addr, align 4, !dbg !38
  call arm_aapcscc void @free(i8* %0) #3, !dbg !39
  ret void, !dbg !40
}

attributes #0 = { nobuiltin noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/new.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!8 = distinct !DISubprogram(name: "operator new", linkageName: "_Znwj", scope: !9, file: !9, line: 21, type: !10, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/new.cpp", directory: "/home/aaa")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 46, baseType: !15)
!14 = !DIFile(filename: "JJS_Project1/src/build/lib/clang/10.0.1/include/stddef.h", directory: "/home/aaa")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DILocalVariable(name: "size", arg: 1, scope: !8, file: !9, line: 21, type: !13)
!17 = !DILocation(line: 21, column: 27, scope: !8)
!18 = !DILocation(line: 22, column: 17, scope: !8)
!19 = !DILocation(line: 22, column: 10, scope: !8)
!20 = !DILocation(line: 22, column: 3, scope: !8)
!21 = distinct !DISubprogram(name: "operator new[]", linkageName: "_Znaj", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DILocalVariable(name: "size", arg: 1, scope: !21, file: !9, line: 25, type: !13)
!23 = !DILocation(line: 25, column: 29, scope: !21)
!24 = !DILocation(line: 26, column: 17, scope: !21)
!25 = !DILocation(line: 26, column: 10, scope: !21)
!26 = !DILocation(line: 26, column: 3, scope: !21)
!27 = distinct !DISubprogram(name: "operator delete", linkageName: "_ZdlPv", scope: !9, file: !9, line: 29, type: !28, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !12}
!30 = !DILocalVariable(name: "ptr", arg: 1, scope: !27, file: !9, line: 29, type: !12)
!31 = !DILocation(line: 29, column: 29, scope: !27)
!32 = !DILocation(line: 30, column: 8, scope: !27)
!33 = !DILocation(line: 30, column: 3, scope: !27)
!34 = !DILocation(line: 31, column: 1, scope: !27)
!35 = distinct !DISubprogram(name: "operator delete[]", linkageName: "_ZdaPv", scope: !9, file: !9, line: 33, type: !28, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!36 = !DILocalVariable(name: "ptr", arg: 1, scope: !35, file: !9, line: 33, type: !12)
!37 = !DILocation(line: 33, column: 31, scope: !35)
!38 = !DILocation(line: 34, column: 8, scope: !35)
!39 = !DILocation(line: 34, column: 3, scope: !35)
!40 = !DILocation(line: 35, column: 1, scope: !35)

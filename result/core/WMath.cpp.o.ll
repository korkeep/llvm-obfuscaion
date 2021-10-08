; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WMath.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WMath.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_Z10randomSeedj(i32 %dwSeed) #0 !dbg !8 {
entry:
  %dwSeed.addr = alloca i32, align 4
  store i32 %dwSeed, i32* %dwSeed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwSeed.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %dwSeed.addr, align 4, !dbg !19
  %cmp = icmp ne i32 %0, 0, !dbg !21
  br i1 %cmp, label %if.then, label %if.end, !dbg !22

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dwSeed.addr, align 4, !dbg !23
  call arm_aapcscc void @srand(i32 %1), !dbg !25
  br label %if.end, !dbg !26

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local arm_aapcscc void @srand(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z6randoml(i32 %howbig) #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  %howbig.addr = alloca i32, align 4
  store i32 %howbig, i32* %howbig.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %howbig.addr, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load i32, i32* %howbig.addr, align 4, !dbg !34
  %cmp = icmp eq i32 %0, 0, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !38
  br label %return, !dbg !38

if.end:                                           ; preds = %entry
  %call = call arm_aapcscc i32 @rand(), !dbg !40
  %1 = load i32, i32* %howbig.addr, align 4, !dbg !41
  %rem = srem i32 %call, %1, !dbg !42
  store i32 %rem, i32* %retval, align 4, !dbg !43
  br label %return, !dbg !43

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !44
  ret i32 %2, !dbg !44
}

declare dso_local arm_aapcscc i32 @rand() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z6randomll(i32 %howsmall, i32 %howbig) #0 !dbg !45 {
entry:
  %retval = alloca i32, align 4
  %howsmall.addr = alloca i32, align 4
  %howbig.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  store i32 %howsmall, i32* %howsmall.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %howsmall.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 %howbig, i32* %howbig.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %howbig.addr, metadata !50, metadata !DIExpression()), !dbg !51
  %0 = load i32, i32* %howsmall.addr, align 4, !dbg !52
  %1 = load i32, i32* %howbig.addr, align 4, !dbg !54
  %cmp = icmp sge i32 %0, %1, !dbg !55
  br i1 %cmp, label %if.then, label %if.end, !dbg !56

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %howsmall.addr, align 4, !dbg !57
  store i32 %2, i32* %retval, align 4, !dbg !59
  br label %return, !dbg !59

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %diff, metadata !60, metadata !DIExpression()), !dbg !61
  %3 = load i32, i32* %howbig.addr, align 4, !dbg !62
  %4 = load i32, i32* %howsmall.addr, align 4, !dbg !63
  %sub = sub nsw i32 %3, %4, !dbg !64
  store i32 %sub, i32* %diff, align 4, !dbg !61
  %5 = load i32, i32* %diff, align 4, !dbg !65
  %call = call arm_aapcscc i32 @_Z6randoml(i32 %5), !dbg !66
  %6 = load i32, i32* %howsmall.addr, align 4, !dbg !67
  %add = add nsw i32 %call, %6, !dbg !68
  store i32 %add, i32* %retval, align 4, !dbg !69
  br label %return, !dbg !69

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !70
  ret i32 %7, !dbg !70
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z3maplllll(i32 %x, i32 %in_min, i32 %in_max, i32 %out_min, i32 %out_max) #0 !dbg !71 {
entry:
  %x.addr = alloca i32, align 4
  %in_min.addr = alloca i32, align 4
  %in_max.addr = alloca i32, align 4
  %out_min.addr = alloca i32, align 4
  %out_max.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 %in_min, i32* %in_min.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %in_min.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %in_max, i32* %in_max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %in_max.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 %out_min, i32* %out_min.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %out_min.addr, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 %out_max, i32* %out_max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %out_max.addr, metadata !82, metadata !DIExpression()), !dbg !83
  %0 = load i32, i32* %x.addr, align 4, !dbg !84
  %1 = load i32, i32* %in_min.addr, align 4, !dbg !85
  %sub = sub nsw i32 %0, %1, !dbg !86
  %2 = load i32, i32* %out_max.addr, align 4, !dbg !87
  %3 = load i32, i32* %out_min.addr, align 4, !dbg !88
  %sub1 = sub nsw i32 %2, %3, !dbg !89
  %mul = mul nsw i32 %sub, %sub1, !dbg !90
  %4 = load i32, i32* %in_max.addr, align 4, !dbg !91
  %5 = load i32, i32* %in_min.addr, align 4, !dbg !92
  %sub2 = sub nsw i32 %4, %5, !dbg !93
  %div = sdiv i32 %mul, %sub2, !dbg !94
  %6 = load i32, i32* %out_min.addr, align 4, !dbg !95
  %add = add nsw i32 %div, %6, !dbg !96
  ret i32 %add, !dbg !97
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i16 @_Z8makeWordt(i16 zeroext %w) #0 !dbg !98 {
entry:
  %w.addr = alloca i16, align 2
  store i16 %w, i16* %w.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %w.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i16, i16* %w.addr, align 2, !dbg !106
  ret i16 %0, !dbg !107
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i16 @_Z8makeWordhh(i8 zeroext %h, i8 zeroext %l) #0 !dbg !108 {
entry:
  %h.addr = alloca i8, align 1
  %l.addr = alloca i8, align 1
  store i8 %h, i8* %h.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %h.addr, metadata !114, metadata !DIExpression()), !dbg !115
  store i8 %l, i8* %l.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %l.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i8, i8* %h.addr, align 1, !dbg !118
  %conv = zext i8 %0 to i32, !dbg !118
  %shl = shl i32 %conv, 8, !dbg !119
  %1 = load i8, i8* %l.addr, align 1, !dbg !120
  %conv1 = zext i8 %1 to i32, !dbg !120
  %or = or i32 %shl, %conv1, !dbg !121
  %conv2 = trunc i32 %or to i16, !dbg !122
  ret i16 %conv2, !dbg !123
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WMath.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!8 = distinct !DISubprogram(name: "randomSeed", linkageName: "_Z10randomSeedj", scope: !9, file: !9, line: 25, type: !10, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WMath.cpp", directory: "/home/aaa")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 66, baseType: !14)
!13 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 56, baseType: !16)
!15 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DILocalVariable(name: "dwSeed", arg: 1, scope: !8, file: !9, line: 25, type: !12)
!18 = !DILocation(line: 25, column: 34, scope: !8)
!19 = !DILocation(line: 27, column: 8, scope: !20)
!20 = distinct !DILexicalBlock(scope: !8, file: !9, line: 27, column: 8)
!21 = !DILocation(line: 27, column: 15, scope: !20)
!22 = !DILocation(line: 27, column: 8, scope: !8)
!23 = !DILocation(line: 29, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !9, line: 28, column: 3)
!25 = !DILocation(line: 29, column: 5, scope: !24)
!26 = !DILocation(line: 30, column: 3, scope: !24)
!27 = !DILocation(line: 31, column: 1, scope: !8)
!28 = distinct !DISubprogram(name: "random", linkageName: "_Z6randoml", scope: !9, file: !9, line: 33, type: !29, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !31}
!31 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocalVariable(name: "howbig", arg: 1, scope: !28, file: !9, line: 33, type: !31)
!33 = !DILocation(line: 33, column: 26, scope: !28)
!34 = !DILocation(line: 35, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !9, line: 35, column: 8)
!36 = !DILocation(line: 35, column: 15, scope: !35)
!37 = !DILocation(line: 35, column: 8, scope: !28)
!38 = !DILocation(line: 37, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !9, line: 36, column: 3)
!40 = !DILocation(line: 40, column: 10, scope: !28)
!41 = !DILocation(line: 40, column: 19, scope: !28)
!42 = !DILocation(line: 40, column: 17, scope: !28)
!43 = !DILocation(line: 40, column: 3, scope: !28)
!44 = !DILocation(line: 41, column: 1, scope: !28)
!45 = distinct !DISubprogram(name: "random", linkageName: "_Z6randomll", scope: !9, file: !9, line: 43, type: !46, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{!31, !31, !31}
!48 = !DILocalVariable(name: "howsmall", arg: 1, scope: !45, file: !9, line: 43, type: !31)
!49 = !DILocation(line: 43, column: 26, scope: !45)
!50 = !DILocalVariable(name: "howbig", arg: 2, scope: !45, file: !9, line: 43, type: !31)
!51 = !DILocation(line: 43, column: 41, scope: !45)
!52 = !DILocation(line: 45, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !45, file: !9, line: 45, column: 7)
!54 = !DILocation(line: 45, column: 19, scope: !53)
!55 = !DILocation(line: 45, column: 16, scope: !53)
!56 = !DILocation(line: 45, column: 7, scope: !45)
!57 = !DILocation(line: 47, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !9, line: 46, column: 3)
!59 = !DILocation(line: 47, column: 5, scope: !58)
!60 = !DILocalVariable(name: "diff", scope: !45, file: !9, line: 50, type: !31)
!61 = !DILocation(line: 50, column: 8, scope: !45)
!62 = !DILocation(line: 50, column: 15, scope: !45)
!63 = !DILocation(line: 50, column: 24, scope: !45)
!64 = !DILocation(line: 50, column: 22, scope: !45)
!65 = !DILocation(line: 52, column: 17, scope: !45)
!66 = !DILocation(line: 52, column: 10, scope: !45)
!67 = !DILocation(line: 52, column: 25, scope: !45)
!68 = !DILocation(line: 52, column: 23, scope: !45)
!69 = !DILocation(line: 52, column: 3, scope: !45)
!70 = !DILocation(line: 53, column: 1, scope: !45)
!71 = distinct !DISubprogram(name: "map", linkageName: "_Z3maplllll", scope: !9, file: !9, line: 55, type: !72, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!72 = !DISubroutineType(types: !73)
!73 = !{!31, !31, !31, !31, !31, !31}
!74 = !DILocalVariable(name: "x", arg: 1, scope: !71, file: !9, line: 55, type: !31)
!75 = !DILocation(line: 55, column: 22, scope: !71)
!76 = !DILocalVariable(name: "in_min", arg: 2, scope: !71, file: !9, line: 55, type: !31)
!77 = !DILocation(line: 55, column: 30, scope: !71)
!78 = !DILocalVariable(name: "in_max", arg: 3, scope: !71, file: !9, line: 55, type: !31)
!79 = !DILocation(line: 55, column: 43, scope: !71)
!80 = !DILocalVariable(name: "out_min", arg: 4, scope: !71, file: !9, line: 55, type: !31)
!81 = !DILocation(line: 55, column: 56, scope: !71)
!82 = !DILocalVariable(name: "out_max", arg: 5, scope: !71, file: !9, line: 55, type: !31)
!83 = !DILocation(line: 55, column: 70, scope: !71)
!84 = !DILocation(line: 57, column: 11, scope: !71)
!85 = !DILocation(line: 57, column: 15, scope: !71)
!86 = !DILocation(line: 57, column: 13, scope: !71)
!87 = !DILocation(line: 57, column: 26, scope: !71)
!88 = !DILocation(line: 57, column: 36, scope: !71)
!89 = !DILocation(line: 57, column: 34, scope: !71)
!90 = !DILocation(line: 57, column: 23, scope: !71)
!91 = !DILocation(line: 57, column: 48, scope: !71)
!92 = !DILocation(line: 57, column: 57, scope: !71)
!93 = !DILocation(line: 57, column: 55, scope: !71)
!94 = !DILocation(line: 57, column: 45, scope: !71)
!95 = !DILocation(line: 57, column: 67, scope: !71)
!96 = !DILocation(line: 57, column: 65, scope: !71)
!97 = !DILocation(line: 57, column: 3, scope: !71)
!98 = distinct !DISubprogram(name: "makeWord", linkageName: "_Z8makeWordt", scope: !9, file: !9, line: 60, type: !99, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !101}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 54, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 38, baseType: !103)
!103 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!104 = !DILocalVariable(name: "w", arg: 1, scope: !98, file: !9, line: 60, type: !101)
!105 = !DILocation(line: 60, column: 36, scope: !98)
!106 = !DILocation(line: 62, column: 10, scope: !98)
!107 = !DILocation(line: 62, column: 3, scope: !98)
!108 = distinct !DISubprogram(name: "makeWord", linkageName: "_Z8makeWordhh", scope: !9, file: !9, line: 65, type: !109, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!109 = !DISubroutineType(types: !110)
!110 = !{!101, !111, !111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 42, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 28, baseType: !113)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !DILocalVariable(name: "h", arg: 1, scope: !108, file: !9, line: 65, type: !111)
!115 = !DILocation(line: 65, column: 35, scope: !108)
!116 = !DILocalVariable(name: "l", arg: 2, scope: !108, file: !9, line: 65, type: !111)
!117 = !DILocation(line: 65, column: 46, scope: !108)
!118 = !DILocation(line: 67, column: 11, scope: !108)
!119 = !DILocation(line: 67, column: 13, scope: !108)
!120 = !DILocation(line: 67, column: 21, scope: !108)
!121 = !DILocation(line: 67, column: 19, scope: !108)
!122 = !DILocation(line: 67, column: 10, scope: !108)
!123 = !DILocation(line: 67, column: 3, scope: !108)

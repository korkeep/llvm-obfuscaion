; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Reset.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Reset.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct.Efc = type { i32, i32, i32, i32 }
%struct.Rstc = type { i32, i32, i32 }

@_ZL5ticks = internal global i32 -1, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @banzai() #0 section ".ramfunc" !dbg !41 {
entry:
  %EEFC_FCMD_CGPB = alloca i32, align 4
  %EEFC_KEY = alloca i32, align 4
  %RSTC_KEY = alloca i32, align 4
  call void asm sideeffect "cpsid i", ""() #2, !dbg !44, !srcloc !48
  call void @llvm.dbg.declare(metadata i32* %EEFC_FCMD_CGPB, metadata !49, metadata !DIExpression()), !dbg !51
  store i32 12, i32* %EEFC_FCMD_CGPB, align 4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %EEFC_KEY, metadata !52, metadata !DIExpression()), !dbg !53
  store i32 90, i32* %EEFC_KEY, align 4, !dbg !53
  br label %while.cond, !dbg !54

while.cond:                                       ; preds = %while.body, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.Efc, %struct.Efc* inttoptr (i32 1074661888 to %struct.Efc*), i32 0, i32 2), align 4, !dbg !55
  %and = and i32 %0, 1, !dbg !56
  %cmp = icmp eq i32 %and, 0, !dbg !57
  br i1 %cmp, label %while.body, label %while.end, !dbg !54

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !54, !llvm.loop !58

while.end:                                        ; preds = %while.cond
  store volatile i32 1509949708, i32* getelementptr inbounds (%struct.Efc, %struct.Efc* inttoptr (i32 1074661888 to %struct.Efc*), i32 0, i32 1), align 4, !dbg !60
  br label %while.cond1, !dbg !61

while.cond1:                                      ; preds = %while.body4, %while.end
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.Efc, %struct.Efc* inttoptr (i32 1074661888 to %struct.Efc*), i32 0, i32 2), align 4, !dbg !62
  %and2 = and i32 %1, 1, !dbg !63
  %cmp3 = icmp eq i32 %and2, 0, !dbg !64
  br i1 %cmp3, label %while.body4, label %while.end5, !dbg !61

while.body4:                                      ; preds = %while.cond1
  br label %while.cond1, !dbg !61, !llvm.loop !65

while.end5:                                       ; preds = %while.cond1
  call void @llvm.dbg.declare(metadata i32* %RSTC_KEY, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 165, i32* %RSTC_KEY, align 4, !dbg !68
  store volatile i32 -1526726651, i32* getelementptr inbounds (%struct.Rstc, %struct.Rstc* inttoptr (i32 1074665984 to %struct.Rstc*), i32 0, i32 0), align 4, !dbg !69
  br label %while.body7, !dbg !70

while.body7:                                      ; preds = %while.end5, %while.body7
  br label %while.body7, !dbg !70, !llvm.loop !71
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @initiateReset(i32 %_ticks) #0 !dbg !73 {
entry:
  %_ticks.addr = alloca i32, align 4
  store i32 %_ticks, i32* %_ticks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_ticks.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i32, i32* %_ticks.addr, align 4, !dbg !78
  store i32 %0, i32* @_ZL5ticks, align 4, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @cancelReset() #0 !dbg !81 {
entry:
  store i32 -1, i32* @_ZL5ticks, align 4, !dbg !82
  ret void, !dbg !83
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @tickReset() #0 !dbg !84 {
entry:
  %0 = load i32, i32* @_ZL5ticks, align 4, !dbg !85
  %cmp = icmp eq i32 %0, -1, !dbg !87
  br i1 %cmp, label %if.then, label %if.end, !dbg !88

if.then:                                          ; preds = %entry
  br label %if.end3, !dbg !89

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @_ZL5ticks, align 4, !dbg !90
  %dec = add nsw i32 %1, -1, !dbg !90
  store i32 %dec, i32* @_ZL5ticks, align 4, !dbg !90
  %2 = load i32, i32* @_ZL5ticks, align 4, !dbg !91
  %cmp1 = icmp eq i32 %2, 0, !dbg !93
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !94

if.then2:                                         ; preds = %if.end
  call arm_aapcscc void @banzai(), !dbg !95
  br label %if.end3, !dbg !95

if.end3:                                          ; preds = %if.then, %if.then2, %if.end
  ret void, !dbg !96
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ticks", linkageName: "_ZL5ticks", scope: !2, file: !34, line: 53, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Reset.cpp", directory: "/home/aaa/llvm-arduino-due")
!4 = !{}
!5 = !{!6, !25}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "Efc", file: !8, line: 46, baseType: !9)
!8 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_efc.h", directory: "/home/aaa")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 41, size: 128, flags: DIFlagTypePassByValue, elements: !10, identifier: "_ZTS3Efc")
!10 = !{!11, !20, !22, !24}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "EEFC_FMR", scope: !9, file: !8, line: 42, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !13, line: 54, baseType: !14)
!13 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 66, baseType: !17)
!16 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !18, line: 56, baseType: !19)
!18 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "EEFC_FCR", scope: !9, file: !8, line: 43, baseType: !21, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !13, line: 53, baseType: !14)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "EEFC_FSR", scope: !9, file: !8, line: 44, baseType: !23, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !13, line: 51, baseType: !14)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "EEFC_FRR", scope: !9, file: !8, line: 45, baseType: !23, size: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rstc", file: !27, line: 45, baseType: !28)
!27 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_rstc.h", directory: "/home/aaa")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 41, size: 96, flags: DIFlagTypePassByValue, elements: !29, identifier: "_ZTS4Rstc")
!29 = !{!30, !31, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "RSTC_CR", scope: !28, file: !27, line: 42, baseType: !21, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "RSTC_SR", scope: !28, file: !27, line: 43, baseType: !23, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "RSTC_MR", scope: !28, file: !27, line: 44, baseType: !12, size: 32, offset: 64)
!33 = !{!0}
!34 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Reset.cpp", directory: "/home/aaa")
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{i32 7, !"Dwarf Version", i32 4}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 1, !"min_enum_size", i32 1}
!40 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!41 = distinct !DISubprogram(name: "banzai", scope: !34, file: !34, line: 27, type: !42, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!42 = !DISubroutineType(types: !43)
!43 = !{null}
!44 = !DILocation(line: 321, column: 3, scope: !45, inlinedAt: !47)
!45 = distinct !DISubprogram(name: "__disable_irq", linkageName: "_ZL13__disable_irqv", scope: !46, file: !46, line: 319, type: !42, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!46 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cmFunc.h", directory: "/home/aaa")
!47 = distinct !DILocation(line: 29, column: 2, scope: !41)
!48 = !{i32 366770}
!49 = !DILocalVariable(name: "EEFC_FCMD_CGPB", scope: !41, file: !34, line: 32, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!51 = !DILocation(line: 32, column: 12, scope: !41)
!52 = !DILocalVariable(name: "EEFC_KEY", scope: !41, file: !34, line: 33, type: !50)
!53 = !DILocation(line: 33, column: 12, scope: !41)
!54 = !DILocation(line: 34, column: 2, scope: !41)
!55 = !DILocation(line: 34, column: 16, scope: !41)
!56 = !DILocation(line: 34, column: 25, scope: !41)
!57 = !DILocation(line: 34, column: 42, scope: !41)
!58 = distinct !{!58, !54, !59}
!59 = !DILocation(line: 34, column: 47, scope: !41)
!60 = !DILocation(line: 35, column: 17, scope: !41)
!61 = !DILocation(line: 39, column: 2, scope: !41)
!62 = !DILocation(line: 39, column: 16, scope: !41)
!63 = !DILocation(line: 39, column: 25, scope: !41)
!64 = !DILocation(line: 39, column: 42, scope: !41)
!65 = distinct !{!65, !61, !66}
!66 = !DILocation(line: 39, column: 47, scope: !41)
!67 = !DILocalVariable(name: "RSTC_KEY", scope: !41, file: !34, line: 44, type: !50)
!68 = !DILocation(line: 44, column: 12, scope: !41)
!69 = !DILocation(line: 45, column: 16, scope: !41)
!70 = !DILocation(line: 50, column: 2, scope: !41)
!71 = distinct !{!71, !70, !72}
!72 = !DILocation(line: 50, column: 14, scope: !41)
!73 = distinct !DISubprogram(name: "initiateReset", scope: !34, file: !34, line: 55, type: !74, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !35}
!76 = !DILocalVariable(name: "_ticks", arg: 1, scope: !73, file: !34, line: 55, type: !35)
!77 = !DILocation(line: 55, column: 24, scope: !73)
!78 = !DILocation(line: 56, column: 10, scope: !73)
!79 = !DILocation(line: 56, column: 8, scope: !73)
!80 = !DILocation(line: 57, column: 1, scope: !73)
!81 = distinct !DISubprogram(name: "cancelReset", scope: !34, file: !34, line: 59, type: !42, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!82 = !DILocation(line: 60, column: 8, scope: !81)
!83 = !DILocation(line: 61, column: 1, scope: !81)
!84 = distinct !DISubprogram(name: "tickReset", scope: !34, file: !34, line: 63, type: !42, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!85 = !DILocation(line: 64, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !84, file: !34, line: 64, column: 6)
!87 = !DILocation(line: 64, column: 12, scope: !86)
!88 = !DILocation(line: 64, column: 6, scope: !84)
!89 = !DILocation(line: 65, column: 3, scope: !86)
!90 = !DILocation(line: 66, column: 7, scope: !84)
!91 = !DILocation(line: 67, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !84, file: !34, line: 67, column: 6)
!93 = !DILocation(line: 67, column: 12, scope: !92)
!94 = !DILocation(line: 67, column: 6, scope: !84)
!95 = !DILocation(line: 68, column: 3, scope: !92)
!96 = !DILocation(line: 69, column: 1, scope: !84)

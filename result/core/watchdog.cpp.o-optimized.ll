; ModuleID = '/home/aaa/llvm-arduino-due/build/core/watchdog.cpp.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/watchdog.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct.Wdt = type { i32, i32, i32 }

@_Z13watchdogSetupv = weak dso_local alias void (), void ()* @_watchdogDefaultSetup

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_Z14watchdogEnablej(i32 %timeout) #0 !dbg !13 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i32, i32* %timeout.addr, align 4, !dbg !24
  %mul = mul i32 %0, 256, !dbg !25
  %div = udiv i32 %mul, 1000, !dbg !26
  store i32 %div, i32* %timeout.addr, align 4, !dbg !27
  %1 = load i32, i32* %timeout.addr, align 4, !dbg !28
  %cmp = icmp eq i32 %1, 0, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %entry
  store i32 1, i32* %timeout.addr, align 4, !dbg !32
  br label %if.end3, !dbg !33

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %timeout.addr, align 4, !dbg !34
  %cmp1 = icmp ugt i32 %2, 4095, !dbg !36
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !37

if.then2:                                         ; preds = %if.else
  store i32 4095, i32* %timeout.addr, align 4, !dbg !38
  br label %if.end, !dbg !39

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %3 = load i32, i32* %timeout.addr, align 4, !dbg !40
  %shl = shl i32 %3, 0, !dbg !40
  %and = and i32 4095, %shl, !dbg !40
  %or = or i32 8192, %and, !dbg !41
  %4 = load i32, i32* %timeout.addr, align 4, !dbg !42
  %shl4 = shl i32 %4, 16, !dbg !42
  %and5 = and i32 268369920, %shl4, !dbg !42
  %or6 = or i32 %or, %and5, !dbg !43
  store i32 %or6, i32* %timeout.addr, align 4, !dbg !44
  %5 = load i32, i32* %timeout.addr, align 4, !dbg !45
  call arm_aapcscc void @WDT_Enable(%struct.Wdt* inttoptr (i32 1074666064 to %struct.Wdt*), i32 %5), !dbg !46
  br label %dec_start

dec_start:                                        ; preds = %if.end3
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z14watchdogEnablej, %if.end3.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %7 = load i32, i32* %i, align 4
  %8 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i32 %7
  %9 = load i8, i8* %arrayidx1, align 1
  %10 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  store i8 %9, i8* %arrayidx2, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %12 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %13 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %14 = load i32, i32* %i, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %16 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %17 = phi i8* [ %16, %dec_end ]
  indirectbr i8* %16, [label %if.end3.RetBlock]

if.end3.RetBlock:                                 ; preds = %dec_jmp
  ret void, !dbg !47
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local arm_aapcscc void @WDT_Enable(%struct.Wdt*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_Z15watchdogDisablev() #0 !dbg !48 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  call arm_aapcscc void @WDT_Disable(%struct.Wdt* inttoptr (i32 1074666064 to %struct.Wdt*)), !dbg !51
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z15watchdogDisablev, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %1 = load i32, i32* %i, align 4
  %2 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i32 %1
  %3 = load i8, i8* %arrayidx1, align 1
  %4 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %4
  store i8 %3, i8* %arrayidx2, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %7 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %8 = load i32, i32* %i, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %10 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %11 = phi i8* [ %10, %dec_end ]
  indirectbr i8* %10, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret void, !dbg !52
}

declare dso_local arm_aapcscc void @WDT_Disable(%struct.Wdt*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_Z13watchdogResetv() #0 !dbg !53 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  call arm_aapcscc void @WDT_Restart(%struct.Wdt* inttoptr (i32 1074666064 to %struct.Wdt*)), !dbg !54
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z13watchdogResetv, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %1 = load i32, i32* %i, align 4
  %2 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i32 %1
  %3 = load i8, i8* %arrayidx1, align 1
  %4 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %4
  store i8 %3, i8* %arrayidx2, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %7 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %8 = load i32, i32* %i, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %10 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %11 = phi i8* [ %10, %dec_end ]
  indirectbr i8* %10, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret void, !dbg !55
}

declare dso_local arm_aapcscc void @WDT_Restart(%struct.Wdt*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_watchdogDefaultSetup() #0 !dbg !56 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  call arm_aapcscc void @WDT_Disable(%struct.Wdt* inttoptr (i32 1074666064 to %struct.Wdt*)), !dbg !57
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_watchdogDefaultSetup, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %1 = load i32, i32* %i, align 4
  %2 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i32 %1
  %3 = load i8, i8* %arrayidx1, align 1
  %4 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %4
  store i8 %3, i8* %arrayidx2, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %7 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %8 = load i32, i32* %i, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %10 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %11 = phi i8* [ %10, %dec_end ]
  indirectbr i8* %10, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret void, !dbg !58
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/watchdog.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "Wdt", file: !6, line: 45, baseType: !7)
!6 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_wdt.h", directory: "/home/aaa")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 41, flags: DIFlagFwdDecl, identifier: "_ZTS3Wdt")
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 1, !"min_enum_size", i32 1}
!12 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!13 = distinct !DISubprogram(name: "watchdogEnable", linkageName: "_Z14watchdogEnablej", scope: !14, file: !14, line: 24, type: !15, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/watchdog.cpp", directory: "/home/aaa")
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 66, baseType: !19)
!18 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 56, baseType: !21)
!20 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "timeout", arg: 1, scope: !13, file: !14, line: 24, type: !17)
!23 = !DILocation(line: 24, column: 31, scope: !13)
!24 = !DILocation(line: 28, column: 12, scope: !13)
!25 = !DILocation(line: 28, column: 20, scope: !13)
!26 = !DILocation(line: 28, column: 26, scope: !13)
!27 = !DILocation(line: 28, column: 10, scope: !13)
!28 = !DILocation(line: 29, column: 6, scope: !29)
!29 = distinct !DILexicalBlock(scope: !13, file: !14, line: 29, column: 6)
!30 = !DILocation(line: 29, column: 14, scope: !29)
!31 = !DILocation(line: 29, column: 6, scope: !13)
!32 = !DILocation(line: 30, column: 11, scope: !29)
!33 = !DILocation(line: 30, column: 3, scope: !29)
!34 = !DILocation(line: 31, column: 11, scope: !35)
!35 = distinct !DILexicalBlock(scope: !29, file: !14, line: 31, column: 11)
!36 = !DILocation(line: 31, column: 19, scope: !35)
!37 = !DILocation(line: 31, column: 11, scope: !29)
!38 = !DILocation(line: 32, column: 11, scope: !35)
!39 = !DILocation(line: 32, column: 3, scope: !35)
!40 = !DILocation(line: 33, column: 29, scope: !13)
!41 = !DILocation(line: 33, column: 27, scope: !13)
!42 = !DILocation(line: 33, column: 51, scope: !13)
!43 = !DILocation(line: 33, column: 49, scope: !13)
!44 = !DILocation(line: 33, column: 10, scope: !13)
!45 = !DILocation(line: 34, column: 19, scope: !13)
!46 = !DILocation(line: 34, column: 2, scope: !13)
!47 = !DILocation(line: 35, column: 1, scope: !13)
!48 = distinct !DISubprogram(name: "watchdogDisable", linkageName: "_Z15watchdogDisablev", scope: !14, file: !14, line: 37, type: !49, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{null}
!51 = !DILocation(line: 39, column: 2, scope: !48)
!52 = !DILocation(line: 40, column: 1, scope: !48)
!53 = distinct !DISubprogram(name: "watchdogReset", linkageName: "_Z13watchdogResetv", scope: !14, file: !14, line: 42, type: !49, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!54 = !DILocation(line: 44, column: 2, scope: !53)
!55 = !DILocation(line: 45, column: 1, scope: !53)
!56 = distinct !DISubprogram(name: "_watchdogDefaultSetup", scope: !14, file: !14, line: 49, type: !49, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DILocation(line: 51, column: 2, scope: !56)
!58 = !DILocation(line: 52, column: 1, scope: !56)

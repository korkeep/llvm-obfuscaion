; ModuleID = '/home/aaa/llvm-arduino-due/build/core/wiring_shift.c.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_shift.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @shiftIn(i32 %ulDataPin, i32 %ulClockPin, i32 %ulBitOrder) #0 !dbg !14 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i1 = alloca i32, align 4
  %ulDataPin.addr = alloca i32, align 4
  %ulClockPin.addr = alloca i32, align 4
  %ulBitOrder.addr = alloca i32, align 4
  %value = alloca i8, align 1
  %i = alloca i8, align 1
  store i32 %ulDataPin, i32* %ulDataPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulDataPin.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 %ulClockPin, i32* %ulClockPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulClockPin.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %ulBitOrder, i32* %ulBitOrder.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulBitOrder.addr, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8* %value, metadata !30, metadata !DIExpression()), !dbg !33
  store i8 0, i8* %value, align 1, !dbg !33
  call void @llvm.dbg.declare(metadata i8* %i, metadata !34, metadata !DIExpression()), !dbg !35
  store i8 0, i8* %i, align 1, !dbg !36
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1, !dbg !39
  %conv = zext i8 %0 to i32, !dbg !39
  %cmp = icmp slt i32 %conv, 8, !dbg !41
  br i1 %cmp, label %for.body, label %for.end, !dbg !42

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ulClockPin.addr, align 4, !dbg !43
  call arm_aapcscc void @digitalWrite(i32 %1, i32 1), !dbg !45
  %2 = load i32, i32* %ulBitOrder.addr, align 4, !dbg !46
  %cmp2 = icmp eq i32 %2, 0, !dbg !48
  br i1 %cmp2, label %if.then, label %if.else, !dbg !49

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %ulDataPin.addr, align 4, !dbg !50
  %call = call arm_aapcscc i32 @digitalRead(i32 %3), !dbg !52
  %4 = load i8, i8* %i, align 1, !dbg !53
  %conv4 = zext i8 %4 to i32, !dbg !53
  %shl = shl i32 %call, %conv4, !dbg !54
  %5 = load i8, i8* %value, align 1, !dbg !55
  %conv5 = zext i8 %5 to i32, !dbg !55
  %or = or i32 %conv5, %shl, !dbg !55
  %conv6 = trunc i32 %or to i8, !dbg !55
  store i8 %conv6, i8* %value, align 1, !dbg !55
  br label %if.end, !dbg !56

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %ulDataPin.addr, align 4, !dbg !57
  %call7 = call arm_aapcscc i32 @digitalRead(i32 %6), !dbg !59
  %7 = load i8, i8* %i, align 1, !dbg !60
  %conv8 = zext i8 %7 to i32, !dbg !60
  %sub = sub nsw i32 7, %conv8, !dbg !61
  %shl9 = shl i32 %call7, %sub, !dbg !62
  %8 = load i8, i8* %value, align 1, !dbg !63
  %conv10 = zext i8 %8 to i32, !dbg !63
  %or11 = or i32 %conv10, %shl9, !dbg !63
  %conv12 = trunc i32 %or11 to i8, !dbg !63
  store i8 %conv12, i8* %value, align 1, !dbg !63
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %ulClockPin.addr, align 4, !dbg !64
  call arm_aapcscc void @digitalWrite(i32 %9, i32 0), !dbg !65
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %if.end
  %10 = load i8, i8* %i, align 1, !dbg !67
  %inc = add i8 %10, 1, !dbg !67
  store i8 %inc, i8* %i, align 1, !dbg !67
  br label %for.cond, !dbg !68, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  %11 = load i8, i8* %value, align 1, !dbg !71
  %conv13 = zext i8 %11 to i32, !dbg !71
  br label %dec_start

dec_start:                                        ; preds = %for.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@shiftIn, %for.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i1, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %12 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %12, 12
  br i1 %cmp3, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %13 = load i32, i32* %i1, align 4
  %14 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %14, i32 %13
  %15 = load i8, i8* %arrayidx1, align 1
  %16 = load i32, i32* %i1, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %16
  store i8 %15, i8* %arrayidx2, align 1
  %17 = load i32, i32* %i1, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  %18 = load i8, i8* %arrayidx3, align 1
  %conv7 = zext i8 %18 to i32
  %xor = xor i32 %conv7, 133
  %conv48 = trunc i32 %xor to i8
  %19 = load i32, i32* %i1, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %19
  store i8 %conv48, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %20 = load i32, i32* %i1, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %i1, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %22 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %23 = phi i8* [ %22, %dec_end ]
  indirectbr i8* %22, [label %for.end.RetBlock]

for.end.RetBlock:                                 ; preds = %dec_jmp
  ret i32 %conv13, !dbg !72
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local arm_aapcscc void @digitalWrite(i32, i32) #2

declare dso_local arm_aapcscc i32 @digitalRead(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @shiftOut(i32 %ulDataPin, i32 %ulClockPin, i32 %ulBitOrder, i32 %ulVal) #0 !dbg !73 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i1 = alloca i32, align 4
  %ulDataPin.addr = alloca i32, align 4
  %ulClockPin.addr = alloca i32, align 4
  %ulBitOrder.addr = alloca i32, align 4
  %ulVal.addr = alloca i32, align 4
  %i = alloca i8, align 1
  store i32 %ulDataPin, i32* %ulDataPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulDataPin.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %ulClockPin, i32* %ulClockPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulClockPin.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 %ulBitOrder, i32* %ulBitOrder.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulBitOrder.addr, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 %ulVal, i32* %ulVal.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulVal.addr, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i8* %i, metadata !84, metadata !DIExpression()), !dbg !85
  store i8 0, i8* %i, align 1, !dbg !86
  br label %for.cond, !dbg !88

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1, !dbg !89
  %conv = zext i8 %0 to i32, !dbg !89
  %cmp = icmp slt i32 %conv, 8, !dbg !91
  br i1 %cmp, label %for.body, label %for.end, !dbg !92

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ulBitOrder.addr, align 4, !dbg !93
  %cmp2 = icmp eq i32 %1, 0, !dbg !96
  br i1 %cmp2, label %if.then, label %if.else, !dbg !97

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %ulDataPin.addr, align 4, !dbg !98
  %3 = load i32, i32* %ulVal.addr, align 4, !dbg !100
  %4 = load i8, i8* %i, align 1, !dbg !101
  %conv4 = zext i8 %4 to i32, !dbg !101
  %shl = shl i32 1, %conv4, !dbg !102
  %and = and i32 %3, %shl, !dbg !103
  %tobool = icmp ne i32 %and, 0, !dbg !104
  %lnot = xor i1 %tobool, true, !dbg !104
  %lnot5 = xor i1 %lnot, true, !dbg !105
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !105
  call arm_aapcscc void @digitalWrite(i32 %2, i32 %lnot.ext), !dbg !106
  br label %if.end, !dbg !107

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %ulDataPin.addr, align 4, !dbg !108
  %6 = load i32, i32* %ulVal.addr, align 4, !dbg !110
  %7 = load i8, i8* %i, align 1, !dbg !111
  %conv6 = zext i8 %7 to i32, !dbg !111
  %sub = sub nsw i32 7, %conv6, !dbg !112
  %shl7 = shl i32 1, %sub, !dbg !113
  %and8 = and i32 %6, %shl7, !dbg !114
  %tobool9 = icmp ne i32 %and8, 0, !dbg !115
  %lnot10 = xor i1 %tobool9, true, !dbg !115
  %lnot12 = xor i1 %lnot10, true, !dbg !116
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !116
  call arm_aapcscc void @digitalWrite(i32 %5, i32 %lnot.ext13), !dbg !117
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %ulClockPin.addr, align 4, !dbg !118
  call arm_aapcscc void @digitalWrite(i32 %8, i32 1), !dbg !119
  %9 = load i32, i32* %ulClockPin.addr, align 4, !dbg !120
  call arm_aapcscc void @digitalWrite(i32 %9, i32 0), !dbg !121
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %if.end
  %10 = load i8, i8* %i, align 1, !dbg !123
  %inc = add i8 %10, 1, !dbg !123
  store i8 %inc, i8* %i, align 1, !dbg !123
  br label %for.cond, !dbg !124, !llvm.loop !125

for.end:                                          ; preds = %for.cond
  br label %dec_start

dec_start:                                        ; preds = %for.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@shiftOut, %for.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i1, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %11 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %11, 12
  br i1 %cmp3, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %12 = load i32, i32* %i1, align 4
  %13 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %13, i32 %12
  %14 = load i8, i8* %arrayidx1, align 1
  %15 = load i32, i32* %i1, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  store i8 %14, i8* %arrayidx2, align 1
  %16 = load i32, i32* %i1, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %16
  %17 = load i8, i8* %arrayidx3, align 1
  %conv5 = zext i8 %17 to i32
  %xor = xor i32 %conv5, 133
  %conv46 = trunc i32 %xor to i8
  %18 = load i32, i32* %i1, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %18
  store i8 %conv46, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %19 = load i32, i32* %i1, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %i1, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %21 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %22 = phi i8* [ %21, %dec_end ]
  indirectbr i8* %21, [label %for.end.RetBlock]

for.end.RetBlock:                                 ; preds = %dec_jmp
  ret void, !dbg !127
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_shift.c", directory: "/home/aaa/llvm-arduino-due")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "BitOrder", file: !4, line: 46, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_constants.h", directory: "/home/aaa")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "LSBFIRST", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MSBFIRST", value: 1, isUnsigned: true)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 1, !"min_enum_size", i32 1}
!13 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!14 = distinct !DISubprogram(name: "shiftIn", scope: !15, file: !15, line: 25, type: !16, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!15 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_shift.c", directory: "/home/aaa")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !18, !18}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 66, baseType: !20)
!19 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 56, baseType: !22)
!21 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{}
!24 = !DILocalVariable(name: "ulDataPin", arg: 1, scope: !14, file: !15, line: 25, type: !18)
!25 = !DILocation(line: 25, column: 28, scope: !14)
!26 = !DILocalVariable(name: "ulClockPin", arg: 2, scope: !14, file: !15, line: 25, type: !18)
!27 = !DILocation(line: 25, column: 48, scope: !14)
!28 = !DILocalVariable(name: "ulBitOrder", arg: 3, scope: !14, file: !15, line: 25, type: !18)
!29 = !DILocation(line: 25, column: 69, scope: !14)
!30 = !DILocalVariable(name: "value", scope: !14, file: !15, line: 27, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 42, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !21, line: 28, baseType: !5)
!33 = !DILocation(line: 27, column: 10, scope: !14)
!34 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 28, type: !31)
!35 = !DILocation(line: 28, column: 10, scope: !14)
!36 = !DILocation(line: 30, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !14, file: !15, line: 30, column: 2)
!38 = !DILocation(line: 30, column: 8, scope: !37)
!39 = !DILocation(line: 30, column: 14, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !15, line: 30, column: 2)
!41 = !DILocation(line: 30, column: 16, scope: !40)
!42 = !DILocation(line: 30, column: 2, scope: !37)
!43 = !DILocation(line: 32, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !15, line: 31, column: 5)
!45 = !DILocation(line: 32, column: 3, scope: !44)
!46 = !DILocation(line: 34, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !15, line: 34, column: 8)
!48 = !DILocation(line: 34, column: 19, scope: !47)
!49 = !DILocation(line: 34, column: 8, scope: !44)
!50 = !DILocation(line: 36, column: 26, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !15, line: 35, column: 9)
!52 = !DILocation(line: 36, column: 13, scope: !51)
!53 = !DILocation(line: 36, column: 41, scope: !51)
!54 = !DILocation(line: 36, column: 38, scope: !51)
!55 = !DILocation(line: 36, column: 10, scope: !51)
!56 = !DILocation(line: 37, column: 9, scope: !51)
!57 = !DILocation(line: 40, column: 26, scope: !58)
!58 = distinct !DILexicalBlock(scope: !47, file: !15, line: 39, column: 9)
!59 = !DILocation(line: 40, column: 13, scope: !58)
!60 = !DILocation(line: 40, column: 46, scope: !58)
!61 = !DILocation(line: 40, column: 44, scope: !58)
!62 = !DILocation(line: 40, column: 38, scope: !58)
!63 = !DILocation(line: 40, column: 10, scope: !58)
!64 = !DILocation(line: 43, column: 17, scope: !44)
!65 = !DILocation(line: 43, column: 3, scope: !44)
!66 = !DILocation(line: 44, column: 2, scope: !44)
!67 = !DILocation(line: 30, column: 22, scope: !40)
!68 = !DILocation(line: 30, column: 2, scope: !40)
!69 = distinct !{!69, !42, !70}
!70 = !DILocation(line: 44, column: 2, scope: !37)
!71 = !DILocation(line: 46, column: 9, scope: !14)
!72 = !DILocation(line: 46, column: 2, scope: !14)
!73 = distinct !DISubprogram(name: "shiftOut", scope: !15, file: !15, line: 49, type: !74, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !18, !18, !18, !18}
!76 = !DILocalVariable(name: "ulDataPin", arg: 1, scope: !73, file: !15, line: 49, type: !18)
!77 = !DILocation(line: 49, column: 25, scope: !73)
!78 = !DILocalVariable(name: "ulClockPin", arg: 2, scope: !73, file: !15, line: 49, type: !18)
!79 = !DILocation(line: 49, column: 45, scope: !73)
!80 = !DILocalVariable(name: "ulBitOrder", arg: 3, scope: !73, file: !15, line: 49, type: !18)
!81 = !DILocation(line: 49, column: 66, scope: !73)
!82 = !DILocalVariable(name: "ulVal", arg: 4, scope: !73, file: !15, line: 49, type: !18)
!83 = !DILocation(line: 49, column: 87, scope: !73)
!84 = !DILocalVariable(name: "i", scope: !73, file: !15, line: 51, type: !31)
!85 = !DILocation(line: 51, column: 10, scope: !73)
!86 = !DILocation(line: 53, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !73, file: !15, line: 53, column: 2)
!88 = !DILocation(line: 53, column: 8, scope: !87)
!89 = !DILocation(line: 53, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !15, line: 53, column: 2)
!91 = !DILocation(line: 53, column: 16, scope: !90)
!92 = !DILocation(line: 53, column: 2, scope: !87)
!93 = !DILocation(line: 55, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !15, line: 55, column: 8)
!95 = distinct !DILexicalBlock(scope: !90, file: !15, line: 54, column: 5)
!96 = !DILocation(line: 55, column: 19, scope: !94)
!97 = !DILocation(line: 55, column: 8, scope: !95)
!98 = !DILocation(line: 57, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !15, line: 56, column: 9)
!100 = !DILocation(line: 57, column: 32, scope: !99)
!101 = !DILocation(line: 57, column: 46, scope: !99)
!102 = !DILocation(line: 57, column: 43, scope: !99)
!103 = !DILocation(line: 57, column: 38, scope: !99)
!104 = !DILocation(line: 57, column: 30, scope: !99)
!105 = !DILocation(line: 57, column: 29, scope: !99)
!106 = !DILocation(line: 57, column: 4, scope: !99)
!107 = !DILocation(line: 58, column: 9, scope: !99)
!108 = !DILocation(line: 61, column: 18, scope: !109)
!109 = distinct !DILexicalBlock(scope: !94, file: !15, line: 60, column: 9)
!110 = !DILocation(line: 61, column: 32, scope: !109)
!111 = !DILocation(line: 61, column: 51, scope: !109)
!112 = !DILocation(line: 61, column: 49, scope: !109)
!113 = !DILocation(line: 61, column: 43, scope: !109)
!114 = !DILocation(line: 61, column: 38, scope: !109)
!115 = !DILocation(line: 61, column: 30, scope: !109)
!116 = !DILocation(line: 61, column: 29, scope: !109)
!117 = !DILocation(line: 61, column: 4, scope: !109)
!118 = !DILocation(line: 64, column: 17, scope: !95)
!119 = !DILocation(line: 64, column: 3, scope: !95)
!120 = !DILocation(line: 65, column: 17, scope: !95)
!121 = !DILocation(line: 65, column: 3, scope: !95)
!122 = !DILocation(line: 66, column: 2, scope: !95)
!123 = !DILocation(line: 53, column: 23, scope: !90)
!124 = !DILocation(line: 53, column: 2, scope: !90)
!125 = distinct !{!125, !92, !126}
!126 = !DILocation(line: 66, column: 2, scope: !87)
!127 = !DILocation(line: 67, column: 1, scope: !73)

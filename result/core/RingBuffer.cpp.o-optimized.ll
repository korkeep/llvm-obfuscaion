; ModuleID = '/home/aaa/llvm-arduino-due/build/core/RingBuffer.cpp.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/RingBuffer.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.RingBuffer = type { [128 x i8], i32, i32 }

@_ZN10RingBufferC1Ev = dso_local unnamed_addr alias %class.RingBuffer* (%class.RingBuffer*), %class.RingBuffer* (%class.RingBuffer*)* @_ZN10RingBufferC2Ev

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC2Ev(%class.RingBuffer* returned %this) unnamed_addr #0 align 2 !dbg !15 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.RingBuffer*, align 4
  store %class.RingBuffer* %this, %class.RingBuffer** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.RingBuffer** %this.addr, metadata !39, metadata !DIExpression()), !dbg !41
  %this1 = load %class.RingBuffer*, %class.RingBuffer** %this.addr, align 4
  %_aucBuffer = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %this1, i32 0, i32 0, !dbg !42
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %_aucBuffer, i32 0, i32 0, !dbg !42
  call void @llvm.memset.p0i8.i32(i8* align 1 %arraydecay, i8 0, i32 128, i1 false), !dbg !44
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %this1, i32 0, i32 1, !dbg !45
  store volatile i32 0, i32* %_iHead, align 4, !dbg !46
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %this1, i32 0, i32 2, !dbg !47
  store volatile i32 0, i32* %_iTail, align 4, !dbg !48
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10RingBufferC2Ev, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.RingBuffer* %this1, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN10RingBuffer10store_charEh(%class.RingBuffer* %this, i8 zeroext %c) #0 align 2 !dbg !50 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i1 = alloca i32, align 4
  %this.addr = alloca %class.RingBuffer*, align 4
  %c.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store %class.RingBuffer* %this, %class.RingBuffer** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.RingBuffer** %this.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %this1 = load %class.RingBuffer*, %class.RingBuffer** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !56
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %this1, i32 0, i32 1, !dbg !57
  %0 = load volatile i32, i32* %_iHead, align 4, !dbg !57
  %add = add nsw i32 %0, 1, !dbg !58
  %rem = urem i32 %add, 128, !dbg !59
  store i32 %rem, i32* %i, align 4, !dbg !56
  %1 = load i32, i32* %i, align 4, !dbg !60
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %this1, i32 0, i32 2, !dbg !62
  %2 = load volatile i32, i32* %_iTail, align 4, !dbg !62
  %cmp = icmp ne i32 %1, %2, !dbg !63
  br i1 %cmp, label %if.then, label %if.end, !dbg !64

if.then:                                          ; preds = %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !65
  %_aucBuffer = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %this1, i32 0, i32 0, !dbg !67
  %_iHead2 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %this1, i32 0, i32 1, !dbg !68
  %4 = load volatile i32, i32* %_iHead2, align 4, !dbg !68
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %_aucBuffer, i32 0, i32 %4, !dbg !67
  store volatile i8 %3, i8* %arrayidx, align 1, !dbg !69
  %5 = load i32, i32* %i, align 4, !dbg !70
  %_iHead3 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %this1, i32 0, i32 1, !dbg !71
  store volatile i32 %5, i32* %_iHead3, align 4, !dbg !72
  br label %if.end, !dbg !73

if.end:                                           ; preds = %if.then, %entry
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx2, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10RingBuffer10store_charEh, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i1, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %6 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %6, 12
  br i1 %cmp3, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %7 = load i32, i32* %i1, align 4
  %8 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i32 %7
  %9 = load i8, i8* %arrayidx1, align 1
  %10 = load i32, i32* %i1, align 4
  %arrayidx24 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  store i8 %9, i8* %arrayidx24, align 1
  %11 = load i32, i32* %i1, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %12 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %13 = load i32, i32* %i1, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %14 = load i32, i32* %i1, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %i1, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %16 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %17 = phi i8* [ %16, %dec_end ]
  indirectbr i8* %16, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !74
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/RingBuffer.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 66, baseType: !7)
!6 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 56, baseType: !9)
!8 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 1, !"min_enum_size", i32 1}
!14 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!15 = distinct !DISubprogram(name: "RingBuffer", linkageName: "_ZN10RingBufferC2Ev", scope: !17, file: !16, line: 22, type: !33, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !32, retainedNodes: !2)
!16 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/RingBuffer.cpp", directory: "/home/aaa")
!17 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RingBuffer", file: !18, line: 30, size: 1088, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !19, identifier: "_ZTS10RingBuffer")
!18 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/RingBuffer.h", directory: "/home/aaa")
!19 = !{!20, !28, !31, !32, !36}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_aucBuffer", scope: !17, file: !18, line: 33, baseType: !21, size: 1024, flags: DIFlagPublic)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !26)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 42, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 28, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27}
!27 = !DISubrange(count: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_iHead", scope: !17, file: !18, line: 34, baseType: !29, size: 32, offset: 1024, flags: DIFlagPublic)
!29 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_iTail", scope: !17, file: !18, line: 35, baseType: !29, size: 32, offset: 1056, flags: DIFlagPublic)
!32 = !DISubprogram(name: "RingBuffer", scope: !17, file: !18, line: 38, type: !33, scopeLine: 38, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!36 = !DISubprogram(name: "store_char", linkageName: "_ZN10RingBuffer10store_charEh", scope: !17, file: !18, line: 39, type: !37, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !35, !23}
!39 = !DILocalVariable(name: "this", arg: 1, scope: !15, type: !40, flags: DIFlagArtificial | DIFlagObjectPointer)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!41 = !DILocation(line: 0, scope: !15)
!42 = !DILocation(line: 24, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !15, file: !16, line: 23, column: 1)
!44 = !DILocation(line: 24, column: 5, scope: !43)
!45 = !DILocation(line: 25, column: 5, scope: !43)
!46 = !DILocation(line: 25, column: 11, scope: !43)
!47 = !DILocation(line: 26, column: 5, scope: !43)
!48 = !DILocation(line: 26, column: 11, scope: !43)
!49 = !DILocation(line: 27, column: 1, scope: !15)
!50 = distinct !DISubprogram(name: "store_char", linkageName: "_ZN10RingBuffer10store_charEh", scope: !17, file: !16, line: 29, type: !37, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !36, retainedNodes: !2)
!51 = !DILocalVariable(name: "this", arg: 1, scope: !50, type: !40, flags: DIFlagArtificial | DIFlagObjectPointer)
!52 = !DILocation(line: 0, scope: !50)
!53 = !DILocalVariable(name: "c", arg: 2, scope: !50, file: !16, line: 29, type: !23)
!54 = !DILocation(line: 29, column: 38, scope: !50)
!55 = !DILocalVariable(name: "i", scope: !50, file: !16, line: 31, type: !30)
!56 = !DILocation(line: 31, column: 7, scope: !50)
!57 = !DILocation(line: 31, column: 22, scope: !50)
!58 = !DILocation(line: 31, column: 29, scope: !50)
!59 = !DILocation(line: 31, column: 34, scope: !50)
!60 = !DILocation(line: 37, column: 8, scope: !61)
!61 = distinct !DILexicalBlock(scope: !50, file: !16, line: 37, column: 8)
!62 = !DILocation(line: 37, column: 13, scope: !61)
!63 = !DILocation(line: 37, column: 10, scope: !61)
!64 = !DILocation(line: 37, column: 8, scope: !50)
!65 = !DILocation(line: 39, column: 26, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !16, line: 38, column: 3)
!67 = !DILocation(line: 39, column: 5, scope: !66)
!68 = !DILocation(line: 39, column: 16, scope: !66)
!69 = !DILocation(line: 39, column: 24, scope: !66)
!70 = !DILocation(line: 40, column: 14, scope: !66)
!71 = !DILocation(line: 40, column: 5, scope: !66)
!72 = !DILocation(line: 40, column: 12, scope: !66)
!73 = !DILocation(line: 41, column: 3, scope: !66)
!74 = !DILocation(line: 42, column: 1, scope: !50)

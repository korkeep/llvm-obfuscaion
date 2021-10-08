; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/syscalls_sam3.c'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/syscalls_sam3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.Uart = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [55 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_sbrk.heap = internal global i8* null, align 4, !dbg !0
@_end = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i8* @_sbrk(i32 %incr) #0 !dbg !2 {
entry:
  %incr.addr = alloca i32, align 4
  %prev_heap = alloca i8*, align 4
  store i32 %incr, i32* %incr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %incr.addr, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i8** %prev_heap, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load i8*, i8** @_sbrk.heap, align 4, !dbg !67
  %cmp = icmp eq i8* %0, null, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  store i8* bitcast (i32* @_end to i8*), i8** @_sbrk.heap, align 4, !dbg !71
  br label %if.end, !dbg !73

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @_sbrk.heap, align 4, !dbg !74
  store i8* %1, i8** %prev_heap, align 4, !dbg !75
  %2 = load i32, i32* %incr.addr, align 4, !dbg !76
  %3 = load i8*, i8** @_sbrk.heap, align 4, !dbg !77
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 %2, !dbg !77
  store i8* %add.ptr, i8** @_sbrk.heap, align 4, !dbg !77
  %4 = load i8*, i8** %prev_heap, align 4, !dbg !78
  ret i8* %4, !dbg !79
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @link(i8* %cOld_UNUSED, i8* %cNew_UNUSED) #0 !dbg !80 {
entry:
  %cOld_UNUSED.addr = alloca i8*, align 4
  %cNew_UNUSED.addr = alloca i8*, align 4
  store i8* %cOld_UNUSED, i8** %cOld_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cOld_UNUSED.addr, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* %cNew_UNUSED, i8** %cNew_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cNew_UNUSED.addr, metadata !85, metadata !DIExpression()), !dbg !86
  ret i32 -1, !dbg !87
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_close(i32 %file_UNUSED) #0 !dbg !88 {
entry:
  %file_UNUSED.addr = alloca i32, align 4
  store i32 %file_UNUSED, i32* %file_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %file_UNUSED.addr, metadata !91, metadata !DIExpression()), !dbg !92
  ret i32 -1, !dbg !93
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_fstat(i32 %file_UNUSED, %struct.stat* %st) #0 !dbg !94 {
entry:
  %file_UNUSED.addr = alloca i32, align 4
  %st.addr = alloca %struct.stat*, align 4
  store i32 %file_UNUSED, i32* %file_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %file_UNUSED.addr, metadata !137, metadata !DIExpression()), !dbg !138
  store %struct.stat* %st, %struct.stat** %st.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.stat** %st.addr, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 4, !dbg !141
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 2, !dbg !142
  store i32 8192, i32* %st_mode, align 4, !dbg !143
  ret i32 0, !dbg !144
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_isatty(i32 %file_UNUSED) #0 !dbg !145 {
entry:
  %file_UNUSED.addr = alloca i32, align 4
  store i32 %file_UNUSED, i32* %file_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %file_UNUSED.addr, metadata !146, metadata !DIExpression()), !dbg !147
  ret i32 1, !dbg !148
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_lseek(i32 %file_UNUSED, i32 %ptr_UNUSED, i32 %dir_UNUSED) #0 !dbg !149 {
entry:
  %file_UNUSED.addr = alloca i32, align 4
  %ptr_UNUSED.addr = alloca i32, align 4
  %dir_UNUSED.addr = alloca i32, align 4
  store i32 %file_UNUSED, i32* %file_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %file_UNUSED.addr, metadata !152, metadata !DIExpression()), !dbg !153
  store i32 %ptr_UNUSED, i32* %ptr_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ptr_UNUSED.addr, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 %dir_UNUSED, i32* %dir_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir_UNUSED.addr, metadata !156, metadata !DIExpression()), !dbg !157
  ret i32 0, !dbg !158
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_read(i32 %file_UNUSED, i8* %ptr_UNUSED, i32 %len_UNUSED) #0 !dbg !159 {
entry:
  %file_UNUSED.addr = alloca i32, align 4
  %ptr_UNUSED.addr = alloca i8*, align 4
  %len_UNUSED.addr = alloca i32, align 4
  store i32 %file_UNUSED, i32* %file_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %file_UNUSED.addr, metadata !162, metadata !DIExpression()), !dbg !163
  store i8* %ptr_UNUSED, i8** %ptr_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %ptr_UNUSED.addr, metadata !164, metadata !DIExpression()), !dbg !165
  store i32 %len_UNUSED, i32* %len_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len_UNUSED.addr, metadata !166, metadata !DIExpression()), !dbg !167
  ret i32 0, !dbg !168
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_write(i32 %file_UNUSED, i8* %ptr, i32 %len) #0 !dbg !169 {
entry:
  %file_UNUSED.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %iIndex = alloca i32, align 4
  store i32 %file_UNUSED, i32* %file_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %file_UNUSED.addr, metadata !170, metadata !DIExpression()), !dbg !171
  store i8* %ptr, i8** %ptr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !172, metadata !DIExpression()), !dbg !173
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %iIndex, metadata !176, metadata !DIExpression()), !dbg !177
  store i32 0, i32* %iIndex, align 4, !dbg !178
  br label %for.cond, !dbg !180

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %iIndex, align 4, !dbg !181
  %1 = load i32, i32* %len.addr, align 4, !dbg !183
  %cmp = icmp slt i32 %0, %1, !dbg !184
  br i1 %cmp, label %for.body, label %for.end, !dbg !185

for.body:                                         ; preds = %for.cond
  br label %while.cond, !dbg !186

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.Uart, %struct.Uart* inttoptr (i32 1074661376 to %struct.Uart*), i32 0, i32 5), align 4, !dbg !188
  %and = and i32 %2, 2, !dbg !189
  %cmp1 = icmp ne i32 %and, 2, !dbg !190
  br i1 %cmp1, label %while.body, label %while.end, !dbg !186

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !186, !llvm.loop !191

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %ptr.addr, align 4, !dbg !193
  %4 = load i8, i8* %3, align 1, !dbg !194
  %conv = zext i8 %4 to i32, !dbg !194
  store volatile i32 %conv, i32* getelementptr inbounds (%struct.Uart, %struct.Uart* inttoptr (i32 1074661376 to %struct.Uart*), i32 0, i32 7), align 4, !dbg !195
  br label %for.inc, !dbg !196

for.inc:                                          ; preds = %while.end
  %5 = load i32, i32* %iIndex, align 4, !dbg !197
  %inc = add nsw i32 %5, 1, !dbg !197
  store i32 %inc, i32* %iIndex, align 4, !dbg !197
  %6 = load i8*, i8** %ptr.addr, align 4, !dbg !198
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1, !dbg !198
  store i8* %incdec.ptr, i8** %ptr.addr, align 4, !dbg !198
  br label %for.cond, !dbg !199, !llvm.loop !200

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %iIndex, align 4, !dbg !202
  ret i32 %7, !dbg !203
}

; Function Attrs: noinline noreturn nounwind optnone
define dso_local arm_aapcscc void @_exit(i32 %status) #2 !dbg !204 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !207, metadata !DIExpression()), !dbg !208
  br label %for.cond, !dbg !209

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond, !dbg !210, !llvm.loop !213
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_kill(i32 %pid_UNUSED, i32 %sig_UNUSED) #0 !dbg !216 {
entry:
  %pid_UNUSED.addr = alloca i32, align 4
  %sig_UNUSED.addr = alloca i32, align 4
  store i32 %pid_UNUSED, i32* %pid_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pid_UNUSED.addr, metadata !219, metadata !DIExpression()), !dbg !220
  store i32 %sig_UNUSED, i32* %sig_UNUSED.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sig_UNUSED.addr, metadata !221, metadata !DIExpression()), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_getpid() #0 !dbg !224 {
entry:
  ret i32 -1, !dbg !227
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline noreturn nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "heap", scope: !2, file: !3, line: 66, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "_sbrk", scope: !3, file: !3, line: 64, type: !4, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!3 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/syscalls_sam3.c", directory: "/home/aaa")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !10}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !7, line: 146, baseType: !8)
!7 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/sys/types.h", directory: "/home/aaa")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !14, globals: !57, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/syscalls_sam3.c", directory: "/home/aaa/llvm-arduino-due")
!13 = !{}
!14 = !{!15, !16, !6, !18}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uart", file: !20, line: 62, baseType: !21)
!20 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_uart.h", directory: "/home/aaa")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 41, size: 2368, elements: !22)
!22 = !{!23, !32, !34, !35, !36, !39, !40, !41, !42, !43, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "UART_CR", scope: !21, file: !20, line: 42, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !25, line: 53, baseType: !26)
!25 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 66, baseType: !29)
!28 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !30, line: 56, baseType: !31)
!30 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "UART_MR", scope: !21, file: !20, line: 43, baseType: !33, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !25, line: 54, baseType: !26)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "UART_IER", scope: !21, file: !20, line: 44, baseType: !24, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "UART_IDR", scope: !21, file: !20, line: 45, baseType: !24, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "UART_IMR", scope: !21, file: !20, line: 46, baseType: !37, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !25, line: 49, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "UART_SR", scope: !21, file: !20, line: 47, baseType: !37, size: 32, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RHR", scope: !21, file: !20, line: 48, baseType: !37, size: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "UART_THR", scope: !21, file: !20, line: 49, baseType: !24, size: 32, offset: 224)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "UART_BRGR", scope: !21, file: !20, line: 50, baseType: !33, size: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !21, file: !20, line: 51, baseType: !44, size: 1760, offset: 288)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1760, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 55)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RPR", scope: !21, file: !20, line: 52, baseType: !33, size: 32, offset: 2048)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RCR", scope: !21, file: !20, line: 53, baseType: !33, size: 32, offset: 2080)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "UART_TPR", scope: !21, file: !20, line: 54, baseType: !33, size: 32, offset: 2112)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "UART_TCR", scope: !21, file: !20, line: 55, baseType: !33, size: 32, offset: 2144)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RNPR", scope: !21, file: !20, line: 56, baseType: !33, size: 32, offset: 2176)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RNCR", scope: !21, file: !20, line: 57, baseType: !33, size: 32, offset: 2208)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "UART_TNPR", scope: !21, file: !20, line: 58, baseType: !33, size: 32, offset: 2240)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "UART_TNCR", scope: !21, file: !20, line: 59, baseType: !33, size: 32, offset: 2272)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "UART_PTCR", scope: !21, file: !20, line: 60, baseType: !24, size: 32, offset: 2304)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "UART_PTSR", scope: !21, file: !20, line: 61, baseType: !37, size: 32, offset: 2336)
!57 = !{!0}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 1, !"min_enum_size", i32 1}
!62 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!63 = !DILocalVariable(name: "incr", arg: 1, scope: !2, file: !3, line: 64, type: !10)
!64 = !DILocation(line: 64, column: 28, scope: !2)
!65 = !DILocalVariable(name: "prev_heap", scope: !2, file: !3, line: 67, type: !16)
!66 = !DILocation(line: 67, column: 20, scope: !2)
!67 = !DILocation(line: 69, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !2, file: !3, line: 69, column: 10)
!69 = !DILocation(line: 69, column: 15, scope: !68)
!70 = !DILocation(line: 69, column: 10, scope: !2)
!71 = !DILocation(line: 71, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 70, column: 5)
!73 = !DILocation(line: 72, column: 5, scope: !72)
!74 = !DILocation(line: 73, column: 17, scope: !2)
!75 = !DILocation(line: 73, column: 15, scope: !2)
!76 = !DILocation(line: 75, column: 13, scope: !2)
!77 = !DILocation(line: 75, column: 10, scope: !2)
!78 = !DILocation(line: 77, column: 22, scope: !2)
!79 = !DILocation(line: 77, column: 5, scope: !2)
!80 = distinct !DISubprogram(name: "link", scope: !3, file: !3, line: 80, type: !81, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!81 = !DISubroutineType(types: !82)
!82 = !{!10, !8, !8}
!83 = !DILocalVariable(name: "cOld_UNUSED", arg: 1, scope: !80, file: !3, line: 80, type: !8)
!84 = !DILocation(line: 80, column: 18, scope: !80)
!85 = !DILocalVariable(name: "cNew_UNUSED", arg: 2, scope: !80, file: !3, line: 80, type: !8)
!86 = !DILocation(line: 80, column: 38, scope: !80)
!87 = !DILocation(line: 82, column: 5, scope: !80)
!88 = distinct !DISubprogram(name: "_close", scope: !3, file: !3, line: 85, type: !89, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!89 = !DISubroutineType(types: !90)
!90 = !{!10, !10}
!91 = !DILocalVariable(name: "file_UNUSED", arg: 1, scope: !88, file: !3, line: 85, type: !10)
!92 = !DILocation(line: 85, column: 20, scope: !88)
!93 = !DILocation(line: 87, column: 5, scope: !88)
!94 = distinct !DISubprogram(name: "_fstat", scope: !3, file: !3, line: 90, type: !95, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!95 = !DISubroutineType(types: !96)
!96 = !{!10, !10, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !99, line: 25, size: 480, elements: !100)
!99 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/sys/stat.h", directory: "/home/aaa")
!100 = !{!101, !106, !109, !111, !113, !116, !119, !120, !124, !126, !127, !128, !129, !130, !131, !132, !133}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !98, file: !99, line: 27, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !7, line: 185, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !104, line: 20, baseType: !105)
!104 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/sys/_types.h", directory: "/home/aaa")
!105 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !98, file: !99, line: 28, baseType: !107, size: 16, offset: 16)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !7, line: 155, baseType: !108)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !98, file: !99, line: 29, baseType: !110, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !7, line: 217, baseType: !31)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !98, file: !99, line: 30, baseType: !112, size: 16, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !7, line: 222, baseType: !108)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !98, file: !99, line: 31, baseType: !114, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !7, line: 186, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !104, line: 24, baseType: !108)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !98, file: !99, line: 32, baseType: !117, size: 16, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !7, line: 187, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !104, line: 27, baseType: !108)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !98, file: !99, line: 33, baseType: !102, size: 16, offset: 112)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !98, file: !99, line: 34, baseType: !121, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !7, line: 184, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !104, line: 16, baseType: !123)
!123 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime", scope: !98, file: !99, line: 48, baseType: !125, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !7, line: 122, baseType: !123)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare1", scope: !98, file: !99, line: 49, baseType: !123, size: 32, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime", scope: !98, file: !99, line: 50, baseType: !125, size: 32, offset: 224)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare2", scope: !98, file: !99, line: 51, baseType: !123, size: 32, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime", scope: !98, file: !99, line: 52, baseType: !125, size: 32, offset: 288)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare3", scope: !98, file: !99, line: 53, baseType: !123, size: 32, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !98, file: !99, line: 54, baseType: !123, size: 32, offset: 352)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !98, file: !99, line: 55, baseType: !123, size: 32, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !98, file: !99, line: 56, baseType: !134, size: 64, offset: 416)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 2)
!137 = !DILocalVariable(name: "file_UNUSED", arg: 1, scope: !94, file: !3, line: 90, type: !10)
!138 = !DILocation(line: 90, column: 20, scope: !94)
!139 = !DILocalVariable(name: "st", arg: 2, scope: !94, file: !3, line: 90, type: !97)
!140 = !DILocation(line: 90, column: 51, scope: !94)
!141 = !DILocation(line: 92, column: 5, scope: !94)
!142 = !DILocation(line: 92, column: 9, scope: !94)
!143 = !DILocation(line: 92, column: 17, scope: !94)
!144 = !DILocation(line: 94, column: 5, scope: !94)
!145 = distinct !DISubprogram(name: "_isatty", scope: !3, file: !3, line: 97, type: !89, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!146 = !DILocalVariable(name: "file_UNUSED", arg: 1, scope: !145, file: !3, line: 97, type: !10)
!147 = !DILocation(line: 97, column: 21, scope: !145)
!148 = !DILocation(line: 99, column: 5, scope: !145)
!149 = distinct !DISubprogram(name: "_lseek", scope: !3, file: !3, line: 102, type: !150, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!150 = !DISubroutineType(types: !151)
!151 = !{!10, !10, !10, !10}
!152 = !DILocalVariable(name: "file_UNUSED", arg: 1, scope: !149, file: !3, line: 102, type: !10)
!153 = !DILocation(line: 102, column: 20, scope: !149)
!154 = !DILocalVariable(name: "ptr_UNUSED", arg: 2, scope: !149, file: !3, line: 102, type: !10)
!155 = !DILocation(line: 102, column: 38, scope: !149)
!156 = !DILocalVariable(name: "dir_UNUSED", arg: 3, scope: !149, file: !3, line: 102, type: !10)
!157 = !DILocation(line: 102, column: 55, scope: !149)
!158 = !DILocation(line: 104, column: 5, scope: !149)
!159 = distinct !DISubprogram(name: "_read", scope: !3, file: !3, line: 107, type: !160, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!160 = !DISubroutineType(types: !161)
!161 = !{!10, !10, !8, !10}
!162 = !DILocalVariable(name: "file_UNUSED", arg: 1, scope: !159, file: !3, line: 107, type: !10)
!163 = !DILocation(line: 107, column: 18, scope: !159)
!164 = !DILocalVariable(name: "ptr_UNUSED", arg: 2, scope: !159, file: !3, line: 107, type: !8)
!165 = !DILocation(line: 107, column: 36, scope: !159)
!166 = !DILocalVariable(name: "len_UNUSED", arg: 3, scope: !159, file: !3, line: 107, type: !10)
!167 = !DILocation(line: 107, column: 55, scope: !159)
!168 = !DILocation(line: 109, column: 5, scope: !159)
!169 = distinct !DISubprogram(name: "_write", scope: !3, file: !3, line: 112, type: !160, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!170 = !DILocalVariable(name: "file_UNUSED", arg: 1, scope: !169, file: !3, line: 112, type: !10)
!171 = !DILocation(line: 112, column: 20, scope: !169)
!172 = !DILocalVariable(name: "ptr", arg: 2, scope: !169, file: !3, line: 112, type: !8)
!173 = !DILocation(line: 112, column: 44, scope: !169)
!174 = !DILocalVariable(name: "len", arg: 3, scope: !169, file: !3, line: 112, type: !10)
!175 = !DILocation(line: 112, column: 53, scope: !169)
!176 = !DILocalVariable(name: "iIndex", scope: !169, file: !3, line: 114, type: !10)
!177 = !DILocation(line: 114, column: 9, scope: !169)
!178 = !DILocation(line: 118, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !169, file: !3, line: 118, column: 5)
!180 = !DILocation(line: 118, column: 11, scope: !179)
!181 = !DILocation(line: 118, column: 22, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 118, column: 5)
!183 = !DILocation(line: 118, column: 31, scope: !182)
!184 = !DILocation(line: 118, column: 29, scope: !182)
!185 = !DILocation(line: 118, column: 5, scope: !179)
!186 = !DILocation(line: 123, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !3, line: 119, column: 5)
!188 = !DILocation(line: 123, column: 19, scope: !187)
!189 = !DILocation(line: 123, column: 27, scope: !187)
!190 = !DILocation(line: 123, column: 44, scope: !187)
!191 = distinct !{!191, !186, !192}
!192 = !DILocation(line: 124, column: 4, scope: !187)
!193 = !DILocation(line: 127, column: 23, scope: !187)
!194 = !DILocation(line: 127, column: 22, scope: !187)
!195 = !DILocation(line: 127, column: 20, scope: !187)
!196 = !DILocation(line: 128, column: 5, scope: !187)
!197 = !DILocation(line: 118, column: 43, scope: !182)
!198 = !DILocation(line: 118, column: 50, scope: !182)
!199 = !DILocation(line: 118, column: 5, scope: !182)
!200 = distinct !{!200, !185, !201}
!201 = !DILocation(line: 128, column: 5, scope: !179)
!202 = !DILocation(line: 130, column: 12, scope: !169)
!203 = !DILocation(line: 130, column: 5, scope: !169)
!204 = distinct !DISubprogram(name: "_exit", scope: !3, file: !3, line: 133, type: !205, scopeLine: 134, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !10}
!207 = !DILocalVariable(name: "status", arg: 1, scope: !204, file: !3, line: 133, type: !10)
!208 = !DILocation(line: 133, column: 24, scope: !204)
!209 = !DILocation(line: 138, column: 5, scope: !204)
!210 = !DILocation(line: 138, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 138, column: 5)
!212 = distinct !DILexicalBlock(scope: !204, file: !3, line: 138, column: 5)
!213 = distinct !{!213, !214, !215}
!214 = !DILocation(line: 138, column: 5, scope: !212)
!215 = !DILocation(line: 138, column: 17, scope: !212)
!216 = distinct !DISubprogram(name: "_kill", scope: !3, file: !3, line: 141, type: !217, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !10, !10}
!219 = !DILocalVariable(name: "pid_UNUSED", arg: 1, scope: !216, file: !3, line: 141, type: !10)
!220 = !DILocation(line: 141, column: 20, scope: !216)
!221 = !DILocalVariable(name: "sig_UNUSED", arg: 2, scope: !216, file: !3, line: 141, type: !10)
!222 = !DILocation(line: 141, column: 37, scope: !216)
!223 = !DILocation(line: 143, column: 5, scope: !216)
!224 = distinct !DISubprogram(name: "_getpid", scope: !3, file: !3, line: 146, type: !225, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !13)
!225 = !DISubroutineType(types: !226)
!226 = !{!10}
!227 = !DILocation(line: 148, column: 5, scope: !224)

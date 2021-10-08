; ModuleID = '/home/aaa/llvm-arduino-due/build/core/wiring.c.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct.SysTick_Type = type { i32, i32, i32, i32 }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [4 x i32], [5 x i32], [5 x i32], i32 }

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @millis() #0 !dbg !67 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %call = call arm_aapcscc i32 @GetTickCount(), !dbg !71
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@millis, %entry.RetBlock), i8** %ptr, align 4
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
  ret i32 %call, !dbg !72
}

declare dso_local arm_aapcscc i32 @GetTickCount() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @micros() #0 !dbg !73 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %ticks = alloca i32, align 4
  %ticks2 = alloca i32, align 4
  %pend = alloca i32, align 4
  %pend2 = alloca i32, align 4
  %count = alloca i32, align 4
  %count2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ticks, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %ticks2, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %pend, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %pend2, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %count, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %count2, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 2), align 4, !dbg !86
  store i32 %0, i32* %ticks2, align 4, !dbg !87
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 1), align 4, !dbg !88
  %and = and i32 %1, 67108864, !dbg !89
  %tobool = icmp ne i32 %and, 0, !dbg !89
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !90

lor.rhs:                                          ; preds = %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 7), align 4, !dbg !91
  %and1 = and i32 %2, 2048, !dbg !92
  %tobool2 = icmp ne i32 %and1, 0, !dbg !90
  br label %lor.end, !dbg !90

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lnot = xor i1 %3, true, !dbg !93
  %lnot3 = xor i1 %lnot, true, !dbg !94
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !94
  store i32 %lnot.ext, i32* %pend2, align 4, !dbg !95
  %call = call arm_aapcscc i32 @GetTickCount(), !dbg !96
  store i32 %call, i32* %count2, align 4, !dbg !97
  br label %do.body, !dbg !98

do.body:                                          ; preds = %lor.end18, %lor.end
  %4 = load i32, i32* %ticks2, align 4, !dbg !99
  store i32 %4, i32* %ticks, align 4, !dbg !101
  %5 = load i32, i32* %pend2, align 4, !dbg !102
  store i32 %5, i32* %pend, align 4, !dbg !103
  %6 = load i32, i32* %count2, align 4, !dbg !104
  store i32 %6, i32* %count, align 4, !dbg !105
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 2), align 4, !dbg !106
  store i32 %7, i32* %ticks2, align 4, !dbg !107
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 1), align 4, !dbg !108
  %and4 = and i32 %8, 67108864, !dbg !109
  %tobool5 = icmp ne i32 %and4, 0, !dbg !109
  br i1 %tobool5, label %lor.end9, label %lor.rhs6, !dbg !110

lor.rhs6:                                         ; preds = %do.body
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 7), align 4, !dbg !111
  %and7 = and i32 %9, 2048, !dbg !112
  %tobool8 = icmp ne i32 %and7, 0, !dbg !110
  br label %lor.end9, !dbg !110

lor.end9:                                         ; preds = %lor.rhs6, %do.body
  %10 = phi i1 [ true, %do.body ], [ %tobool8, %lor.rhs6 ]
  %lnot10 = xor i1 %10, true, !dbg !113
  %lnot12 = xor i1 %lnot10, true, !dbg !114
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !114
  store i32 %lnot.ext13, i32* %pend2, align 4, !dbg !115
  %call14 = call arm_aapcscc i32 @GetTickCount(), !dbg !116
  store i32 %call14, i32* %count2, align 4, !dbg !117
  br label %do.cond, !dbg !118

do.cond:                                          ; preds = %lor.end9
  %11 = load i32, i32* %pend, align 4, !dbg !119
  %12 = load i32, i32* %pend2, align 4, !dbg !120
  %cmp = icmp ne i32 %11, %12, !dbg !121
  br i1 %cmp, label %lor.end18, label %lor.lhs.false, !dbg !122

lor.lhs.false:                                    ; preds = %do.cond
  %13 = load i32, i32* %count, align 4, !dbg !123
  %14 = load i32, i32* %count2, align 4, !dbg !124
  %cmp15 = icmp ne i32 %13, %14, !dbg !125
  br i1 %cmp15, label %lor.end18, label %lor.rhs16, !dbg !126

lor.rhs16:                                        ; preds = %lor.lhs.false
  %15 = load i32, i32* %ticks, align 4, !dbg !127
  %16 = load i32, i32* %ticks2, align 4, !dbg !128
  %cmp17 = icmp ult i32 %15, %16, !dbg !129
  br label %lor.end18, !dbg !126

lor.end18:                                        ; preds = %lor.rhs16, %lor.lhs.false, %do.cond
  %17 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp17, %lor.rhs16 ]
  br i1 %17, label %do.body, label %do.end, !dbg !118, !llvm.loop !130

do.end:                                           ; preds = %lor.end18
  %18 = load i32, i32* %count, align 4, !dbg !132
  %19 = load i32, i32* %pend, align 4, !dbg !133
  %add = add i32 %18, %19, !dbg !134
  %mul = mul i32 %add, 1000, !dbg !135
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 1), align 4, !dbg !136
  %21 = load i32, i32* %ticks, align 4, !dbg !137
  %sub = sub i32 %20, %21, !dbg !138
  %mul19 = mul i32 %sub, 12483, !dbg !139
  %shr = lshr i32 %mul19, 20, !dbg !140
  %add20 = add i32 %mul, %shr, !dbg !141
  br label %dec_start

dec_start:                                        ; preds = %do.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@micros, %do.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %22 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %22, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %23 = load i32, i32* %i, align 4
  %24 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %24, i32 %23
  %25 = load i8, i8* %arrayidx1, align 1
  %26 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %26
  store i8 %25, i8* %arrayidx2, align 1
  %27 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %27
  %28 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %28 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %29 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %29
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %30 = load i32, i32* %i, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %32 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %33 = phi i8* [ %32, %dec_end ]
  indirectbr i8* %32, [label %do.end.RetBlock]

do.end.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %add20, !dbg !142
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @delay(i32 %ms) #0 !dbg !143 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %ms.addr = alloca i32, align 4
  %start = alloca i32, align 4
  store i32 %ms, i32* %ms.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ms.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load i32, i32* %ms.addr, align 4, !dbg !148
  %cmp = icmp eq i32 %0, 0, !dbg !150
  br i1 %cmp, label %if.then, label %if.end, !dbg !151

if.then:                                          ; preds = %entry
  br label %do.end, !dbg !152

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %start, metadata !153, metadata !DIExpression()), !dbg !154
  %call = call arm_aapcscc i32 @GetTickCount(), !dbg !155
  store i32 %call, i32* %start, align 4, !dbg !154
  br label %do.body, !dbg !156

do.body:                                          ; preds = %do.cond, %if.end
  call arm_aapcscc void @yield(), !dbg !157
  br label %do.cond, !dbg !159

do.cond:                                          ; preds = %do.body
  %call1 = call arm_aapcscc i32 @GetTickCount(), !dbg !160
  %1 = load i32, i32* %start, align 4, !dbg !161
  %sub = sub i32 %call1, %1, !dbg !162
  %2 = load i32, i32* %ms.addr, align 4, !dbg !163
  %cmp2 = icmp ult i32 %sub, %2, !dbg !164
  br i1 %cmp2, label %do.body, label %do.end, !dbg !159, !llvm.loop !165

do.end:                                           ; preds = %do.cond, %if.then
  br label %dec_start

dec_start:                                        ; preds = %do.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@delay, %do.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %3, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %4 = load i32, i32* %i, align 4
  %5 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i32 %4
  %6 = load i8, i8* %arrayidx1, align 1
  %7 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  store i8 %6, i8* %arrayidx2, align 1
  %8 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  %9 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %9 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %10 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %11 = load i32, i32* %i, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %13 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %14 = phi i8* [ %13, %dec_end ]
  indirectbr i8* %13, [label %do.end.RetBlock]

do.end.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !167
}

declare dso_local arm_aapcscc void @yield() #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring.c", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{!4, !20}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !6, line: 574, baseType: !7)
!6 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cm3.h", directory: "/home/aaa")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 568, size: 128, elements: !8)
!8 = !{!9, !16, !17, !18}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !7, file: !6, line: 570, baseType: !10, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 66, baseType: !13)
!12 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 56, baseType: !15)
!14 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !7, file: !6, line: 571, baseType: !10, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !7, file: !6, line: 572, baseType: !10, size: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !7, file: !6, line: 573, baseType: !19, size: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !6, line: 329, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 306, size: 1120, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !38, !39, !40, !41, !42, !43, !44, !45, !49, !50, !51, !55, !59, !61}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !22, file: !6, line: 308, baseType: !19, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !22, file: !6, line: 309, baseType: !10, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !22, file: !6, line: 310, baseType: !10, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !22, file: !6, line: 311, baseType: !10, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !22, file: !6, line: 312, baseType: !10, size: 32, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !22, file: !6, line: 313, baseType: !10, size: 32, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !22, file: !6, line: 314, baseType: !31, size: 96, offset: 192)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 96, elements: !36)
!32 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 42, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 28, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 12)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !22, file: !6, line: 315, baseType: !10, size: 32, offset: 288)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !22, file: !6, line: 316, baseType: !10, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !22, file: !6, line: 317, baseType: !10, size: 32, offset: 352)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !22, file: !6, line: 318, baseType: !10, size: 32, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !22, file: !6, line: 319, baseType: !10, size: 32, offset: 416)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !22, file: !6, line: 320, baseType: !10, size: 32, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !22, file: !6, line: 321, baseType: !10, size: 32, offset: 480)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !22, file: !6, line: 322, baseType: !46, size: 64, offset: 512)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 2)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !22, file: !6, line: 323, baseType: !19, size: 32, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !22, file: !6, line: 324, baseType: !19, size: 32, offset: 608)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !22, file: !6, line: 325, baseType: !52, size: 128, offset: 640)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 4)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !22, file: !6, line: 326, baseType: !56, size: 160, offset: 768)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 5)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !22, file: !6, line: 327, baseType: !60, size: 160, offset: 928)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !57)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !22, file: !6, line: 328, baseType: !10, size: 32, offset: 1088)
!62 = !{i32 7, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{i32 1, !"min_enum_size", i32 1}
!66 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!67 = distinct !DISubprogram(name: "millis", scope: !68, file: !68, line: 25, type: !69, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!68 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring.c", directory: "/home/aaa")
!69 = !DISubroutineType(types: !70)
!70 = !{!11}
!71 = !DILocation(line: 28, column: 12, scope: !67)
!72 = !DILocation(line: 28, column: 5, scope: !67)
!73 = distinct !DISubprogram(name: "micros", scope: !68, file: !68, line: 35, type: !69, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!74 = !DILocalVariable(name: "ticks", scope: !73, file: !68, line: 37, type: !11)
!75 = !DILocation(line: 37, column: 14, scope: !73)
!76 = !DILocalVariable(name: "ticks2", scope: !73, file: !68, line: 37, type: !11)
!77 = !DILocation(line: 37, column: 21, scope: !73)
!78 = !DILocalVariable(name: "pend", scope: !73, file: !68, line: 38, type: !11)
!79 = !DILocation(line: 38, column: 14, scope: !73)
!80 = !DILocalVariable(name: "pend2", scope: !73, file: !68, line: 38, type: !11)
!81 = !DILocation(line: 38, column: 20, scope: !73)
!82 = !DILocalVariable(name: "count", scope: !73, file: !68, line: 39, type: !11)
!83 = !DILocation(line: 39, column: 14, scope: !73)
!84 = !DILocalVariable(name: "count2", scope: !73, file: !68, line: 39, type: !11)
!85 = !DILocation(line: 39, column: 21, scope: !73)
!86 = !DILocation(line: 41, column: 24, scope: !73)
!87 = !DILocation(line: 41, column: 13, scope: !73)
!88 = !DILocation(line: 42, column: 24, scope: !73)
!89 = !DILocation(line: 42, column: 29, scope: !73)
!90 = !DILocation(line: 42, column: 54, scope: !73)
!91 = !DILocation(line: 42, column: 63, scope: !73)
!92 = !DILocation(line: 42, column: 69, scope: !73)
!93 = !DILocation(line: 42, column: 16, scope: !73)
!94 = !DILocation(line: 42, column: 15, scope: !73)
!95 = !DILocation(line: 42, column: 13, scope: !73)
!96 = !DILocation(line: 43, column: 15, scope: !73)
!97 = !DILocation(line: 43, column: 13, scope: !73)
!98 = !DILocation(line: 45, column: 5, scope: !73)
!99 = !DILocation(line: 46, column: 15, scope: !100)
!100 = distinct !DILexicalBlock(scope: !73, file: !68, line: 45, column: 8)
!101 = !DILocation(line: 46, column: 14, scope: !100)
!102 = !DILocation(line: 47, column: 14, scope: !100)
!103 = !DILocation(line: 47, column: 13, scope: !100)
!104 = !DILocation(line: 48, column: 15, scope: !100)
!105 = !DILocation(line: 48, column: 14, scope: !100)
!106 = !DILocation(line: 49, column: 28, scope: !100)
!107 = !DILocation(line: 49, column: 17, scope: !100)
!108 = !DILocation(line: 50, column: 28, scope: !100)
!109 = !DILocation(line: 50, column: 33, scope: !100)
!110 = !DILocation(line: 50, column: 58, scope: !100)
!111 = !DILocation(line: 50, column: 67, scope: !100)
!112 = !DILocation(line: 50, column: 73, scope: !100)
!113 = !DILocation(line: 50, column: 20, scope: !100)
!114 = !DILocation(line: 50, column: 19, scope: !100)
!115 = !DILocation(line: 50, column: 17, scope: !100)
!116 = !DILocation(line: 51, column: 19, scope: !100)
!117 = !DILocation(line: 51, column: 17, scope: !100)
!118 = !DILocation(line: 52, column: 5, scope: !100)
!119 = !DILocation(line: 52, column: 15, scope: !73)
!120 = !DILocation(line: 52, column: 23, scope: !73)
!121 = !DILocation(line: 52, column: 20, scope: !73)
!122 = !DILocation(line: 52, column: 30, scope: !73)
!123 = !DILocation(line: 52, column: 34, scope: !73)
!124 = !DILocation(line: 52, column: 43, scope: !73)
!125 = !DILocation(line: 52, column: 40, scope: !73)
!126 = !DILocation(line: 52, column: 51, scope: !73)
!127 = !DILocation(line: 52, column: 55, scope: !73)
!128 = !DILocation(line: 52, column: 63, scope: !73)
!129 = !DILocation(line: 52, column: 61, scope: !73)
!130 = distinct !{!130, !98, !131}
!131 = !DILocation(line: 52, column: 70, scope: !73)
!132 = !DILocation(line: 54, column: 14, scope: !73)
!133 = !DILocation(line: 54, column: 20, scope: !73)
!134 = !DILocation(line: 54, column: 19, scope: !73)
!135 = !DILocation(line: 54, column: 26, scope: !73)
!136 = !DILocation(line: 54, column: 48, scope: !73)
!137 = !DILocation(line: 54, column: 56, scope: !73)
!138 = !DILocation(line: 54, column: 54, scope: !73)
!139 = !DILocation(line: 54, column: 62, scope: !73)
!140 = !DILocation(line: 54, column: 89, scope: !73)
!141 = !DILocation(line: 54, column: 34, scope: !73)
!142 = !DILocation(line: 54, column: 5, scope: !73)
!143 = distinct !DISubprogram(name: "delay", scope: !68, file: !68, line: 75, type: !144, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !11}
!146 = !DILocalVariable(name: "ms", arg: 1, scope: !143, file: !68, line: 75, type: !11)
!147 = !DILocation(line: 75, column: 22, scope: !143)
!148 = !DILocation(line: 77, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !68, line: 77, column: 9)
!150 = !DILocation(line: 77, column: 12, scope: !149)
!151 = !DILocation(line: 77, column: 9, scope: !143)
!152 = !DILocation(line: 78, column: 9, scope: !149)
!153 = !DILocalVariable(name: "start", scope: !143, file: !68, line: 79, type: !11)
!154 = !DILocation(line: 79, column: 14, scope: !143)
!155 = !DILocation(line: 79, column: 22, scope: !143)
!156 = !DILocation(line: 80, column: 5, scope: !143)
!157 = !DILocation(line: 81, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !143, file: !68, line: 80, column: 8)
!159 = !DILocation(line: 82, column: 5, scope: !158)
!160 = !DILocation(line: 82, column: 14, scope: !143)
!161 = !DILocation(line: 82, column: 31, scope: !143)
!162 = !DILocation(line: 82, column: 29, scope: !143)
!163 = !DILocation(line: 82, column: 39, scope: !143)
!164 = !DILocation(line: 82, column: 37, scope: !143)
!165 = distinct !{!165, !156, !166}
!166 = !DILocation(line: 82, column: 41, scope: !143)
!167 = !DILocation(line: 83, column: 1, scope: !143)

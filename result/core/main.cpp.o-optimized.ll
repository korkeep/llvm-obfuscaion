; ModuleID = '/home/aaa/llvm-arduino-due/build/core/main.cpp.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/main.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.USBDevice_ = type { i8 }

@USBDevice = external dso_local global %class.USBDevice_, align 1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc void @initVariant() #0 !dbg !8 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@initVariant, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !12
}

; Function Attrs: noinline norecurse nounwind optnone
define dso_local arm_aapcscc i32 @main() #1 !dbg !13 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*
  %ptr2 = alloca i8*
  %i = alloca i32
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcscc void @_Z13watchdogSetupv(), !dbg !17
  call arm_aapcscc void @init(), !dbg !18
  call arm_aapcscc void @initVariant(), !dbg !19
  call arm_aapcscc void @delay(i32 1), !dbg !20
  %call = call arm_aapcscc zeroext i1 @_ZN10USBDevice_6attachEv(%class.USBDevice_* @USBDevice), !dbg !21
  call arm_aapcscc void @setup(), !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %if.end, %entry
  call arm_aapcscc void @loop(), !dbg !24
  br i1 icmp ne (void ()* @_Z14serialEventRunv, void ()* null), label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %for.cond
  call arm_aapcscc void @_Z14serialEventRunv(), !dbg !29
  br label %if.end, !dbg !29

if.end:                                           ; preds = %if.then, %for.cond
  br label %for.cond, !dbg !31, !llvm.loop !32
}

declare dso_local arm_aapcscc void @_Z13watchdogSetupv() #2

declare dso_local arm_aapcscc void @init() #2

declare dso_local arm_aapcscc void @delay(i32) #2

declare dso_local arm_aapcscc zeroext i1 @_ZN10USBDevice_6attachEv(%class.USBDevice_*) #2

declare dso_local arm_aapcscc void @setup() #2

declare dso_local arm_aapcscc void @loop() #2

declare extern_weak dso_local arm_aapcscc void @_Z14serialEventRunv() #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { noinline norecurse nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/main.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!8 = distinct !DISubprogram(name: "initVariant", scope: !9, file: !9, line: 37, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/main.cpp", directory: "/home/aaa")
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocation(line: 37, column: 22, scope: !8)
!13 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 42, type: !14, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{!16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocation(line: 45, column: 2, scope: !13)
!18 = !DILocation(line: 47, column: 2, scope: !13)
!19 = !DILocation(line: 49, column: 2, scope: !13)
!20 = !DILocation(line: 51, column: 2, scope: !13)
!21 = !DILocation(line: 54, column: 12, scope: !13)
!22 = !DILocation(line: 57, column: 2, scope: !13)
!23 = !DILocation(line: 59, column: 2, scope: !13)
!24 = !DILocation(line: 61, column: 3, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !9, line: 60, column: 2)
!26 = distinct !DILexicalBlock(scope: !27, file: !9, line: 59, column: 2)
!27 = distinct !DILexicalBlock(scope: !13, file: !9, line: 59, column: 2)
!28 = !DILocation(line: 62, column: 7, scope: !25)
!29 = !DILocation(line: 62, column: 23, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !9, line: 62, column: 7)
!31 = !DILocation(line: 59, column: 2, scope: !26)
!32 = distinct !{!32, !33, !34}
!33 = !DILocation(line: 59, column: 2, scope: !27)
!34 = !DILocation(line: 63, column: 2, scope: !27)

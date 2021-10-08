; ModuleID = '/home/aaa/llvm-arduino-due/build/Blink.ino.cpp'
source_filename = "/home/aaa/llvm-arduino-due/build/Blink.ino.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.USBDevice_ = type { i8 }
%class.UARTClass = type { %class.HardwareSerial, %class.RingBuffer*, %class.RingBuffer*, %struct.Uart*, i8, i32 }
%class.HardwareSerial = type { %class.Stream }
%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i32 }
%class.RingBuffer = type { [128 x i8], i32, i32 }
%struct.Uart = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [55 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@USBDevice = external dso_local global %class.USBDevice_, align 1
@Serial = external dso_local global %class.UARTClass, align 4
@.str = private unnamed_addr constant [41 x i8] c"Performance Check (Run 10,000 Functions)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Time elapsed: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ms\00", align 1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc void @initVariant() #0 !dbg !8 {
entry:
  ret void, !dbg !12
}

; Function Attrs: noinline norecurse nounwind optnone
define dso_local arm_aapcscc i32 @main() #1 !dbg !13 {
entry:
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

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @setup() #0 !dbg !35 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %before = alloca i32, align 4
  %after = alloca i32, align 4
  %minus = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !36, metadata !DIExpression()), !dbg !37
  call arm_aapcscc void @_ZN9UARTClass5beginEj(%class.UARTClass* @Serial, i32 9600), !dbg !38
  %call = call arm_aapcscc i32 @_ZN5Print7printlnEPKc(%class.Print* getelementptr inbounds (%class.UARTClass, %class.UARTClass* @Serial, i32 0, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0)), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %k, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %before, metadata !42, metadata !DIExpression()), !dbg !43
  %call1 = call arm_aapcscc i32 @millis(), !dbg !44
  store i32 %call1, i32* %before, align 4, !dbg !43
  store i32 0, i32* %i, align 4, !dbg !45
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !48
  %cmp = icmp slt i32 %0, 10000, !dbg !50
  br i1 %cmp, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  %call2 = call arm_aapcscc i32 @_Z4goodv(), !dbg !52
  store i32 %call2, i32* %k, align 4, !dbg !54
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4, !dbg !56
  %inc = add nsw i32 %1, 1, !dbg !56
  store i32 %inc, i32* %i, align 4, !dbg !56
  br label %for.cond, !dbg !57, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %after, metadata !60, metadata !DIExpression()), !dbg !61
  %call3 = call arm_aapcscc i32 @millis(), !dbg !62
  store i32 %call3, i32* %after, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %minus, metadata !63, metadata !DIExpression()), !dbg !64
  %2 = load i32, i32* %after, align 4, !dbg !65
  %3 = load i32, i32* %before, align 4, !dbg !66
  %sub = sub nsw i32 %2, %3, !dbg !67
  store i32 %sub, i32* %minus, align 4, !dbg !64
  %call4 = call arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print* getelementptr inbounds (%class.UARTClass, %class.UARTClass* @Serial, i32 0, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !68
  %4 = load i32, i32* %minus, align 4, !dbg !69
  %call5 = call arm_aapcscc i32 @_ZN5Print5printEii(%class.Print* getelementptr inbounds (%class.UARTClass, %class.UARTClass* @Serial, i32 0, i32 0, i32 0, i32 0), i32 %4, i32 10), !dbg !70
  %call6 = call arm_aapcscc i32 @_ZN5Print7printlnEPKc(%class.Print* getelementptr inbounds (%class.UARTClass, %class.UARTClass* @Serial, i32 0, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !71
  ret void, !dbg !72
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @loop() #0 !dbg !73 {
entry:
  ret void, !dbg !74
}

declare extern_weak dso_local arm_aapcscc void @_Z14serialEventRunv() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z4goodv() #0 !dbg !75 {
entry:
  %a = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 10, i32* %a, align 4, !dbg !77
  %0 = load i32, i32* %a, align 4, !dbg !78
  ret i32 %0, !dbg !79
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare dso_local arm_aapcscc void @_ZN9UARTClass5beginEj(%class.UARTClass*, i32) #2

declare dso_local arm_aapcscc i32 @_ZN5Print7printlnEPKc(%class.Print*, i8*) #2

declare dso_local arm_aapcscc i32 @millis() #2

declare dso_local arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print*, i8*) #2

declare dso_local arm_aapcscc i32 @_ZN5Print5printEii(%class.Print*, i32, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @__cxa_pure_virtual() #0 !dbg !80 {
entry:
  br label %while.body, !dbg !81

while.body:                                       ; preds = %entry, %while.body
  br label %while.body, !dbg !81, !llvm.loop !82
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { noinline norecurse nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/llvm-arduino-due/build/Blink.ino.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!8 = distinct !DISubprogram(name: "initVariant", scope: !9, file: !9, line: 37, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "build/Blink.ino.cpp", directory: "/home/aaa/llvm-arduino-due")
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
!35 = distinct !DISubprogram(name: "setup", scope: !9, file: !9, line: 71, type: !10, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!36 = !DILocalVariable(name: "i", scope: !35, file: !9, line: 73, type: !16)
!37 = !DILocation(line: 73, column: 7, scope: !35)
!38 = !DILocation(line: 74, column: 10, scope: !35)
!39 = !DILocation(line: 75, column: 10, scope: !35)
!40 = !DILocalVariable(name: "k", scope: !35, file: !9, line: 76, type: !16)
!41 = !DILocation(line: 76, column: 7, scope: !35)
!42 = !DILocalVariable(name: "before", scope: !35, file: !9, line: 77, type: !16)
!43 = !DILocation(line: 77, column: 7, scope: !35)
!44 = !DILocation(line: 77, column: 16, scope: !35)
!45 = !DILocation(line: 78, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !35, file: !9, line: 78, column: 3)
!47 = !DILocation(line: 78, column: 8, scope: !46)
!48 = !DILocation(line: 78, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !9, line: 78, column: 3)
!50 = !DILocation(line: 78, column: 15, scope: !49)
!51 = !DILocation(line: 78, column: 3, scope: !46)
!52 = !DILocation(line: 79, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !9, line: 78, column: 27)
!54 = !DILocation(line: 79, column: 7, scope: !53)
!55 = !DILocation(line: 80, column: 3, scope: !53)
!56 = !DILocation(line: 78, column: 23, scope: !49)
!57 = !DILocation(line: 78, column: 3, scope: !49)
!58 = distinct !{!58, !51, !59}
!59 = !DILocation(line: 80, column: 3, scope: !46)
!60 = !DILocalVariable(name: "after", scope: !35, file: !9, line: 81, type: !16)
!61 = !DILocation(line: 81, column: 7, scope: !35)
!62 = !DILocation(line: 81, column: 15, scope: !35)
!63 = !DILocalVariable(name: "minus", scope: !35, file: !9, line: 82, type: !16)
!64 = !DILocation(line: 82, column: 7, scope: !35)
!65 = !DILocation(line: 82, column: 15, scope: !35)
!66 = !DILocation(line: 82, column: 21, scope: !35)
!67 = !DILocation(line: 82, column: 20, scope: !35)
!68 = !DILocation(line: 89, column: 10, scope: !35)
!69 = !DILocation(line: 90, column: 16, scope: !35)
!70 = !DILocation(line: 90, column: 10, scope: !35)
!71 = !DILocation(line: 91, column: 10, scope: !35)
!72 = !DILocation(line: 92, column: 1, scope: !35)
!73 = distinct !DISubprogram(name: "loop", scope: !9, file: !9, line: 94, type: !10, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!74 = !DILocation(line: 97, column: 1, scope: !73)
!75 = distinct !DISubprogram(name: "good", linkageName: "_Z4goodv", scope: !9, file: !9, line: 67, type: !14, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!76 = !DILocalVariable(name: "a", scope: !75, file: !9, line: 68, type: !16)
!77 = !DILocation(line: 68, column: 7, scope: !75)
!78 = !DILocation(line: 69, column: 10, scope: !75)
!79 = !DILocation(line: 69, column: 3, scope: !75)
!80 = distinct !DISubprogram(name: "__cxa_pure_virtual", scope: !9, file: !9, line: 98, type: !10, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!81 = !DILocation(line: 98, column: 39, scope: !80)
!82 = distinct !{!82, !81, !83}
!83 = !DILocation(line: 98, column: 51, scope: !80)

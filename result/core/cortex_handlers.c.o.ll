; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/cortex_handlers.c'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/cortex_handlers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

@NMI_Handler = weak dso_local alias void (), void ()* @__halt
@HardFault_Handler = weak dso_local alias void (), void ()* @__halt
@MemManage_Handler = weak dso_local alias void (), void ()* @__halt
@BusFault_Handler = weak dso_local alias void (), void ()* @__halt
@UsageFault_Handler = weak dso_local alias void (), void ()* @__halt
@DebugMon_Handler = weak dso_local alias void (), void ()* @__halt
@SUPC_Handler = weak dso_local alias void (), void ()* @__halt
@RSTC_Handler = weak dso_local alias void (), void ()* @__halt
@RTC_Handler = weak dso_local alias void (), void ()* @__halt
@RTT_Handler = weak dso_local alias void (), void ()* @__halt
@WDT_Handler = weak dso_local alias void (), void ()* @__halt
@PMC_Handler = weak dso_local alias void (), void ()* @__halt
@EFC0_Handler = weak dso_local alias void (), void ()* @__halt
@EFC1_Handler = weak dso_local alias void (), void ()* @__halt
@UART_Handler = weak dso_local alias void (), void ()* @__halt
@SMC_Handler = weak dso_local alias void (), void ()* @__halt
@PIOA_Handler = weak dso_local alias void (), void ()* @__halt
@PIOB_Handler = weak dso_local alias void (), void ()* @__halt
@PIOC_Handler = weak dso_local alias void (), void ()* @__halt
@PIOD_Handler = weak dso_local alias void (), void ()* @__halt
@USART0_Handler = weak dso_local alias void (), void ()* @__halt
@USART1_Handler = weak dso_local alias void (), void ()* @__halt
@USART2_Handler = weak dso_local alias void (), void ()* @__halt
@USART3_Handler = weak dso_local alias void (), void ()* @__halt
@HSMCI_Handler = weak dso_local alias void (), void ()* @__halt
@TWI0_Handler = weak dso_local alias void (), void ()* @__halt
@TWI1_Handler = weak dso_local alias void (), void ()* @__halt
@SPI0_Handler = weak dso_local alias void (), void ()* @__halt
@SSC_Handler = weak dso_local alias void (), void ()* @__halt
@TC0_Handler = weak dso_local alias void (), void ()* @__halt
@TC1_Handler = weak dso_local alias void (), void ()* @__halt
@TC2_Handler = weak dso_local alias void (), void ()* @__halt
@TC3_Handler = weak dso_local alias void (), void ()* @__halt
@TC4_Handler = weak dso_local alias void (), void ()* @__halt
@TC5_Handler = weak dso_local alias void (), void ()* @__halt
@TC6_Handler = weak dso_local alias void (), void ()* @__halt
@TC7_Handler = weak dso_local alias void (), void ()* @__halt
@TC8_Handler = weak dso_local alias void (), void ()* @__halt
@PWM_Handler = weak dso_local alias void (), void ()* @__halt
@ADC_Handler = weak dso_local alias void (), void ()* @__halt
@DACC_Handler = weak dso_local alias void (), void ()* @__halt
@DMAC_Handler = weak dso_local alias void (), void ()* @__halt
@UOTGHS_Handler = weak dso_local alias void (), void ()* @__halt
@TRNG_Handler = weak dso_local alias void (), void ()* @__halt
@EMAC_Handler = weak dso_local alias void (), void ()* @__halt
@CAN0_Handler = weak dso_local alias void (), void ()* @__halt
@CAN1_Handler = weak dso_local alias void (), void ()* @__halt

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @__halt() #0 !dbg !8 {
entry:
  br label %while.body, !dbg !12

while.body:                                       ; preds = %entry, %while.body
  br label %while.body, !dbg !12, !llvm.loop !13
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @SVC_Handler() #0 !dbg !15 {
entry:
  call arm_aapcscc void @svcHook(), !dbg !16
  ret void, !dbg !17
}

declare dso_local arm_aapcscc void @svcHook() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @PendSV_Handler() #0 !dbg !18 {
entry:
  call arm_aapcscc void @pendSVHook(), !dbg !19
  ret void, !dbg !20
}

declare dso_local arm_aapcscc void @pendSVHook() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @SysTick_Handler() #0 !dbg !21 {
entry:
  %call = call arm_aapcscc i32 @sysTickHook(), !dbg !22
  %tobool = icmp ne i32 %call, 0, !dbg !22
  br i1 %tobool, label %if.then, label %if.end, !dbg !24

if.then:                                          ; preds = %entry
  br label %return, !dbg !25

if.end:                                           ; preds = %entry
  call arm_aapcscc void bitcast (void (...)* @tickReset to void ()*)(), !dbg !26
  call arm_aapcscc void @TimeTick_Increment(), !dbg !27
  br label %return, !dbg !28

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !28
}

declare dso_local arm_aapcscc i32 @sysTickHook() #1

declare dso_local arm_aapcscc void @tickReset(...) #1

declare dso_local arm_aapcscc void @TimeTick_Increment() #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/cortex_handlers.c", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!8 = distinct !DISubprogram(name: "__halt", scope: !9, file: !9, line: 26, type: !10, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/cortex_handlers.c", directory: "/home/aaa")
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocation(line: 28, column: 2, scope: !8)
!13 = distinct !{!13, !12, !14}
!14 = !DILocation(line: 29, column: 3, scope: !8)
!15 = distinct !DISubprogram(name: "SVC_Handler", scope: !9, file: !9, line: 43, type: !10, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DILocation(line: 43, column: 33, scope: !15)
!17 = !DILocation(line: 43, column: 44, scope: !15)
!18 = distinct !DISubprogram(name: "PendSV_Handler", scope: !9, file: !9, line: 44, type: !10, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 44, column: 33, scope: !18)
!20 = !DILocation(line: 44, column: 47, scope: !18)
!21 = distinct !DISubprogram(name: "SysTick_Handler", scope: !9, file: !9, line: 46, type: !10, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DILocation(line: 48, column: 6, scope: !23)
!23 = distinct !DILexicalBlock(scope: !21, file: !9, line: 48, column: 6)
!24 = !DILocation(line: 48, column: 6, scope: !21)
!25 = !DILocation(line: 49, column: 3, scope: !23)
!26 = !DILocation(line: 51, column: 2, scope: !21)
!27 = !DILocation(line: 54, column: 2, scope: !21)
!28 = !DILocation(line: 55, column: 1, scope: !21)

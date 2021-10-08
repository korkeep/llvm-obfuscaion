; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_pulse.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_pulse.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct._PinDescription = type { %struct.Pio*, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.Pio = type { i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, [3 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32 }

@g_APinDescription = external dso_local global [0 x %struct._PinDescription], align 4
@SystemCoreClock = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @pulseIn(i32 %pin, i32 %state, i32 %timeout) #0 !dbg !73 {
entry:
  %retval = alloca i32, align 4
  %pin.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %p = alloca %struct._PinDescription, align 4
  %bit = alloca i32, align 4
  %stateMask = alloca i32, align 4
  %maxloops = alloca i32, align 4
  %width = alloca i32, align 4
  store i32 %pin, i32* %pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pin.addr, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct._PinDescription* %p, metadata !89, metadata !DIExpression()), !dbg !180
  %0 = load i32, i32* %pin.addr, align 4, !dbg !181
  %arrayidx = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %0, !dbg !182
  %1 = bitcast %struct._PinDescription* %p to i8*, !dbg !182
  %2 = bitcast %struct._PinDescription* %arrayidx to i8*, !dbg !182
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 28, i1 false), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !183, metadata !DIExpression()), !dbg !184
  %ulPin = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %p, i32 0, i32 1, !dbg !185
  %3 = load i32, i32* %ulPin, align 4, !dbg !185
  store i32 %3, i32* %bit, align 4, !dbg !184
  call void @llvm.dbg.declare(metadata i32* %stateMask, metadata !186, metadata !DIExpression()), !dbg !187
  %4 = load i32, i32* %state.addr, align 4, !dbg !188
  %tobool = icmp ne i32 %4, 0, !dbg !188
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !188

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %bit, align 4, !dbg !189
  br label %cond.end, !dbg !188

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !188

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !188
  store i32 %cond, i32* %stateMask, align 4, !dbg !187
  call void @llvm.dbg.declare(metadata i32* %maxloops, metadata !190, metadata !DIExpression()), !dbg !191
  %6 = load i32, i32* %timeout.addr, align 4, !dbg !192
  %7 = load i32, i32* @SystemCoreClock, align 4, !dbg !192
  %div = udiv i32 %7, 1000000, !dbg !192
  %mul = mul i32 %6, %div, !dbg !192
  %div1 = udiv i32 %mul, 18, !dbg !193
  store i32 %div1, i32* %maxloops, align 4, !dbg !191
  call void @llvm.dbg.declare(metadata i32* %width, metadata !194, metadata !DIExpression()), !dbg !195
  %pPort = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %p, i32 0, i32 0, !dbg !196
  %8 = load %struct.Pio*, %struct.Pio** %pPort, align 4, !dbg !196
  %PIO_PDSR = getelementptr inbounds %struct.Pio, %struct.Pio* %8, i32 0, i32 15, !dbg !197
  %9 = load i32, i32* %bit, align 4, !dbg !198
  %10 = load i32, i32* %stateMask, align 4, !dbg !199
  %11 = load i32, i32* %maxloops, align 4, !dbg !200
  %call = call arm_aapcscc i32 @countPulseASM(i32* %PIO_PDSR, i32 %9, i32 %10, i32 %11), !dbg !201
  store i32 %call, i32* %width, align 4, !dbg !195
  %12 = load i32, i32* %width, align 4, !dbg !202
  %tobool2 = icmp ne i32 %12, 0, !dbg !202
  br i1 %tobool2, label %if.then, label %if.else, !dbg !204

if.then:                                          ; preds = %cond.end
  %13 = load i32, i32* %width, align 4, !dbg !205
  %mul3 = mul i32 %13, 18, !dbg !205
  %add = add i32 %mul3, 16, !dbg !205
  %mul4 = mul i32 %add, 1000, !dbg !205
  %14 = load i32, i32* @SystemCoreClock, align 4, !dbg !205
  %div5 = udiv i32 %14, 1000, !dbg !205
  %div6 = udiv i32 %mul4, %div5, !dbg !205
  store i32 %div6, i32* %retval, align 4, !dbg !206
  br label %return, !dbg !206

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !207
  br label %return, !dbg !207

return:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !208
  ret i32 %15, !dbg !208
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

declare dso_local arm_aapcscc i32 @countPulseASM(i32*, i32, i32, i32) #3

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @pulseInLong(i8 zeroext %pin, i8 zeroext %state, i32 %timeout) #0 !dbg !209 {
entry:
  %retval = alloca i32, align 4
  %pin.addr = alloca i8, align 1
  %state.addr = alloca i8, align 1
  %timeout.addr = alloca i32, align 4
  %p = alloca %struct._PinDescription, align 4
  %bit = alloca i32, align 4
  %stateMask = alloca i32, align 4
  %startMicros = alloca i32, align 4
  %start = alloca i32, align 4
  store i8 %pin, i8* %pin.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %pin.addr, metadata !215, metadata !DIExpression()), !dbg !216
  store i8 %state, i8* %state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %state.addr, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata %struct._PinDescription* %p, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i8, i8* %pin.addr, align 1, !dbg !223
  %idxprom = zext i8 %0 to i32, !dbg !224
  %arrayidx = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %idxprom, !dbg !224
  %1 = bitcast %struct._PinDescription* %p to i8*, !dbg !224
  %2 = bitcast %struct._PinDescription* %arrayidx to i8*, !dbg !224
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 28, i1 false), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !225, metadata !DIExpression()), !dbg !226
  %ulPin = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %p, i32 0, i32 1, !dbg !227
  %3 = load i32, i32* %ulPin, align 4, !dbg !227
  store i32 %3, i32* %bit, align 4, !dbg !226
  call void @llvm.dbg.declare(metadata i32* %stateMask, metadata !228, metadata !DIExpression()), !dbg !229
  %4 = load i8, i8* %state.addr, align 1, !dbg !230
  %tobool = icmp ne i8 %4, 0, !dbg !230
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !230

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %bit, align 4, !dbg !231
  br label %cond.end, !dbg !230

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !230

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !230
  store i32 %cond, i32* %stateMask, align 4, !dbg !229
  call void @llvm.dbg.declare(metadata i32* %startMicros, metadata !232, metadata !DIExpression()), !dbg !233
  %call = call arm_aapcscc i32 @micros(), !dbg !234
  store i32 %call, i32* %startMicros, align 4, !dbg !233
  br label %while.cond, !dbg !235

while.cond:                                       ; preds = %if.end, %cond.end
  %pPort = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %p, i32 0, i32 0, !dbg !236
  %6 = load %struct.Pio*, %struct.Pio** %pPort, align 4, !dbg !236
  %PIO_PDSR = getelementptr inbounds %struct.Pio, %struct.Pio* %6, i32 0, i32 15, !dbg !237
  %7 = load volatile i32, i32* %PIO_PDSR, align 4, !dbg !237
  %8 = load i32, i32* %bit, align 4, !dbg !238
  %and = and i32 %7, %8, !dbg !239
  %9 = load i32, i32* %stateMask, align 4, !dbg !240
  %cmp = icmp eq i32 %and, %9, !dbg !241
  br i1 %cmp, label %while.body, label %while.end, !dbg !235

while.body:                                       ; preds = %while.cond
  %call1 = call arm_aapcscc i32 @micros(), !dbg !242
  %10 = load i32, i32* %startMicros, align 4, !dbg !245
  %sub = sub i32 %call1, %10, !dbg !246
  %11 = load i32, i32* %timeout.addr, align 4, !dbg !247
  %cmp2 = icmp ugt i32 %sub, %11, !dbg !248
  br i1 %cmp2, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4, !dbg !250
  br label %return, !dbg !250

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !235, !llvm.loop !251

while.end:                                        ; preds = %while.cond
  br label %while.cond3, !dbg !253

while.cond3:                                      ; preds = %if.end13, %while.end
  %pPort4 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %p, i32 0, i32 0, !dbg !254
  %12 = load %struct.Pio*, %struct.Pio** %pPort4, align 4, !dbg !254
  %PIO_PDSR5 = getelementptr inbounds %struct.Pio, %struct.Pio* %12, i32 0, i32 15, !dbg !255
  %13 = load volatile i32, i32* %PIO_PDSR5, align 4, !dbg !255
  %14 = load i32, i32* %bit, align 4, !dbg !256
  %and6 = and i32 %13, %14, !dbg !257
  %15 = load i32, i32* %stateMask, align 4, !dbg !258
  %cmp7 = icmp ne i32 %and6, %15, !dbg !259
  br i1 %cmp7, label %while.body8, label %while.end14, !dbg !253

while.body8:                                      ; preds = %while.cond3
  %call9 = call arm_aapcscc i32 @micros(), !dbg !260
  %16 = load i32, i32* %startMicros, align 4, !dbg !263
  %sub10 = sub i32 %call9, %16, !dbg !264
  %17 = load i32, i32* %timeout.addr, align 4, !dbg !265
  %cmp11 = icmp ugt i32 %sub10, %17, !dbg !266
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !267

if.then12:                                        ; preds = %while.body8
  store i32 0, i32* %retval, align 4, !dbg !268
  br label %return, !dbg !268

if.end13:                                         ; preds = %while.body8
  br label %while.cond3, !dbg !253, !llvm.loop !269

while.end14:                                      ; preds = %while.cond3
  call void @llvm.dbg.declare(metadata i32* %start, metadata !271, metadata !DIExpression()), !dbg !272
  %call15 = call arm_aapcscc i32 @micros(), !dbg !273
  store i32 %call15, i32* %start, align 4, !dbg !272
  br label %while.cond16, !dbg !274

while.cond16:                                     ; preds = %if.end26, %while.end14
  %pPort17 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %p, i32 0, i32 0, !dbg !275
  %18 = load %struct.Pio*, %struct.Pio** %pPort17, align 4, !dbg !275
  %PIO_PDSR18 = getelementptr inbounds %struct.Pio, %struct.Pio* %18, i32 0, i32 15, !dbg !276
  %19 = load volatile i32, i32* %PIO_PDSR18, align 4, !dbg !276
  %20 = load i32, i32* %bit, align 4, !dbg !277
  %and19 = and i32 %19, %20, !dbg !278
  %21 = load i32, i32* %stateMask, align 4, !dbg !279
  %cmp20 = icmp eq i32 %and19, %21, !dbg !280
  br i1 %cmp20, label %while.body21, label %while.end27, !dbg !274

while.body21:                                     ; preds = %while.cond16
  %call22 = call arm_aapcscc i32 @micros(), !dbg !281
  %22 = load i32, i32* %startMicros, align 4, !dbg !284
  %sub23 = sub i32 %call22, %22, !dbg !285
  %23 = load i32, i32* %timeout.addr, align 4, !dbg !286
  %cmp24 = icmp ugt i32 %sub23, %23, !dbg !287
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !288

if.then25:                                        ; preds = %while.body21
  store i32 0, i32* %retval, align 4, !dbg !289
  br label %return, !dbg !289

if.end26:                                         ; preds = %while.body21
  br label %while.cond16, !dbg !274, !llvm.loop !290

while.end27:                                      ; preds = %while.cond16
  %call28 = call arm_aapcscc i32 @micros(), !dbg !292
  %24 = load i32, i32* %start, align 4, !dbg !293
  %sub29 = sub i32 %call28, %24, !dbg !294
  store i32 %sub29, i32* %retval, align 4, !dbg !295
  br label %return, !dbg !295

return:                                           ; preds = %while.end27, %if.then25, %if.then12, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !296
  ret i32 %25, !dbg !296
}

declare dso_local arm_aapcscc i32 @micros() #3

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_pulse.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{!3, !13, !36, !47}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EPioType", file: !4, line: 44, baseType: !5, size: 8, elements: !6, identifier: "_ZTS9_EPioType")
!4 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/libsam/include/pio.h", directory: "/home/aaa")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "PIO_NOT_A_PIN", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "PIO_PERIPH_A", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "PIO_PERIPH_B", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "PIO_INPUT", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "PIO_OUTPUT_0", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "PIO_OUTPUT_1", value: 5, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EAnalogChannel", file: !14, line: 86, baseType: !15, size: 8, elements: !16, identifier: "_ZTS15_EAnalogChannel")
!14 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Arduino.h", directory: "/home/aaa")
!15 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!17 = !DIEnumerator(name: "NO_ADC", value: -1)
!18 = !DIEnumerator(name: "ADC0", value: 0)
!19 = !DIEnumerator(name: "ADC1", value: 1)
!20 = !DIEnumerator(name: "ADC2", value: 2)
!21 = !DIEnumerator(name: "ADC3", value: 3)
!22 = !DIEnumerator(name: "ADC4", value: 4)
!23 = !DIEnumerator(name: "ADC5", value: 5)
!24 = !DIEnumerator(name: "ADC6", value: 6)
!25 = !DIEnumerator(name: "ADC7", value: 7)
!26 = !DIEnumerator(name: "ADC8", value: 8)
!27 = !DIEnumerator(name: "ADC9", value: 9)
!28 = !DIEnumerator(name: "ADC10", value: 10)
!29 = !DIEnumerator(name: "ADC11", value: 11)
!30 = !DIEnumerator(name: "ADC12", value: 12)
!31 = !DIEnumerator(name: "ADC13", value: 13)
!32 = !DIEnumerator(name: "ADC14", value: 14)
!33 = !DIEnumerator(name: "ADC15", value: 15)
!34 = !DIEnumerator(name: "DA0", value: 16)
!35 = !DIEnumerator(name: "DA1", value: 17)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EPWMChannel", file: !14, line: 112, baseType: !15, size: 8, elements: !37, identifier: "_ZTS12_EPWMChannel")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "NOT_ON_PWM", value: -1)
!39 = !DIEnumerator(name: "PWM_CH0", value: 0)
!40 = !DIEnumerator(name: "PWM_CH1", value: 1)
!41 = !DIEnumerator(name: "PWM_CH2", value: 2)
!42 = !DIEnumerator(name: "PWM_CH3", value: 3)
!43 = !DIEnumerator(name: "PWM_CH4", value: 4)
!44 = !DIEnumerator(name: "PWM_CH5", value: 5)
!45 = !DIEnumerator(name: "PWM_CH6", value: 6)
!46 = !DIEnumerator(name: "PWM_CH7", value: 7)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ETCChannel", file: !14, line: 126, baseType: !15, size: 8, elements: !48, identifier: "_ZTS11_ETCChannel")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!49 = !DIEnumerator(name: "NOT_ON_TIMER", value: -1)
!50 = !DIEnumerator(name: "TC0_CHA0", value: 0)
!51 = !DIEnumerator(name: "TC0_CHB0", value: 1)
!52 = !DIEnumerator(name: "TC0_CHA1", value: 2)
!53 = !DIEnumerator(name: "TC0_CHB1", value: 3)
!54 = !DIEnumerator(name: "TC0_CHA2", value: 4)
!55 = !DIEnumerator(name: "TC0_CHB2", value: 5)
!56 = !DIEnumerator(name: "TC1_CHA3", value: 6)
!57 = !DIEnumerator(name: "TC1_CHB3", value: 7)
!58 = !DIEnumerator(name: "TC1_CHA4", value: 8)
!59 = !DIEnumerator(name: "TC1_CHB4", value: 9)
!60 = !DIEnumerator(name: "TC1_CHA5", value: 10)
!61 = !DIEnumerator(name: "TC1_CHB5", value: 11)
!62 = !DIEnumerator(name: "TC2_CHA6", value: 12)
!63 = !DIEnumerator(name: "TC2_CHB6", value: 13)
!64 = !DIEnumerator(name: "TC2_CHA7", value: 14)
!65 = !DIEnumerator(name: "TC2_CHB7", value: 15)
!66 = !DIEnumerator(name: "TC2_CHA8", value: 16)
!67 = !DIEnumerator(name: "TC2_CHB8", value: 17)
!68 = !{i32 7, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 1, !"min_enum_size", i32 1}
!72 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!73 = distinct !DISubprogram(name: "pulseIn", scope: !74, file: !74, line: 30, type: !75, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !82)
!74 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_pulse.cpp", directory: "/home/aaa")
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !77, !77, !77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !78, line: 66, baseType: !79)
!78 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !80, line: 56, baseType: !81)
!80 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !{}
!83 = !DILocalVariable(name: "pin", arg: 1, scope: !73, file: !74, line: 30, type: !77)
!84 = !DILocation(line: 30, column: 28, scope: !73)
!85 = !DILocalVariable(name: "state", arg: 2, scope: !73, file: !74, line: 30, type: !77)
!86 = !DILocation(line: 30, column: 42, scope: !73)
!87 = !DILocalVariable(name: "timeout", arg: 3, scope: !73, file: !74, line: 30, type: !77)
!88 = !DILocation(line: 30, column: 58, scope: !73)
!89 = !DILocalVariable(name: "p", scope: !73, file: !74, line: 35, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "PinDescription", file: !14, line: 181, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PinDescription", file: !14, line: 169, size: 224, flags: DIFlagTypePassByValue, elements: !92, identifier: "_ZTS15_PinDescription")
!92 = !{!93, !167, !168, !169, !171, !172, !173, !175, !176, !178}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pPort", scope: !91, file: !14, line: 171, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pio", file: !96, line: 96, baseType: !97)
!96 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_pio.h", directory: "/home/aaa")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 41, size: 1888, flags: DIFlagTypePassByValue, elements: !98, identifier: "_ZTS3Pio")
!98 = !{!99, !103, !104, !106, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !140, !141, !142, !143, !144, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PER", scope: !97, file: !96, line: 42, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !101, line: 53, baseType: !102)
!101 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!102 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PDR", scope: !97, file: !96, line: 43, baseType: !100, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PSR", scope: !97, file: !96, line: 44, baseType: !105, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !101, line: 51, baseType: !102)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !97, file: !96, line: 45, baseType: !107, size: 32, offset: 96)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 1)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OER", scope: !97, file: !96, line: 46, baseType: !100, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ODR", scope: !97, file: !96, line: 47, baseType: !100, size: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OSR", scope: !97, file: !96, line: 48, baseType: !105, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !97, file: !96, line: 49, baseType: !107, size: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFER", scope: !97, file: !96, line: 50, baseType: !100, size: 32, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFDR", scope: !97, file: !96, line: 51, baseType: !100, size: 32, offset: 288)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFSR", scope: !97, file: !96, line: 52, baseType: !105, size: 32, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !97, file: !96, line: 53, baseType: !107, size: 32, offset: 352)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SODR", scope: !97, file: !96, line: 54, baseType: !100, size: 32, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_CODR", scope: !97, file: !96, line: 55, baseType: !100, size: 32, offset: 416)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ODSR", scope: !97, file: !96, line: 56, baseType: !121, size: 32, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !101, line: 54, baseType: !102)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PDSR", scope: !97, file: !96, line: 57, baseType: !105, size: 32, offset: 480)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IER", scope: !97, file: !96, line: 58, baseType: !100, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IDR", scope: !97, file: !96, line: 59, baseType: !100, size: 32, offset: 544)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IMR", scope: !97, file: !96, line: 60, baseType: !105, size: 32, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ISR", scope: !97, file: !96, line: 61, baseType: !105, size: 32, offset: 608)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDER", scope: !97, file: !96, line: 62, baseType: !100, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDDR", scope: !97, file: !96, line: 63, baseType: !100, size: 32, offset: 672)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDSR", scope: !97, file: !96, line: 64, baseType: !105, size: 32, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !97, file: !96, line: 65, baseType: !107, size: 32, offset: 736)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUDR", scope: !97, file: !96, line: 66, baseType: !100, size: 32, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUER", scope: !97, file: !96, line: 67, baseType: !100, size: 32, offset: 800)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUSR", scope: !97, file: !96, line: 68, baseType: !105, size: 32, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !97, file: !96, line: 69, baseType: !107, size: 32, offset: 864)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ABSR", scope: !97, file: !96, line: 70, baseType: !121, size: 32, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !97, file: !96, line: 71, baseType: !137, size: 96, offset: 928)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 96, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 3)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SCIFSR", scope: !97, file: !96, line: 72, baseType: !100, size: 32, offset: 1024)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_DIFSR", scope: !97, file: !96, line: 73, baseType: !100, size: 32, offset: 1056)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFDGSR", scope: !97, file: !96, line: 74, baseType: !105, size: 32, offset: 1088)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SCDR", scope: !97, file: !96, line: 75, baseType: !121, size: 32, offset: 1120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved7", scope: !97, file: !96, line: 76, baseType: !145, size: 128, offset: 1152)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 4)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWER", scope: !97, file: !96, line: 77, baseType: !100, size: 32, offset: 1280)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWDR", scope: !97, file: !96, line: 78, baseType: !100, size: 32, offset: 1312)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWSR", scope: !97, file: !96, line: 79, baseType: !105, size: 32, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved8", scope: !97, file: !96, line: 80, baseType: !107, size: 32, offset: 1376)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMER", scope: !97, file: !96, line: 81, baseType: !100, size: 32, offset: 1408)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMDR", scope: !97, file: !96, line: 82, baseType: !100, size: 32, offset: 1440)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMMR", scope: !97, file: !96, line: 83, baseType: !105, size: 32, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved9", scope: !97, file: !96, line: 84, baseType: !107, size: 32, offset: 1504)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ESR", scope: !97, file: !96, line: 85, baseType: !100, size: 32, offset: 1536)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_LSR", scope: !97, file: !96, line: 86, baseType: !100, size: 32, offset: 1568)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ELSR", scope: !97, file: !96, line: 87, baseType: !105, size: 32, offset: 1600)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved10", scope: !97, file: !96, line: 88, baseType: !107, size: 32, offset: 1632)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_FELLSR", scope: !97, file: !96, line: 89, baseType: !100, size: 32, offset: 1664)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_REHLSR", scope: !97, file: !96, line: 90, baseType: !100, size: 32, offset: 1696)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_FRLHSR", scope: !97, file: !96, line: 91, baseType: !105, size: 32, offset: 1728)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved11", scope: !97, file: !96, line: 92, baseType: !107, size: 32, offset: 1760)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_LOCKSR", scope: !97, file: !96, line: 93, baseType: !105, size: 32, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_WPMR", scope: !97, file: !96, line: 94, baseType: !121, size: 32, offset: 1824)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_WPSR", scope: !97, file: !96, line: 95, baseType: !105, size: 32, offset: 1856)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ulPin", scope: !91, file: !14, line: 172, baseType: !77, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ulPeripheralId", scope: !91, file: !14, line: 173, baseType: !77, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ulPinType", scope: !91, file: !14, line: 174, baseType: !170, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "EPioType", file: !4, line: 56, baseType: !3)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ulPinConfiguration", scope: !91, file: !14, line: 175, baseType: !77, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ulPinAttribute", scope: !91, file: !14, line: 176, baseType: !77, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ulAnalogChannel", scope: !91, file: !14, line: 177, baseType: !174, size: 8, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "EAnalogChannel", file: !14, line: 107, baseType: !13)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ulADCChannelNumber", scope: !91, file: !14, line: 178, baseType: !174, size: 8, offset: 200)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ulPWMChannel", scope: !91, file: !14, line: 179, baseType: !177, size: 8, offset: 208)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "EPWMChannel", file: !14, line: 123, baseType: !36)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ulTCChannel", scope: !91, file: !14, line: 180, baseType: !179, size: 8, offset: 216)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ETCChannel", file: !14, line: 147, baseType: !47)
!180 = !DILocation(line: 35, column: 17, scope: !73)
!181 = !DILocation(line: 35, column: 39, scope: !73)
!182 = !DILocation(line: 35, column: 21, scope: !73)
!183 = !DILocalVariable(name: "bit", scope: !73, file: !74, line: 36, type: !77)
!184 = !DILocation(line: 36, column: 11, scope: !73)
!185 = !DILocation(line: 36, column: 19, scope: !73)
!186 = !DILocalVariable(name: "stateMask", scope: !73, file: !74, line: 37, type: !77)
!187 = !DILocation(line: 37, column: 11, scope: !73)
!188 = !DILocation(line: 37, column: 23, scope: !73)
!189 = !DILocation(line: 37, column: 31, scope: !73)
!190 = !DILocalVariable(name: "maxloops", scope: !73, file: !74, line: 41, type: !77)
!191 = !DILocation(line: 41, column: 11, scope: !73)
!192 = !DILocation(line: 41, column: 22, scope: !73)
!193 = !DILocation(line: 41, column: 57, scope: !73)
!194 = !DILocalVariable(name: "width", scope: !73, file: !74, line: 43, type: !77)
!195 = !DILocation(line: 43, column: 11, scope: !73)
!196 = !DILocation(line: 43, column: 37, scope: !73)
!197 = !DILocation(line: 43, column: 44, scope: !73)
!198 = !DILocation(line: 43, column: 55, scope: !73)
!199 = !DILocation(line: 43, column: 60, scope: !73)
!200 = !DILocation(line: 43, column: 71, scope: !73)
!201 = !DILocation(line: 43, column: 19, scope: !73)
!202 = !DILocation(line: 49, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !73, file: !74, line: 49, column: 6)
!204 = !DILocation(line: 49, column: 6, scope: !73)
!205 = !DILocation(line: 50, column: 10, scope: !203)
!206 = !DILocation(line: 50, column: 3, scope: !203)
!207 = !DILocation(line: 52, column: 3, scope: !203)
!208 = !DILocation(line: 53, column: 1, scope: !73)
!209 = distinct !DISubprogram(name: "pulseInLong", scope: !74, file: !74, line: 63, type: !210, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !82)
!210 = !DISubroutineType(types: !211)
!211 = !{!77, !212, !212, !214}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !78, line: 42, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !80, line: 28, baseType: !5)
!214 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!215 = !DILocalVariable(name: "pin", arg: 1, scope: !209, file: !74, line: 63, type: !212)
!216 = !DILocation(line: 63, column: 30, scope: !209)
!217 = !DILocalVariable(name: "state", arg: 2, scope: !209, file: !74, line: 63, type: !212)
!218 = !DILocation(line: 63, column: 43, scope: !209)
!219 = !DILocalVariable(name: "timeout", arg: 3, scope: !209, file: !74, line: 63, type: !214)
!220 = !DILocation(line: 63, column: 64, scope: !209)
!221 = !DILocalVariable(name: "p", scope: !209, file: !74, line: 68, type: !90)
!222 = !DILocation(line: 68, column: 17, scope: !209)
!223 = !DILocation(line: 68, column: 39, scope: !209)
!224 = !DILocation(line: 68, column: 21, scope: !209)
!225 = !DILocalVariable(name: "bit", scope: !209, file: !74, line: 69, type: !77)
!226 = !DILocation(line: 69, column: 11, scope: !209)
!227 = !DILocation(line: 69, column: 19, scope: !209)
!228 = !DILocalVariable(name: "stateMask", scope: !209, file: !74, line: 70, type: !77)
!229 = !DILocation(line: 70, column: 11, scope: !209)
!230 = !DILocation(line: 70, column: 23, scope: !209)
!231 = !DILocation(line: 70, column: 31, scope: !209)
!232 = !DILocalVariable(name: "startMicros", scope: !209, file: !74, line: 72, type: !214)
!233 = !DILocation(line: 72, column: 16, scope: !209)
!234 = !DILocation(line: 72, column: 30, scope: !209)
!235 = !DILocation(line: 75, column: 2, scope: !209)
!236 = !DILocation(line: 75, column: 12, scope: !209)
!237 = !DILocation(line: 75, column: 19, scope: !209)
!238 = !DILocation(line: 75, column: 30, scope: !209)
!239 = !DILocation(line: 75, column: 28, scope: !209)
!240 = !DILocation(line: 75, column: 38, scope: !209)
!241 = !DILocation(line: 75, column: 35, scope: !209)
!242 = !DILocation(line: 76, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !74, line: 76, column: 7)
!244 = distinct !DILexicalBlock(scope: !209, file: !74, line: 75, column: 49)
!245 = !DILocation(line: 76, column: 18, scope: !243)
!246 = !DILocation(line: 76, column: 16, scope: !243)
!247 = !DILocation(line: 76, column: 32, scope: !243)
!248 = !DILocation(line: 76, column: 30, scope: !243)
!249 = !DILocation(line: 76, column: 7, scope: !244)
!250 = !DILocation(line: 77, column: 4, scope: !243)
!251 = distinct !{!251, !235, !252}
!252 = !DILocation(line: 78, column: 2, scope: !209)
!253 = !DILocation(line: 81, column: 2, scope: !209)
!254 = !DILocation(line: 81, column: 12, scope: !209)
!255 = !DILocation(line: 81, column: 19, scope: !209)
!256 = !DILocation(line: 81, column: 30, scope: !209)
!257 = !DILocation(line: 81, column: 28, scope: !209)
!258 = !DILocation(line: 81, column: 38, scope: !209)
!259 = !DILocation(line: 81, column: 35, scope: !209)
!260 = !DILocation(line: 82, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !74, line: 82, column: 7)
!262 = distinct !DILexicalBlock(scope: !209, file: !74, line: 81, column: 49)
!263 = !DILocation(line: 82, column: 18, scope: !261)
!264 = !DILocation(line: 82, column: 16, scope: !261)
!265 = !DILocation(line: 82, column: 32, scope: !261)
!266 = !DILocation(line: 82, column: 30, scope: !261)
!267 = !DILocation(line: 82, column: 7, scope: !262)
!268 = !DILocation(line: 83, column: 4, scope: !261)
!269 = distinct !{!269, !253, !270}
!270 = !DILocation(line: 84, column: 2, scope: !209)
!271 = !DILocalVariable(name: "start", scope: !209, file: !74, line: 86, type: !214)
!272 = !DILocation(line: 86, column: 16, scope: !209)
!273 = !DILocation(line: 86, column: 24, scope: !209)
!274 = !DILocation(line: 88, column: 2, scope: !209)
!275 = !DILocation(line: 88, column: 12, scope: !209)
!276 = !DILocation(line: 88, column: 19, scope: !209)
!277 = !DILocation(line: 88, column: 30, scope: !209)
!278 = !DILocation(line: 88, column: 28, scope: !209)
!279 = !DILocation(line: 88, column: 38, scope: !209)
!280 = !DILocation(line: 88, column: 35, scope: !209)
!281 = !DILocation(line: 89, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !74, line: 89, column: 7)
!283 = distinct !DILexicalBlock(scope: !209, file: !74, line: 88, column: 49)
!284 = !DILocation(line: 89, column: 18, scope: !282)
!285 = !DILocation(line: 89, column: 16, scope: !282)
!286 = !DILocation(line: 89, column: 32, scope: !282)
!287 = !DILocation(line: 89, column: 30, scope: !282)
!288 = !DILocation(line: 89, column: 7, scope: !283)
!289 = !DILocation(line: 90, column: 4, scope: !282)
!290 = distinct !{!290, !274, !291}
!291 = !DILocation(line: 91, column: 2, scope: !209)
!292 = !DILocation(line: 92, column: 9, scope: !209)
!293 = !DILocation(line: 92, column: 20, scope: !209)
!294 = !DILocation(line: 92, column: 18, scope: !209)
!295 = !DILocation(line: 92, column: 2, scope: !209)
!296 = !DILocation(line: 93, column: 1, scope: !209)

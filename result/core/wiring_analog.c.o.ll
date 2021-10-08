; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_analog.c'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_analog.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct._PinDescription = type { %struct.Pio*, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.Pio = type { i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, [3 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32 }
%struct.Tc = type { [3 x %struct.TcChannel], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }
%struct.TcChannel = type { i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.Adc = type { i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], [1 x i32], i32, [19 x i32], i32, i32, [5 x i32], i32, i32, [2 x i32], i32, i32, [2 x i32], i32, i32 }
%struct.Dacc = type { i32, i32, [2 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, [24 x i32], i32, [19 x i32], i32, i32, [7 x i32], i32, i32, [2 x i32], i32, i32, i32, i32 }
%struct.Pwm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [11 x i32], i32, [12 x i32], i32, i32, [7 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, [2 x i32], [8 x %struct.PwmCmp], [20 x i32], [8 x %struct.PwmCh_num] }
%struct.PwmCmp = type { i32, i32, i32, i32 }
%struct.PwmCh_num = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@_readResolution = internal global i32 10, align 4, !dbg !0
@_writeResolution = internal global i32 8, align 4, !dbg !311
@analog_reference = dso_local global i8 0, align 1, !dbg !242
@g_APinDescription = external dso_local constant [0 x %struct._PinDescription], align 4
@analogRead.latestSelectedChannel = internal global i32 -1, align 4, !dbg !252
@g_pinStatus = external dso_local global [0 x i8], align 1
@PWMEnabled = internal global i8 0, align 1, !dbg !314
@analogWrite.channelToChNo = internal constant [18 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], align 4, !dbg !258
@analogWrite.channelToAB = internal constant [18 x i32] [i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], align 4, !dbg !267
@analogWrite.channelToTC = internal global [18 x %struct.Tc*] [%struct.Tc* inttoptr (i32 1074266112 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074266112 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074266112 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074266112 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074266112 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074266112 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074282496 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074282496 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074282496 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074282496 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074282496 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074282496 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074298880 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074298880 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074298880 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074298880 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074298880 to %struct.Tc*), %struct.Tc* inttoptr (i32 1074298880 to %struct.Tc*)], align 4, !dbg !269
@analogWrite.channelToId = internal constant [18 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8], align 4, !dbg !309
@TCChanEnabled = internal global [9 x i8] zeroinitializer, align 1, !dbg !316

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @analogReadResolution(i32 %res) #0 !dbg !326 {
entry:
  %res.addr = alloca i32, align 4
  store i32 %res, i32* %res.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %res.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i32, i32* %res.addr, align 4, !dbg !331
  store i32 %0, i32* @_readResolution, align 4, !dbg !332
  ret void, !dbg !333
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @analogWriteResolution(i32 %res) #0 !dbg !334 {
entry:
  %res.addr = alloca i32, align 4
  store i32 %res, i32* %res.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %res.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i32, i32* %res.addr, align 4, !dbg !337
  store i32 %0, i32* @_writeResolution, align 4, !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @analogReference(i8 zeroext %ulMode) #0 !dbg !340 {
entry:
  %ulMode.addr = alloca i8, align 1
  store i8 %ulMode, i8* %ulMode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ulMode.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i8, i8* %ulMode.addr, align 1, !dbg !345
  store i8 %0, i8* @analog_reference, align 1, !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @analogRead(i32 %ulPin) #0 !dbg !254 {
entry:
  %ulPin.addr = alloca i32, align 4
  %ulValue = alloca i32, align 4
  %ulChannel = alloca i32, align 4
  store i32 %ulPin, i32* %ulPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulPin.addr, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata i32* %ulValue, metadata !350, metadata !DIExpression()), !dbg !351
  store i32 0, i32* %ulValue, align 4, !dbg !351
  call void @llvm.dbg.declare(metadata i32* %ulChannel, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load i32, i32* %ulPin.addr, align 4, !dbg !354
  %cmp = icmp ult i32 %0, 54, !dbg !356
  br i1 %cmp, label %if.then, label %if.end, !dbg !357

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ulPin.addr, align 4, !dbg !358
  %add = add i32 %1, 54, !dbg !358
  store i32 %add, i32* %ulPin.addr, align 4, !dbg !358
  br label %if.end, !dbg !359

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %ulPin.addr, align 4, !dbg !360
  %arrayidx = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %2, !dbg !361
  %ulADCChannelNumber = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx, i32 0, i32 7, !dbg !362
  %3 = load i8, i8* %ulADCChannelNumber, align 1, !dbg !362
  %conv = sext i8 %3 to i32, !dbg !361
  store i32 %conv, i32* %ulChannel, align 4, !dbg !363
  %4 = load i32, i32* %ulPin.addr, align 4, !dbg !364
  %arrayidx1 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %4, !dbg !365
  %ulAnalogChannel = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx1, i32 0, i32 6, !dbg !366
  %5 = load i8, i8* %ulAnalogChannel, align 4, !dbg !366
  %conv2 = sext i8 %5 to i32, !dbg !365
  switch i32 %conv2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
  ], !dbg !367

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %6 = load i32, i32* %ulChannel, align 4, !dbg !368
  %conv3 = trunc i32 %6 to i8, !dbg !368
  %call = call arm_aapcscc i32 @adc_get_channel_status(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*), i8 zeroext %conv3), !dbg !371
  %cmp4 = icmp ne i32 %call, 1, !dbg !372
  br i1 %cmp4, label %if.then6, label %if.end19, !dbg !373

if.then6:                                         ; preds = %sw.bb
  %7 = load i32, i32* %ulChannel, align 4, !dbg !374
  %conv7 = trunc i32 %7 to i8, !dbg !374
  call arm_aapcscc void @adc_enable_channel(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*), i8 zeroext %conv7), !dbg !376
  %8 = load i32, i32* @analogRead.latestSelectedChannel, align 4, !dbg !377
  %cmp8 = icmp ne i32 %8, -1, !dbg !379
  br i1 %cmp8, label %land.lhs.true, label %if.end14, !dbg !380

land.lhs.true:                                    ; preds = %if.then6
  %9 = load i32, i32* %ulChannel, align 4, !dbg !381
  %10 = load i32, i32* @analogRead.latestSelectedChannel, align 4, !dbg !382
  %cmp10 = icmp ne i32 %9, %10, !dbg !383
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !384

if.then12:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* @analogRead.latestSelectedChannel, align 4, !dbg !385
  %conv13 = trunc i32 %11 to i8, !dbg !385
  call arm_aapcscc void @adc_disable_channel(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*), i8 zeroext %conv13), !dbg !386
  br label %if.end14, !dbg !386

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %if.then6
  %12 = load i32, i32* %ulChannel, align 4, !dbg !387
  store i32 %12, i32* @analogRead.latestSelectedChannel, align 4, !dbg !388
  %13 = load i32, i32* %ulPin.addr, align 4, !dbg !389
  %arrayidx15 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %13, !dbg !390
  %14 = load i8, i8* %arrayidx15, align 1, !dbg !390
  %conv16 = zext i8 %14 to i32, !dbg !390
  %and = and i32 %conv16, 240, !dbg !391
  %or = or i32 %and, 4, !dbg !392
  %conv17 = trunc i32 %or to i8, !dbg !393
  %15 = load i32, i32* %ulPin.addr, align 4, !dbg !394
  %arrayidx18 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %15, !dbg !395
  store i8 %conv17, i8* %arrayidx18, align 1, !dbg !396
  br label %if.end19, !dbg !397

if.end19:                                         ; preds = %if.end14, %sw.bb
  call arm_aapcscc void @adc_start(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*)), !dbg !398
  br label %while.cond, !dbg !399

while.cond:                                       ; preds = %while.body, %if.end19
  %call20 = call arm_aapcscc i32 @adc_get_status(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*)), !dbg !400
  %and21 = and i32 %call20, 16777216, !dbg !401
  %cmp22 = icmp ne i32 %and21, 16777216, !dbg !402
  br i1 %cmp22, label %while.body, label %while.end, !dbg !399

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !399, !llvm.loop !403

while.end:                                        ; preds = %while.cond
  %call24 = call arm_aapcscc i32 @adc_get_latest_value(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*)), !dbg !405
  store i32 %call24, i32* %ulValue, align 4, !dbg !406
  %16 = load i32, i32* %ulValue, align 4, !dbg !407
  %17 = load i32, i32* @_readResolution, align 4, !dbg !408
  %call25 = call arm_aapcscc i32 @mapResolution(i32 %16, i32 12, i32 %17), !dbg !409
  store i32 %call25, i32* %ulValue, align 4, !dbg !410
  br label %sw.epilog, !dbg !411

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %ulValue, align 4, !dbg !412
  br label %sw.epilog, !dbg !413

sw.epilog:                                        ; preds = %sw.default, %while.end
  %18 = load i32, i32* %ulValue, align 4, !dbg !414
  ret i32 %18, !dbg !415
}

declare dso_local arm_aapcscc i32 @adc_get_channel_status(%struct.Adc*, i8 zeroext) #2

declare dso_local arm_aapcscc void @adc_enable_channel(%struct.Adc*, i8 zeroext) #2

declare dso_local arm_aapcscc void @adc_disable_channel(%struct.Adc*, i8 zeroext) #2

declare dso_local arm_aapcscc void @adc_start(%struct.Adc*) #2

declare dso_local arm_aapcscc i32 @adc_get_status(%struct.Adc*) #2

declare dso_local arm_aapcscc i32 @adc_get_latest_value(%struct.Adc*) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc i32 @mapResolution(i32 %value, i32 %from, i32 %to) #0 !dbg !416 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !419, metadata !DIExpression()), !dbg !420
  store i32 %from, i32* %from.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %from.addr, metadata !421, metadata !DIExpression()), !dbg !422
  store i32 %to, i32* %to.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %to.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i32, i32* %from.addr, align 4, !dbg !425
  %1 = load i32, i32* %to.addr, align 4, !dbg !427
  %cmp = icmp eq i32 %0, %1, !dbg !428
  br i1 %cmp, label %if.then, label %if.end, !dbg !429

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4, !dbg !430
  store i32 %2, i32* %retval, align 4, !dbg !431
  br label %return, !dbg !431

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %from.addr, align 4, !dbg !432
  %4 = load i32, i32* %to.addr, align 4, !dbg !434
  %cmp1 = icmp ugt i32 %3, %4, !dbg !435
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !436

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %value.addr, align 4, !dbg !437
  %6 = load i32, i32* %from.addr, align 4, !dbg !438
  %7 = load i32, i32* %to.addr, align 4, !dbg !439
  %sub = sub i32 %6, %7, !dbg !440
  %shr = lshr i32 %5, %sub, !dbg !441
  store i32 %shr, i32* %retval, align 4, !dbg !442
  br label %return, !dbg !442

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %value.addr, align 4, !dbg !443
  %9 = load i32, i32* %to.addr, align 4, !dbg !444
  %10 = load i32, i32* %from.addr, align 4, !dbg !445
  %sub3 = sub i32 %9, %10, !dbg !446
  %shl = shl i32 %8, %sub3, !dbg !447
  store i32 %shl, i32* %retval, align 4, !dbg !448
  br label %return, !dbg !448

return:                                           ; preds = %if.else, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !449
  ret i32 %11, !dbg !449
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @analogOutputInit() #0 !dbg !450 {
entry:
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @analogWrite(i32 %ulPin, i32 %ulValue) #0 !dbg !260 {
entry:
  %ulPin.addr = alloca i32, align 4
  %ulValue.addr = alloca i32, align 4
  %attr = alloca i32, align 4
  %channel = alloca i8, align 1
  %chDACC = alloca i32, align 4
  %chan = alloca i32, align 4
  %TC = alloca i32, align 4
  %channel70 = alloca i8, align 1
  %chNo = alloca i32, align 4
  %chA = alloca i32, align 4
  %chTC = alloca %struct.Tc*, align 4
  %interfaceID = alloca i32, align 4
  store i32 %ulPin, i32* %ulPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulPin.addr, metadata !454, metadata !DIExpression()), !dbg !455
  store i32 %ulValue, i32* %ulValue.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulValue.addr, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata i32* %attr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i32, i32* %ulPin.addr, align 4, !dbg !460
  %arrayidx = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %0, !dbg !461
  %ulPinAttribute = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx, i32 0, i32 5, !dbg !462
  %1 = load i32, i32* %ulPinAttribute, align 4, !dbg !462
  store i32 %1, i32* %attr, align 4, !dbg !459
  %2 = load i32, i32* %attr, align 4, !dbg !463
  %and = and i32 %2, 2, !dbg !465
  %cmp = icmp eq i32 %and, 2, !dbg !466
  br i1 %cmp, label %if.then, label %if.end33, !dbg !467

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %channel, metadata !468, metadata !DIExpression()), !dbg !471
  %3 = load i32, i32* %ulPin.addr, align 4, !dbg !472
  %arrayidx1 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %3, !dbg !473
  %ulADCChannelNumber = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx1, i32 0, i32 7, !dbg !474
  %4 = load i8, i8* %ulADCChannelNumber, align 1, !dbg !474
  store i8 %4, i8* %channel, align 1, !dbg !471
  %5 = load i8, i8* %channel, align 1, !dbg !475
  %conv = sext i8 %5 to i32, !dbg !475
  %cmp2 = icmp eq i32 %conv, 16, !dbg !477
  br i1 %cmp2, label %if.then7, label %lor.lhs.false, !dbg !478

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i8, i8* %channel, align 1, !dbg !479
  %conv4 = sext i8 %6 to i32, !dbg !479
  %cmp5 = icmp eq i32 %conv4, 17, !dbg !480
  br i1 %cmp5, label %if.then7, label %if.end32, !dbg !481

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  call void @llvm.dbg.declare(metadata i32* %chDACC, metadata !482, metadata !DIExpression()), !dbg !484
  %7 = load i8, i8* %channel, align 1, !dbg !485
  %conv8 = sext i8 %7 to i32, !dbg !485
  %cmp9 = icmp eq i32 %conv8, 16, !dbg !486
  %8 = zext i1 %cmp9 to i64, !dbg !487
  %cond = select i1 %cmp9, i32 0, i32 1, !dbg !487
  store i32 %cond, i32* %chDACC, align 4, !dbg !484
  %call = call arm_aapcscc i32 @dacc_get_channel_status(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*)), !dbg !488
  %cmp11 = icmp eq i32 %call, 0, !dbg !490
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !491

if.then13:                                        ; preds = %if.then7
  %call14 = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 38), !dbg !492
  call arm_aapcscc void @dacc_reset(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*)), !dbg !494
  %call15 = call arm_aapcscc i32 @dacc_set_transfer_mode(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*), i32 0), !dbg !495
  %call16 = call arm_aapcscc i32 @dacc_set_power_save(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*), i32 0, i32 0), !dbg !496
  %call17 = call arm_aapcscc i32 @dacc_set_timing(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*), i32 8, i32 0, i32 16), !dbg !497
  %call18 = call arm_aapcscc i32 @dacc_set_analog_control(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*), i32 266), !dbg !498
  br label %if.end, !dbg !499

if.end:                                           ; preds = %if.then13, %if.then7
  %9 = load i32, i32* %chDACC, align 4, !dbg !500
  %call19 = call arm_aapcscc i32 @dacc_set_channel_selection(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*), i32 %9), !dbg !501
  %call20 = call arm_aapcscc i32 @dacc_get_channel_status(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*)), !dbg !502
  %10 = load i32, i32* %chDACC, align 4, !dbg !504
  %shl = shl i32 1, %10, !dbg !505
  %and21 = and i32 %call20, %shl, !dbg !506
  %cmp22 = icmp eq i32 %and21, 0, !dbg !507
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !508

if.then24:                                        ; preds = %if.end
  %11 = load i32, i32* %chDACC, align 4, !dbg !509
  %call25 = call arm_aapcscc i32 @dacc_enable_channel(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*), i32 %11), !dbg !511
  br label %if.end26, !dbg !512

if.end26:                                         ; preds = %if.then24, %if.end
  %12 = load i32, i32* %ulValue.addr, align 4, !dbg !513
  %13 = load i32, i32* @_writeResolution, align 4, !dbg !514
  %call27 = call arm_aapcscc i32 @mapResolution(i32 %12, i32 %13, i32 12), !dbg !515
  store i32 %call27, i32* %ulValue.addr, align 4, !dbg !516
  %14 = load i32, i32* %ulValue.addr, align 4, !dbg !517
  call arm_aapcscc void @dacc_write_conversion_data(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*), i32 %14), !dbg !518
  br label %while.cond, !dbg !519

while.cond:                                       ; preds = %while.body, %if.end26
  %call28 = call arm_aapcscc i32 @dacc_get_interrupt_status(%struct.Dacc* inttoptr (i32 1074561024 to %struct.Dacc*)), !dbg !520
  %and29 = and i32 %call28, 2, !dbg !521
  %cmp30 = icmp eq i32 %and29, 0, !dbg !522
  br i1 %cmp30, label %while.body, label %while.end, !dbg !519

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !519, !llvm.loop !523

while.end:                                        ; preds = %while.cond
  br label %if.end129, !dbg !525

if.end32:                                         ; preds = %lor.lhs.false
  br label %if.end33, !dbg !526

if.end33:                                         ; preds = %if.end32, %entry
  %15 = load i32, i32* %attr, align 4, !dbg !527
  %and34 = and i32 %15, 8, !dbg !529
  %cmp35 = icmp eq i32 %and34, 8, !dbg !530
  br i1 %cmp35, label %if.then37, label %if.end64, !dbg !531

if.then37:                                        ; preds = %if.end33
  %16 = load i32, i32* %ulValue.addr, align 4, !dbg !532
  %17 = load i32, i32* @_writeResolution, align 4, !dbg !534
  %call38 = call arm_aapcscc i32 @mapResolution(i32 %16, i32 %17, i32 8), !dbg !535
  store i32 %call38, i32* %ulValue.addr, align 4, !dbg !536
  %18 = load i8, i8* @PWMEnabled, align 1, !dbg !537
  %tobool = icmp ne i8 %18, 0, !dbg !537
  br i1 %tobool, label %if.end41, label %if.then39, !dbg !539

if.then39:                                        ; preds = %if.then37
  %call40 = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 36), !dbg !540
  call arm_aapcscc void @PWMC_ConfigureClocks(i32 255000, i32 0, i32 84000000), !dbg !542
  store i8 1, i8* @PWMEnabled, align 1, !dbg !543
  br label %if.end41, !dbg !544

if.end41:                                         ; preds = %if.then39, %if.then37
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !545, metadata !DIExpression()), !dbg !546
  %19 = load i32, i32* %ulPin.addr, align 4, !dbg !547
  %arrayidx42 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %19, !dbg !548
  %ulPWMChannel = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx42, i32 0, i32 8, !dbg !549
  %20 = load i8, i8* %ulPWMChannel, align 2, !dbg !549
  %conv43 = sext i8 %20 to i32, !dbg !548
  store i32 %conv43, i32* %chan, align 4, !dbg !546
  %21 = load i32, i32* %ulPin.addr, align 4, !dbg !550
  %arrayidx44 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %21, !dbg !552
  %22 = load i8, i8* %arrayidx44, align 1, !dbg !552
  %conv45 = zext i8 %22 to i32, !dbg !552
  %and46 = and i32 %conv45, 15, !dbg !553
  %cmp47 = icmp ne i32 %and46, 5, !dbg !554
  br i1 %cmp47, label %if.then49, label %if.end62, !dbg !555

if.then49:                                        ; preds = %if.end41
  %23 = load i32, i32* %ulPin.addr, align 4, !dbg !556
  %arrayidx50 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %23, !dbg !558
  %pPort = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx50, i32 0, i32 0, !dbg !559
  %24 = load %struct.Pio*, %struct.Pio** %pPort, align 4, !dbg !559
  %25 = load i32, i32* %ulPin.addr, align 4, !dbg !560
  %arrayidx51 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %25, !dbg !561
  %ulPinType = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx51, i32 0, i32 3, !dbg !562
  %26 = load i8, i8* %ulPinType, align 4, !dbg !562
  %27 = load i32, i32* %ulPin.addr, align 4, !dbg !563
  %arrayidx52 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %27, !dbg !564
  %ulPin53 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx52, i32 0, i32 1, !dbg !565
  %28 = load i32, i32* %ulPin53, align 4, !dbg !565
  %29 = load i32, i32* %ulPin.addr, align 4, !dbg !566
  %arrayidx54 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %29, !dbg !567
  %ulPinConfiguration = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx54, i32 0, i32 4, !dbg !568
  %30 = load i32, i32* %ulPinConfiguration, align 4, !dbg !568
  %call55 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %24, i8 zeroext %26, i32 %28, i32 %30), !dbg !569
  %31 = load i32, i32* %chan, align 4, !dbg !570
  call arm_aapcscc void @PWMC_ConfigureChannel(%struct.Pwm* inttoptr (i32 1074348032 to %struct.Pwm*), i32 %31, i32 11, i32 0, i32 0), !dbg !571
  %32 = load i32, i32* %chan, align 4, !dbg !572
  call arm_aapcscc void @PWMC_SetPeriod(%struct.Pwm* inttoptr (i32 1074348032 to %struct.Pwm*), i32 %32, i16 zeroext 255), !dbg !573
  %33 = load i32, i32* %chan, align 4, !dbg !574
  %34 = load i32, i32* %ulValue.addr, align 4, !dbg !575
  %conv56 = trunc i32 %34 to i16, !dbg !575
  call arm_aapcscc void @PWMC_SetDutyCycle(%struct.Pwm* inttoptr (i32 1074348032 to %struct.Pwm*), i32 %33, i16 zeroext %conv56), !dbg !576
  %35 = load i32, i32* %chan, align 4, !dbg !577
  call arm_aapcscc void @PWMC_EnableChannel(%struct.Pwm* inttoptr (i32 1074348032 to %struct.Pwm*), i32 %35), !dbg !578
  %36 = load i32, i32* %ulPin.addr, align 4, !dbg !579
  %arrayidx57 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %36, !dbg !580
  %37 = load i8, i8* %arrayidx57, align 1, !dbg !580
  %conv58 = zext i8 %37 to i32, !dbg !580
  %and59 = and i32 %conv58, 240, !dbg !581
  %or = or i32 %and59, 5, !dbg !582
  %conv60 = trunc i32 %or to i8, !dbg !583
  %38 = load i32, i32* %ulPin.addr, align 4, !dbg !584
  %arrayidx61 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %38, !dbg !585
  store i8 %conv60, i8* %arrayidx61, align 1, !dbg !586
  br label %if.end62, !dbg !587

if.end62:                                         ; preds = %if.then49, %if.end41
  %39 = load i32, i32* %chan, align 4, !dbg !588
  %40 = load i32, i32* %ulValue.addr, align 4, !dbg !589
  %conv63 = trunc i32 %40 to i16, !dbg !589
  call arm_aapcscc void @PWMC_SetDutyCycle(%struct.Pwm* inttoptr (i32 1074348032 to %struct.Pwm*), i32 %39, i16 zeroext %conv63), !dbg !590
  br label %if.end129, !dbg !591

if.end64:                                         ; preds = %if.end33
  %41 = load i32, i32* %attr, align 4, !dbg !592
  %and65 = and i32 %41, 16, !dbg !594
  %cmp66 = icmp eq i32 %and65, 16, !dbg !595
  br i1 %cmp66, label %if.then68, label %if.end123, !dbg !596

if.then68:                                        ; preds = %if.end64
  call void @llvm.dbg.declare(metadata i32* %TC, metadata !597, metadata !DIExpression()), !dbg !599
  store i32 42000, i32* %TC, align 4, !dbg !599
  %42 = load i32, i32* %ulValue.addr, align 4, !dbg !600
  %43 = load i32, i32* @_writeResolution, align 4, !dbg !601
  %call69 = call arm_aapcscc i32 @mapResolution(i32 %42, i32 %43, i32 8), !dbg !602
  store i32 %call69, i32* %ulValue.addr, align 4, !dbg !603
  %44 = load i32, i32* %ulValue.addr, align 4, !dbg !604
  %mul = mul i32 %44, 42000, !dbg !605
  store i32 %mul, i32* %ulValue.addr, align 4, !dbg !606
  %45 = load i32, i32* %ulValue.addr, align 4, !dbg !607
  %div = udiv i32 %45, 255, !dbg !608
  store i32 %div, i32* %ulValue.addr, align 4, !dbg !609
  call void @llvm.dbg.declare(metadata i8* %channel70, metadata !610, metadata !DIExpression()), !dbg !612
  %46 = load i32, i32* %ulPin.addr, align 4, !dbg !613
  %arrayidx71 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %46, !dbg !614
  %ulTCChannel = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx71, i32 0, i32 9, !dbg !615
  %47 = load i8, i8* %ulTCChannel, align 1, !dbg !615
  store i8 %47, i8* %channel70, align 1, !dbg !612
  call void @llvm.dbg.declare(metadata i32* %chNo, metadata !616, metadata !DIExpression()), !dbg !617
  %48 = load i8, i8* %channel70, align 1, !dbg !618
  %idxprom = sext i8 %48 to i32, !dbg !619
  %arrayidx72 = getelementptr inbounds [18 x i32], [18 x i32]* @analogWrite.channelToChNo, i32 0, i32 %idxprom, !dbg !619
  %49 = load i32, i32* %arrayidx72, align 4, !dbg !619
  store i32 %49, i32* %chNo, align 4, !dbg !617
  call void @llvm.dbg.declare(metadata i32* %chA, metadata !620, metadata !DIExpression()), !dbg !621
  %50 = load i8, i8* %channel70, align 1, !dbg !622
  %idxprom73 = sext i8 %50 to i32, !dbg !623
  %arrayidx74 = getelementptr inbounds [18 x i32], [18 x i32]* @analogWrite.channelToAB, i32 0, i32 %idxprom73, !dbg !623
  %51 = load i32, i32* %arrayidx74, align 4, !dbg !623
  store i32 %51, i32* %chA, align 4, !dbg !621
  call void @llvm.dbg.declare(metadata %struct.Tc** %chTC, metadata !624, metadata !DIExpression()), !dbg !625
  %52 = load i8, i8* %channel70, align 1, !dbg !626
  %idxprom75 = sext i8 %52 to i32, !dbg !627
  %arrayidx76 = getelementptr inbounds [18 x %struct.Tc*], [18 x %struct.Tc*]* @analogWrite.channelToTC, i32 0, i32 %idxprom75, !dbg !627
  %53 = load %struct.Tc*, %struct.Tc** %arrayidx76, align 4, !dbg !627
  store %struct.Tc* %53, %struct.Tc** %chTC, align 4, !dbg !625
  call void @llvm.dbg.declare(metadata i32* %interfaceID, metadata !628, metadata !DIExpression()), !dbg !629
  %54 = load i8, i8* %channel70, align 1, !dbg !630
  %idxprom77 = sext i8 %54 to i32, !dbg !631
  %arrayidx78 = getelementptr inbounds [18 x i32], [18 x i32]* @analogWrite.channelToId, i32 0, i32 %idxprom77, !dbg !631
  %55 = load i32, i32* %arrayidx78, align 4, !dbg !631
  store i32 %55, i32* %interfaceID, align 4, !dbg !629
  %56 = load i32, i32* %interfaceID, align 4, !dbg !632
  %arrayidx79 = getelementptr inbounds [9 x i8], [9 x i8]* @TCChanEnabled, i32 0, i32 %56, !dbg !634
  %57 = load i8, i8* %arrayidx79, align 1, !dbg !634
  %tobool80 = icmp ne i8 %57, 0, !dbg !634
  br i1 %tobool80, label %if.end83, label %if.then81, !dbg !635

if.then81:                                        ; preds = %if.then68
  %58 = load i32, i32* %interfaceID, align 4, !dbg !636
  %add = add i32 27, %58, !dbg !638
  %call82 = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 %add), !dbg !639
  %59 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !640
  %60 = load i32, i32* %chNo, align 4, !dbg !641
  call arm_aapcscc void @TC_Configure(%struct.Tc* %59, i32 %60, i32 168477696), !dbg !642
  %61 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !643
  %62 = load i32, i32* %chNo, align 4, !dbg !644
  call arm_aapcscc void @TC_SetRC(%struct.Tc* %61, i32 %62, i32 42000), !dbg !645
  br label %if.end83, !dbg !646

if.end83:                                         ; preds = %if.then81, %if.then68
  %63 = load i32, i32* %ulValue.addr, align 4, !dbg !647
  %cmp84 = icmp eq i32 %63, 0, !dbg !649
  br i1 %cmp84, label %if.then86, label %if.else90, !dbg !650

if.then86:                                        ; preds = %if.end83
  %64 = load i32, i32* %chA, align 4, !dbg !651
  %tobool87 = icmp ne i32 %64, 0, !dbg !651
  br i1 %tobool87, label %if.then88, label %if.else, !dbg !654

if.then88:                                        ; preds = %if.then86
  %65 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !655
  %66 = load i32, i32* %chNo, align 4, !dbg !656
  call arm_aapcscc void @TC_SetCMR_ChannelA(%struct.Tc* %65, i32 %66, i32 655360), !dbg !657
  br label %if.end89, !dbg !657

if.else:                                          ; preds = %if.then86
  %67 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !658
  %68 = load i32, i32* %chNo, align 4, !dbg !659
  call arm_aapcscc void @TC_SetCMR_ChannelB(%struct.Tc* %67, i32 %68, i32 167772160), !dbg !660
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then88
  br label %if.end95, !dbg !661

if.else90:                                        ; preds = %if.end83
  %69 = load i32, i32* %chA, align 4, !dbg !662
  %tobool91 = icmp ne i32 %69, 0, !dbg !662
  br i1 %tobool91, label %if.then92, label %if.else93, !dbg !665

if.then92:                                        ; preds = %if.else90
  %70 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !666
  %71 = load i32, i32* %chNo, align 4, !dbg !668
  %72 = load i32, i32* %ulValue.addr, align 4, !dbg !669
  call arm_aapcscc void @TC_SetRA(%struct.Tc* %70, i32 %71, i32 %72), !dbg !670
  %73 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !671
  %74 = load i32, i32* %chNo, align 4, !dbg !672
  call arm_aapcscc void @TC_SetCMR_ChannelA(%struct.Tc* %73, i32 %74, i32 393216), !dbg !673
  br label %if.end94, !dbg !674

if.else93:                                        ; preds = %if.else90
  %75 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !675
  %76 = load i32, i32* %chNo, align 4, !dbg !677
  %77 = load i32, i32* %ulValue.addr, align 4, !dbg !678
  call arm_aapcscc void @TC_SetRB(%struct.Tc* %75, i32 %76, i32 %77), !dbg !679
  %78 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !680
  %79 = load i32, i32* %chNo, align 4, !dbg !681
  call arm_aapcscc void @TC_SetCMR_ChannelB(%struct.Tc* %78, i32 %79, i32 100663296), !dbg !682
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %if.then92
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end89
  %80 = load i32, i32* %ulPin.addr, align 4, !dbg !683
  %arrayidx96 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %80, !dbg !685
  %81 = load i8, i8* %arrayidx96, align 1, !dbg !685
  %conv97 = zext i8 %81 to i32, !dbg !685
  %and98 = and i32 %conv97, 15, !dbg !686
  %cmp99 = icmp ne i32 %and98, 5, !dbg !687
  br i1 %cmp99, label %if.then101, label %if.end117, !dbg !688

if.then101:                                       ; preds = %if.end95
  %82 = load i32, i32* %ulPin.addr, align 4, !dbg !689
  %arrayidx102 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %82, !dbg !691
  %pPort103 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx102, i32 0, i32 0, !dbg !692
  %83 = load %struct.Pio*, %struct.Pio** %pPort103, align 4, !dbg !692
  %84 = load i32, i32* %ulPin.addr, align 4, !dbg !693
  %arrayidx104 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %84, !dbg !694
  %ulPinType105 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx104, i32 0, i32 3, !dbg !695
  %85 = load i8, i8* %ulPinType105, align 4, !dbg !695
  %86 = load i32, i32* %ulPin.addr, align 4, !dbg !696
  %arrayidx106 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %86, !dbg !697
  %ulPin107 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx106, i32 0, i32 1, !dbg !698
  %87 = load i32, i32* %ulPin107, align 4, !dbg !698
  %88 = load i32, i32* %ulPin.addr, align 4, !dbg !699
  %arrayidx108 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %88, !dbg !700
  %ulPinConfiguration109 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx108, i32 0, i32 4, !dbg !701
  %89 = load i32, i32* %ulPinConfiguration109, align 4, !dbg !701
  %call110 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %83, i8 zeroext %85, i32 %87, i32 %89), !dbg !702
  %90 = load i32, i32* %ulPin.addr, align 4, !dbg !703
  %arrayidx111 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %90, !dbg !704
  %91 = load i8, i8* %arrayidx111, align 1, !dbg !704
  %conv112 = zext i8 %91 to i32, !dbg !704
  %and113 = and i32 %conv112, 240, !dbg !705
  %or114 = or i32 %and113, 5, !dbg !706
  %conv115 = trunc i32 %or114 to i8, !dbg !707
  %92 = load i32, i32* %ulPin.addr, align 4, !dbg !708
  %arrayidx116 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %92, !dbg !709
  store i8 %conv115, i8* %arrayidx116, align 1, !dbg !710
  br label %if.end117, !dbg !711

if.end117:                                        ; preds = %if.then101, %if.end95
  %93 = load i32, i32* %interfaceID, align 4, !dbg !712
  %arrayidx118 = getelementptr inbounds [9 x i8], [9 x i8]* @TCChanEnabled, i32 0, i32 %93, !dbg !714
  %94 = load i8, i8* %arrayidx118, align 1, !dbg !714
  %tobool119 = icmp ne i8 %94, 0, !dbg !714
  br i1 %tobool119, label %if.end122, label %if.then120, !dbg !715

if.then120:                                       ; preds = %if.end117
  %95 = load %struct.Tc*, %struct.Tc** %chTC, align 4, !dbg !716
  %96 = load i32, i32* %chNo, align 4, !dbg !718
  call arm_aapcscc void @TC_Start(%struct.Tc* %95, i32 %96), !dbg !719
  %97 = load i32, i32* %interfaceID, align 4, !dbg !720
  %arrayidx121 = getelementptr inbounds [9 x i8], [9 x i8]* @TCChanEnabled, i32 0, i32 %97, !dbg !721
  store i8 1, i8* %arrayidx121, align 1, !dbg !722
  br label %if.end122, !dbg !723

if.end122:                                        ; preds = %if.then120, %if.end117
  br label %if.end129, !dbg !724

if.end123:                                        ; preds = %if.end64
  %98 = load i32, i32* %ulPin.addr, align 4, !dbg !725
  call arm_aapcscc void @pinMode(i32 %98, i32 1), !dbg !726
  %99 = load i32, i32* %ulValue.addr, align 4, !dbg !727
  %100 = load i32, i32* @_writeResolution, align 4, !dbg !728
  %call124 = call arm_aapcscc i32 @mapResolution(i32 %99, i32 %100, i32 8), !dbg !729
  store i32 %call124, i32* %ulValue.addr, align 4, !dbg !730
  %101 = load i32, i32* %ulValue.addr, align 4, !dbg !731
  %cmp125 = icmp ult i32 %101, 128, !dbg !733
  br i1 %cmp125, label %if.then127, label %if.else128, !dbg !734

if.then127:                                       ; preds = %if.end123
  %102 = load i32, i32* %ulPin.addr, align 4, !dbg !735
  call arm_aapcscc void @digitalWrite(i32 %102, i32 0), !dbg !736
  br label %if.end129, !dbg !736

if.else128:                                       ; preds = %if.end123
  %103 = load i32, i32* %ulPin.addr, align 4, !dbg !737
  call arm_aapcscc void @digitalWrite(i32 %103, i32 1), !dbg !738
  br label %if.end129

if.end129:                                        ; preds = %while.end, %if.end62, %if.end122, %if.else128, %if.then127
  ret void, !dbg !739
}

declare dso_local arm_aapcscc i32 @dacc_get_channel_status(%struct.Dacc*) #2

declare dso_local arm_aapcscc i32 @pmc_enable_periph_clk(i32) #2

declare dso_local arm_aapcscc void @dacc_reset(%struct.Dacc*) #2

declare dso_local arm_aapcscc i32 @dacc_set_transfer_mode(%struct.Dacc*, i32) #2

declare dso_local arm_aapcscc i32 @dacc_set_power_save(%struct.Dacc*, i32, i32) #2

declare dso_local arm_aapcscc i32 @dacc_set_timing(%struct.Dacc*, i32, i32, i32) #2

declare dso_local arm_aapcscc i32 @dacc_set_analog_control(%struct.Dacc*, i32) #2

declare dso_local arm_aapcscc i32 @dacc_set_channel_selection(%struct.Dacc*, i32) #2

declare dso_local arm_aapcscc i32 @dacc_enable_channel(%struct.Dacc*, i32) #2

declare dso_local arm_aapcscc void @dacc_write_conversion_data(%struct.Dacc*, i32) #2

declare dso_local arm_aapcscc i32 @dacc_get_interrupt_status(%struct.Dacc*) #2

declare dso_local arm_aapcscc void @PWMC_ConfigureClocks(i32, i32, i32) #2

declare dso_local arm_aapcscc i32 @PIO_Configure(%struct.Pio*, i8 zeroext, i32, i32) #2

declare dso_local arm_aapcscc void @PWMC_ConfigureChannel(%struct.Pwm*, i32, i32, i32, i32) #2

declare dso_local arm_aapcscc void @PWMC_SetPeriod(%struct.Pwm*, i32, i16 zeroext) #2

declare dso_local arm_aapcscc void @PWMC_SetDutyCycle(%struct.Pwm*, i32, i16 zeroext) #2

declare dso_local arm_aapcscc void @PWMC_EnableChannel(%struct.Pwm*, i32) #2

declare dso_local arm_aapcscc void @TC_Configure(%struct.Tc*, i32, i32) #2

declare dso_local arm_aapcscc void @TC_SetRC(%struct.Tc*, i32, i32) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @TC_SetCMR_ChannelA(%struct.Tc* %tc, i32 %chan, i32 %v) #0 !dbg !740 {
entry:
  %tc.addr = alloca %struct.Tc*, align 4
  %chan.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  store %struct.Tc* %tc, %struct.Tc** %tc.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.Tc** %tc.addr, metadata !743, metadata !DIExpression()), !dbg !744
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !745, metadata !DIExpression()), !dbg !746
  store i32 %v, i32* %v.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %v.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %0 = load %struct.Tc*, %struct.Tc** %tc.addr, align 4, !dbg !749
  %TC_CHANNEL = getelementptr inbounds %struct.Tc, %struct.Tc* %0, i32 0, i32 0, !dbg !750
  %1 = load i32, i32* %chan.addr, align 4, !dbg !751
  %arrayidx = getelementptr inbounds [3 x %struct.TcChannel], [3 x %struct.TcChannel]* %TC_CHANNEL, i32 0, i32 %1, !dbg !749
  %TC_CMR = getelementptr inbounds %struct.TcChannel, %struct.TcChannel* %arrayidx, i32 0, i32 1, !dbg !752
  %2 = load volatile i32, i32* %TC_CMR, align 4, !dbg !752
  %and = and i32 %2, -983041, !dbg !753
  %3 = load i32, i32* %v.addr, align 4, !dbg !754
  %or = or i32 %and, %3, !dbg !755
  %4 = load %struct.Tc*, %struct.Tc** %tc.addr, align 4, !dbg !756
  %TC_CHANNEL1 = getelementptr inbounds %struct.Tc, %struct.Tc* %4, i32 0, i32 0, !dbg !757
  %5 = load i32, i32* %chan.addr, align 4, !dbg !758
  %arrayidx2 = getelementptr inbounds [3 x %struct.TcChannel], [3 x %struct.TcChannel]* %TC_CHANNEL1, i32 0, i32 %5, !dbg !756
  %TC_CMR3 = getelementptr inbounds %struct.TcChannel, %struct.TcChannel* %arrayidx2, i32 0, i32 1, !dbg !759
  store volatile i32 %or, i32* %TC_CMR3, align 4, !dbg !760
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @TC_SetCMR_ChannelB(%struct.Tc* %tc, i32 %chan, i32 %v) #0 !dbg !762 {
entry:
  %tc.addr = alloca %struct.Tc*, align 4
  %chan.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  store %struct.Tc* %tc, %struct.Tc** %tc.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.Tc** %tc.addr, metadata !763, metadata !DIExpression()), !dbg !764
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !765, metadata !DIExpression()), !dbg !766
  store i32 %v, i32* %v.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %v.addr, metadata !767, metadata !DIExpression()), !dbg !768
  %0 = load %struct.Tc*, %struct.Tc** %tc.addr, align 4, !dbg !769
  %TC_CHANNEL = getelementptr inbounds %struct.Tc, %struct.Tc* %0, i32 0, i32 0, !dbg !770
  %1 = load i32, i32* %chan.addr, align 4, !dbg !771
  %arrayidx = getelementptr inbounds [3 x %struct.TcChannel], [3 x %struct.TcChannel]* %TC_CHANNEL, i32 0, i32 %1, !dbg !769
  %TC_CMR = getelementptr inbounds %struct.TcChannel, %struct.TcChannel* %arrayidx, i32 0, i32 1, !dbg !772
  %2 = load volatile i32, i32* %TC_CMR, align 4, !dbg !772
  %and = and i32 %2, -251658241, !dbg !773
  %3 = load i32, i32* %v.addr, align 4, !dbg !774
  %or = or i32 %and, %3, !dbg !775
  %4 = load %struct.Tc*, %struct.Tc** %tc.addr, align 4, !dbg !776
  %TC_CHANNEL1 = getelementptr inbounds %struct.Tc, %struct.Tc* %4, i32 0, i32 0, !dbg !777
  %5 = load i32, i32* %chan.addr, align 4, !dbg !778
  %arrayidx2 = getelementptr inbounds [3 x %struct.TcChannel], [3 x %struct.TcChannel]* %TC_CHANNEL1, i32 0, i32 %5, !dbg !776
  %TC_CMR3 = getelementptr inbounds %struct.TcChannel, %struct.TcChannel* %arrayidx2, i32 0, i32 1, !dbg !779
  store volatile i32 %or, i32* %TC_CMR3, align 4, !dbg !780
  ret void, !dbg !781
}

declare dso_local arm_aapcscc void @TC_SetRA(%struct.Tc*, i32, i32) #2

declare dso_local arm_aapcscc void @TC_SetRB(%struct.Tc*, i32, i32) #2

declare dso_local arm_aapcscc void @TC_Start(%struct.Tc*, i32) #2

declare dso_local arm_aapcscc void @pinMode(i32, i32) #2

declare dso_local arm_aapcscc void @digitalWrite(i32, i32) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!321, !322, !323, !324}
!llvm.ident = !{!325}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_readResolution", scope: !2, file: !244, line: 25, type: !313, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !241, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_analog.c", directory: "/home/aaa/llvm-arduino-due")
!4 = !{!5, !10, !33}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_eAnalogReference", file: !6, line: 29, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_analog.h", directory: "/home/aaa")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9}
!9 = !DIEnumerator(name: "AR_DEFAULT", value: 0, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EAnalogChannel", file: !11, line: 86, baseType: !12, size: 8, elements: !13)
!11 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Arduino.h", directory: "/home/aaa")
!12 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!14 = !DIEnumerator(name: "NO_ADC", value: -1)
!15 = !DIEnumerator(name: "ADC0", value: 0)
!16 = !DIEnumerator(name: "ADC1", value: 1)
!17 = !DIEnumerator(name: "ADC2", value: 2)
!18 = !DIEnumerator(name: "ADC3", value: 3)
!19 = !DIEnumerator(name: "ADC4", value: 4)
!20 = !DIEnumerator(name: "ADC5", value: 5)
!21 = !DIEnumerator(name: "ADC6", value: 6)
!22 = !DIEnumerator(name: "ADC7", value: 7)
!23 = !DIEnumerator(name: "ADC8", value: 8)
!24 = !DIEnumerator(name: "ADC9", value: 9)
!25 = !DIEnumerator(name: "ADC10", value: 10)
!26 = !DIEnumerator(name: "ADC11", value: 11)
!27 = !DIEnumerator(name: "ADC12", value: 12)
!28 = !DIEnumerator(name: "ADC13", value: 13)
!29 = !DIEnumerator(name: "ADC14", value: 14)
!30 = !DIEnumerator(name: "ADC15", value: 15)
!31 = !DIEnumerator(name: "DA0", value: 16)
!32 = !DIEnumerator(name: "DA1", value: 17)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ETCChannel", file: !11, line: 126, baseType: !12, size: 8, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !DIEnumerator(name: "NOT_ON_TIMER", value: -1)
!36 = !DIEnumerator(name: "TC0_CHA0", value: 0)
!37 = !DIEnumerator(name: "TC0_CHB0", value: 1)
!38 = !DIEnumerator(name: "TC0_CHA1", value: 2)
!39 = !DIEnumerator(name: "TC0_CHB1", value: 3)
!40 = !DIEnumerator(name: "TC0_CHA2", value: 4)
!41 = !DIEnumerator(name: "TC0_CHB2", value: 5)
!42 = !DIEnumerator(name: "TC1_CHA3", value: 6)
!43 = !DIEnumerator(name: "TC1_CHB3", value: 7)
!44 = !DIEnumerator(name: "TC1_CHA4", value: 8)
!45 = !DIEnumerator(name: "TC1_CHB4", value: 9)
!46 = !DIEnumerator(name: "TC1_CHA5", value: 10)
!47 = !DIEnumerator(name: "TC1_CHB5", value: 11)
!48 = !DIEnumerator(name: "TC2_CHA6", value: 12)
!49 = !DIEnumerator(name: "TC2_CHB6", value: 13)
!50 = !DIEnumerator(name: "TC2_CHA7", value: 14)
!51 = !DIEnumerator(name: "TC2_CHB7", value: 15)
!52 = !DIEnumerator(name: "TC2_CHA8", value: 16)
!53 = !DIEnumerator(name: "TC2_CHB8", value: 17)
!54 = !{!55, !64, !120, !156}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "Adc", file: !57, line: 76, baseType: !58)
!57 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_adc.h", directory: "/home/aaa")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 41, size: 2368, elements: !59)
!59 = !{!60, !69, !71, !72, !73, !74, !75, !78, !82, !83, !84, !85, !86, !87, !91, !92, !93, !94, !95, !96, !100, !101, !102, !106, !107, !108, !112, !113, !114, !115, !116, !117, !118, !119}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CR", scope: !58, file: !57, line: 42, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !62, line: 53, baseType: !63)
!62 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 66, baseType: !66)
!65 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !67, line: 56, baseType: !68)
!67 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_MR", scope: !58, file: !57, line: 43, baseType: !70, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !62, line: 54, baseType: !63)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_SEQR1", scope: !58, file: !57, line: 44, baseType: !70, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_SEQR2", scope: !58, file: !57, line: 45, baseType: !70, size: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CHER", scope: !58, file: !57, line: 46, baseType: !61, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CHDR", scope: !58, file: !57, line: 47, baseType: !61, size: 32, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CHSR", scope: !58, file: !57, line: 48, baseType: !76, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !62, line: 49, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !58, file: !57, line: 49, baseType: !79, size: 32, offset: 224)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 32, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_LCDR", scope: !58, file: !57, line: 50, baseType: !76, size: 32, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_IER", scope: !58, file: !57, line: 51, baseType: !61, size: 32, offset: 288)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_IDR", scope: !58, file: !57, line: 52, baseType: !61, size: 32, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_IMR", scope: !58, file: !57, line: 53, baseType: !76, size: 32, offset: 352)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_ISR", scope: !58, file: !57, line: 54, baseType: !76, size: 32, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !58, file: !57, line: 55, baseType: !88, size: 64, offset: 416)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 2)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_OVER", scope: !58, file: !57, line: 56, baseType: !76, size: 32, offset: 480)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_EMR", scope: !58, file: !57, line: 57, baseType: !70, size: 32, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CWR", scope: !58, file: !57, line: 58, baseType: !70, size: 32, offset: 544)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CGR", scope: !58, file: !57, line: 59, baseType: !70, size: 32, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_COR", scope: !58, file: !57, line: 60, baseType: !70, size: 32, offset: 608)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CDR", scope: !58, file: !57, line: 61, baseType: !97, size: 512, offset: 640)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 512, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !58, file: !57, line: 62, baseType: !79, size: 32, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_ACR", scope: !58, file: !57, line: 63, baseType: !70, size: 32, offset: 1184)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !58, file: !57, line: 64, baseType: !103, size: 608, offset: 1216)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 608, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 19)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_WPMR", scope: !58, file: !57, line: 65, baseType: !70, size: 32, offset: 1824)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_WPSR", scope: !58, file: !57, line: 66, baseType: !76, size: 32, offset: 1856)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !58, file: !57, line: 67, baseType: !109, size: 160, offset: 1888)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 160, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 5)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_RPR", scope: !58, file: !57, line: 68, baseType: !70, size: 32, offset: 2048)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_RCR", scope: !58, file: !57, line: 69, baseType: !70, size: 32, offset: 2080)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !58, file: !57, line: 70, baseType: !88, size: 64, offset: 2112)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_RNPR", scope: !58, file: !57, line: 71, baseType: !70, size: 32, offset: 2176)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_RNCR", scope: !58, file: !57, line: 72, baseType: !70, size: 32, offset: 2208)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved7", scope: !58, file: !57, line: 73, baseType: !88, size: 64, offset: 2240)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_PTCR", scope: !58, file: !57, line: 74, baseType: !61, size: 32, offset: 2304)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_PTSR", scope: !58, file: !57, line: 75, baseType: !76, size: 32, offset: 2336)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "Dacc", file: !122, line: 67, baseType: !123)
!122 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_dacc.h", directory: "/home/aaa")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 41, size: 2368, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !141, !142, !143, !144, !145, !149, !150, !151, !152, !153, !154, !155}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_CR", scope: !123, file: !122, line: 42, baseType: !61, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_MR", scope: !123, file: !122, line: 43, baseType: !70, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !123, file: !122, line: 44, baseType: !88, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_CHER", scope: !123, file: !122, line: 45, baseType: !61, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_CHDR", scope: !123, file: !122, line: 46, baseType: !61, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_CHSR", scope: !123, file: !122, line: 47, baseType: !76, size: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !123, file: !122, line: 48, baseType: !79, size: 32, offset: 224)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_CDR", scope: !123, file: !122, line: 49, baseType: !61, size: 32, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_IER", scope: !123, file: !122, line: 50, baseType: !61, size: 32, offset: 288)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_IDR", scope: !123, file: !122, line: 51, baseType: !61, size: 32, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_IMR", scope: !123, file: !122, line: 52, baseType: !76, size: 32, offset: 352)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_ISR", scope: !123, file: !122, line: 53, baseType: !76, size: 32, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !123, file: !122, line: 54, baseType: !138, size: 768, offset: 416)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 768, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 24)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_ACR", scope: !123, file: !122, line: 55, baseType: !70, size: 32, offset: 1184)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !123, file: !122, line: 56, baseType: !103, size: 608, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_WPMR", scope: !123, file: !122, line: 57, baseType: !70, size: 32, offset: 1824)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_WPSR", scope: !123, file: !122, line: 58, baseType: !76, size: 32, offset: 1856)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !123, file: !122, line: 59, baseType: !146, size: 224, offset: 1888)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 224, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 7)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_TPR", scope: !123, file: !122, line: 60, baseType: !70, size: 32, offset: 2112)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_TCR", scope: !123, file: !122, line: 61, baseType: !70, size: 32, offset: 2144)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !123, file: !122, line: 62, baseType: !88, size: 64, offset: 2176)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_TNPR", scope: !123, file: !122, line: 63, baseType: !70, size: 32, offset: 2240)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_TNCR", scope: !123, file: !122, line: 64, baseType: !70, size: 32, offset: 2272)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_PTCR", scope: !123, file: !122, line: 65, baseType: !61, size: 32, offset: 2304)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "DACC_PTSR", scope: !123, file: !122, line: 66, baseType: !76, size: 32, offset: 2336)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pwm", file: !158, line: 110, baseType: !159)
!158 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_pwm.h", directory: "/home/aaa")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 61, size: 6144, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !193, !197, !198, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !224, !228}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CLK", scope: !159, file: !158, line: 62, baseType: !70, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_ENA", scope: !159, file: !158, line: 63, baseType: !61, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_DIS", scope: !159, file: !158, line: 64, baseType: !61, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_SR", scope: !159, file: !158, line: 65, baseType: !76, size: 32, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_IER1", scope: !159, file: !158, line: 66, baseType: !61, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_IDR1", scope: !159, file: !158, line: 67, baseType: !61, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_IMR1", scope: !159, file: !158, line: 68, baseType: !76, size: 32, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_ISR1", scope: !159, file: !158, line: 69, baseType: !76, size: 32, offset: 224)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_SCM", scope: !159, file: !158, line: 70, baseType: !70, size: 32, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !159, file: !158, line: 71, baseType: !79, size: 32, offset: 288)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_SCUC", scope: !159, file: !158, line: 72, baseType: !70, size: 32, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_SCUP", scope: !159, file: !158, line: 73, baseType: !70, size: 32, offset: 352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_SCUPUPD", scope: !159, file: !158, line: 74, baseType: !61, size: 32, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_IER2", scope: !159, file: !158, line: 75, baseType: !61, size: 32, offset: 416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_IDR2", scope: !159, file: !158, line: 76, baseType: !61, size: 32, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_IMR2", scope: !159, file: !158, line: 77, baseType: !76, size: 32, offset: 480)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_ISR2", scope: !159, file: !158, line: 78, baseType: !76, size: 32, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_OOV", scope: !159, file: !158, line: 79, baseType: !70, size: 32, offset: 544)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_OS", scope: !159, file: !158, line: 80, baseType: !70, size: 32, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_OSS", scope: !159, file: !158, line: 81, baseType: !61, size: 32, offset: 608)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_OSC", scope: !159, file: !158, line: 82, baseType: !61, size: 32, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_OSSUPD", scope: !159, file: !158, line: 83, baseType: !61, size: 32, offset: 672)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_OSCUPD", scope: !159, file: !158, line: 84, baseType: !61, size: 32, offset: 704)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_FMR", scope: !159, file: !158, line: 85, baseType: !70, size: 32, offset: 736)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_FSR", scope: !159, file: !158, line: 86, baseType: !76, size: 32, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_FCR", scope: !159, file: !158, line: 87, baseType: !61, size: 32, offset: 800)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_FPV", scope: !159, file: !158, line: 88, baseType: !70, size: 32, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_FPE1", scope: !159, file: !158, line: 89, baseType: !70, size: 32, offset: 864)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_FPE2", scope: !159, file: !158, line: 90, baseType: !70, size: 32, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !159, file: !158, line: 91, baseType: !88, size: 64, offset: 928)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_ELMR", scope: !159, file: !158, line: 92, baseType: !192, size: 64, offset: 992)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !89)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !159, file: !158, line: 93, baseType: !194, size: 352, offset: 1056)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 352, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 11)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_SMMR", scope: !159, file: !158, line: 94, baseType: !70, size: 32, offset: 1408)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !159, file: !158, line: 95, baseType: !199, size: 384, offset: 1440)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 384, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 12)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_WPCR", scope: !159, file: !158, line: 96, baseType: !61, size: 32, offset: 1824)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_WPSR", scope: !159, file: !158, line: 97, baseType: !76, size: 32, offset: 1856)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !159, file: !158, line: 98, baseType: !146, size: 224, offset: 1888)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_TPR", scope: !159, file: !158, line: 99, baseType: !70, size: 32, offset: 2112)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_TCR", scope: !159, file: !158, line: 100, baseType: !70, size: 32, offset: 2144)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !159, file: !158, line: 101, baseType: !88, size: 64, offset: 2176)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_TNPR", scope: !159, file: !158, line: 102, baseType: !70, size: 32, offset: 2240)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_TNCR", scope: !159, file: !158, line: 103, baseType: !70, size: 32, offset: 2272)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_PTCR", scope: !159, file: !158, line: 104, baseType: !61, size: 32, offset: 2304)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_PTSR", scope: !159, file: !158, line: 105, baseType: !76, size: 32, offset: 2336)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved7", scope: !159, file: !158, line: 106, baseType: !88, size: 64, offset: 2368)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CMP", scope: !159, file: !158, line: 107, baseType: !214, size: 1024, offset: 2432)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !222)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "PwmCmp", file: !158, line: 57, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 52, size: 128, elements: !217)
!217 = !{!218, !219, !220, !221}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CMPV", scope: !216, file: !158, line: 53, baseType: !70, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CMPVUPD", scope: !216, file: !158, line: 54, baseType: !70, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CMPM", scope: !216, file: !158, line: 55, baseType: !70, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CMPMUPD", scope: !216, file: !158, line: 56, baseType: !70, size: 32, offset: 96)
!222 = !{!223}
!223 = !DISubrange(count: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved8", scope: !159, file: !158, line: 108, baseType: !225, size: 640, offset: 3456)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 640, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 20)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CH_NUM", scope: !159, file: !158, line: 109, baseType: !229, size: 2048, offset: 4096)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 2048, elements: !222)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "PwmCh_num", file: !158, line: 50, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 41, size: 256, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CMR", scope: !231, file: !158, line: 42, baseType: !70, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CDTY", scope: !231, file: !158, line: 43, baseType: !70, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CDTYUPD", scope: !231, file: !158, line: 44, baseType: !70, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CPRD", scope: !231, file: !158, line: 45, baseType: !70, size: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CPRDUPD", scope: !231, file: !158, line: 46, baseType: !70, size: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CCNT", scope: !231, file: !158, line: 47, baseType: !70, size: 32, offset: 160)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_DT", scope: !231, file: !158, line: 48, baseType: !70, size: 32, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_DTUPD", scope: !231, file: !158, line: 49, baseType: !70, size: 32, offset: 224)
!241 = !{!242, !246, !252, !258, !267, !269, !309, !0, !311, !314, !316}
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "analog_reference", scope: !2, file: !244, line: 45, type: !245, isLocal: false, isDefinition: true)
!244 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_analog.c", directory: "/home/aaa")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "eAnalogReference", file: !6, line: 32, baseType: !5)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression(DW_OP_constu, 54, DW_OP_stack_value))
!247 = distinct !DIGlobalVariable(name: "A0", scope: !2, file: !248, line: 182, type: !249, isLocal: true, isDefinition: true)
!248 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/variants/arduino_due_x/variant.h", directory: "/home/aaa")
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !65, line: 42, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !67, line: 28, baseType: !7)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "latestSelectedChannel", scope: !254, file: !244, line: 133, type: !64, isLocal: true, isDefinition: true)
!254 = distinct !DISubprogram(name: "analogRead", scope: !244, file: !244, line: 52, type: !255, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{!64, !64}
!257 = !{}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "channelToChNo", scope: !260, file: !244, line: 291, type: !263, isLocal: true, isDefinition: true)
!260 = distinct !DISubprogram(name: "analogWrite", scope: !244, file: !244, line: 202, type: !261, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !257)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !64, !64}
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 576, elements: !265)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!265 = !{!266}
!266 = !DISubrange(count: 18)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "channelToAB", scope: !260, file: !244, line: 292, type: !263, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "channelToTC", scope: !260, file: !244, line: 293, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 576, elements: !265)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tc", file: !274, line: 69, baseType: !275)
!274 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_tc.h", directory: "/home/aaa")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !274, line: 58, size: 1856, elements: !276)
!276 = !{!277, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "TC_CHANNEL", scope: !275, file: !274, line: 59, baseType: !278, size: 1536)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 1536, elements: !298)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "TcChannel", file: !274, line: 55, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !274, line: 41, size: 512, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "TC_CCR", scope: !280, file: !274, line: 42, baseType: !70, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "TC_CMR", scope: !280, file: !274, line: 43, baseType: !70, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "TC_SMMR", scope: !280, file: !274, line: 44, baseType: !70, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !280, file: !274, line: 45, baseType: !79, size: 32, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "TC_CV", scope: !280, file: !274, line: 46, baseType: !70, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "TC_RA", scope: !280, file: !274, line: 47, baseType: !70, size: 32, offset: 160)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "TC_RB", scope: !280, file: !274, line: 48, baseType: !70, size: 32, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "TC_RC", scope: !280, file: !274, line: 49, baseType: !70, size: 32, offset: 224)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "TC_SR", scope: !280, file: !274, line: 50, baseType: !70, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "TC_IER", scope: !280, file: !274, line: 51, baseType: !70, size: 32, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "TC_IDR", scope: !280, file: !274, line: 52, baseType: !70, size: 32, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "TC_IMR", scope: !280, file: !274, line: 53, baseType: !70, size: 32, offset: 352)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !280, file: !274, line: 54, baseType: !295, size: 128, offset: 384)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 4)
!298 = !{!299}
!299 = !DISubrange(count: 3)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "TC_BCR", scope: !275, file: !274, line: 60, baseType: !61, size: 32, offset: 1536)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "TC_BMR", scope: !275, file: !274, line: 61, baseType: !70, size: 32, offset: 1568)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "TC_QIER", scope: !275, file: !274, line: 62, baseType: !61, size: 32, offset: 1600)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "TC_QIDR", scope: !275, file: !274, line: 63, baseType: !61, size: 32, offset: 1632)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "TC_QIMR", scope: !275, file: !274, line: 64, baseType: !76, size: 32, offset: 1664)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "TC_QISR", scope: !275, file: !274, line: 65, baseType: !76, size: 32, offset: 1696)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "TC_FMR", scope: !275, file: !274, line: 66, baseType: !70, size: 32, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !275, file: !274, line: 67, baseType: !88, size: 64, offset: 1760)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "TC_WPMR", scope: !275, file: !274, line: 68, baseType: !70, size: 32, offset: 1824)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "channelToId", scope: !260, file: !244, line: 297, type: !263, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "_writeResolution", scope: !2, file: !244, line: 26, type: !313, isLocal: true, isDefinition: true)
!313 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "PWMEnabled", scope: !2, file: !244, line: 192, type: !250, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "TCChanEnabled", scope: !2, file: !244, line: 193, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 72, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 9)
!321 = !{i32 7, !"Dwarf Version", i32 4}
!322 = !{i32 2, !"Debug Info Version", i32 3}
!323 = !{i32 1, !"wchar_size", i32 4}
!324 = !{i32 1, !"min_enum_size", i32 1}
!325 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!326 = distinct !DISubprogram(name: "analogReadResolution", scope: !244, file: !244, line: 28, type: !327, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !257)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !313}
!329 = !DILocalVariable(name: "res", arg: 1, scope: !326, file: !244, line: 28, type: !313)
!330 = !DILocation(line: 28, column: 31, scope: !326)
!331 = !DILocation(line: 29, column: 20, scope: !326)
!332 = !DILocation(line: 29, column: 18, scope: !326)
!333 = !DILocation(line: 30, column: 1, scope: !326)
!334 = distinct !DISubprogram(name: "analogWriteResolution", scope: !244, file: !244, line: 32, type: !327, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !257)
!335 = !DILocalVariable(name: "res", arg: 1, scope: !334, file: !244, line: 32, type: !313)
!336 = !DILocation(line: 32, column: 32, scope: !334)
!337 = !DILocation(line: 33, column: 21, scope: !334)
!338 = !DILocation(line: 33, column: 19, scope: !334)
!339 = !DILocation(line: 34, column: 1, scope: !334)
!340 = distinct !DISubprogram(name: "analogReference", scope: !244, file: !244, line: 47, type: !341, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !257)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !245}
!343 = !DILocalVariable(name: "ulMode", arg: 1, scope: !340, file: !244, line: 47, type: !245)
!344 = !DILocation(line: 47, column: 39, scope: !340)
!345 = !DILocation(line: 49, column: 21, scope: !340)
!346 = !DILocation(line: 49, column: 19, scope: !340)
!347 = !DILocation(line: 50, column: 1, scope: !340)
!348 = !DILocalVariable(name: "ulPin", arg: 1, scope: !254, file: !244, line: 52, type: !64)
!349 = !DILocation(line: 52, column: 30, scope: !254)
!350 = !DILocalVariable(name: "ulValue", scope: !254, file: !244, line: 54, type: !64)
!351 = !DILocation(line: 54, column: 12, scope: !254)
!352 = !DILocalVariable(name: "ulChannel", scope: !254, file: !244, line: 55, type: !64)
!353 = !DILocation(line: 55, column: 12, scope: !254)
!354 = !DILocation(line: 57, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !254, file: !244, line: 57, column: 7)
!356 = !DILocation(line: 57, column: 13, scope: !355)
!357 = !DILocation(line: 57, column: 7, scope: !254)
!358 = !DILocation(line: 58, column: 11, scope: !355)
!359 = !DILocation(line: 58, column: 5, scope: !355)
!360 = !DILocation(line: 60, column: 33, scope: !254)
!361 = !DILocation(line: 60, column: 15, scope: !254)
!362 = !DILocation(line: 60, column: 40, scope: !254)
!363 = !DILocation(line: 60, column: 13, scope: !254)
!364 = !DILocation(line: 134, column: 29, scope: !254)
!365 = !DILocation(line: 134, column: 11, scope: !254)
!366 = !DILocation(line: 134, column: 36, scope: !254)
!367 = !DILocation(line: 134, column: 2, scope: !254)
!368 = !DILocation(line: 151, column: 36, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !244, line: 151, column: 8)
!370 = distinct !DILexicalBlock(scope: !254, file: !244, line: 135, column: 2)
!371 = !DILocation(line: 151, column: 8, scope: !369)
!372 = !DILocation(line: 151, column: 47, scope: !369)
!373 = !DILocation(line: 151, column: 8, scope: !370)
!374 = !DILocation(line: 152, column: 30, scope: !375)
!375 = distinct !DILexicalBlock(scope: !369, file: !244, line: 151, column: 53)
!376 = !DILocation(line: 152, column: 5, scope: !375)
!377 = !DILocation(line: 153, column: 10, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !244, line: 153, column: 10)
!379 = !DILocation(line: 153, column: 32, scope: !378)
!380 = !DILocation(line: 153, column: 48, scope: !378)
!381 = !DILocation(line: 153, column: 51, scope: !378)
!382 = !DILocation(line: 153, column: 64, scope: !378)
!383 = !DILocation(line: 153, column: 61, scope: !378)
!384 = !DILocation(line: 153, column: 10, scope: !375)
!385 = !DILocation(line: 154, column: 32, scope: !378)
!386 = !DILocation(line: 154, column: 6, scope: !378)
!387 = !DILocation(line: 155, column: 29, scope: !375)
!388 = !DILocation(line: 155, column: 27, scope: !375)
!389 = !DILocation(line: 156, column: 39, scope: !375)
!390 = !DILocation(line: 156, column: 27, scope: !375)
!391 = !DILocation(line: 156, column: 46, scope: !375)
!392 = !DILocation(line: 156, column: 54, scope: !375)
!393 = !DILocation(line: 156, column: 26, scope: !375)
!394 = !DILocation(line: 156, column: 17, scope: !375)
!395 = !DILocation(line: 156, column: 5, scope: !375)
!396 = !DILocation(line: 156, column: 24, scope: !375)
!397 = !DILocation(line: 157, column: 4, scope: !375)
!398 = !DILocation(line: 160, column: 4, scope: !370)
!399 = !DILocation(line: 163, column: 4, scope: !370)
!400 = !DILocation(line: 163, column: 12, scope: !370)
!401 = !DILocation(line: 163, column: 32, scope: !370)
!402 = !DILocation(line: 163, column: 48, scope: !370)
!403 = distinct !{!403, !399, !404}
!404 = !DILocation(line: 164, column: 5, scope: !370)
!405 = !DILocation(line: 167, column: 14, scope: !370)
!406 = !DILocation(line: 167, column: 12, scope: !370)
!407 = !DILocation(line: 168, column: 28, scope: !370)
!408 = !DILocation(line: 168, column: 53, scope: !370)
!409 = !DILocation(line: 168, column: 14, scope: !370)
!410 = !DILocation(line: 168, column: 12, scope: !370)
!411 = !DILocation(line: 170, column: 4, scope: !370)
!412 = !DILocation(line: 174, column: 11, scope: !370)
!413 = !DILocation(line: 175, column: 4, scope: !370)
!414 = !DILocation(line: 179, column: 9, scope: !254)
!415 = !DILocation(line: 179, column: 2, scope: !254)
!416 = distinct !DISubprogram(name: "mapResolution", scope: !244, file: !244, line: 36, type: !417, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!417 = !DISubroutineType(types: !418)
!418 = !{!64, !64, !64, !64}
!419 = !DILocalVariable(name: "value", arg: 1, scope: !416, file: !244, line: 36, type: !64)
!420 = !DILocation(line: 36, column: 47, scope: !416)
!421 = !DILocalVariable(name: "from", arg: 2, scope: !416, file: !244, line: 36, type: !64)
!422 = !DILocation(line: 36, column: 63, scope: !416)
!423 = !DILocalVariable(name: "to", arg: 3, scope: !416, file: !244, line: 36, type: !64)
!424 = !DILocation(line: 36, column: 78, scope: !416)
!425 = !DILocation(line: 37, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !416, file: !244, line: 37, column: 6)
!427 = !DILocation(line: 37, column: 14, scope: !426)
!428 = !DILocation(line: 37, column: 11, scope: !426)
!429 = !DILocation(line: 37, column: 6, scope: !416)
!430 = !DILocation(line: 38, column: 10, scope: !426)
!431 = !DILocation(line: 38, column: 3, scope: !426)
!432 = !DILocation(line: 39, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !416, file: !244, line: 39, column: 6)
!434 = !DILocation(line: 39, column: 13, scope: !433)
!435 = !DILocation(line: 39, column: 11, scope: !433)
!436 = !DILocation(line: 39, column: 6, scope: !416)
!437 = !DILocation(line: 40, column: 10, scope: !433)
!438 = !DILocation(line: 40, column: 20, scope: !433)
!439 = !DILocation(line: 40, column: 25, scope: !433)
!440 = !DILocation(line: 40, column: 24, scope: !433)
!441 = !DILocation(line: 40, column: 16, scope: !433)
!442 = !DILocation(line: 40, column: 3, scope: !433)
!443 = !DILocation(line: 42, column: 10, scope: !433)
!444 = !DILocation(line: 42, column: 20, scope: !433)
!445 = !DILocation(line: 42, column: 23, scope: !433)
!446 = !DILocation(line: 42, column: 22, scope: !433)
!447 = !DILocation(line: 42, column: 16, scope: !433)
!448 = !DILocation(line: 42, column: 3, scope: !433)
!449 = !DILocation(line: 43, column: 1, scope: !416)
!450 = distinct !DISubprogram(name: "analogOutputInit", scope: !244, file: !244, line: 195, type: !451, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !257)
!451 = !DISubroutineType(types: !452)
!452 = !{null}
!453 = !DILocation(line: 196, column: 1, scope: !450)
!454 = !DILocalVariable(name: "ulPin", arg: 1, scope: !260, file: !244, line: 202, type: !64)
!455 = !DILocation(line: 202, column: 27, scope: !260)
!456 = !DILocalVariable(name: "ulValue", arg: 2, scope: !260, file: !244, line: 202, type: !64)
!457 = !DILocation(line: 202, column: 43, scope: !260)
!458 = !DILocalVariable(name: "attr", scope: !260, file: !244, line: 203, type: !64)
!459 = !DILocation(line: 203, column: 11, scope: !260)
!460 = !DILocation(line: 203, column: 36, scope: !260)
!461 = !DILocation(line: 203, column: 18, scope: !260)
!462 = !DILocation(line: 203, column: 43, scope: !260)
!463 = !DILocation(line: 205, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !260, file: !244, line: 205, column: 6)
!465 = !DILocation(line: 205, column: 12, scope: !464)
!466 = !DILocation(line: 205, column: 31, scope: !464)
!467 = !DILocation(line: 205, column: 6, scope: !260)
!468 = !DILocalVariable(name: "channel", scope: !469, file: !244, line: 206, type: !470)
!469 = distinct !DILexicalBlock(scope: !464, file: !244, line: 205, column: 51)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "EAnalogChannel", file: !11, line: 107, baseType: !10)
!471 = !DILocation(line: 206, column: 18, scope: !469)
!472 = !DILocation(line: 206, column: 46, scope: !469)
!473 = !DILocation(line: 206, column: 28, scope: !469)
!474 = !DILocation(line: 206, column: 53, scope: !469)
!475 = !DILocation(line: 207, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !469, file: !244, line: 207, column: 7)
!477 = !DILocation(line: 207, column: 15, scope: !476)
!478 = !DILocation(line: 207, column: 22, scope: !476)
!479 = !DILocation(line: 207, column: 25, scope: !476)
!480 = !DILocation(line: 207, column: 33, scope: !476)
!481 = !DILocation(line: 207, column: 7, scope: !469)
!482 = !DILocalVariable(name: "chDACC", scope: !483, file: !244, line: 208, type: !64)
!483 = distinct !DILexicalBlock(scope: !476, file: !244, line: 207, column: 41)
!484 = !DILocation(line: 208, column: 13, scope: !483)
!485 = !DILocation(line: 208, column: 24, scope: !483)
!486 = !DILocation(line: 208, column: 32, scope: !483)
!487 = !DILocation(line: 208, column: 23, scope: !483)
!488 = !DILocation(line: 209, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !244, line: 209, column: 8)
!490 = !DILocation(line: 209, column: 48, scope: !489)
!491 = !DILocation(line: 209, column: 8, scope: !483)
!492 = !DILocation(line: 211, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !244, line: 209, column: 54)
!494 = !DILocation(line: 214, column: 5, scope: !493)
!495 = !DILocation(line: 217, column: 5, scope: !493)
!496 = !DILocation(line: 223, column: 5, scope: !493)
!497 = !DILocation(line: 229, column: 5, scope: !493)
!498 = !DILocation(line: 232, column: 5, scope: !493)
!499 = !DILocation(line: 235, column: 4, scope: !493)
!500 = !DILocation(line: 238, column: 47, scope: !483)
!501 = !DILocation(line: 238, column: 4, scope: !483)
!502 = !DILocation(line: 240, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !483, file: !244, line: 240, column: 8)
!504 = !DILocation(line: 240, column: 57, scope: !503)
!505 = !DILocation(line: 240, column: 54, scope: !503)
!506 = !DILocation(line: 240, column: 49, scope: !503)
!507 = !DILocation(line: 240, column: 66, scope: !503)
!508 = !DILocation(line: 240, column: 8, scope: !483)
!509 = !DILocation(line: 241, column: 41, scope: !510)
!510 = distinct !DILexicalBlock(scope: !503, file: !244, line: 240, column: 72)
!511 = !DILocation(line: 241, column: 5, scope: !510)
!512 = !DILocation(line: 242, column: 4, scope: !510)
!513 = !DILocation(line: 245, column: 28, scope: !483)
!514 = !DILocation(line: 245, column: 37, scope: !483)
!515 = !DILocation(line: 245, column: 14, scope: !483)
!516 = !DILocation(line: 245, column: 12, scope: !483)
!517 = !DILocation(line: 246, column: 47, scope: !483)
!518 = !DILocation(line: 246, column: 4, scope: !483)
!519 = !DILocation(line: 247, column: 4, scope: !483)
!520 = !DILocation(line: 247, column: 12, scope: !483)
!521 = !DILocation(line: 247, column: 54, scope: !483)
!522 = !DILocation(line: 247, column: 70, scope: !483)
!523 = distinct !{!523, !519, !524}
!524 = !DILocation(line: 247, column: 75, scope: !483)
!525 = !DILocation(line: 248, column: 4, scope: !483)
!526 = !DILocation(line: 250, column: 2, scope: !469)
!527 = !DILocation(line: 252, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !260, file: !244, line: 252, column: 6)
!529 = !DILocation(line: 252, column: 12, scope: !528)
!530 = !DILocation(line: 252, column: 28, scope: !528)
!531 = !DILocation(line: 252, column: 6, scope: !260)
!532 = !DILocation(line: 253, column: 27, scope: !533)
!533 = distinct !DILexicalBlock(scope: !528, file: !244, line: 252, column: 45)
!534 = !DILocation(line: 253, column: 36, scope: !533)
!535 = !DILocation(line: 253, column: 13, scope: !533)
!536 = !DILocation(line: 253, column: 11, scope: !533)
!537 = !DILocation(line: 255, column: 8, scope: !538)
!538 = distinct !DILexicalBlock(scope: !533, file: !244, line: 255, column: 7)
!539 = !DILocation(line: 255, column: 7, scope: !533)
!540 = !DILocation(line: 257, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !244, line: 255, column: 20)
!542 = !DILocation(line: 258, column: 7, scope: !541)
!543 = !DILocation(line: 259, column: 15, scope: !541)
!544 = !DILocation(line: 260, column: 3, scope: !541)
!545 = !DILocalVariable(name: "chan", scope: !533, file: !244, line: 262, type: !64)
!546 = !DILocation(line: 262, column: 12, scope: !533)
!547 = !DILocation(line: 262, column: 37, scope: !533)
!548 = !DILocation(line: 262, column: 19, scope: !533)
!549 = !DILocation(line: 262, column: 44, scope: !533)
!550 = !DILocation(line: 263, column: 20, scope: !551)
!551 = distinct !DILexicalBlock(scope: !533, file: !244, line: 263, column: 7)
!552 = !DILocation(line: 263, column: 8, scope: !551)
!553 = !DILocation(line: 263, column: 27, scope: !551)
!554 = !DILocation(line: 263, column: 34, scope: !551)
!555 = !DILocation(line: 263, column: 7, scope: !533)
!556 = !DILocation(line: 265, column: 36, scope: !557)
!557 = distinct !DILexicalBlock(scope: !551, file: !244, line: 263, column: 53)
!558 = !DILocation(line: 265, column: 18, scope: !557)
!559 = !DILocation(line: 265, column: 43, scope: !557)
!560 = !DILocation(line: 266, column: 24, scope: !557)
!561 = !DILocation(line: 266, column: 6, scope: !557)
!562 = !DILocation(line: 266, column: 31, scope: !557)
!563 = !DILocation(line: 267, column: 24, scope: !557)
!564 = !DILocation(line: 267, column: 6, scope: !557)
!565 = !DILocation(line: 267, column: 31, scope: !557)
!566 = !DILocation(line: 268, column: 24, scope: !557)
!567 = !DILocation(line: 268, column: 6, scope: !557)
!568 = !DILocation(line: 268, column: 31, scope: !557)
!569 = !DILocation(line: 265, column: 4, scope: !557)
!570 = !DILocation(line: 269, column: 41, scope: !557)
!571 = !DILocation(line: 269, column: 4, scope: !557)
!572 = !DILocation(line: 270, column: 34, scope: !557)
!573 = !DILocation(line: 270, column: 4, scope: !557)
!574 = !DILocation(line: 271, column: 37, scope: !557)
!575 = !DILocation(line: 271, column: 43, scope: !557)
!576 = !DILocation(line: 271, column: 4, scope: !557)
!577 = !DILocation(line: 272, column: 38, scope: !557)
!578 = !DILocation(line: 272, column: 4, scope: !557)
!579 = !DILocation(line: 273, column: 38, scope: !557)
!580 = !DILocation(line: 273, column: 26, scope: !557)
!581 = !DILocation(line: 273, column: 45, scope: !557)
!582 = !DILocation(line: 273, column: 53, scope: !557)
!583 = !DILocation(line: 273, column: 25, scope: !557)
!584 = !DILocation(line: 273, column: 16, scope: !557)
!585 = !DILocation(line: 273, column: 4, scope: !557)
!586 = !DILocation(line: 273, column: 23, scope: !557)
!587 = !DILocation(line: 274, column: 3, scope: !557)
!588 = !DILocation(line: 276, column: 36, scope: !533)
!589 = !DILocation(line: 276, column: 42, scope: !533)
!590 = !DILocation(line: 276, column: 3, scope: !533)
!591 = !DILocation(line: 277, column: 3, scope: !533)
!592 = !DILocation(line: 280, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !260, file: !244, line: 280, column: 6)
!594 = !DILocation(line: 280, column: 12, scope: !593)
!595 = !DILocation(line: 280, column: 30, scope: !593)
!596 = !DILocation(line: 280, column: 6, scope: !260)
!597 = !DILocalVariable(name: "TC", scope: !598, file: !244, line: 282, type: !264)
!598 = distinct !DILexicalBlock(scope: !593, file: !244, line: 280, column: 49)
!599 = !DILocation(line: 282, column: 18, scope: !598)
!600 = !DILocation(line: 285, column: 27, scope: !598)
!601 = !DILocation(line: 285, column: 36, scope: !598)
!602 = !DILocation(line: 285, column: 13, scope: !598)
!603 = !DILocation(line: 285, column: 11, scope: !598)
!604 = !DILocation(line: 286, column: 13, scope: !598)
!605 = !DILocation(line: 286, column: 21, scope: !598)
!606 = !DILocation(line: 286, column: 11, scope: !598)
!607 = !DILocation(line: 287, column: 13, scope: !598)
!608 = !DILocation(line: 287, column: 21, scope: !598)
!609 = !DILocation(line: 287, column: 11, scope: !598)
!610 = !DILocalVariable(name: "channel", scope: !598, file: !244, line: 290, type: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ETCChannel", file: !11, line: 147, baseType: !33)
!612 = !DILocation(line: 290, column: 14, scope: !598)
!613 = !DILocation(line: 290, column: 42, scope: !598)
!614 = !DILocation(line: 290, column: 24, scope: !598)
!615 = !DILocation(line: 290, column: 49, scope: !598)
!616 = !DILocalVariable(name: "chNo", scope: !598, file: !244, line: 298, type: !64)
!617 = !DILocation(line: 298, column: 12, scope: !598)
!618 = !DILocation(line: 298, column: 33, scope: !598)
!619 = !DILocation(line: 298, column: 19, scope: !598)
!620 = !DILocalVariable(name: "chA", scope: !598, file: !244, line: 299, type: !64)
!621 = !DILocation(line: 299, column: 12, scope: !598)
!622 = !DILocation(line: 299, column: 31, scope: !598)
!623 = !DILocation(line: 299, column: 19, scope: !598)
!624 = !DILocalVariable(name: "chTC", scope: !598, file: !244, line: 300, type: !272)
!625 = !DILocation(line: 300, column: 7, scope: !598)
!626 = !DILocation(line: 300, column: 26, scope: !598)
!627 = !DILocation(line: 300, column: 14, scope: !598)
!628 = !DILocalVariable(name: "interfaceID", scope: !598, file: !244, line: 301, type: !64)
!629 = !DILocation(line: 301, column: 12, scope: !598)
!630 = !DILocation(line: 301, column: 38, scope: !598)
!631 = !DILocation(line: 301, column: 26, scope: !598)
!632 = !DILocation(line: 303, column: 22, scope: !633)
!633 = distinct !DILexicalBlock(scope: !598, file: !244, line: 303, column: 7)
!634 = !DILocation(line: 303, column: 8, scope: !633)
!635 = !DILocation(line: 303, column: 7, scope: !598)
!636 = !DILocation(line: 304, column: 44, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !244, line: 303, column: 36)
!638 = !DILocation(line: 304, column: 42, scope: !637)
!639 = !DILocation(line: 304, column: 4, scope: !637)
!640 = !DILocation(line: 305, column: 17, scope: !637)
!641 = !DILocation(line: 305, column: 23, scope: !637)
!642 = !DILocation(line: 305, column: 4, scope: !637)
!643 = !DILocation(line: 312, column: 13, scope: !637)
!644 = !DILocation(line: 312, column: 19, scope: !637)
!645 = !DILocation(line: 312, column: 4, scope: !637)
!646 = !DILocation(line: 313, column: 3, scope: !637)
!647 = !DILocation(line: 314, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !598, file: !244, line: 314, column: 7)
!649 = !DILocation(line: 314, column: 15, scope: !648)
!650 = !DILocation(line: 314, column: 7, scope: !598)
!651 = !DILocation(line: 315, column: 8, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !244, line: 315, column: 8)
!653 = distinct !DILexicalBlock(scope: !648, file: !244, line: 314, column: 21)
!654 = !DILocation(line: 315, column: 8, scope: !653)
!655 = !DILocation(line: 316, column: 24, scope: !652)
!656 = !DILocation(line: 316, column: 30, scope: !652)
!657 = !DILocation(line: 316, column: 5, scope: !652)
!658 = !DILocation(line: 318, column: 24, scope: !652)
!659 = !DILocation(line: 318, column: 30, scope: !652)
!660 = !DILocation(line: 318, column: 5, scope: !652)
!661 = !DILocation(line: 319, column: 3, scope: !653)
!662 = !DILocation(line: 320, column: 8, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !244, line: 320, column: 8)
!664 = distinct !DILexicalBlock(scope: !648, file: !244, line: 319, column: 10)
!665 = !DILocation(line: 320, column: 8, scope: !664)
!666 = !DILocation(line: 321, column: 14, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !244, line: 320, column: 13)
!668 = !DILocation(line: 321, column: 20, scope: !667)
!669 = !DILocation(line: 321, column: 26, scope: !667)
!670 = !DILocation(line: 321, column: 5, scope: !667)
!671 = !DILocation(line: 322, column: 24, scope: !667)
!672 = !DILocation(line: 322, column: 30, scope: !667)
!673 = !DILocation(line: 322, column: 5, scope: !667)
!674 = !DILocation(line: 323, column: 4, scope: !667)
!675 = !DILocation(line: 324, column: 14, scope: !676)
!676 = distinct !DILexicalBlock(scope: !663, file: !244, line: 323, column: 11)
!677 = !DILocation(line: 324, column: 20, scope: !676)
!678 = !DILocation(line: 324, column: 26, scope: !676)
!679 = !DILocation(line: 324, column: 5, scope: !676)
!680 = !DILocation(line: 325, column: 24, scope: !676)
!681 = !DILocation(line: 325, column: 30, scope: !676)
!682 = !DILocation(line: 325, column: 5, scope: !676)
!683 = !DILocation(line: 328, column: 20, scope: !684)
!684 = distinct !DILexicalBlock(scope: !598, file: !244, line: 328, column: 7)
!685 = !DILocation(line: 328, column: 8, scope: !684)
!686 = !DILocation(line: 328, column: 27, scope: !684)
!687 = !DILocation(line: 328, column: 34, scope: !684)
!688 = !DILocation(line: 328, column: 7, scope: !598)
!689 = !DILocation(line: 329, column: 36, scope: !690)
!690 = distinct !DILexicalBlock(scope: !684, file: !244, line: 328, column: 53)
!691 = !DILocation(line: 329, column: 18, scope: !690)
!692 = !DILocation(line: 329, column: 43, scope: !690)
!693 = !DILocation(line: 330, column: 24, scope: !690)
!694 = !DILocation(line: 330, column: 6, scope: !690)
!695 = !DILocation(line: 330, column: 31, scope: !690)
!696 = !DILocation(line: 331, column: 24, scope: !690)
!697 = !DILocation(line: 331, column: 6, scope: !690)
!698 = !DILocation(line: 331, column: 31, scope: !690)
!699 = !DILocation(line: 332, column: 24, scope: !690)
!700 = !DILocation(line: 332, column: 6, scope: !690)
!701 = !DILocation(line: 332, column: 31, scope: !690)
!702 = !DILocation(line: 329, column: 4, scope: !690)
!703 = !DILocation(line: 333, column: 38, scope: !690)
!704 = !DILocation(line: 333, column: 26, scope: !690)
!705 = !DILocation(line: 333, column: 45, scope: !690)
!706 = !DILocation(line: 333, column: 53, scope: !690)
!707 = !DILocation(line: 333, column: 25, scope: !690)
!708 = !DILocation(line: 333, column: 16, scope: !690)
!709 = !DILocation(line: 333, column: 4, scope: !690)
!710 = !DILocation(line: 333, column: 23, scope: !690)
!711 = !DILocation(line: 334, column: 3, scope: !690)
!712 = !DILocation(line: 335, column: 22, scope: !713)
!713 = distinct !DILexicalBlock(scope: !598, file: !244, line: 335, column: 7)
!714 = !DILocation(line: 335, column: 8, scope: !713)
!715 = !DILocation(line: 335, column: 7, scope: !598)
!716 = !DILocation(line: 336, column: 13, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !244, line: 335, column: 36)
!718 = !DILocation(line: 336, column: 19, scope: !717)
!719 = !DILocation(line: 336, column: 4, scope: !717)
!720 = !DILocation(line: 337, column: 18, scope: !717)
!721 = !DILocation(line: 337, column: 4, scope: !717)
!722 = !DILocation(line: 337, column: 31, scope: !717)
!723 = !DILocation(line: 338, column: 3, scope: !717)
!724 = !DILocation(line: 339, column: 3, scope: !598)
!725 = !DILocation(line: 343, column: 10, scope: !260)
!726 = !DILocation(line: 343, column: 2, scope: !260)
!727 = !DILocation(line: 344, column: 26, scope: !260)
!728 = !DILocation(line: 344, column: 35, scope: !260)
!729 = !DILocation(line: 344, column: 12, scope: !260)
!730 = !DILocation(line: 344, column: 10, scope: !260)
!731 = !DILocation(line: 345, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !260, file: !244, line: 345, column: 6)
!733 = !DILocation(line: 345, column: 14, scope: !732)
!734 = !DILocation(line: 345, column: 6, scope: !260)
!735 = !DILocation(line: 346, column: 16, scope: !732)
!736 = !DILocation(line: 346, column: 3, scope: !732)
!737 = !DILocation(line: 348, column: 16, scope: !732)
!738 = !DILocation(line: 348, column: 3, scope: !732)
!739 = !DILocation(line: 349, column: 1, scope: !260)
!740 = distinct !DISubprogram(name: "TC_SetCMR_ChannelA", scope: !244, file: !244, line: 182, type: !741, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !272, !64, !64}
!743 = !DILocalVariable(name: "tc", arg: 1, scope: !740, file: !244, line: 182, type: !272)
!744 = !DILocation(line: 182, column: 36, scope: !740)
!745 = !DILocalVariable(name: "chan", arg: 2, scope: !740, file: !244, line: 182, type: !64)
!746 = !DILocation(line: 182, column: 49, scope: !740)
!747 = !DILocalVariable(name: "v", arg: 3, scope: !740, file: !244, line: 182, type: !64)
!748 = !DILocation(line: 182, column: 64, scope: !740)
!749 = !DILocation(line: 184, column: 33, scope: !740)
!750 = !DILocation(line: 184, column: 37, scope: !740)
!751 = !DILocation(line: 184, column: 48, scope: !740)
!752 = !DILocation(line: 184, column: 54, scope: !740)
!753 = !DILocation(line: 184, column: 61, scope: !740)
!754 = !DILocation(line: 184, column: 77, scope: !740)
!755 = !DILocation(line: 184, column: 75, scope: !740)
!756 = !DILocation(line: 184, column: 2, scope: !740)
!757 = !DILocation(line: 184, column: 6, scope: !740)
!758 = !DILocation(line: 184, column: 17, scope: !740)
!759 = !DILocation(line: 184, column: 23, scope: !740)
!760 = !DILocation(line: 184, column: 30, scope: !740)
!761 = !DILocation(line: 185, column: 1, scope: !740)
!762 = distinct !DISubprogram(name: "TC_SetCMR_ChannelB", scope: !244, file: !244, line: 187, type: !741, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !257)
!763 = !DILocalVariable(name: "tc", arg: 1, scope: !762, file: !244, line: 187, type: !272)
!764 = !DILocation(line: 187, column: 36, scope: !762)
!765 = !DILocalVariable(name: "chan", arg: 2, scope: !762, file: !244, line: 187, type: !64)
!766 = !DILocation(line: 187, column: 49, scope: !762)
!767 = !DILocalVariable(name: "v", arg: 3, scope: !762, file: !244, line: 187, type: !64)
!768 = !DILocation(line: 187, column: 64, scope: !762)
!769 = !DILocation(line: 189, column: 33, scope: !762)
!770 = !DILocation(line: 189, column: 37, scope: !762)
!771 = !DILocation(line: 189, column: 48, scope: !762)
!772 = !DILocation(line: 189, column: 54, scope: !762)
!773 = !DILocation(line: 189, column: 61, scope: !762)
!774 = !DILocation(line: 189, column: 77, scope: !762)
!775 = !DILocation(line: 189, column: 75, scope: !762)
!776 = !DILocation(line: 189, column: 2, scope: !762)
!777 = !DILocation(line: 189, column: 6, scope: !762)
!778 = !DILocation(line: 189, column: 17, scope: !762)
!779 = !DILocation(line: 189, column: 23, scope: !762)
!780 = !DILocation(line: 189, column: 30, scope: !762)
!781 = !DILocation(line: 190, column: 1, scope: !762)

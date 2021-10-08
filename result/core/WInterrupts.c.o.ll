; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WInterrupts.c'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WInterrupts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct._PinDescription = type { %struct.Pio*, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.Pio = type { i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, [3 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32 }
%struct.NVIC_Type = type { [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [56 x i32], [240 x i8], [644 x i32], i32 }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [4 x i32], [5 x i32], [5 x i32], i32 }

@attachInterrupt.enabled = internal global i32 0, align 4, !dbg !0
@g_APinDescription = external dso_local constant [0 x %struct._PinDescription], align 4
@callbacksPioA = internal global [32 x void ()*] zeroinitializer, align 4, !dbg !219
@callbacksPioB = internal global [32 x void ()*] zeroinitializer, align 4, !dbg !225
@callbacksPioC = internal global [32 x void ()*] zeroinitializer, align 4, !dbg !227
@callbacksPioD = internal global [32 x void ()*] zeroinitializer, align 4, !dbg !229

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @attachInterrupt(i32 %pin, void ()* %callback, i32 %mode) #0 !dbg !2 {
entry:
  %pin.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 4
  %mode.addr = alloca i32, align 4
  %pio = alloca %struct.Pio*, align 4
  %mask = alloca i32, align 4
  %pos = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %pin, i32* %pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pin.addr, metadata !238, metadata !DIExpression()), !dbg !239
  store void ()* %callback, void ()** %callback.addr, align 4
  call void @llvm.dbg.declare(metadata void ()** %callback.addr, metadata !240, metadata !DIExpression()), !dbg !241
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i32, i32* @attachInterrupt.enabled, align 4, !dbg !244
  %tobool = icmp ne i32 %0, 0, !dbg !244
  br i1 %tobool, label %if.end, label %if.then, !dbg !246

if.then:                                          ; preds = %entry
  call arm_aapcscc void @__initialize(), !dbg !247
  store i32 1, i32* @attachInterrupt.enabled, align 4, !dbg !249
  br label %if.end, !dbg !250

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata %struct.Pio** %pio, metadata !251, metadata !DIExpression()), !dbg !252
  %1 = load i32, i32* %pin.addr, align 4, !dbg !253
  %arrayidx = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %1, !dbg !254
  %pPort = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx, i32 0, i32 0, !dbg !255
  %2 = load %struct.Pio*, %struct.Pio** %pPort, align 4, !dbg !255
  store %struct.Pio* %2, %struct.Pio** %pio, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !256, metadata !DIExpression()), !dbg !257
  %3 = load i32, i32* %pin.addr, align 4, !dbg !258
  %arrayidx1 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %3, !dbg !259
  %ulPin = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx1, i32 0, i32 1, !dbg !260
  %4 = load i32, i32* %ulPin, align 4, !dbg !260
  store i32 %4, i32* %mask, align 4, !dbg !257
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !261, metadata !DIExpression()), !dbg !262
  store i32 0, i32* %pos, align 4, !dbg !262
  call void @llvm.dbg.declare(metadata i32* %t, metadata !263, metadata !DIExpression()), !dbg !264
  %5 = load i32, i32* %mask, align 4, !dbg !265
  store i32 %5, i32* %t, align 4, !dbg !267
  br label %for.cond, !dbg !268

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %t, align 4, !dbg !269
  %cmp = icmp ugt i32 %6, 1, !dbg !271
  br i1 %cmp, label %for.body, label %for.end, !dbg !272

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !272

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %t, align 4, !dbg !273
  %shr = lshr i32 %7, 1, !dbg !273
  store i32 %shr, i32* %t, align 4, !dbg !273
  %8 = load i32, i32* %pos, align 4, !dbg !274
  %inc = add i32 %8, 1, !dbg !274
  store i32 %inc, i32* %pos, align 4, !dbg !274
  br label %for.cond, !dbg !275, !llvm.loop !276

for.end:                                          ; preds = %for.cond
  %9 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !278
  %cmp2 = icmp eq %struct.Pio* %9, inttoptr (i32 1074662912 to %struct.Pio*), !dbg !280
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !281

if.then3:                                         ; preds = %for.end
  %10 = load void ()*, void ()** %callback.addr, align 4, !dbg !282
  %11 = load i32, i32* %pos, align 4, !dbg !283
  %arrayidx4 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioA, i32 0, i32 %11, !dbg !284
  store void ()* %10, void ()** %arrayidx4, align 4, !dbg !285
  br label %if.end5, !dbg !284

if.end5:                                          ; preds = %if.then3, %for.end
  %12 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !286
  %cmp6 = icmp eq %struct.Pio* %12, inttoptr (i32 1074663424 to %struct.Pio*), !dbg !288
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !289

if.then7:                                         ; preds = %if.end5
  %13 = load void ()*, void ()** %callback.addr, align 4, !dbg !290
  %14 = load i32, i32* %pos, align 4, !dbg !291
  %arrayidx8 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioB, i32 0, i32 %14, !dbg !292
  store void ()* %13, void ()** %arrayidx8, align 4, !dbg !293
  br label %if.end9, !dbg !292

if.end9:                                          ; preds = %if.then7, %if.end5
  %15 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !294
  %cmp10 = icmp eq %struct.Pio* %15, inttoptr (i32 1074663936 to %struct.Pio*), !dbg !296
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !297

if.then11:                                        ; preds = %if.end9
  %16 = load void ()*, void ()** %callback.addr, align 4, !dbg !298
  %17 = load i32, i32* %pos, align 4, !dbg !299
  %arrayidx12 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioC, i32 0, i32 %17, !dbg !300
  store void ()* %16, void ()** %arrayidx12, align 4, !dbg !301
  br label %if.end13, !dbg !300

if.end13:                                         ; preds = %if.then11, %if.end9
  %18 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !302
  %cmp14 = icmp eq %struct.Pio* %18, inttoptr (i32 1074664448 to %struct.Pio*), !dbg !304
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !305

if.then15:                                        ; preds = %if.end13
  %19 = load void ()*, void ()** %callback.addr, align 4, !dbg !306
  %20 = load i32, i32* %pos, align 4, !dbg !307
  %arrayidx16 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioD, i32 0, i32 %20, !dbg !308
  store void ()* %19, void ()** %arrayidx16, align 4, !dbg !309
  br label %if.end17, !dbg !308

if.end17:                                         ; preds = %if.then15, %if.end13
  %21 = load i32, i32* %mode.addr, align 4, !dbg !310
  %cmp18 = icmp eq i32 %21, 2, !dbg !312
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !313

if.then19:                                        ; preds = %if.end17
  %22 = load i32, i32* %mask, align 4, !dbg !314
  %23 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !316
  %PIO_AIMDR = getelementptr inbounds %struct.Pio, %struct.Pio* %23, i32 0, i32 40, !dbg !317
  store volatile i32 %22, i32* %PIO_AIMDR, align 4, !dbg !318
  br label %if.end36, !dbg !319

if.else:                                          ; preds = %if.end17
  %24 = load i32, i32* %mask, align 4, !dbg !320
  %25 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !322
  %PIO_AIMER = getelementptr inbounds %struct.Pio, %struct.Pio* %25, i32 0, i32 39, !dbg !323
  store volatile i32 %24, i32* %PIO_AIMER, align 4, !dbg !324
  %26 = load i32, i32* %mode.addr, align 4, !dbg !325
  %cmp20 = icmp eq i32 %26, 0, !dbg !327
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !328

if.then21:                                        ; preds = %if.else
  %27 = load i32, i32* %mask, align 4, !dbg !329
  %28 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !331
  %PIO_LSR = getelementptr inbounds %struct.Pio, %struct.Pio* %28, i32 0, i32 44, !dbg !332
  store volatile i32 %27, i32* %PIO_LSR, align 4, !dbg !333
  %29 = load i32, i32* %mask, align 4, !dbg !334
  %30 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !335
  %PIO_FELLSR = getelementptr inbounds %struct.Pio, %struct.Pio* %30, i32 0, i32 47, !dbg !336
  store volatile i32 %29, i32* %PIO_FELLSR, align 4, !dbg !337
  br label %if.end22, !dbg !338

if.end22:                                         ; preds = %if.then21, %if.else
  %31 = load i32, i32* %mode.addr, align 4, !dbg !339
  %cmp23 = icmp eq i32 %31, 1, !dbg !341
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !342

if.then24:                                        ; preds = %if.end22
  %32 = load i32, i32* %mask, align 4, !dbg !343
  %33 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !345
  %PIO_LSR25 = getelementptr inbounds %struct.Pio, %struct.Pio* %33, i32 0, i32 44, !dbg !346
  store volatile i32 %32, i32* %PIO_LSR25, align 4, !dbg !347
  %34 = load i32, i32* %mask, align 4, !dbg !348
  %35 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !349
  %PIO_REHLSR = getelementptr inbounds %struct.Pio, %struct.Pio* %35, i32 0, i32 48, !dbg !350
  store volatile i32 %34, i32* %PIO_REHLSR, align 4, !dbg !351
  br label %if.end26, !dbg !352

if.end26:                                         ; preds = %if.then24, %if.end22
  %36 = load i32, i32* %mode.addr, align 4, !dbg !353
  %cmp27 = icmp eq i32 %36, 3, !dbg !355
  br i1 %cmp27, label %if.then28, label %if.end30, !dbg !356

if.then28:                                        ; preds = %if.end26
  %37 = load i32, i32* %mask, align 4, !dbg !357
  %38 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !359
  %PIO_ESR = getelementptr inbounds %struct.Pio, %struct.Pio* %38, i32 0, i32 43, !dbg !360
  store volatile i32 %37, i32* %PIO_ESR, align 4, !dbg !361
  %39 = load i32, i32* %mask, align 4, !dbg !362
  %40 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !363
  %PIO_FELLSR29 = getelementptr inbounds %struct.Pio, %struct.Pio* %40, i32 0, i32 47, !dbg !364
  store volatile i32 %39, i32* %PIO_FELLSR29, align 4, !dbg !365
  br label %if.end30, !dbg !366

if.end30:                                         ; preds = %if.then28, %if.end26
  %41 = load i32, i32* %mode.addr, align 4, !dbg !367
  %cmp31 = icmp eq i32 %41, 4, !dbg !369
  br i1 %cmp31, label %if.then32, label %if.end35, !dbg !370

if.then32:                                        ; preds = %if.end30
  %42 = load i32, i32* %mask, align 4, !dbg !371
  %43 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !373
  %PIO_ESR33 = getelementptr inbounds %struct.Pio, %struct.Pio* %43, i32 0, i32 43, !dbg !374
  store volatile i32 %42, i32* %PIO_ESR33, align 4, !dbg !375
  %44 = load i32, i32* %mask, align 4, !dbg !376
  %45 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !377
  %PIO_REHLSR34 = getelementptr inbounds %struct.Pio, %struct.Pio* %45, i32 0, i32 48, !dbg !378
  store volatile i32 %44, i32* %PIO_REHLSR34, align 4, !dbg !379
  br label %if.end35, !dbg !380

if.end35:                                         ; preds = %if.then32, %if.end30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then19
  %46 = load i32, i32* %mask, align 4, !dbg !381
  %47 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !382
  %PIO_IER = getelementptr inbounds %struct.Pio, %struct.Pio* %47, i32 0, i32 16, !dbg !383
  store volatile i32 %46, i32* %PIO_IER, align 4, !dbg !384
  ret void, !dbg !385
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @detachInterrupt(i32 %pin) #0 !dbg !386 {
entry:
  %pin.addr = alloca i32, align 4
  %pio = alloca %struct.Pio*, align 4
  %mask = alloca i32, align 4
  store i32 %pin, i32* %pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pin.addr, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata %struct.Pio** %pio, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i32, i32* %pin.addr, align 4, !dbg !393
  %arrayidx = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %0, !dbg !394
  %pPort = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx, i32 0, i32 0, !dbg !395
  %1 = load %struct.Pio*, %struct.Pio** %pPort, align 4, !dbg !395
  store %struct.Pio* %1, %struct.Pio** %pio, align 4, !dbg !392
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !396, metadata !DIExpression()), !dbg !397
  %2 = load i32, i32* %pin.addr, align 4, !dbg !398
  %arrayidx1 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %2, !dbg !399
  %ulPin = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx1, i32 0, i32 1, !dbg !400
  %3 = load i32, i32* %ulPin, align 4, !dbg !400
  store i32 %3, i32* %mask, align 4, !dbg !397
  %4 = load i32, i32* %mask, align 4, !dbg !401
  %5 = load %struct.Pio*, %struct.Pio** %pio, align 4, !dbg !402
  %PIO_IDR = getelementptr inbounds %struct.Pio, %struct.Pio* %5, i32 0, i32 17, !dbg !403
  store volatile i32 %4, i32* %PIO_IDR, align 4, !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @PIOA_Handler() #0 !dbg !406 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i, metadata !407, metadata !DIExpression()), !dbg !412
  %result.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %result.i, metadata !414, metadata !DIExpression()), !dbg !415
  %isr = alloca i32, align 4
  %leading_zeros = alloca i8, align 1
  %pin = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %isr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.Pio, %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 0, i32 19), align 4, !dbg !418
  store i32 %0, i32* %isr, align 4, !dbg !417
  call void @llvm.dbg.declare(metadata i8* %leading_zeros, metadata !419, metadata !DIExpression()), !dbg !420
  br label %while.cond, !dbg !421

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %isr, align 4, !dbg !422
  store i32 %1, i32* %value.addr.i, align 4
  %2 = load i32, i32* %value.addr.i, align 4, !dbg !423
  %3 = call i8 asm sideeffect "clz $0, $1", "=r,r"(i32 %2) #3, !dbg !424, !srcloc !425
  store i8 %3, i8* %result.i, align 1, !dbg !424
  %4 = load i8, i8* %result.i, align 1, !dbg !426
  store i8 %4, i8* %leading_zeros, align 1, !dbg !427
  %conv = zext i8 %4 to i32, !dbg !428
  %cmp = icmp slt i32 %conv, 32, !dbg !429
  br i1 %cmp, label %while.body, label %while.end, !dbg !421

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8* %pin, metadata !430, metadata !DIExpression()), !dbg !432
  %5 = load i8, i8* %leading_zeros, align 1, !dbg !433
  %conv2 = zext i8 %5 to i32, !dbg !433
  %sub = sub nsw i32 32, %conv2, !dbg !434
  %sub3 = sub nsw i32 %sub, 1, !dbg !435
  %conv4 = trunc i32 %sub3 to i8, !dbg !436
  store i8 %conv4, i8* %pin, align 1, !dbg !432
  %6 = load i8, i8* %pin, align 1, !dbg !437
  %idxprom = zext i8 %6 to i32, !dbg !439
  %arrayidx = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioA, i32 0, i32 %idxprom, !dbg !439
  %7 = load void ()*, void ()** %arrayidx, align 4, !dbg !439
  %tobool = icmp ne void ()* %7, null, !dbg !439
  br i1 %tobool, label %if.then, label %if.end, !dbg !440

if.then:                                          ; preds = %while.body
  %8 = load i8, i8* %pin, align 1, !dbg !441
  %idxprom5 = zext i8 %8 to i32, !dbg !442
  %arrayidx6 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioA, i32 0, i32 %idxprom5, !dbg !442
  %9 = load void ()*, void ()** %arrayidx6, align 4, !dbg !442
  call arm_aapcscc void %9(), !dbg !442
  br label %if.end, !dbg !442

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32, i32* %isr, align 4, !dbg !443
  %11 = load i8, i8* %pin, align 1, !dbg !444
  %conv7 = zext i8 %11 to i32, !dbg !444
  %shl = shl i32 1, %conv7, !dbg !445
  %neg = xor i32 %shl, -1, !dbg !446
  %and = and i32 %10, %neg, !dbg !447
  store i32 %and, i32* %isr, align 4, !dbg !448
  br label %while.cond, !dbg !421, !llvm.loop !449

while.end:                                        ; preds = %while.cond
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @PIOB_Handler() #0 !dbg !452 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i, metadata !407, metadata !DIExpression()), !dbg !453
  %result.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %result.i, metadata !414, metadata !DIExpression()), !dbg !455
  %isr = alloca i32, align 4
  %leading_zeros = alloca i8, align 1
  %pin = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %isr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.Pio, %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 0, i32 19), align 4, !dbg !458
  store i32 %0, i32* %isr, align 4, !dbg !457
  call void @llvm.dbg.declare(metadata i8* %leading_zeros, metadata !459, metadata !DIExpression()), !dbg !460
  br label %while.cond, !dbg !461

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %isr, align 4, !dbg !462
  store i32 %1, i32* %value.addr.i, align 4
  %2 = load i32, i32* %value.addr.i, align 4, !dbg !463
  %3 = call i8 asm sideeffect "clz $0, $1", "=r,r"(i32 %2) #3, !dbg !464, !srcloc !425
  store i8 %3, i8* %result.i, align 1, !dbg !464
  %4 = load i8, i8* %result.i, align 1, !dbg !465
  store i8 %4, i8* %leading_zeros, align 1, !dbg !466
  %conv = zext i8 %4 to i32, !dbg !467
  %cmp = icmp slt i32 %conv, 32, !dbg !468
  br i1 %cmp, label %while.body, label %while.end, !dbg !461

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8* %pin, metadata !469, metadata !DIExpression()), !dbg !471
  %5 = load i8, i8* %leading_zeros, align 1, !dbg !472
  %conv2 = zext i8 %5 to i32, !dbg !472
  %sub = sub nsw i32 32, %conv2, !dbg !473
  %sub3 = sub nsw i32 %sub, 1, !dbg !474
  %conv4 = trunc i32 %sub3 to i8, !dbg !475
  store i8 %conv4, i8* %pin, align 1, !dbg !471
  %6 = load i8, i8* %pin, align 1, !dbg !476
  %idxprom = zext i8 %6 to i32, !dbg !478
  %arrayidx = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioB, i32 0, i32 %idxprom, !dbg !478
  %7 = load void ()*, void ()** %arrayidx, align 4, !dbg !478
  %tobool = icmp ne void ()* %7, null, !dbg !478
  br i1 %tobool, label %if.then, label %if.end, !dbg !479

if.then:                                          ; preds = %while.body
  %8 = load i8, i8* %pin, align 1, !dbg !480
  %idxprom5 = zext i8 %8 to i32, !dbg !481
  %arrayidx6 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioB, i32 0, i32 %idxprom5, !dbg !481
  %9 = load void ()*, void ()** %arrayidx6, align 4, !dbg !481
  call arm_aapcscc void %9(), !dbg !481
  br label %if.end, !dbg !481

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32, i32* %isr, align 4, !dbg !482
  %11 = load i8, i8* %pin, align 1, !dbg !483
  %conv7 = zext i8 %11 to i32, !dbg !483
  %shl = shl i32 1, %conv7, !dbg !484
  %neg = xor i32 %shl, -1, !dbg !485
  %and = and i32 %10, %neg, !dbg !486
  store i32 %and, i32* %isr, align 4, !dbg !487
  br label %while.cond, !dbg !461, !llvm.loop !488

while.end:                                        ; preds = %while.cond
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @PIOC_Handler() #0 !dbg !491 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i, metadata !407, metadata !DIExpression()), !dbg !492
  %result.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %result.i, metadata !414, metadata !DIExpression()), !dbg !494
  %isr = alloca i32, align 4
  %leading_zeros = alloca i8, align 1
  %pin = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %isr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.Pio, %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 0, i32 19), align 4, !dbg !497
  store i32 %0, i32* %isr, align 4, !dbg !496
  call void @llvm.dbg.declare(metadata i8* %leading_zeros, metadata !498, metadata !DIExpression()), !dbg !499
  br label %while.cond, !dbg !500

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %isr, align 4, !dbg !501
  store i32 %1, i32* %value.addr.i, align 4
  %2 = load i32, i32* %value.addr.i, align 4, !dbg !502
  %3 = call i8 asm sideeffect "clz $0, $1", "=r,r"(i32 %2) #3, !dbg !503, !srcloc !425
  store i8 %3, i8* %result.i, align 1, !dbg !503
  %4 = load i8, i8* %result.i, align 1, !dbg !504
  store i8 %4, i8* %leading_zeros, align 1, !dbg !505
  %conv = zext i8 %4 to i32, !dbg !506
  %cmp = icmp slt i32 %conv, 32, !dbg !507
  br i1 %cmp, label %while.body, label %while.end, !dbg !500

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8* %pin, metadata !508, metadata !DIExpression()), !dbg !510
  %5 = load i8, i8* %leading_zeros, align 1, !dbg !511
  %conv2 = zext i8 %5 to i32, !dbg !511
  %sub = sub nsw i32 32, %conv2, !dbg !512
  %sub3 = sub nsw i32 %sub, 1, !dbg !513
  %conv4 = trunc i32 %sub3 to i8, !dbg !514
  store i8 %conv4, i8* %pin, align 1, !dbg !510
  %6 = load i8, i8* %pin, align 1, !dbg !515
  %idxprom = zext i8 %6 to i32, !dbg !517
  %arrayidx = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioC, i32 0, i32 %idxprom, !dbg !517
  %7 = load void ()*, void ()** %arrayidx, align 4, !dbg !517
  %tobool = icmp ne void ()* %7, null, !dbg !517
  br i1 %tobool, label %if.then, label %if.end, !dbg !518

if.then:                                          ; preds = %while.body
  %8 = load i8, i8* %pin, align 1, !dbg !519
  %idxprom5 = zext i8 %8 to i32, !dbg !520
  %arrayidx6 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioC, i32 0, i32 %idxprom5, !dbg !520
  %9 = load void ()*, void ()** %arrayidx6, align 4, !dbg !520
  call arm_aapcscc void %9(), !dbg !520
  br label %if.end, !dbg !520

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32, i32* %isr, align 4, !dbg !521
  %11 = load i8, i8* %pin, align 1, !dbg !522
  %conv7 = zext i8 %11 to i32, !dbg !522
  %shl = shl i32 1, %conv7, !dbg !523
  %neg = xor i32 %shl, -1, !dbg !524
  %and = and i32 %10, %neg, !dbg !525
  store i32 %and, i32* %isr, align 4, !dbg !526
  br label %while.cond, !dbg !500, !llvm.loop !527

while.end:                                        ; preds = %while.cond
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @PIOD_Handler() #0 !dbg !530 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i, metadata !407, metadata !DIExpression()), !dbg !531
  %result.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %result.i, metadata !414, metadata !DIExpression()), !dbg !533
  %isr = alloca i32, align 4
  %leading_zeros = alloca i8, align 1
  %pin = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %isr, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.Pio, %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 0, i32 19), align 4, !dbg !536
  store i32 %0, i32* %isr, align 4, !dbg !535
  call void @llvm.dbg.declare(metadata i8* %leading_zeros, metadata !537, metadata !DIExpression()), !dbg !538
  br label %while.cond, !dbg !539

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %isr, align 4, !dbg !540
  store i32 %1, i32* %value.addr.i, align 4
  %2 = load i32, i32* %value.addr.i, align 4, !dbg !541
  %3 = call i8 asm sideeffect "clz $0, $1", "=r,r"(i32 %2) #3, !dbg !542, !srcloc !425
  store i8 %3, i8* %result.i, align 1, !dbg !542
  %4 = load i8, i8* %result.i, align 1, !dbg !543
  store i8 %4, i8* %leading_zeros, align 1, !dbg !544
  %conv = zext i8 %4 to i32, !dbg !545
  %cmp = icmp slt i32 %conv, 32, !dbg !546
  br i1 %cmp, label %while.body, label %while.end, !dbg !539

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8* %pin, metadata !547, metadata !DIExpression()), !dbg !549
  %5 = load i8, i8* %leading_zeros, align 1, !dbg !550
  %conv2 = zext i8 %5 to i32, !dbg !550
  %sub = sub nsw i32 32, %conv2, !dbg !551
  %sub3 = sub nsw i32 %sub, 1, !dbg !552
  %conv4 = trunc i32 %sub3 to i8, !dbg !553
  store i8 %conv4, i8* %pin, align 1, !dbg !549
  %6 = load i8, i8* %pin, align 1, !dbg !554
  %idxprom = zext i8 %6 to i32, !dbg !556
  %arrayidx = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioD, i32 0, i32 %idxprom, !dbg !556
  %7 = load void ()*, void ()** %arrayidx, align 4, !dbg !556
  %tobool = icmp ne void ()* %7, null, !dbg !556
  br i1 %tobool, label %if.then, label %if.end, !dbg !557

if.then:                                          ; preds = %while.body
  %8 = load i8, i8* %pin, align 1, !dbg !558
  %idxprom5 = zext i8 %8 to i32, !dbg !559
  %arrayidx6 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioD, i32 0, i32 %idxprom5, !dbg !559
  %9 = load void ()*, void ()** %arrayidx6, align 4, !dbg !559
  call arm_aapcscc void %9(), !dbg !559
  br label %if.end, !dbg !559

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32, i32* %isr, align 4, !dbg !560
  %11 = load i8, i8* %pin, align 1, !dbg !561
  %conv7 = zext i8 %11 to i32, !dbg !561
  %shl = shl i32 1, %conv7, !dbg !562
  %neg = xor i32 %shl, -1, !dbg !563
  %and = and i32 %10, %neg, !dbg !564
  store i32 %and, i32* %isr, align 4, !dbg !565
  br label %while.cond, !dbg !539, !llvm.loop !566

while.end:                                        ; preds = %while.cond
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @__initialize() #0 !dbg !569 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !570, metadata !DIExpression()), !dbg !571
  store i32 0, i32* %i, align 4, !dbg !572
  br label %for.cond, !dbg !574

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !575
  %cmp = icmp slt i32 %0, 32, !dbg !577
  br i1 %cmp, label %for.body, label %for.end, !dbg !578

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !579
  %arrayidx = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioA, i32 0, i32 %1, !dbg !581
  store void ()* null, void ()** %arrayidx, align 4, !dbg !582
  %2 = load i32, i32* %i, align 4, !dbg !583
  %arrayidx1 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioB, i32 0, i32 %2, !dbg !584
  store void ()* null, void ()** %arrayidx1, align 4, !dbg !585
  %3 = load i32, i32* %i, align 4, !dbg !586
  %arrayidx2 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioC, i32 0, i32 %3, !dbg !587
  store void ()* null, void ()** %arrayidx2, align 4, !dbg !588
  %4 = load i32, i32* %i, align 4, !dbg !589
  %arrayidx3 = getelementptr inbounds [32 x void ()*], [32 x void ()*]* @callbacksPioD, i32 0, i32 %4, !dbg !590
  store void ()* null, void ()** %arrayidx3, align 4, !dbg !591
  br label %for.inc, !dbg !592

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !593
  %inc = add nsw i32 %5, 1, !dbg !593
  store i32 %inc, i32* %i, align 4, !dbg !593
  br label %for.cond, !dbg !594, !llvm.loop !595

for.end:                                          ; preds = %for.cond
  %call = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 11), !dbg !597
  call arm_aapcscc void @NVIC_DisableIRQ(i8 signext 11), !dbg !598
  call arm_aapcscc void @NVIC_ClearPendingIRQ(i8 signext 11), !dbg !599
  call arm_aapcscc void @NVIC_SetPriority(i8 signext 11, i32 0), !dbg !600
  call arm_aapcscc void @NVIC_EnableIRQ(i8 signext 11), !dbg !601
  %call4 = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 12), !dbg !602
  call arm_aapcscc void @NVIC_DisableIRQ(i8 signext 12), !dbg !603
  call arm_aapcscc void @NVIC_ClearPendingIRQ(i8 signext 12), !dbg !604
  call arm_aapcscc void @NVIC_SetPriority(i8 signext 12, i32 0), !dbg !605
  call arm_aapcscc void @NVIC_EnableIRQ(i8 signext 12), !dbg !606
  %call5 = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 13), !dbg !607
  call arm_aapcscc void @NVIC_DisableIRQ(i8 signext 13), !dbg !608
  call arm_aapcscc void @NVIC_ClearPendingIRQ(i8 signext 13), !dbg !609
  call arm_aapcscc void @NVIC_SetPriority(i8 signext 13, i32 0), !dbg !610
  call arm_aapcscc void @NVIC_EnableIRQ(i8 signext 13), !dbg !611
  %call6 = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 14), !dbg !612
  call arm_aapcscc void @NVIC_DisableIRQ(i8 signext 14), !dbg !613
  call arm_aapcscc void @NVIC_ClearPendingIRQ(i8 signext 14), !dbg !614
  call arm_aapcscc void @NVIC_SetPriority(i8 signext 14, i32 0), !dbg !615
  call arm_aapcscc void @NVIC_EnableIRQ(i8 signext 14), !dbg !616
  ret void, !dbg !617
}

declare dso_local arm_aapcscc i32 @pmc_enable_periph_clk(i32) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @NVIC_DisableIRQ(i8 signext %IRQn) #0 !dbg !618 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !624
  %conv = sext i8 %0 to i32, !dbg !625
  %and = and i32 %conv, 31, !dbg !626
  %shl = shl i32 1, %and, !dbg !627
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !628
  %conv1 = sext i8 %1 to i32, !dbg !629
  %shr = lshr i32 %conv1, 5, !dbg !630
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 2), i32 0, i32 %shr, !dbg !631
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !632
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @NVIC_ClearPendingIRQ(i8 signext %IRQn) #0 !dbg !634 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !635, metadata !DIExpression()), !dbg !636
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !637
  %conv = sext i8 %0 to i32, !dbg !638
  %and = and i32 %conv, 31, !dbg !639
  %shl = shl i32 1, %and, !dbg !640
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !641
  %conv1 = sext i8 %1 to i32, !dbg !642
  %shr = lshr i32 %conv1, 5, !dbg !643
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 6), i32 0, i32 %shr, !dbg !644
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !645
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @NVIC_SetPriority(i8 signext %IRQn, i32 %priority) #0 !dbg !647 {
entry:
  %IRQn.addr = alloca i8, align 1
  %priority.addr = alloca i32, align 4
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !650, metadata !DIExpression()), !dbg !651
  store i32 %priority, i32* %priority.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %priority.addr, metadata !652, metadata !DIExpression()), !dbg !653
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !654
  %conv = sext i8 %0 to i32, !dbg !654
  %cmp = icmp slt i32 %conv, 0, !dbg !656
  br i1 %cmp, label %if.then, label %if.else, !dbg !657

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %priority.addr, align 4, !dbg !658
  %shl = shl i32 %1, 4, !dbg !660
  %and = and i32 %shl, 255, !dbg !661
  %conv2 = trunc i32 %and to i8, !dbg !662
  %2 = load i8, i8* %IRQn.addr, align 1, !dbg !663
  %conv3 = sext i8 %2 to i32, !dbg !664
  %and4 = and i32 %conv3, 15, !dbg !665
  %sub = sub i32 %and4, 4, !dbg !666
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 6), i32 0, i32 %sub, !dbg !667
  store volatile i8 %conv2, i8* %arrayidx, align 1, !dbg !668
  br label %if.end, !dbg !669

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %priority.addr, align 4, !dbg !670
  %shl5 = shl i32 %3, 4, !dbg !672
  %and6 = and i32 %shl5, 255, !dbg !673
  %conv7 = trunc i32 %and6 to i8, !dbg !674
  %4 = load i8, i8* %IRQn.addr, align 1, !dbg !675
  %conv8 = sext i8 %4 to i32, !dbg !676
  %arrayidx9 = getelementptr inbounds [240 x i8], [240 x i8]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 10), i32 0, i32 %conv8, !dbg !677
  store volatile i8 %conv7, i8* %arrayidx9, align 1, !dbg !678
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @NVIC_EnableIRQ(i8 signext %IRQn) #0 !dbg !680 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !681, metadata !DIExpression()), !dbg !682
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !683
  %conv = sext i8 %0 to i32, !dbg !684
  %and = and i32 %conv, 31, !dbg !685
  %shl = shl i32 1, %and, !dbg !686
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !687
  %conv1 = sext i8 %1 to i32, !dbg !688
  %shr = lshr i32 %conv1, 5, !dbg !689
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 0), i32 0, i32 %shr, !dbg !690
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !691
  ret void, !dbg !692
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "enabled", scope: !2, file: !3, line: 66, type: !232, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "attachInterrupt", scope: !3, file: !3, line: 64, type: !4, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !231)
!3 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WInterrupts.c", directory: "/home/aaa")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !11, !6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 66, baseType: !8)
!7 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 56, baseType: !10)
!9 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !71, globals: !218, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WInterrupts.c", directory: "/home/aaa/llvm-arduino-due")
!16 = !{!17}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !18, line: 64, baseType: !19, size: 8, elements: !20)
!18 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!19 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!21 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!22 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!23 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!24 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!25 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!26 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!27 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!28 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!29 = !DIEnumerator(name: "SUPC_IRQn", value: 0)
!30 = !DIEnumerator(name: "RSTC_IRQn", value: 1)
!31 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!32 = !DIEnumerator(name: "RTT_IRQn", value: 3)
!33 = !DIEnumerator(name: "WDT_IRQn", value: 4)
!34 = !DIEnumerator(name: "PMC_IRQn", value: 5)
!35 = !DIEnumerator(name: "EFC0_IRQn", value: 6)
!36 = !DIEnumerator(name: "EFC1_IRQn", value: 7)
!37 = !DIEnumerator(name: "UART_IRQn", value: 8)
!38 = !DIEnumerator(name: "SMC_IRQn", value: 9)
!39 = !DIEnumerator(name: "PIOA_IRQn", value: 11)
!40 = !DIEnumerator(name: "PIOB_IRQn", value: 12)
!41 = !DIEnumerator(name: "PIOC_IRQn", value: 13)
!42 = !DIEnumerator(name: "PIOD_IRQn", value: 14)
!43 = !DIEnumerator(name: "USART0_IRQn", value: 17)
!44 = !DIEnumerator(name: "USART1_IRQn", value: 18)
!45 = !DIEnumerator(name: "USART2_IRQn", value: 19)
!46 = !DIEnumerator(name: "USART3_IRQn", value: 20)
!47 = !DIEnumerator(name: "HSMCI_IRQn", value: 21)
!48 = !DIEnumerator(name: "TWI0_IRQn", value: 22)
!49 = !DIEnumerator(name: "TWI1_IRQn", value: 23)
!50 = !DIEnumerator(name: "SPI0_IRQn", value: 24)
!51 = !DIEnumerator(name: "SSC_IRQn", value: 26)
!52 = !DIEnumerator(name: "TC0_IRQn", value: 27)
!53 = !DIEnumerator(name: "TC1_IRQn", value: 28)
!54 = !DIEnumerator(name: "TC2_IRQn", value: 29)
!55 = !DIEnumerator(name: "TC3_IRQn", value: 30)
!56 = !DIEnumerator(name: "TC4_IRQn", value: 31)
!57 = !DIEnumerator(name: "TC5_IRQn", value: 32)
!58 = !DIEnumerator(name: "TC6_IRQn", value: 33)
!59 = !DIEnumerator(name: "TC7_IRQn", value: 34)
!60 = !DIEnumerator(name: "TC8_IRQn", value: 35)
!61 = !DIEnumerator(name: "PWM_IRQn", value: 36)
!62 = !DIEnumerator(name: "ADC_IRQn", value: 37)
!63 = !DIEnumerator(name: "DACC_IRQn", value: 38)
!64 = !DIEnumerator(name: "DMAC_IRQn", value: 39)
!65 = !DIEnumerator(name: "UOTGHS_IRQn", value: 40)
!66 = !DIEnumerator(name: "TRNG_IRQn", value: 41)
!67 = !DIEnumerator(name: "EMAC_IRQn", value: 42)
!68 = !DIEnumerator(name: "CAN0_IRQn", value: 43)
!69 = !DIEnumerator(name: "CAN1_IRQn", value: 44)
!70 = !DIEnumerator(name: "PERIPH_COUNT_IRQn", value: 45)
!71 = !{!72, !6, !145, !182}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pio", file: !74, line: 96, baseType: !75)
!74 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_pio.h", directory: "/home/aaa")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 41, size: 1888, elements: !76)
!76 = !{!77, !80, !81, !84, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !118, !119, !120, !121, !122, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PER", scope: !75, file: !74, line: 42, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !18, line: 53, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PDR", scope: !75, file: !74, line: 43, baseType: !78, size: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PSR", scope: !75, file: !74, line: 44, baseType: !82, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !18, line: 49, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !75, file: !74, line: 45, baseType: !85, size: 32, offset: 96)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 32, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OER", scope: !75, file: !74, line: 46, baseType: !78, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ODR", scope: !75, file: !74, line: 47, baseType: !78, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OSR", scope: !75, file: !74, line: 48, baseType: !82, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !75, file: !74, line: 49, baseType: !85, size: 32, offset: 224)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFER", scope: !75, file: !74, line: 50, baseType: !78, size: 32, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFDR", scope: !75, file: !74, line: 51, baseType: !78, size: 32, offset: 288)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFSR", scope: !75, file: !74, line: 52, baseType: !82, size: 32, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !75, file: !74, line: 53, baseType: !85, size: 32, offset: 352)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SODR", scope: !75, file: !74, line: 54, baseType: !78, size: 32, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_CODR", scope: !75, file: !74, line: 55, baseType: !78, size: 32, offset: 416)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ODSR", scope: !75, file: !74, line: 56, baseType: !99, size: 32, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !18, line: 54, baseType: !79)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PDSR", scope: !75, file: !74, line: 57, baseType: !82, size: 32, offset: 480)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IER", scope: !75, file: !74, line: 58, baseType: !78, size: 32, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IDR", scope: !75, file: !74, line: 59, baseType: !78, size: 32, offset: 544)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IMR", scope: !75, file: !74, line: 60, baseType: !82, size: 32, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ISR", scope: !75, file: !74, line: 61, baseType: !82, size: 32, offset: 608)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDER", scope: !75, file: !74, line: 62, baseType: !78, size: 32, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDDR", scope: !75, file: !74, line: 63, baseType: !78, size: 32, offset: 672)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDSR", scope: !75, file: !74, line: 64, baseType: !82, size: 32, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !75, file: !74, line: 65, baseType: !85, size: 32, offset: 736)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUDR", scope: !75, file: !74, line: 66, baseType: !78, size: 32, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUER", scope: !75, file: !74, line: 67, baseType: !78, size: 32, offset: 800)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUSR", scope: !75, file: !74, line: 68, baseType: !82, size: 32, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !75, file: !74, line: 69, baseType: !85, size: 32, offset: 864)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ABSR", scope: !75, file: !74, line: 70, baseType: !99, size: 32, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !75, file: !74, line: 71, baseType: !115, size: 96, offset: 928)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 96, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 3)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SCIFSR", scope: !75, file: !74, line: 72, baseType: !78, size: 32, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_DIFSR", scope: !75, file: !74, line: 73, baseType: !78, size: 32, offset: 1056)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFDGSR", scope: !75, file: !74, line: 74, baseType: !82, size: 32, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SCDR", scope: !75, file: !74, line: 75, baseType: !99, size: 32, offset: 1120)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved7", scope: !75, file: !74, line: 76, baseType: !123, size: 128, offset: 1152)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 128, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWER", scope: !75, file: !74, line: 77, baseType: !78, size: 32, offset: 1280)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWDR", scope: !75, file: !74, line: 78, baseType: !78, size: 32, offset: 1312)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWSR", scope: !75, file: !74, line: 79, baseType: !82, size: 32, offset: 1344)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved8", scope: !75, file: !74, line: 80, baseType: !85, size: 32, offset: 1376)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMER", scope: !75, file: !74, line: 81, baseType: !78, size: 32, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMDR", scope: !75, file: !74, line: 82, baseType: !78, size: 32, offset: 1440)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMMR", scope: !75, file: !74, line: 83, baseType: !82, size: 32, offset: 1472)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved9", scope: !75, file: !74, line: 84, baseType: !85, size: 32, offset: 1504)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ESR", scope: !75, file: !74, line: 85, baseType: !78, size: 32, offset: 1536)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_LSR", scope: !75, file: !74, line: 86, baseType: !78, size: 32, offset: 1568)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ELSR", scope: !75, file: !74, line: 87, baseType: !82, size: 32, offset: 1600)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved10", scope: !75, file: !74, line: 88, baseType: !85, size: 32, offset: 1632)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_FELLSR", scope: !75, file: !74, line: 89, baseType: !78, size: 32, offset: 1664)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_REHLSR", scope: !75, file: !74, line: 90, baseType: !78, size: 32, offset: 1696)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_FRLHSR", scope: !75, file: !74, line: 91, baseType: !82, size: 32, offset: 1728)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved11", scope: !75, file: !74, line: 92, baseType: !85, size: 32, offset: 1760)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_LOCKSR", scope: !75, file: !74, line: 93, baseType: !82, size: 32, offset: 1792)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_WPMR", scope: !75, file: !74, line: 94, baseType: !99, size: 32, offset: 1824)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_WPSR", scope: !75, file: !74, line: 95, baseType: !82, size: 32, offset: 1856)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !147, line: 289, baseType: !148)
!147 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cm3.h", directory: "/home/aaa")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 274, size: 28704, elements: !149)
!149 = !{!150, !154, !158, !159, !160, !161, !162, !163, !164, !165, !169, !177, !181}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !148, file: !147, line: 276, baseType: !151, size: 256)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 8)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !148, file: !147, line: 277, baseType: !155, size: 768, offset: 256)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 768, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 24)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !148, file: !147, line: 278, baseType: !151, size: 256, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !148, file: !147, line: 279, baseType: !155, size: 768, offset: 1280)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !148, file: !147, line: 280, baseType: !151, size: 256, offset: 2048)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !148, file: !147, line: 281, baseType: !155, size: 768, offset: 2304)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !148, file: !147, line: 282, baseType: !151, size: 256, offset: 3072)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !148, file: !147, line: 283, baseType: !155, size: 768, offset: 3328)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !148, file: !147, line: 284, baseType: !151, size: 256, offset: 4096)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !148, file: !147, line: 285, baseType: !166, size: 1792, offset: 4352)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1792, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 56)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !148, file: !147, line: 286, baseType: !170, size: 1920, offset: 6144)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 1920, elements: !175)
!171 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 42, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 28, baseType: !174)
!174 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !{!176}
!176 = !DISubrange(count: 240)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !148, file: !147, line: 287, baseType: !178, size: 20608, offset: 8064)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20608, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 644)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !148, file: !147, line: 288, baseType: !79, size: 32, offset: 28672)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !147, line: 329, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 306, size: 1120, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !196, !197, !198, !199, !200, !201, !202, !203, !207, !208, !209, !211, !215, !217}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !184, file: !147, line: 308, baseType: !83, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !184, file: !147, line: 309, baseType: !79, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !184, file: !147, line: 310, baseType: !79, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !184, file: !147, line: 311, baseType: !79, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !184, file: !147, line: 312, baseType: !79, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !184, file: !147, line: 313, baseType: !79, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !184, file: !147, line: 314, baseType: !193, size: 96, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 96, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 12)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !184, file: !147, line: 315, baseType: !79, size: 32, offset: 288)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !184, file: !147, line: 316, baseType: !79, size: 32, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !184, file: !147, line: 317, baseType: !79, size: 32, offset: 352)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !184, file: !147, line: 318, baseType: !79, size: 32, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !184, file: !147, line: 319, baseType: !79, size: 32, offset: 416)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !184, file: !147, line: 320, baseType: !79, size: 32, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !184, file: !147, line: 321, baseType: !79, size: 32, offset: 480)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !184, file: !147, line: 322, baseType: !204, size: 64, offset: 512)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 2)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !184, file: !147, line: 323, baseType: !83, size: 32, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !184, file: !147, line: 324, baseType: !83, size: 32, offset: 608)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !184, file: !147, line: 325, baseType: !210, size: 128, offset: 640)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !124)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !184, file: !147, line: 326, baseType: !212, size: 160, offset: 768)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 160, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 5)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !184, file: !147, line: 327, baseType: !216, size: 160, offset: 928)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, elements: !213)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !184, file: !147, line: 328, baseType: !79, size: 32, offset: 1088)
!218 = !{!0, !219, !225, !227, !229}
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "callbacksPioA", scope: !14, file: !3, line: 23, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1024, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "interruptCB", file: !3, line: 21, baseType: !11)
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "callbacksPioB", scope: !14, file: !3, line: 24, type: !221, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "callbacksPioC", scope: !14, file: !3, line: 25, type: !221, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "callbacksPioD", scope: !14, file: !3, line: 26, type: !221, isLocal: true, isDefinition: true)
!231 = !{}
!232 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!233 = !{i32 7, !"Dwarf Version", i32 4}
!234 = !{i32 2, !"Debug Info Version", i32 3}
!235 = !{i32 1, !"wchar_size", i32 4}
!236 = !{i32 1, !"min_enum_size", i32 1}
!237 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!238 = !DILocalVariable(name: "pin", arg: 1, scope: !2, file: !3, line: 64, type: !6)
!239 = !DILocation(line: 64, column: 31, scope: !2)
!240 = !DILocalVariable(name: "callback", arg: 2, scope: !2, file: !3, line: 64, type: !11)
!241 = !DILocation(line: 64, column: 43, scope: !2)
!242 = !DILocalVariable(name: "mode", arg: 3, scope: !2, file: !3, line: 64, type: !6)
!243 = !DILocation(line: 64, column: 69, scope: !2)
!244 = !DILocation(line: 67, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !2, file: !3, line: 67, column: 6)
!246 = !DILocation(line: 67, column: 6, scope: !2)
!247 = !DILocation(line: 68, column: 3, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 67, column: 16)
!249 = !DILocation(line: 69, column: 11, scope: !248)
!250 = !DILocation(line: 70, column: 2, scope: !248)
!251 = !DILocalVariable(name: "pio", scope: !2, file: !3, line: 73, type: !72)
!252 = !DILocation(line: 73, column: 7, scope: !2)
!253 = !DILocation(line: 73, column: 31, scope: !2)
!254 = !DILocation(line: 73, column: 13, scope: !2)
!255 = !DILocation(line: 73, column: 36, scope: !2)
!256 = !DILocalVariable(name: "mask", scope: !2, file: !3, line: 74, type: !6)
!257 = !DILocation(line: 74, column: 11, scope: !2)
!258 = !DILocation(line: 74, column: 36, scope: !2)
!259 = !DILocation(line: 74, column: 18, scope: !2)
!260 = !DILocation(line: 74, column: 41, scope: !2)
!261 = !DILocalVariable(name: "pos", scope: !2, file: !3, line: 75, type: !6)
!262 = !DILocation(line: 75, column: 11, scope: !2)
!263 = !DILocalVariable(name: "t", scope: !2, file: !3, line: 77, type: !6)
!264 = !DILocation(line: 77, column: 11, scope: !2)
!265 = !DILocation(line: 78, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !2, file: !3, line: 78, column: 2)
!267 = !DILocation(line: 78, column: 9, scope: !266)
!268 = !DILocation(line: 78, column: 7, scope: !266)
!269 = !DILocation(line: 78, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 78, column: 2)
!271 = !DILocation(line: 78, column: 18, scope: !270)
!272 = !DILocation(line: 78, column: 2, scope: !266)
!273 = !DILocation(line: 78, column: 23, scope: !270)
!274 = !DILocation(line: 78, column: 32, scope: !270)
!275 = !DILocation(line: 78, column: 2, scope: !270)
!276 = distinct !{!276, !272, !277}
!277 = !DILocation(line: 79, column: 3, scope: !266)
!278 = !DILocation(line: 82, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !2, file: !3, line: 82, column: 6)
!280 = !DILocation(line: 82, column: 10, scope: !279)
!281 = !DILocation(line: 82, column: 6, scope: !2)
!282 = !DILocation(line: 83, column: 24, scope: !279)
!283 = !DILocation(line: 83, column: 17, scope: !279)
!284 = !DILocation(line: 83, column: 3, scope: !279)
!285 = !DILocation(line: 83, column: 22, scope: !279)
!286 = !DILocation(line: 84, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !2, file: !3, line: 84, column: 6)
!288 = !DILocation(line: 84, column: 10, scope: !287)
!289 = !DILocation(line: 84, column: 6, scope: !2)
!290 = !DILocation(line: 85, column: 24, scope: !287)
!291 = !DILocation(line: 85, column: 17, scope: !287)
!292 = !DILocation(line: 85, column: 3, scope: !287)
!293 = !DILocation(line: 85, column: 22, scope: !287)
!294 = !DILocation(line: 86, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !2, file: !3, line: 86, column: 6)
!296 = !DILocation(line: 86, column: 10, scope: !295)
!297 = !DILocation(line: 86, column: 6, scope: !2)
!298 = !DILocation(line: 87, column: 24, scope: !295)
!299 = !DILocation(line: 87, column: 17, scope: !295)
!300 = !DILocation(line: 87, column: 3, scope: !295)
!301 = !DILocation(line: 87, column: 22, scope: !295)
!302 = !DILocation(line: 88, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !2, file: !3, line: 88, column: 6)
!304 = !DILocation(line: 88, column: 10, scope: !303)
!305 = !DILocation(line: 88, column: 6, scope: !2)
!306 = !DILocation(line: 89, column: 24, scope: !303)
!307 = !DILocation(line: 89, column: 17, scope: !303)
!308 = !DILocation(line: 89, column: 3, scope: !303)
!309 = !DILocation(line: 89, column: 22, scope: !303)
!310 = !DILocation(line: 92, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !2, file: !3, line: 92, column: 6)
!312 = !DILocation(line: 92, column: 11, scope: !311)
!313 = !DILocation(line: 92, column: 6, scope: !2)
!314 = !DILocation(line: 94, column: 20, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 92, column: 22)
!316 = !DILocation(line: 94, column: 3, scope: !315)
!317 = !DILocation(line: 94, column: 8, scope: !315)
!318 = !DILocation(line: 94, column: 18, scope: !315)
!319 = !DILocation(line: 95, column: 2, scope: !315)
!320 = !DILocation(line: 97, column: 20, scope: !321)
!321 = distinct !DILexicalBlock(scope: !311, file: !3, line: 95, column: 9)
!322 = !DILocation(line: 97, column: 3, scope: !321)
!323 = !DILocation(line: 97, column: 8, scope: !321)
!324 = !DILocation(line: 97, column: 18, scope: !321)
!325 = !DILocation(line: 100, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 100, column: 7)
!327 = !DILocation(line: 100, column: 12, scope: !326)
!328 = !DILocation(line: 100, column: 7, scope: !321)
!329 = !DILocation(line: 101, column: 19, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 100, column: 20)
!331 = !DILocation(line: 101, column: 4, scope: !330)
!332 = !DILocation(line: 101, column: 9, scope: !330)
!333 = !DILocation(line: 101, column: 17, scope: !330)
!334 = !DILocation(line: 102, column: 22, scope: !330)
!335 = !DILocation(line: 102, column: 4, scope: !330)
!336 = !DILocation(line: 102, column: 9, scope: !330)
!337 = !DILocation(line: 102, column: 20, scope: !330)
!338 = !DILocation(line: 103, column: 3, scope: !330)
!339 = !DILocation(line: 104, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !321, file: !3, line: 104, column: 7)
!341 = !DILocation(line: 104, column: 12, scope: !340)
!342 = !DILocation(line: 104, column: 7, scope: !321)
!343 = !DILocation(line: 105, column: 19, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 104, column: 21)
!345 = !DILocation(line: 105, column: 4, scope: !344)
!346 = !DILocation(line: 105, column: 9, scope: !344)
!347 = !DILocation(line: 105, column: 17, scope: !344)
!348 = !DILocation(line: 106, column: 22, scope: !344)
!349 = !DILocation(line: 106, column: 4, scope: !344)
!350 = !DILocation(line: 106, column: 9, scope: !344)
!351 = !DILocation(line: 106, column: 20, scope: !344)
!352 = !DILocation(line: 107, column: 3, scope: !344)
!353 = !DILocation(line: 108, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !321, file: !3, line: 108, column: 7)
!355 = !DILocation(line: 108, column: 12, scope: !354)
!356 = !DILocation(line: 108, column: 7, scope: !321)
!357 = !DILocation(line: 109, column: 19, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !3, line: 108, column: 24)
!359 = !DILocation(line: 109, column: 4, scope: !358)
!360 = !DILocation(line: 109, column: 9, scope: !358)
!361 = !DILocation(line: 109, column: 17, scope: !358)
!362 = !DILocation(line: 110, column: 22, scope: !358)
!363 = !DILocation(line: 110, column: 4, scope: !358)
!364 = !DILocation(line: 110, column: 9, scope: !358)
!365 = !DILocation(line: 110, column: 20, scope: !358)
!366 = !DILocation(line: 111, column: 3, scope: !358)
!367 = !DILocation(line: 112, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !321, file: !3, line: 112, column: 7)
!369 = !DILocation(line: 112, column: 12, scope: !368)
!370 = !DILocation(line: 112, column: 7, scope: !321)
!371 = !DILocation(line: 113, column: 19, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 112, column: 23)
!373 = !DILocation(line: 113, column: 4, scope: !372)
!374 = !DILocation(line: 113, column: 9, scope: !372)
!375 = !DILocation(line: 113, column: 17, scope: !372)
!376 = !DILocation(line: 114, column: 22, scope: !372)
!377 = !DILocation(line: 114, column: 4, scope: !372)
!378 = !DILocation(line: 114, column: 9, scope: !372)
!379 = !DILocation(line: 114, column: 20, scope: !372)
!380 = !DILocation(line: 115, column: 3, scope: !372)
!381 = !DILocation(line: 119, column: 17, scope: !2)
!382 = !DILocation(line: 119, column: 2, scope: !2)
!383 = !DILocation(line: 119, column: 7, scope: !2)
!384 = !DILocation(line: 119, column: 15, scope: !2)
!385 = !DILocation(line: 120, column: 1, scope: !2)
!386 = distinct !DISubprogram(name: "detachInterrupt", scope: !3, file: !3, line: 122, type: !387, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !231)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !6}
!389 = !DILocalVariable(name: "pin", arg: 1, scope: !386, file: !3, line: 122, type: !6)
!390 = !DILocation(line: 122, column: 31, scope: !386)
!391 = !DILocalVariable(name: "pio", scope: !386, file: !3, line: 125, type: !72)
!392 = !DILocation(line: 125, column: 7, scope: !386)
!393 = !DILocation(line: 125, column: 31, scope: !386)
!394 = !DILocation(line: 125, column: 13, scope: !386)
!395 = !DILocation(line: 125, column: 36, scope: !386)
!396 = !DILocalVariable(name: "mask", scope: !386, file: !3, line: 126, type: !6)
!397 = !DILocation(line: 126, column: 11, scope: !386)
!398 = !DILocation(line: 126, column: 36, scope: !386)
!399 = !DILocation(line: 126, column: 18, scope: !386)
!400 = !DILocation(line: 126, column: 41, scope: !386)
!401 = !DILocation(line: 129, column: 17, scope: !386)
!402 = !DILocation(line: 129, column: 2, scope: !386)
!403 = !DILocation(line: 129, column: 7, scope: !386)
!404 = !DILocation(line: 129, column: 15, scope: !386)
!405 = !DILocation(line: 130, column: 1, scope: !386)
!406 = distinct !DISubprogram(name: "PIOA_Handler", scope: !3, file: !3, line: 136, type: !12, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !231)
!407 = !DILocalVariable(name: "value", arg: 1, scope: !408, file: !409, line: 559, type: !6)
!408 = distinct !DISubprogram(name: "__CLZ", scope: !409, file: !409, line: 559, type: !410, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !231)
!409 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cmInstr.h", directory: "/home/aaa")
!410 = !DISubroutineType(types: !411)
!411 = !{!172, !6}
!412 = !DILocation(line: 559, column: 75, scope: !408, inlinedAt: !413)
!413 = distinct !DILocation(line: 139, column: 24, scope: !406)
!414 = !DILocalVariable(name: "result", scope: !408, file: !409, line: 561, type: !172)
!415 = !DILocation(line: 561, column: 11, scope: !408, inlinedAt: !413)
!416 = !DILocalVariable(name: "isr", scope: !406, file: !3, line: 137, type: !6)
!417 = !DILocation(line: 137, column: 12, scope: !406)
!418 = !DILocation(line: 137, column: 24, scope: !406)
!419 = !DILocalVariable(name: "leading_zeros", scope: !406, file: !3, line: 138, type: !172)
!420 = !DILocation(line: 138, column: 11, scope: !406)
!421 = !DILocation(line: 139, column: 3, scope: !406)
!422 = !DILocation(line: 139, column: 30, scope: !406)
!423 = !DILocation(line: 563, column: 55, scope: !408, inlinedAt: !413)
!424 = !DILocation(line: 563, column: 3, scope: !408, inlinedAt: !413)
!425 = !{i32 360644}
!426 = !DILocation(line: 564, column: 10, scope: !408, inlinedAt: !413)
!427 = !DILocation(line: 139, column: 23, scope: !406)
!428 = !DILocation(line: 139, column: 9, scope: !406)
!429 = !DILocation(line: 139, column: 35, scope: !406)
!430 = !DILocalVariable(name: "pin", scope: !431, file: !3, line: 141, type: !172)
!431 = distinct !DILexicalBlock(scope: !406, file: !3, line: 140, column: 3)
!432 = !DILocation(line: 141, column: 13, scope: !431)
!433 = !DILocation(line: 141, column: 20, scope: !431)
!434 = !DILocation(line: 141, column: 19, scope: !431)
!435 = !DILocation(line: 141, column: 33, scope: !431)
!436 = !DILocation(line: 141, column: 17, scope: !431)
!437 = !DILocation(line: 142, column: 22, scope: !438)
!438 = distinct !DILexicalBlock(scope: !431, file: !3, line: 142, column: 8)
!439 = !DILocation(line: 142, column: 8, scope: !438)
!440 = !DILocation(line: 142, column: 8, scope: !431)
!441 = !DILocation(line: 142, column: 42, scope: !438)
!442 = !DILocation(line: 142, column: 28, scope: !438)
!443 = !DILocation(line: 143, column: 9, scope: !431)
!444 = !DILocation(line: 143, column: 19, scope: !431)
!445 = !DILocation(line: 143, column: 17, scope: !431)
!446 = !DILocation(line: 143, column: 14, scope: !431)
!447 = !DILocation(line: 143, column: 12, scope: !431)
!448 = !DILocation(line: 143, column: 8, scope: !431)
!449 = distinct !{!449, !421, !450}
!450 = !DILocation(line: 144, column: 3, scope: !406)
!451 = !DILocation(line: 145, column: 1, scope: !406)
!452 = distinct !DISubprogram(name: "PIOB_Handler", scope: !3, file: !3, line: 147, type: !12, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !231)
!453 = !DILocation(line: 559, column: 75, scope: !408, inlinedAt: !454)
!454 = distinct !DILocation(line: 150, column: 24, scope: !452)
!455 = !DILocation(line: 561, column: 11, scope: !408, inlinedAt: !454)
!456 = !DILocalVariable(name: "isr", scope: !452, file: !3, line: 148, type: !6)
!457 = !DILocation(line: 148, column: 12, scope: !452)
!458 = !DILocation(line: 148, column: 24, scope: !452)
!459 = !DILocalVariable(name: "leading_zeros", scope: !452, file: !3, line: 149, type: !172)
!460 = !DILocation(line: 149, column: 11, scope: !452)
!461 = !DILocation(line: 150, column: 3, scope: !452)
!462 = !DILocation(line: 150, column: 30, scope: !452)
!463 = !DILocation(line: 563, column: 55, scope: !408, inlinedAt: !454)
!464 = !DILocation(line: 563, column: 3, scope: !408, inlinedAt: !454)
!465 = !DILocation(line: 564, column: 10, scope: !408, inlinedAt: !454)
!466 = !DILocation(line: 150, column: 23, scope: !452)
!467 = !DILocation(line: 150, column: 9, scope: !452)
!468 = !DILocation(line: 150, column: 35, scope: !452)
!469 = !DILocalVariable(name: "pin", scope: !470, file: !3, line: 152, type: !172)
!470 = distinct !DILexicalBlock(scope: !452, file: !3, line: 151, column: 3)
!471 = !DILocation(line: 152, column: 13, scope: !470)
!472 = !DILocation(line: 152, column: 20, scope: !470)
!473 = !DILocation(line: 152, column: 19, scope: !470)
!474 = !DILocation(line: 152, column: 33, scope: !470)
!475 = !DILocation(line: 152, column: 17, scope: !470)
!476 = !DILocation(line: 153, column: 22, scope: !477)
!477 = distinct !DILexicalBlock(scope: !470, file: !3, line: 153, column: 8)
!478 = !DILocation(line: 153, column: 8, scope: !477)
!479 = !DILocation(line: 153, column: 8, scope: !470)
!480 = !DILocation(line: 153, column: 42, scope: !477)
!481 = !DILocation(line: 153, column: 28, scope: !477)
!482 = !DILocation(line: 154, column: 9, scope: !470)
!483 = !DILocation(line: 154, column: 19, scope: !470)
!484 = !DILocation(line: 154, column: 17, scope: !470)
!485 = !DILocation(line: 154, column: 14, scope: !470)
!486 = !DILocation(line: 154, column: 12, scope: !470)
!487 = !DILocation(line: 154, column: 8, scope: !470)
!488 = distinct !{!488, !461, !489}
!489 = !DILocation(line: 155, column: 3, scope: !452)
!490 = !DILocation(line: 156, column: 1, scope: !452)
!491 = distinct !DISubprogram(name: "PIOC_Handler", scope: !3, file: !3, line: 158, type: !12, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !231)
!492 = !DILocation(line: 559, column: 75, scope: !408, inlinedAt: !493)
!493 = distinct !DILocation(line: 161, column: 24, scope: !491)
!494 = !DILocation(line: 561, column: 11, scope: !408, inlinedAt: !493)
!495 = !DILocalVariable(name: "isr", scope: !491, file: !3, line: 159, type: !6)
!496 = !DILocation(line: 159, column: 12, scope: !491)
!497 = !DILocation(line: 159, column: 24, scope: !491)
!498 = !DILocalVariable(name: "leading_zeros", scope: !491, file: !3, line: 160, type: !172)
!499 = !DILocation(line: 160, column: 11, scope: !491)
!500 = !DILocation(line: 161, column: 3, scope: !491)
!501 = !DILocation(line: 161, column: 30, scope: !491)
!502 = !DILocation(line: 563, column: 55, scope: !408, inlinedAt: !493)
!503 = !DILocation(line: 563, column: 3, scope: !408, inlinedAt: !493)
!504 = !DILocation(line: 564, column: 10, scope: !408, inlinedAt: !493)
!505 = !DILocation(line: 161, column: 23, scope: !491)
!506 = !DILocation(line: 161, column: 9, scope: !491)
!507 = !DILocation(line: 161, column: 35, scope: !491)
!508 = !DILocalVariable(name: "pin", scope: !509, file: !3, line: 163, type: !172)
!509 = distinct !DILexicalBlock(scope: !491, file: !3, line: 162, column: 3)
!510 = !DILocation(line: 163, column: 13, scope: !509)
!511 = !DILocation(line: 163, column: 20, scope: !509)
!512 = !DILocation(line: 163, column: 19, scope: !509)
!513 = !DILocation(line: 163, column: 33, scope: !509)
!514 = !DILocation(line: 163, column: 17, scope: !509)
!515 = !DILocation(line: 164, column: 22, scope: !516)
!516 = distinct !DILexicalBlock(scope: !509, file: !3, line: 164, column: 8)
!517 = !DILocation(line: 164, column: 8, scope: !516)
!518 = !DILocation(line: 164, column: 8, scope: !509)
!519 = !DILocation(line: 164, column: 42, scope: !516)
!520 = !DILocation(line: 164, column: 28, scope: !516)
!521 = !DILocation(line: 165, column: 9, scope: !509)
!522 = !DILocation(line: 165, column: 19, scope: !509)
!523 = !DILocation(line: 165, column: 17, scope: !509)
!524 = !DILocation(line: 165, column: 14, scope: !509)
!525 = !DILocation(line: 165, column: 12, scope: !509)
!526 = !DILocation(line: 165, column: 8, scope: !509)
!527 = distinct !{!527, !500, !528}
!528 = !DILocation(line: 166, column: 3, scope: !491)
!529 = !DILocation(line: 167, column: 1, scope: !491)
!530 = distinct !DISubprogram(name: "PIOD_Handler", scope: !3, file: !3, line: 169, type: !12, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !231)
!531 = !DILocation(line: 559, column: 75, scope: !408, inlinedAt: !532)
!532 = distinct !DILocation(line: 172, column: 24, scope: !530)
!533 = !DILocation(line: 561, column: 11, scope: !408, inlinedAt: !532)
!534 = !DILocalVariable(name: "isr", scope: !530, file: !3, line: 170, type: !6)
!535 = !DILocation(line: 170, column: 12, scope: !530)
!536 = !DILocation(line: 170, column: 24, scope: !530)
!537 = !DILocalVariable(name: "leading_zeros", scope: !530, file: !3, line: 171, type: !172)
!538 = !DILocation(line: 171, column: 11, scope: !530)
!539 = !DILocation(line: 172, column: 3, scope: !530)
!540 = !DILocation(line: 172, column: 30, scope: !530)
!541 = !DILocation(line: 563, column: 55, scope: !408, inlinedAt: !532)
!542 = !DILocation(line: 563, column: 3, scope: !408, inlinedAt: !532)
!543 = !DILocation(line: 564, column: 10, scope: !408, inlinedAt: !532)
!544 = !DILocation(line: 172, column: 23, scope: !530)
!545 = !DILocation(line: 172, column: 9, scope: !530)
!546 = !DILocation(line: 172, column: 35, scope: !530)
!547 = !DILocalVariable(name: "pin", scope: !548, file: !3, line: 174, type: !172)
!548 = distinct !DILexicalBlock(scope: !530, file: !3, line: 173, column: 3)
!549 = !DILocation(line: 174, column: 13, scope: !548)
!550 = !DILocation(line: 174, column: 20, scope: !548)
!551 = !DILocation(line: 174, column: 19, scope: !548)
!552 = !DILocation(line: 174, column: 33, scope: !548)
!553 = !DILocation(line: 174, column: 17, scope: !548)
!554 = !DILocation(line: 175, column: 22, scope: !555)
!555 = distinct !DILexicalBlock(scope: !548, file: !3, line: 175, column: 8)
!556 = !DILocation(line: 175, column: 8, scope: !555)
!557 = !DILocation(line: 175, column: 8, scope: !548)
!558 = !DILocation(line: 175, column: 42, scope: !555)
!559 = !DILocation(line: 175, column: 28, scope: !555)
!560 = !DILocation(line: 176, column: 9, scope: !548)
!561 = !DILocation(line: 176, column: 19, scope: !548)
!562 = !DILocation(line: 176, column: 17, scope: !548)
!563 = !DILocation(line: 176, column: 14, scope: !548)
!564 = !DILocation(line: 176, column: 12, scope: !548)
!565 = !DILocation(line: 176, column: 8, scope: !548)
!566 = distinct !{!566, !539, !567}
!567 = !DILocation(line: 177, column: 3, scope: !530)
!568 = !DILocation(line: 178, column: 1, scope: !530)
!569 = distinct !DISubprogram(name: "__initialize", scope: !3, file: !3, line: 29, type: !12, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !231)
!570 = !DILocalVariable(name: "i", scope: !569, file: !3, line: 30, type: !232)
!571 = !DILocation(line: 30, column: 6, scope: !569)
!572 = !DILocation(line: 31, column: 8, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !3, line: 31, column: 2)
!574 = !DILocation(line: 31, column: 7, scope: !573)
!575 = !DILocation(line: 31, column: 12, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !3, line: 31, column: 2)
!577 = !DILocation(line: 31, column: 13, scope: !576)
!578 = !DILocation(line: 31, column: 2, scope: !573)
!579 = !DILocation(line: 32, column: 17, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !3, line: 31, column: 23)
!581 = !DILocation(line: 32, column: 3, scope: !580)
!582 = !DILocation(line: 32, column: 20, scope: !580)
!583 = !DILocation(line: 33, column: 17, scope: !580)
!584 = !DILocation(line: 33, column: 3, scope: !580)
!585 = !DILocation(line: 33, column: 20, scope: !580)
!586 = !DILocation(line: 34, column: 17, scope: !580)
!587 = !DILocation(line: 34, column: 3, scope: !580)
!588 = !DILocation(line: 34, column: 20, scope: !580)
!589 = !DILocation(line: 35, column: 17, scope: !580)
!590 = !DILocation(line: 35, column: 3, scope: !580)
!591 = !DILocation(line: 35, column: 20, scope: !580)
!592 = !DILocation(line: 36, column: 2, scope: !580)
!593 = !DILocation(line: 31, column: 19, scope: !576)
!594 = !DILocation(line: 31, column: 2, scope: !576)
!595 = distinct !{!595, !578, !596}
!596 = !DILocation(line: 36, column: 2, scope: !573)
!597 = !DILocation(line: 38, column: 2, scope: !569)
!598 = !DILocation(line: 39, column: 2, scope: !569)
!599 = !DILocation(line: 40, column: 2, scope: !569)
!600 = !DILocation(line: 41, column: 2, scope: !569)
!601 = !DILocation(line: 42, column: 2, scope: !569)
!602 = !DILocation(line: 44, column: 2, scope: !569)
!603 = !DILocation(line: 45, column: 2, scope: !569)
!604 = !DILocation(line: 46, column: 2, scope: !569)
!605 = !DILocation(line: 47, column: 2, scope: !569)
!606 = !DILocation(line: 48, column: 2, scope: !569)
!607 = !DILocation(line: 50, column: 2, scope: !569)
!608 = !DILocation(line: 51, column: 2, scope: !569)
!609 = !DILocation(line: 52, column: 2, scope: !569)
!610 = !DILocation(line: 53, column: 2, scope: !569)
!611 = !DILocation(line: 54, column: 2, scope: !569)
!612 = !DILocation(line: 56, column: 2, scope: !569)
!613 = !DILocation(line: 57, column: 2, scope: !569)
!614 = !DILocation(line: 58, column: 2, scope: !569)
!615 = !DILocation(line: 59, column: 2, scope: !569)
!616 = !DILocation(line: 60, column: 2, scope: !569)
!617 = !DILocation(line: 61, column: 1, scope: !569)
!618 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !147, file: !147, line: 951, type: !619, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !231)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !621}
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !18, line: 120, baseType: !17)
!622 = !DILocalVariable(name: "IRQn", arg: 1, scope: !618, file: !147, line: 951, type: !621)
!623 = !DILocation(line: 951, column: 48, scope: !618)
!624 = !DILocation(line: 953, column: 59, scope: !618)
!625 = !DILocation(line: 953, column: 48, scope: !618)
!626 = !DILocation(line: 953, column: 65, scope: !618)
!627 = !DILocation(line: 953, column: 44, scope: !618)
!628 = !DILocation(line: 953, column: 26, scope: !618)
!629 = !DILocation(line: 953, column: 15, scope: !618)
!630 = !DILocation(line: 953, column: 32, scope: !618)
!631 = !DILocation(line: 953, column: 3, scope: !618)
!632 = !DILocation(line: 953, column: 39, scope: !618)
!633 = !DILocation(line: 954, column: 1, scope: !618)
!634 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !147, file: !147, line: 992, type: !619, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !231)
!635 = !DILocalVariable(name: "IRQn", arg: 1, scope: !634, file: !147, line: 992, type: !621)
!636 = !DILocation(line: 992, column: 53, scope: !634)
!637 = !DILocation(line: 994, column: 59, scope: !634)
!638 = !DILocation(line: 994, column: 48, scope: !634)
!639 = !DILocation(line: 994, column: 65, scope: !634)
!640 = !DILocation(line: 994, column: 44, scope: !634)
!641 = !DILocation(line: 994, column: 26, scope: !634)
!642 = !DILocation(line: 994, column: 15, scope: !634)
!643 = !DILocation(line: 994, column: 32, scope: !634)
!644 = !DILocation(line: 994, column: 3, scope: !634)
!645 = !DILocation(line: 994, column: 39, scope: !634)
!646 = !DILocation(line: 995, column: 1, scope: !634)
!647 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !147, file: !147, line: 1022, type: !648, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !231)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !621, !6}
!650 = !DILocalVariable(name: "IRQn", arg: 1, scope: !647, file: !147, line: 1022, type: !621)
!651 = !DILocation(line: 1022, column: 49, scope: !647)
!652 = !DILocalVariable(name: "priority", arg: 2, scope: !647, file: !147, line: 1022, type: !6)
!653 = !DILocation(line: 1022, column: 64, scope: !647)
!654 = !DILocation(line: 1024, column: 6, scope: !655)
!655 = distinct !DILexicalBlock(scope: !647, file: !147, line: 1024, column: 6)
!656 = !DILocation(line: 1024, column: 11, scope: !655)
!657 = !DILocation(line: 1024, column: 6, scope: !647)
!658 = !DILocation(line: 1025, column: 46, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !147, line: 1024, column: 16)
!660 = !DILocation(line: 1025, column: 55, scope: !659)
!661 = !DILocation(line: 1025, column: 82, scope: !659)
!662 = !DILocation(line: 1025, column: 44, scope: !659)
!663 = !DILocation(line: 1025, column: 26, scope: !659)
!664 = !DILocation(line: 1025, column: 15, scope: !659)
!665 = !DILocation(line: 1025, column: 32, scope: !659)
!666 = !DILocation(line: 1025, column: 38, scope: !659)
!667 = !DILocation(line: 1025, column: 5, scope: !659)
!668 = !DILocation(line: 1025, column: 42, scope: !659)
!669 = !DILocation(line: 1025, column: 91, scope: !659)
!670 = !DILocation(line: 1027, column: 36, scope: !671)
!671 = distinct !DILexicalBlock(scope: !655, file: !147, line: 1026, column: 8)
!672 = !DILocation(line: 1027, column: 45, scope: !671)
!673 = !DILocation(line: 1027, column: 72, scope: !671)
!674 = !DILocation(line: 1027, column: 34, scope: !671)
!675 = !DILocation(line: 1027, column: 25, scope: !671)
!676 = !DILocation(line: 1027, column: 14, scope: !671)
!677 = !DILocation(line: 1027, column: 5, scope: !671)
!678 = !DILocation(line: 1027, column: 32, scope: !671)
!679 = !DILocation(line: 1028, column: 1, scope: !647)
!680 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !147, file: !147, line: 938, type: !619, scopeLine: 939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !231)
!681 = !DILocalVariable(name: "IRQn", arg: 1, scope: !680, file: !147, line: 938, type: !621)
!682 = !DILocation(line: 938, column: 47, scope: !680)
!683 = !DILocation(line: 940, column: 59, scope: !680)
!684 = !DILocation(line: 940, column: 48, scope: !680)
!685 = !DILocation(line: 940, column: 65, scope: !680)
!686 = !DILocation(line: 940, column: 44, scope: !680)
!687 = !DILocation(line: 940, column: 26, scope: !680)
!688 = !DILocation(line: 940, column: 15, scope: !680)
!689 = !DILocation(line: 940, column: 32, scope: !680)
!690 = !DILocation(line: 940, column: 3, scope: !680)
!691 = !DILocation(line: 940, column: 39, scope: !680)
!692 = !DILocation(line: 941, column: 1, scope: !680)

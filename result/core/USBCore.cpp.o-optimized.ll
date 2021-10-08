; ModuleID = '/home/aaa/llvm-arduino-due/build/core/USBCore.cpp.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/USBCore.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct.DeviceDescriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%class.USBDevice_ = type { i8 }
%class.Serial_ = type { %class.Stream, %class.RingBuffer* }
%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i32 }
%class.RingBuffer = type { [128 x i8], i32, i32 }
%struct.QualifierDescriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%class.LockEP = type { i32 }
%struct.USBSetup = type { i8, i8, i8, i8, i16, i16 }
%class.PluggableUSB_ = type { i8, i8, %class.PluggableUSBModule* }
%class.PluggableUSBModule = type { i32 (...)**, i8, i8, i8, i8, i32*, %class.PluggableUSBModule* }
%struct.Uotghs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [55 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [50 x i32], [7 x %struct.UotghsDevdma], [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [52 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [26 x i32], [7 x %struct.UotghsHstdma], [32 x i32], i32, i32, i32, i32, [7 x i32], i32 }
%struct.UotghsDevdma = type { i32, i32, i32, i32 }
%struct.UotghsHstdma = type { i32, i32, i32, i32 }
%struct.ConfigDescriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>

$_ZN6LockEPC2Ej = comdat any

$_ZN6LockEPD2Ev = comdat any

@EndPoints = dso_local global [10 x i32] [i32 8242, i32 14646, i32 12390, i32 12646, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4, !dbg !0
@TxLEDPulse = dso_local global i8 0, align 1, !dbg !148
@RxLEDPulse = dso_local global i8 0, align 1, !dbg !151
@STRING_LANGUAGE = dso_local constant [2 x i16] [i16 772, i16 1033], align 2, !dbg !153
@STRING_PRODUCT = dso_local constant [12 x i8] c"Arduino Due\00", align 1, !dbg !157
@STRING_MANUFACTURER = dso_local constant [12 x i8] c"Arduino LLC\00", align 1, !dbg !162
@USB_DeviceDescriptor = dso_local constant %struct.DeviceDescriptor { i8 18, i8 1, i16 512, i8 0, i8 0, i8 0, i8 64, i16 9025, i16 62, i16 256, i8 1, i8 2, i8 3, i8 1 }, align 1, !dbg !164
@USB_DeviceDescriptorA = dso_local constant %struct.DeviceDescriptor { i8 18, i8 1, i16 512, i8 -17, i8 2, i8 1, i8 64, i16 9025, i16 62, i16 256, i8 1, i8 2, i8 3, i8 1 }, align 1, !dbg !185
@_usbConfiguration = dso_local global i32 0, align 4, !dbg !187
@_usbInitialized = dso_local global i32 0, align 4, !dbg !189
@_usbSetInterface = dso_local global i32 0, align 4, !dbg !191
@_cdcComposite = dso_local global i32 0, align 4, !dbg !193
@_cmark = dso_local global i16 0, align 2, !dbg !195
@_cend = dso_local global i16 0, align 2, !dbg !197
@USBDevice = dso_local global %class.USBDevice_ zeroinitializer, align 1, !dbg !199
@g_interrupt_enabled = external dso_local global i32, align 4
@SerialUSB = external dso_local global %class.Serial_, align 4
@_ZL14isEndpointHalt = internal global i8 0, align 1, !dbg !215
@_ZL21isRemoteWakeUpEnabled = internal global i8 0, align 1, !dbg !217
@_ZL18test_packet_buffer = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\AA\AA\AA\AA\AA\AA\AA\AA\EE\EE\EE\EE\EE\EE\EE\EE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\BF\DF\EF\F7\FB\FD\FC~\BF\DF\EF\F7\FB\FD~", align 1, !dbg !219
@_ZL19USB_DeviceQualifier = internal constant %struct.QualifierDescriptor <{ i8 10, i8 6, i16 512, i8 0, i8 0, i8 0, i8 64, i8 1 }>, align 1, !dbg !225
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_USBCore.cpp, i8* null }]

@_ZN10USBDevice_C1Ev = dso_local unnamed_addr alias %class.USBDevice_* (%class.USBDevice_*), %class.USBDevice_* (%class.USBDevice_*)* @_ZN10USBDevice_C2Ev

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z14USBD_Availablej(i32 %ep) #0 !dbg !245 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %lock = alloca %class.LockEP, align 4
  store i32 %ep, i32* %ep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ep.addr, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata %class.LockEP* %lock, metadata !250, metadata !DIExpression()), !dbg !263
  %0 = load i32, i32* %ep.addr, align 4, !dbg !264
  %call = call arm_aapcscc %class.LockEP* @_ZN6LockEPC2Ej(%class.LockEP* %lock, i32 %0), !dbg !263
  %1 = load i32, i32* %ep.addr, align 4, !dbg !265
  %and = and i32 %1, 15, !dbg !266
  %call1 = call arm_aapcscc i32 @UDD_FifoByteCount(i32 %and), !dbg !267
  %call2 = call arm_aapcscc %class.LockEP* @_ZN6LockEPD2Ev(%class.LockEP* %lock) #4, !dbg !268
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z14USBD_Availablej, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %3 = load i32, i32* %i, align 4
  %4 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i32 %3
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %10 = load i32, i32* %i, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %12 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %13 = phi i8* [ %12, %dec_end ]
  indirectbr i8* %12, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i32 %call1, !dbg !268
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.LockEP* @_ZN6LockEPC2Ej(%class.LockEP* returned %this, i32 %ep) unnamed_addr #0 comdat align 2 !dbg !269 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.LockEP*, align 4
  %ep.addr = alloca i32, align 4
  store %class.LockEP* %this, %class.LockEP** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.LockEP** %this.addr, metadata !270, metadata !DIExpression()), !dbg !272
  store i32 %ep, i32* %ep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ep.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %this1 = load %class.LockEP*, %class.LockEP** %this.addr, align 4
  %flags = getelementptr inbounds %class.LockEP, %class.LockEP* %this1, i32 0, i32 0, !dbg !275
  %call = call arm_aapcscc i32 @_ZL12cpu_irq_savev(), !dbg !276
  store i32 %call, i32* %flags, align 4, !dbg !275
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6LockEPC2Ej, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.LockEP* %this1, !dbg !277
}

declare dso_local arm_aapcscc i32 @UDD_FifoByteCount(i32) #2

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.LockEP* @_ZN6LockEPD2Ev(%class.LockEP* returned %this) unnamed_addr #0 comdat align 2 !dbg !278 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.LockEP*, align 4
  store %class.LockEP* %this, %class.LockEP** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.LockEP** %this.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %this1 = load %class.LockEP*, %class.LockEP** %this.addr, align 4
  %flags = getelementptr inbounds %class.LockEP, %class.LockEP* %this1, i32 0, i32 0, !dbg !281
  %0 = load i32, i32* %flags, align 4, !dbg !281
  call arm_aapcscc void @_ZL15cpu_irq_restorej(i32 %0), !dbg !283
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6LockEPD2Ev, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret %class.LockEP* %this1, !dbg !284
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z9USBD_RecvjPvj(i32 %ep, i8* %d, i32 %len) #0 !dbg !285 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %lock = alloca %class.LockEP, align 4
  %n = alloca i32, align 4
  %dst = alloca i8*, align 4
  store i32 %ep, i32* %ep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ep.addr, metadata !289, metadata !DIExpression()), !dbg !290
  store i8* %d, i8** %d.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !291, metadata !DIExpression()), !dbg !292
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load volatile i32, i32* @_usbConfiguration, align 4, !dbg !295
  %tobool = icmp ne i32 %0, 0, !dbg !295
  br i1 %tobool, label %if.end, label %if.then, !dbg !297

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !298
  br label %return, !dbg !298

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %class.LockEP* %lock, metadata !299, metadata !DIExpression()), !dbg !300
  %1 = load i32, i32* %ep.addr, align 4, !dbg !301
  %call = call arm_aapcscc %class.LockEP* @_ZN6LockEPC2Ej(%class.LockEP* %lock, i32 %1), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %n, metadata !302, metadata !DIExpression()), !dbg !303
  %2 = load i32, i32* %ep.addr, align 4, !dbg !304
  %and = and i32 %2, 15, !dbg !305
  %call1 = call arm_aapcscc i32 @UDD_FifoByteCount(i32 %and), !dbg !306
  store i32 %call1, i32* %n, align 4, !dbg !303
  %3 = load i32, i32* %n, align 4, !dbg !307
  %4 = load i32, i32* %len.addr, align 4, !dbg !307
  %cmp = icmp ult i32 %3, %4, !dbg !307
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !307

cond.true:                                        ; preds = %if.end
  %5 = load i32, i32* %n, align 4, !dbg !307
  br label %cond.end, !dbg !307

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %len.addr, align 4, !dbg !307
  br label %cond.end, !dbg !307

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !307
  store i32 %cond, i32* %len.addr, align 4, !dbg !308
  %7 = load i32, i32* %len.addr, align 4, !dbg !309
  store i32 %7, i32* %n, align 4, !dbg !310
  call void @llvm.dbg.declare(metadata i8** %dst, metadata !311, metadata !DIExpression()), !dbg !312
  %8 = load i8*, i8** %d.addr, align 4, !dbg !313
  store i8* %8, i8** %dst, align 4, !dbg !312
  br label %while.cond, !dbg !314

while.cond:                                       ; preds = %while.body, %cond.end
  %9 = load i32, i32* %n, align 4, !dbg !315
  %dec = add i32 %9, -1, !dbg !315
  store i32 %dec, i32* %n, align 4, !dbg !315
  %tobool2 = icmp ne i32 %9, 0, !dbg !316
  br i1 %tobool2, label %while.body, label %while.end, !dbg !314

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %ep.addr, align 4, !dbg !317
  %and3 = and i32 %10, 15, !dbg !318
  %call4 = call arm_aapcscc zeroext i8 @UDD_Recv8(i32 %and3), !dbg !319
  %11 = load i8*, i8** %dst, align 4, !dbg !320
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1, !dbg !320
  store i8* %incdec.ptr, i8** %dst, align 4, !dbg !320
  store i8 %call4, i8* %11, align 1, !dbg !321
  br label %while.cond, !dbg !314, !llvm.loop !322

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %len.addr, align 4, !dbg !324
  %tobool5 = icmp ne i32 %12, 0, !dbg !324
  br i1 %tobool5, label %land.lhs.true, label %if.end11, !dbg !326

land.lhs.true:                                    ; preds = %while.end
  %13 = load i32, i32* %ep.addr, align 4, !dbg !327
  %and6 = and i32 %13, 15, !dbg !328
  %call7 = call arm_aapcscc i32 @UDD_FifoByteCount(i32 %and6), !dbg !329
  %tobool8 = icmp ne i32 %call7, 0, !dbg !329
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !330

if.then9:                                         ; preds = %land.lhs.true
  %14 = load i32, i32* %ep.addr, align 4, !dbg !331
  %and10 = and i32 %14, 15, !dbg !332
  call arm_aapcscc void @UDD_ReleaseRX(i32 %and10), !dbg !333
  br label %if.end11, !dbg !333

if.end11:                                         ; preds = %if.then9, %land.lhs.true, %while.end
  %15 = load i32, i32* %len.addr, align 4, !dbg !334
  store i32 %15, i32* %retval, align 4, !dbg !335
  %call12 = call arm_aapcscc %class.LockEP* @_ZN6LockEPD2Ev(%class.LockEP* %lock) #4, !dbg !336
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !336
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z9USBD_RecvjPvj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %17 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %17, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %18 = load i32, i32* %i, align 4
  %19 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %19, i32 %18
  %20 = load i8, i8* %arrayidx1, align 1
  %21 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %21
  store i8 %20, i8* %arrayidx2, align 1
  %22 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %22
  %23 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %23 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %24 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %24
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %25 = load i32, i32* %i, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %27 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %28 = phi i8* [ %27, %dec_end ]
  indirectbr i8* %27, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %16, !dbg !336
}

declare dso_local arm_aapcscc zeroext i8 @UDD_Recv8(i32) #2

declare dso_local arm_aapcscc void @UDD_ReleaseRX(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z9USBD_Recvj(i32 %ep) #0 !dbg !337 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %ep, i32* %ep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ep.addr, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i8* %c, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i32, i32* %ep.addr, align 4, !dbg !342
  %and = and i32 %0, 15, !dbg !344
  %call = call arm_aapcscc i32 @_Z9USBD_RecvjPvj(i32 %and, i8* %c, i32 1), !dbg !345
  %cmp = icmp ne i32 %call, 1, !dbg !346
  br i1 %cmp, label %if.then, label %if.else, !dbg !347

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !348
  br label %return, !dbg !348

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %c, align 1, !dbg !349
  %conv = zext i8 %1 to i32, !dbg !349
  store i32 %conv, i32* %retval, align 4, !dbg !350
  br label %return, !dbg !350

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !351
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z9USBD_Recvj, %return.RetBlock), i8** %ptr, align 4
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
  %conv2 = zext i8 %9 to i32
  %xor = xor i32 %conv2, 133
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
  indirectbr i8* %13, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %2, !dbg !351
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z9USBD_SendjPKvj(i32 %ep, i8* %d, i32 %len) #0 !dbg !352 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca i32, align 4
  %data = alloca i8*, align 4
  store i32 %ep, i32* %ep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ep.addr, metadata !357, metadata !DIExpression()), !dbg !358
  store i8* %d, i8** %d.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !359, metadata !DIExpression()), !dbg !360
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata i32* %n, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %r, metadata !365, metadata !DIExpression()), !dbg !367
  %0 = load i32, i32* %len.addr, align 4, !dbg !368
  store i32 %0, i32* %r, align 4, !dbg !367
  call void @llvm.dbg.declare(metadata i8** %data, metadata !369, metadata !DIExpression()), !dbg !370
  %1 = load i8*, i8** %d.addr, align 4, !dbg !371
  store i8* %1, i8** %data, align 4, !dbg !370
  %2 = load volatile i32, i32* @_usbConfiguration, align 4, !dbg !372
  %tobool = icmp ne i32 %2, 0, !dbg !372
  br i1 %tobool, label %if.end, label %if.then, !dbg !374

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !375
  br label %return, !dbg !375

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !377

while.cond:                                       ; preds = %if.end6, %if.end
  %3 = load i32, i32* %len.addr, align 4, !dbg !378
  %tobool1 = icmp ne i32 %3, 0, !dbg !378
  br i1 %tobool1, label %while.body, label %while.end, !dbg !377

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %ep.addr, align 4, !dbg !379
  %cmp = icmp eq i32 %4, 0, !dbg !382
  br i1 %cmp, label %if.then2, label %if.else, !dbg !383

if.then2:                                         ; preds = %while.body
  store i32 64, i32* %n, align 4, !dbg !384
  br label %if.end3, !dbg !385

if.else:                                          ; preds = %while.body
  store i32 512, i32* %n, align 4, !dbg !386
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %5 = load i32, i32* %n, align 4, !dbg !387
  %6 = load i32, i32* %len.addr, align 4, !dbg !389
  %cmp4 = icmp ugt i32 %5, %6, !dbg !390
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !391

if.then5:                                         ; preds = %if.end3
  %7 = load i32, i32* %len.addr, align 4, !dbg !392
  store i32 %7, i32* %n, align 4, !dbg !393
  br label %if.end6, !dbg !394

if.end6:                                          ; preds = %if.then5, %if.end3
  %8 = load i32, i32* %n, align 4, !dbg !395
  %9 = load i32, i32* %len.addr, align 4, !dbg !396
  %sub = sub i32 %9, %8, !dbg !396
  store i32 %sub, i32* %len.addr, align 4, !dbg !396
  %10 = load i32, i32* %ep.addr, align 4, !dbg !397
  %and = and i32 %10, 15, !dbg !398
  %11 = load i8*, i8** %data, align 4, !dbg !399
  %12 = load i32, i32* %n, align 4, !dbg !400
  %call = call arm_aapcscc i32 @UDD_Send(i32 %and, i8* %11, i32 %12), !dbg !401
  %13 = load i32, i32* %n, align 4, !dbg !402
  %14 = load i8*, i8** %data, align 4, !dbg !403
  %add.ptr = getelementptr inbounds i8, i8* %14, i32 %13, !dbg !403
  store i8* %add.ptr, i8** %data, align 4, !dbg !403
  br label %while.cond, !dbg !377, !llvm.loop !404

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %r, align 4, !dbg !406
  store i32 %15, i32* %retval, align 4, !dbg !407
  br label %return, !dbg !407

return:                                           ; preds = %while.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !408
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z9USBD_SendjPKvj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %17 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %17, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %18 = load i32, i32* %i, align 4
  %19 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %19, i32 %18
  %20 = load i8, i8* %arrayidx1, align 1
  %21 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %21
  store i8 %20, i8* %arrayidx2, align 1
  %22 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %22
  %23 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %23 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %24 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %24
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %25 = load i32, i32* %i, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %27 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %28 = phi i8* [ %27, %dec_end ]
  indirectbr i8* %27, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %16, !dbg !408
}

declare dso_local arm_aapcscc i32 @UDD_Send(i32, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_Z16USBD_InitControli(i32 %end) #0 !dbg !409 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %end.addr = alloca i32, align 4
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !412, metadata !DIExpression()), !dbg !413
  store i16 0, i16* @_cmark, align 2, !dbg !414
  %0 = load i32, i32* %end.addr, align 4, !dbg !415
  %conv = trunc i32 %0 to i16, !dbg !415
  store i16 %conv, i16* @_cend, align 2, !dbg !416
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z16USBD_InitControli, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv1 = zext i8 %7 to i32
  %xor = xor i32 %conv1, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext %flags, i8* %d, i32 %len) #0 !dbg !418 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %flags.addr = alloca i8, align 1
  %d.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %data = alloca i8*, align 4
  %length = alloca i32, align 4
  %sent = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !421, metadata !DIExpression()), !dbg !422
  store i8* %d, i8** %d.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !423, metadata !DIExpression()), !dbg !424
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata i8** %data, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load i8*, i8** %d.addr, align 4, !dbg !429
  store i8* %0, i8** %data, align 4, !dbg !428
  call void @llvm.dbg.declare(metadata i32* %length, metadata !430, metadata !DIExpression()), !dbg !431
  %1 = load i32, i32* %len.addr, align 4, !dbg !432
  store i32 %1, i32* %length, align 4, !dbg !431
  call void @llvm.dbg.declare(metadata i32* %sent, metadata !433, metadata !DIExpression()), !dbg !434
  store i32 0, i32* %sent, align 4, !dbg !434
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !435, metadata !DIExpression()), !dbg !436
  store i32 0, i32* %pos, align 4, !dbg !436
  %2 = load i16, i16* @_cmark, align 2, !dbg !437
  %conv = zext i16 %2 to i32, !dbg !437
  %3 = load i16, i16* @_cend, align 2, !dbg !439
  %conv1 = zext i16 %3 to i32, !dbg !439
  %cmp = icmp slt i32 %conv, %conv1, !dbg !440
  br i1 %cmp, label %if.then, label %if.end, !dbg !441

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !442

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, i32* %len.addr, align 4, !dbg !444
  %cmp2 = icmp ugt i32 %4, 0, !dbg !445
  br i1 %cmp2, label %while.body, label %while.end, !dbg !442

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %data, align 4, !dbg !446
  %6 = load i32, i32* %pos, align 4, !dbg !448
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 %6, !dbg !449
  %7 = load i32, i32* %len.addr, align 4, !dbg !450
  %call = call arm_aapcscc i32 @UDD_Send(i32 0, i8* %add.ptr, i32 %7), !dbg !451
  store i32 %call, i32* %sent, align 4, !dbg !452
  %8 = load i32, i32* %sent, align 4, !dbg !453
  %9 = load i32, i32* %pos, align 4, !dbg !454
  %add = add i32 %9, %8, !dbg !454
  store i32 %add, i32* %pos, align 4, !dbg !454
  %10 = load i32, i32* %sent, align 4, !dbg !455
  %11 = load i32, i32* %len.addr, align 4, !dbg !456
  %sub = sub i32 %11, %10, !dbg !456
  store i32 %sub, i32* %len.addr, align 4, !dbg !456
  br label %while.cond, !dbg !442, !llvm.loop !457

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !459

if.end:                                           ; preds = %while.end, %entry
  %12 = load i32, i32* %length, align 4, !dbg !460
  %13 = load i16, i16* @_cmark, align 2, !dbg !461
  %conv3 = zext i16 %13 to i32, !dbg !461
  %add4 = add i32 %conv3, %12, !dbg !461
  %conv5 = trunc i32 %add4 to i16, !dbg !461
  store i16 %conv5, i16* @_cmark, align 2, !dbg !461
  %14 = load i32, i32* %length, align 4, !dbg !462
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z16USBD_SendControlhPKvj, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %15 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %15, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %16 = load i32, i32* %i, align 4
  %17 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %17, i32 %16
  %18 = load i8, i8* %arrayidx1, align 1
  %19 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %19
  store i8 %18, i8* %arrayidx2, align 1
  %20 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %20
  %21 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %21 to i32
  %xor = xor i32 %conv2, 133
  %conv4 = trunc i32 %xor to i8
  %22 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %22
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %23 = load i32, i32* %i, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %25 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %26 = phi i8* [ %25, %dec_end ]
  indirectbr i8* %25, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %14, !dbg !463
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z16USBD_RecvControlPvj(i8* %d, i32 %len) #0 !dbg !464 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %d.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  store i8* %d, i8** %d.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !467, metadata !DIExpression()), !dbg !468
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !469, metadata !DIExpression()), !dbg !470
  call arm_aapcscc void @UDD_WaitOUT(), !dbg !471
  %0 = load i8*, i8** %d.addr, align 4, !dbg !472
  %1 = load i32, i32* %len.addr, align 4, !dbg !473
  call arm_aapcscc void @UDD_Recv(i32 0, i8* %0, i32 %1), !dbg !474
  call arm_aapcscc void @UDD_ClearOUT(), !dbg !475
  %2 = load i32, i32* %len.addr, align 4, !dbg !476
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z16USBD_RecvControlPvj, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 12
  br i1 %cmp, label %dec_ing, label %dec_end

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
  indirectbr i8* %13, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i32 %2, !dbg !477
}

declare dso_local arm_aapcscc void @UDD_WaitOUT() #2

declare dso_local arm_aapcscc void @UDD_Recv(i32, i8*, i32) #2

declare dso_local arm_aapcscc void @UDD_ClearOUT() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_Z26USBD_ClassInterfaceRequestR8USBSetup(%struct.USBSetup* dereferenceable(8) %setup) #0 !dbg !478 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i1 = alloca i32, align 4
  %retval = alloca i1, align 1
  %setup.addr = alloca %struct.USBSetup*, align 4
  %i = alloca i8, align 1
  store %struct.USBSetup* %setup, %struct.USBSetup** %setup.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.USBSetup** %setup.addr, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i8* %i, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !495
  %wIndex = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %0, i32 0, i32 4, !dbg !496
  %1 = load i16, i16* %wIndex, align 2, !dbg !496
  %conv = trunc i16 %1 to i8, !dbg !495
  store i8 %conv, i8* %i, align 1, !dbg !494
  %2 = load i8, i8* %i, align 1, !dbg !497
  %conv1 = zext i8 %2 to i32, !dbg !497
  %cmp = icmp eq i32 0, %conv1, !dbg !499
  br i1 %cmp, label %if.then, label %if.end, !dbg !500

if.then:                                          ; preds = %entry
  %3 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !501
  %call = call arm_aapcscc zeroext i1 @_Z9CDC_SetupR8USBSetup(%struct.USBSetup* dereferenceable(8) %3), !dbg !503
  store i1 %call, i1* %retval, align 1, !dbg !504
  br label %return, !dbg !504

if.end:                                           ; preds = %entry
  %call2 = call arm_aapcscc dereferenceable(8) %class.PluggableUSB_* @_Z12PluggableUSBv(), !dbg !505
  %4 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !506
  %call3 = call arm_aapcscc zeroext i1 @_ZN13PluggableUSB_5setupER8USBSetup(%class.PluggableUSB_* %call2, %struct.USBSetup* dereferenceable(8) %4), !dbg !507
  store i1 %call3, i1* %retval, align 1, !dbg !508
  br label %return, !dbg !508

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !509
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z26USBD_ClassInterfaceRequestR8USBSetup, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i1, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %6 = load i32, i32* %i1, align 4
  %cmp2 = icmp slt i32 %6, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %7 = load i32, i32* %i1, align 4
  %8 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i32 %7
  %9 = load i8, i8* %arrayidx1, align 1
  %10 = load i32, i32* %i1, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  store i8 %9, i8* %arrayidx2, align 1
  %11 = load i32, i32* %i1, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  %12 = load i8, i8* %arrayidx3, align 1
  %conv3 = zext i8 %12 to i32
  %xor = xor i32 %conv3, 133
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
  indirectbr i8* %16, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i1 %5, !dbg !509
}

declare dso_local arm_aapcscc zeroext i1 @_Z9CDC_SetupR8USBSetup(%struct.USBSetup* dereferenceable(8)) #2

declare dso_local arm_aapcscc dereferenceable(8) %class.PluggableUSB_* @_Z12PluggableUSBv() #2

declare dso_local arm_aapcscc zeroext i1 @_ZN13PluggableUSB_5setupER8USBSetup(%class.PluggableUSB_*, %struct.USBSetup* dereferenceable(8)) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_Z19USBD_SendInterfacesv() #0 !dbg !510 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %interfaces = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %interfaces, metadata !513, metadata !DIExpression()), !dbg !514
  store i8 0, i8* %interfaces, align 1, !dbg !514
  %call = call arm_aapcscc i32 @_Z16CDC_GetInterfacePh(i8* %interfaces), !dbg !515
  %call1 = call arm_aapcscc dereferenceable(8) %class.PluggableUSB_* @_Z12PluggableUSBv(), !dbg !516
  %call2 = call arm_aapcscc i32 @_ZN13PluggableUSB_12getInterfaceEPh(%class.PluggableUSB_* %call1, i8* %interfaces), !dbg !517
  %0 = load i8, i8* %interfaces, align 1, !dbg !518
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z19USBD_SendInterfacesv, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i8 %0, !dbg !519
}

declare dso_local arm_aapcscc i32 @_Z16CDC_GetInterfacePh(i8*) #2

declare dso_local arm_aapcscc i32 @_ZN13PluggableUSB_12getInterfaceEPh(%class.PluggableUSB_*, i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_Z24USBD_SendOtherInterfacesv() #0 !dbg !520 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %interfaces = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %interfaces, metadata !521, metadata !DIExpression()), !dbg !522
  store i8 0, i8* %interfaces, align 1, !dbg !522
  %call = call arm_aapcscc i32 @_Z21CDC_GetOtherInterfacePh(i8* %interfaces), !dbg !523
  %call1 = call arm_aapcscc dereferenceable(8) %class.PluggableUSB_* @_Z12PluggableUSBv(), !dbg !524
  %call2 = call arm_aapcscc i32 @_ZN13PluggableUSB_12getInterfaceEPh(%class.PluggableUSB_* %call1, i8* %interfaces), !dbg !525
  %0 = load i8, i8* %interfaces, align 1, !dbg !526
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z24USBD_SendOtherInterfacesv, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i8 %0, !dbg !527
}

declare dso_local arm_aapcscc i32 @_Z21CDC_GetOtherInterfacePh(i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_Z10USBD_Flushj(i32 %ep) #0 !dbg !528 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  store i32 %ep, i32* %ep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ep.addr, metadata !531, metadata !DIExpression()), !dbg !532
  %0 = load i32, i32* %ep.addr, align 4, !dbg !533
  %call = call arm_aapcscc i32 @UDD_FifoByteCount(i32 %0), !dbg !535
  %tobool = icmp ne i32 %call, 0, !dbg !535
  br i1 %tobool, label %if.then, label %if.end, !dbg !536

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ep.addr, align 4, !dbg !537
  call arm_aapcscc void @UDD_ReleaseTX(i32 %1), !dbg !538
  br label %if.end, !dbg !538

if.end:                                           ; preds = %if.then, %entry
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z10USBD_Flushj, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %3 = load i32, i32* %i, align 4
  %4 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i32 %3
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %10 = load i32, i32* %i, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %12 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %13 = phi i8* [ %12, %dec_end ]
  indirectbr i8* %12, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !539
}

declare dso_local arm_aapcscc void @UDD_ReleaseTX(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_Z14USBD_Connectedv() #0 !dbg !540 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %f = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %f, metadata !543, metadata !DIExpression()), !dbg !544
  %call = call arm_aapcscc i32 @UDD_GetFrameNumber(), !dbg !545
  %conv = trunc i32 %call to i8, !dbg !545
  store i8 %conv, i8* %f, align 1, !dbg !544
  call arm_aapcscc void @delay(i32 3), !dbg !546
  %0 = load i8, i8* %f, align 1, !dbg !547
  %conv1 = zext i8 %0 to i32, !dbg !547
  %call2 = call arm_aapcscc i32 @UDD_GetFrameNumber(), !dbg !548
  %cmp = icmp ne i32 %conv1, %call2, !dbg !549
  %conv3 = zext i1 %cmp to i32, !dbg !547
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_Z14USBD_Connectedv, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %7 to i32
  %xor = xor i32 %conv2, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i32 %conv3, !dbg !550
}

declare dso_local arm_aapcscc i32 @UDD_GetFrameNumber() #2

declare dso_local arm_aapcscc void @delay(i32) #2

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init() #3 !dbg !551 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %call = call arm_aapcscc %class.USBDevice_* @_ZN10USBDevice_C1Ev(%class.USBDevice_* @USBDevice), !dbg !554
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@__cxx_global_var_init, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.USBDevice_* @_ZN10USBDevice_C2Ev(%class.USBDevice_* returned %this) unnamed_addr #0 align 2 !dbg !555 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca %class.USBDevice_*, align 4
  %this.addr = alloca %class.USBDevice_*, align 4
  store %class.USBDevice_* %this, %class.USBDevice_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USBDevice_** %this.addr, metadata !556, metadata !DIExpression()), !dbg !558
  %this1 = load %class.USBDevice_*, %class.USBDevice_** %this.addr, align 4
  store %class.USBDevice_* %this1, %class.USBDevice_** %retval, align 4
  call arm_aapcscc void @UDD_SetStack(void ()* @_ZL7USB_ISRv), !dbg !559
  %call = call arm_aapcscc i32 @UDD_Init(), !dbg !561
  %cmp = icmp eq i32 %call, 0, !dbg !563
  br i1 %cmp, label %if.then, label %if.end, !dbg !564

if.then:                                          ; preds = %entry
  store volatile i32 1, i32* @_usbInitialized, align 4, !dbg !565
  br label %if.end, !dbg !567

if.end:                                           ; preds = %if.then, %entry
  %0 = load %class.USBDevice_*, %class.USBDevice_** %retval, align 4, !dbg !568
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USBDevice_C2Ev, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.USBDevice_* %0, !dbg !568
}

declare dso_local arm_aapcscc void @UDD_SetStack(void ()*) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @_ZL7USB_ISRv() #0 !dbg !569 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %setup = alloca %struct.USBSetup, align 2
  %requestType = alloca i8, align 1
  %ok = alloca i8, align 1
  %r = alloca i8, align 1
  %num_endpoints = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 1), align 4, !dbg !570
  %and = and i32 %0, 8, !dbg !570
  %cmp = icmp ne i32 %and, 0, !dbg !570
  br i1 %cmp, label %if.then, label %if.end, !dbg !572

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !573
  %and1 = and i32 %1, -128, !dbg !573
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !573
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !575
  %or = or i32 %2, 128, !dbg !575
  store volatile i32 %or, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !575
  call arm_aapcscc void @UDD_InitEP(i32 0, i32 8242), !dbg !576
  store volatile i32 4, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 20, i32 0), align 4, !dbg !577
  store volatile i32 4096, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 6), align 4, !dbg !578
  store volatile i32 0, i32* @_usbConfiguration, align 4, !dbg !579
  store volatile i32 8, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 2), align 4, !dbg !580
  br label %if.end, !dbg !581

if.end:                                           ; preds = %if.then, %entry
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 1), align 4, !dbg !582
  %and2 = and i32 %3, 16384, !dbg !582
  %cmp3 = icmp ne i32 %and2, 0, !dbg !582
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !584

if.then4:                                         ; preds = %if.end
  store volatile i32 2, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 14, i32 2), align 4, !dbg !585
  %call = call arm_aapcscc i32 @_Z14USBD_Availablej(i32 2), !dbg !587
  %tobool = icmp ne i32 %call, 0, !dbg !587
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !589

if.then5:                                         ; preds = %if.then4
  call arm_aapcscc void @_ZN7Serial_6acceptEv(%class.Serial_* @SerialUSB), !dbg !590
  br label %if.end6, !dbg !591

if.end6:                                          ; preds = %if.then5, %if.then4
  br label %if.end7, !dbg !592

if.end7:                                          ; preds = %if.end6, %if.end
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 1), align 4, !dbg !593
  %and8 = and i32 %4, 4, !dbg !593
  %cmp9 = icmp ne i32 %and8, 0, !dbg !593
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !595

if.then10:                                        ; preds = %if.end7
  store volatile i32 4, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 2), align 4, !dbg !596
  br label %if.end11, !dbg !598

if.end11:                                         ; preds = %if.then10, %if.end7
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 1), align 4, !dbg !599
  %and12 = and i32 %5, 4096, !dbg !599
  %cmp13 = icmp ne i32 %and12, 0, !dbg !599
  br i1 %cmp13, label %if.then14, label %if.end151, !dbg !601

if.then14:                                        ; preds = %if.end11
  %call15 = call arm_aapcscc i32 @UDD_ReceivedSetupInt(), !dbg !602
  %tobool16 = icmp ne i32 %call15, 0, !dbg !602
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !605

if.then17:                                        ; preds = %if.then14
  br label %if.end151, !dbg !606

if.end18:                                         ; preds = %if.then14
  call void @llvm.dbg.declare(metadata %struct.USBSetup* %setup, metadata !608, metadata !DIExpression()), !dbg !609
  %6 = bitcast %struct.USBSetup* %setup to i8*, !dbg !610
  call arm_aapcscc void @UDD_Recv(i32 0, i8* %6, i32 8), !dbg !611
  call arm_aapcscc void @UDD_ClearSetupInt(), !dbg !612
  call void @llvm.dbg.declare(metadata i8* %requestType, metadata !613, metadata !DIExpression()), !dbg !614
  %bmRequestType = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 0, !dbg !615
  %7 = load i8, i8* %bmRequestType, align 2, !dbg !615
  store i8 %7, i8* %requestType, align 1, !dbg !614
  %8 = load i8, i8* %requestType, align 1, !dbg !616
  %conv = zext i8 %8 to i32, !dbg !616
  %and19 = and i32 %conv, 128, !dbg !618
  %tobool20 = icmp ne i32 %and19, 0, !dbg !616
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !619

if.then21:                                        ; preds = %if.end18
  call arm_aapcscc void @UDD_WaitIN(), !dbg !620
  br label %if.end22, !dbg !622

if.else:                                          ; preds = %if.end18
  call arm_aapcscc void @UDD_ClearIN(), !dbg !623
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  call void @llvm.dbg.declare(metadata i8* %ok, metadata !625, metadata !DIExpression()), !dbg !626
  store i8 1, i8* %ok, align 1, !dbg !626
  %9 = load i8, i8* %requestType, align 1, !dbg !627
  %conv23 = zext i8 %9 to i32, !dbg !627
  %and24 = and i32 %conv23, 96, !dbg !629
  %cmp25 = icmp eq i32 0, %and24, !dbg !630
  br i1 %cmp25, label %if.then26, label %if.else142, !dbg !631

if.then26:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i8* %r, metadata !632, metadata !DIExpression()), !dbg !634
  %bRequest = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 1, !dbg !635
  %10 = load i8, i8* %bRequest, align 1, !dbg !635
  store i8 %10, i8* %r, align 1, !dbg !634
  %11 = load i8, i8* %r, align 1, !dbg !636
  %conv27 = zext i8 %11 to i32, !dbg !636
  %cmp28 = icmp eq i32 0, %conv27, !dbg !638
  br i1 %cmp28, label %if.then29, label %if.else41, !dbg !639

if.then29:                                        ; preds = %if.then26
  %bmRequestType30 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 0, !dbg !640
  %12 = load i8, i8* %bmRequestType30, align 2, !dbg !640
  %conv31 = zext i8 %12 to i32, !dbg !643
  %cmp32 = icmp eq i32 %conv31, 0, !dbg !644
  br i1 %cmp32, label %if.then33, label %if.else34, !dbg !645

if.then33:                                        ; preds = %if.then29
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !646
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !648
  br label %if.end40, !dbg !649

if.else34:                                        ; preds = %if.then29
  %13 = load i8, i8* @_ZL14isEndpointHalt, align 1, !dbg !650
  %conv35 = zext i8 %13 to i32, !dbg !650
  %cmp36 = icmp eq i32 %conv35, 1, !dbg !653
  br i1 %cmp36, label %if.then37, label %if.else38, !dbg !654

if.then37:                                        ; preds = %if.else34
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 1), !dbg !655
  br label %if.end39, !dbg !655

if.else38:                                        ; preds = %if.else34
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !656
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then37
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !657
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then33
  br label %if.end141, !dbg !658

if.else41:                                        ; preds = %if.then26
  %14 = load i8, i8* %r, align 1, !dbg !659
  %conv42 = zext i8 %14 to i32, !dbg !659
  %cmp43 = icmp eq i32 1, %conv42, !dbg !661
  br i1 %cmp43, label %if.then44, label %if.else55, !dbg !662

if.then44:                                        ; preds = %if.else41
  %wValueL = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 2, !dbg !663
  %15 = load i8, i8* %wValueL, align 2, !dbg !663
  %conv45 = zext i8 %15 to i32, !dbg !666
  %cmp46 = icmp eq i32 %conv45, 1, !dbg !667
  br i1 %cmp46, label %if.then47, label %if.else53, !dbg !668

if.then47:                                        ; preds = %if.then44
  %16 = load i8, i8* @_ZL21isRemoteWakeUpEnabled, align 1, !dbg !669
  %conv48 = zext i8 %16 to i32, !dbg !669
  %cmp49 = icmp eq i32 %conv48, 1, !dbg !672
  br i1 %cmp49, label %if.then50, label %if.else51, !dbg !673

if.then50:                                        ; preds = %if.then47
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 1), !dbg !674
  br label %if.end52, !dbg !674

if.else51:                                        ; preds = %if.then47
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !675
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then50
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !676
  br label %if.end54, !dbg !677

if.else53:                                        ; preds = %if.then44
  store i8 0, i8* @_ZL14isEndpointHalt, align 1, !dbg !678
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !680
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !681
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.end52
  br label %if.end140, !dbg !682

if.else55:                                        ; preds = %if.else41
  %17 = load i8, i8* %r, align 1, !dbg !683
  %conv56 = zext i8 %17 to i32, !dbg !683
  %cmp57 = icmp eq i32 3, %conv56, !dbg !685
  br i1 %cmp57, label %if.then58, label %if.else88, !dbg !686

if.then58:                                        ; preds = %if.else55
  %wValueL59 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 2, !dbg !687
  %18 = load i8, i8* %wValueL59, align 2, !dbg !687
  %conv60 = zext i8 %18 to i32, !dbg !690
  %cmp61 = icmp eq i32 %conv60, 1, !dbg !691
  br i1 %cmp61, label %if.then62, label %if.end63, !dbg !692

if.then62:                                        ; preds = %if.then58
  store i8 1, i8* @_ZL21isRemoteWakeUpEnabled, align 1, !dbg !693
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !695
  br label %if.end63, !dbg !696

if.end63:                                         ; preds = %if.then62, %if.then58
  %wValueL64 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 2, !dbg !697
  %19 = load i8, i8* %wValueL64, align 2, !dbg !697
  %conv65 = zext i8 %19 to i32, !dbg !699
  %cmp66 = icmp eq i32 %conv65, 0, !dbg !700
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !701

if.then67:                                        ; preds = %if.end63
  store i8 1, i8* @_ZL14isEndpointHalt, align 1, !dbg !702
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext 0), !dbg !704
  br label %if.end68, !dbg !705

if.end68:                                         ; preds = %if.then67, %if.end63
  %wValueL69 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 2, !dbg !706
  %20 = load i8, i8* %wValueL69, align 2, !dbg !706
  %conv70 = zext i8 %20 to i32, !dbg !708
  %cmp71 = icmp eq i32 %conv70, 2, !dbg !709
  br i1 %cmp71, label %if.then72, label %if.end87, !dbg !710

if.then72:                                        ; preds = %if.end68
  %bmRequestType73 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 0, !dbg !711
  %21 = load i8, i8* %bmRequestType73, align 2, !dbg !711
  %conv74 = zext i8 %21 to i32, !dbg !714
  %cmp75 = icmp eq i32 %conv74, 0, !dbg !715
  br i1 %cmp75, label %land.lhs.true, label %if.end86, !dbg !716

land.lhs.true:                                    ; preds = %if.then72
  %wIndex = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 4, !dbg !717
  %22 = load i16, i16* %wIndex, align 2, !dbg !717
  %conv76 = zext i16 %22 to i32, !dbg !718
  %and77 = and i32 %conv76, 15, !dbg !719
  %cmp78 = icmp eq i32 %and77, 0, !dbg !720
  br i1 %cmp78, label %if.then79, label %if.end86, !dbg !721

if.then79:                                        ; preds = %land.lhs.true
  %23 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 5), align 4, !dbg !722
  %and80 = and i32 %23, -2, !dbg !722
  store volatile i32 %and80, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 5), align 4, !dbg !722
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !724
  %or81 = or i32 %24, 2048, !dbg !724
  store volatile i32 %or81, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !724
  %wIndex82 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 4, !dbg !725
  %25 = load i16, i16* %wIndex82, align 2, !dbg !725
  %conv83 = zext i16 %25 to i32, !dbg !726
  %and84 = and i32 %conv83, 65280, !dbg !727
  %shr = ashr i32 %and84, 8, !dbg !728
  %conv85 = trunc i32 %shr to i8, !dbg !729
  call arm_aapcscc void @_ZL17Test_Mode_Supporth(i8 zeroext %conv85), !dbg !730
  br label %if.end86, !dbg !731

if.end86:                                         ; preds = %if.then79, %land.lhs.true, %if.then72
  br label %if.end87, !dbg !732

if.end87:                                         ; preds = %if.end86, %if.end68
  br label %if.end139, !dbg !733

if.else88:                                        ; preds = %if.else55
  %26 = load i8, i8* %r, align 1, !dbg !734
  %conv89 = zext i8 %26 to i32, !dbg !734
  %cmp90 = icmp eq i32 5, %conv89, !dbg !736
  br i1 %cmp90, label %if.then91, label %if.else94, !dbg !737

if.then91:                                        ; preds = %if.else88
  call arm_aapcscc void @UDD_WaitIN(), !dbg !738
  %wValueL92 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 2, !dbg !740
  %27 = load i8, i8* %wValueL92, align 2, !dbg !740
  %conv93 = zext i8 %27 to i32, !dbg !741
  call arm_aapcscc void @UDD_SetAddress(i32 %conv93), !dbg !742
  br label %if.end138, !dbg !743

if.else94:                                        ; preds = %if.else88
  %28 = load i8, i8* %r, align 1, !dbg !744
  %conv95 = zext i8 %28 to i32, !dbg !744
  %cmp96 = icmp eq i32 6, %conv95, !dbg !746
  br i1 %cmp96, label %if.then97, label %if.else99, !dbg !747

if.then97:                                        ; preds = %if.else94
  %call98 = call arm_aapcscc zeroext i1 @_ZL19USBD_SendDescriptorR8USBSetup(%struct.USBSetup* dereferenceable(8) %setup), !dbg !748
  %frombool = zext i1 %call98 to i8, !dbg !750
  store i8 %frombool, i8* %ok, align 1, !dbg !750
  br label %if.end137, !dbg !751

if.else99:                                        ; preds = %if.else94
  %29 = load i8, i8* %r, align 1, !dbg !752
  %conv100 = zext i8 %29 to i32, !dbg !752
  %cmp101 = icmp eq i32 7, %conv100, !dbg !754
  br i1 %cmp101, label %if.then102, label %if.else103, !dbg !755

if.then102:                                       ; preds = %if.else99
  store i8 0, i8* %ok, align 1, !dbg !756
  br label %if.end136, !dbg !758

if.else103:                                       ; preds = %if.else99
  %30 = load i8, i8* %r, align 1, !dbg !759
  %conv104 = zext i8 %30 to i32, !dbg !759
  %cmp105 = icmp eq i32 8, %conv104, !dbg !761
  br i1 %cmp105, label %if.then106, label %if.else108, !dbg !762

if.then106:                                       ; preds = %if.else103
  %31 = load volatile i32, i32* @_usbConfiguration, align 4, !dbg !763
  %conv107 = trunc i32 %31 to i8, !dbg !763
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext %conv107), !dbg !765
  br label %if.end135, !dbg !766

if.else108:                                       ; preds = %if.else103
  %32 = load i8, i8* %r, align 1, !dbg !767
  %conv109 = zext i8 %32 to i32, !dbg !767
  %cmp110 = icmp eq i32 9, %conv109, !dbg !769
  br i1 %cmp110, label %if.then111, label %if.else121, !dbg !770

if.then111:                                       ; preds = %if.else108
  %33 = load i8, i8* %requestType, align 1, !dbg !771
  %conv112 = zext i8 %33 to i32, !dbg !771
  %and113 = and i32 %conv112, 31, !dbg !774
  %cmp114 = icmp eq i32 0, %and113, !dbg !775
  br i1 %cmp114, label %if.then115, label %if.else119, !dbg !776

if.then115:                                       ; preds = %if.then111
  call void @llvm.dbg.declare(metadata i32* %num_endpoints, metadata !777, metadata !DIExpression()), !dbg !779
  store i32 0, i32* %num_endpoints, align 4, !dbg !779
  br label %while.cond, !dbg !780

while.cond:                                       ; preds = %while.body, %if.then115
  %34 = load i32, i32* %num_endpoints, align 4, !dbg !781
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @EndPoints, i32 0, i32 %34, !dbg !782
  %35 = load i32, i32* %arrayidx, align 4, !dbg !782
  %cmp116 = icmp ne i32 %35, 0, !dbg !783
  br i1 %cmp116, label %while.body, label %while.end, !dbg !780

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %num_endpoints, align 4, !dbg !784
  %inc = add i32 %36, 1, !dbg !784
  store i32 %inc, i32* %num_endpoints, align 4, !dbg !784
  br label %while.cond, !dbg !780, !llvm.loop !786

while.end:                                        ; preds = %while.cond
  %37 = load i32, i32* %num_endpoints, align 4, !dbg !788
  call arm_aapcscc void @UDD_InitEndpoints(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @EndPoints, i32 0, i32 0), i32 %37), !dbg !789
  %wValueL117 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 2, !dbg !790
  %38 = load i8, i8* %wValueL117, align 2, !dbg !790
  %conv118 = zext i8 %38 to i32, !dbg !791
  store volatile i32 %conv118, i32* @_usbConfiguration, align 4, !dbg !792
  store volatile i32 2, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 20, i32 2), align 4, !dbg !793
  store volatile i32 16384, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 6), align 4, !dbg !794
  br label %if.end120, !dbg !795

if.else119:                                       ; preds = %if.then111
  store i8 0, i8* %ok, align 1, !dbg !796
  br label %if.end120

if.end120:                                        ; preds = %if.else119, %while.end
  br label %if.end134, !dbg !798

if.else121:                                       ; preds = %if.else108
  %39 = load i8, i8* %r, align 1, !dbg !799
  %conv122 = zext i8 %39 to i32, !dbg !799
  %cmp123 = icmp eq i32 10, %conv122, !dbg !801
  br i1 %cmp123, label %if.then124, label %if.else126, !dbg !802

if.then124:                                       ; preds = %if.else121
  %40 = load i32, i32* @_usbSetInterface, align 4, !dbg !803
  %conv125 = trunc i32 %40 to i8, !dbg !803
  call arm_aapcscc void @UDD_Send8(i32 0, i8 zeroext %conv125), !dbg !805
  br label %if.end133, !dbg !806

if.else126:                                       ; preds = %if.else121
  %41 = load i8, i8* %r, align 1, !dbg !807
  %conv127 = zext i8 %41 to i32, !dbg !807
  %cmp128 = icmp eq i32 11, %conv127, !dbg !809
  br i1 %cmp128, label %if.then129, label %if.end132, !dbg !810

if.then129:                                       ; preds = %if.else126
  %wValueL130 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 2, !dbg !811
  %42 = load i8, i8* %wValueL130, align 2, !dbg !811
  %conv131 = zext i8 %42 to i32, !dbg !813
  store i32 %conv131, i32* @_usbSetInterface, align 4, !dbg !814
  br label %if.end132, !dbg !815

if.end132:                                        ; preds = %if.then129, %if.else126
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then124
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end120
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then106
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then102
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.then97
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then91
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end87
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end54
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end40
  br label %if.end146, !dbg !816

if.else142:                                       ; preds = %if.end22
  call arm_aapcscc void @UDD_WaitIN(), !dbg !817
  %wLength = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %setup, i32 0, i32 5, !dbg !819
  %43 = load i16, i16* %wLength, align 2, !dbg !819
  %conv143 = zext i16 %43 to i32, !dbg !820
  call arm_aapcscc void @_Z16USBD_InitControli(i32 %conv143), !dbg !821
  %call144 = call arm_aapcscc zeroext i1 @_Z26USBD_ClassInterfaceRequestR8USBSetup(%struct.USBSetup* dereferenceable(8) %setup), !dbg !822
  %frombool145 = zext i1 %call144 to i8, !dbg !823
  store i8 %frombool145, i8* %ok, align 1, !dbg !823
  br label %if.end146

if.end146:                                        ; preds = %if.else142, %if.end141
  %44 = load i8, i8* %ok, align 1, !dbg !824
  %tobool147 = trunc i8 %44 to i1, !dbg !824
  br i1 %tobool147, label %if.then148, label %if.else149, !dbg !826

if.then148:                                       ; preds = %if.end146
  call arm_aapcscc void @UDD_ClearIN(), !dbg !827
  br label %if.end150, !dbg !829

if.else149:                                       ; preds = %if.end146
  call arm_aapcscc void @UDD_Stall(), !dbg !830
  br label %if.end150

if.end150:                                        ; preds = %if.else149, %if.then148
  br label %if.end151, !dbg !832

if.end151:                                        ; preds = %if.end150, %if.then17, %if.end11
  br label %dec_start

dec_start:                                        ; preds = %if.end151
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL7USB_ISRv, %if.end151.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %45 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %45, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %46 = load i32, i32* %i, align 4
  %47 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %47, i32 %46
  %48 = load i8, i8* %arrayidx13, align 1
  %49 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %49
  store i8 %48, i8* %arrayidx2, align 1
  %50 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %50
  %51 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %51 to i32
  %xor = xor i32 %conv4, 133
  %conv46 = trunc i32 %xor to i8
  %52 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %52
  store i8 %conv46, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %53 = load i32, i32* %i, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %55 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %56 = phi i8* [ %55, %dec_end ]
  indirectbr i8* %55, [label %if.end151.RetBlock]

if.end151.RetBlock:                               ; preds = %dec_jmp
  ret void, !dbg !833
}

declare dso_local arm_aapcscc i32 @UDD_Init() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN10USBDevice_6attachEv(%class.USBDevice_* %this) #0 align 2 !dbg !834 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i1, align 1
  %this.addr = alloca %class.USBDevice_*, align 4
  store %class.USBDevice_* %this, %class.USBDevice_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USBDevice_** %this.addr, metadata !835, metadata !DIExpression()), !dbg !836
  %this1 = load %class.USBDevice_*, %class.USBDevice_** %this.addr, align 4
  %0 = load volatile i32, i32* @_usbInitialized, align 4, !dbg !837
  %cmp = icmp ne i32 %0, 0, !dbg !839
  br i1 %cmp, label %if.then, label %if.else, !dbg !840

if.then:                                          ; preds = %entry
  call arm_aapcscc void @UDD_Attach(), !dbg !841
  store volatile i32 0, i32* @_usbConfiguration, align 4, !dbg !843
  store i1 true, i1* %retval, align 1, !dbg !844
  br label %return, !dbg !844

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !845
  br label %return, !dbg !845

return:                                           ; preds = %if.else, %if.then
  %1 = load i1, i1* %retval, align 1, !dbg !847
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USBDevice_6attachEv, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %3 = load i32, i32* %i, align 4
  %4 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i32 %3
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %10 = load i32, i32* %i, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %12 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %13 = phi i8* [ %12, %dec_end ]
  indirectbr i8* %12, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i1 %1, !dbg !847
}

declare dso_local arm_aapcscc void @UDD_Attach() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN10USBDevice_6detachEv(%class.USBDevice_* %this) #0 align 2 !dbg !848 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i1, align 1
  %this.addr = alloca %class.USBDevice_*, align 4
  store %class.USBDevice_* %this, %class.USBDevice_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USBDevice_** %this.addr, metadata !849, metadata !DIExpression()), !dbg !850
  %this1 = load %class.USBDevice_*, %class.USBDevice_** %this.addr, align 4
  %0 = load volatile i32, i32* @_usbInitialized, align 4, !dbg !851
  %cmp = icmp ne i32 %0, 0, !dbg !853
  br i1 %cmp, label %if.then, label %if.else, !dbg !854

if.then:                                          ; preds = %entry
  call arm_aapcscc void @UDD_Detach(), !dbg !855
  store i1 true, i1* %retval, align 1, !dbg !857
  br label %return, !dbg !857

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !858
  br label %return, !dbg !858

return:                                           ; preds = %if.else, %if.then
  %1 = load i1, i1* %retval, align 1, !dbg !860
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USBDevice_6detachEv, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %3 = load i32, i32* %i, align 4
  %4 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i32 %3
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %10 = load i32, i32* %i, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %12 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %13 = phi i8* [ %12, %dec_end ]
  indirectbr i8* %12, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i1 %1, !dbg !860
}

declare dso_local arm_aapcscc void @UDD_Detach() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN10USBDevice_10configuredEv(%class.USBDevice_* %this) #0 align 2 !dbg !861 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.USBDevice_*, align 4
  store %class.USBDevice_* %this, %class.USBDevice_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USBDevice_** %this.addr, metadata !862, metadata !DIExpression()), !dbg !863
  %this1 = load %class.USBDevice_*, %class.USBDevice_** %this.addr, align 4
  %0 = load volatile i32, i32* @_usbConfiguration, align 4, !dbg !864
  %tobool = icmp ne i32 %0, 0, !dbg !864
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USBDevice_10configuredEv, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i1 %tobool, !dbg !865
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN10USBDevice_4pollEv(%class.USBDevice_* %this) #0 align 2 !dbg !866 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.USBDevice_*, align 4
  store %class.USBDevice_* %this, %class.USBDevice_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USBDevice_** %this.addr, metadata !867, metadata !DIExpression()), !dbg !868
  %this1 = load %class.USBDevice_*, %class.USBDevice_** %this.addr, align 4
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USBDevice_4pollEv, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !869
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc i32 @_ZL12cpu_irq_savev() #0 !dbg !870 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %flags = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !873, metadata !DIExpression()), !dbg !874
  %0 = load i32, i32* @g_interrupt_enabled, align 4, !dbg !875
  store i32 %0, i32* %flags, align 4, !dbg !874
  br label %do.body, !dbg !876

do.body:                                          ; preds = %entry
  call void asm sideeffect "cpsid i", ""() #4, !dbg !877, !srcloc !882
  call void asm sideeffect "dmb", ""() #4, !dbg !883, !srcloc !887
  store i32 0, i32* @g_interrupt_enabled, align 4, !dbg !888
  br label %do.end, !dbg !888

do.end:                                           ; preds = %do.body
  %1 = load i32, i32* %flags, align 4, !dbg !889
  br label %dec_start

dec_start:                                        ; preds = %do.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL12cpu_irq_savev, %do.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %3 = load i32, i32* %i, align 4
  %4 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i32 %3
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %10 = load i32, i32* %i, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %12 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %13 = phi i8* [ %12, %dec_end ]
  indirectbr i8* %12, [label %do.end.RetBlock]

do.end.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %1, !dbg !890
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @_ZL15cpu_irq_restorej(i32 %flags) #0 !dbg !891 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !894, metadata !DIExpression()), !dbg !895
  %0 = load i32, i32* %flags.addr, align 4, !dbg !896
  %call = call arm_aapcscc i32 @_ZL24cpu_irq_is_enabled_flagsj(i32 %0), !dbg !898
  %tobool = icmp ne i32 %call, 0, !dbg !898
  br i1 %tobool, label %if.then, label %if.end, !dbg !899

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !900

do.body:                                          ; preds = %if.then
  store i32 1, i32* @g_interrupt_enabled, align 4, !dbg !901
  call void asm sideeffect "dmb", ""() #4, !dbg !903, !srcloc !887
  call void asm sideeffect "cpsie i", ""() #4, !dbg !905, !srcloc !908
  br label %do.end, !dbg !901

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !901

if.end:                                           ; preds = %do.end, %entry
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL15cpu_irq_restorej, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !909
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc i32 @_ZL24cpu_irq_is_enabled_flagsj(i32 %flags) #0 !dbg !910 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !913, metadata !DIExpression()), !dbg !914
  %0 = load i32, i32* %flags.addr, align 4, !dbg !915
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL24cpu_irq_is_enabled_flagsj, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %8 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %9 = load i32, i32* %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %11 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %12 = phi i8* [ %11, %dec_end ]
  indirectbr i8* %11, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i32 %0, !dbg !916
}

declare dso_local arm_aapcscc void @UDD_InitEP(i32, i32) #2

declare dso_local arm_aapcscc void @_ZN7Serial_6acceptEv(%class.Serial_*) unnamed_addr #2

declare dso_local arm_aapcscc i32 @UDD_ReceivedSetupInt() #2

declare dso_local arm_aapcscc void @UDD_ClearSetupInt() #2

declare dso_local arm_aapcscc void @UDD_WaitIN() #2

declare dso_local arm_aapcscc void @UDD_ClearIN() #2

declare dso_local arm_aapcscc void @UDD_Send8(i32, i8 zeroext) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @_ZL17Test_Mode_Supporth(i8 zeroext %wIndex) #0 !dbg !917 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i1 = alloca i32, align 4
  %wIndex.addr = alloca i8, align 1
  %i = alloca i8, align 1
  %ptr_dest = alloca i8*, align 4
  store i8 %wIndex, i8* %wIndex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wIndex.addr, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata i8* %i, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata i8** %ptr_dest, metadata !924, metadata !DIExpression()), !dbg !925
  store i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* inttoptr (i32 538443776 to [32768 x i8]*), i32 2, i32 0), i8** %ptr_dest, align 4, !dbg !925
  %0 = load i8, i8* %wIndex.addr, align 1, !dbg !926
  %conv = zext i8 %0 to i32, !dbg !926
  switch i32 %conv, label %sw.epilog [
    i32 4, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb11
    i32 3, label %sw.bb14
  ], !dbg !927

sw.bb:                                            ; preds = %entry
  call arm_aapcscc void @_ZL11USB_SendZlpv(), !dbg !928
  store volatile i32 0, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 24, i32 0, i32 2), align 4, !dbg !930
  store volatile i32 0, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 24, i32 1, i32 2), align 4, !dbg !931
  store volatile i32 4400, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 10, i32 2), align 4, !dbg !932
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 10, i32 2), align 4, !dbg !933
  %or = or i32 %1, 2, !dbg !933
  store volatile i32 %or, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 10, i32 2), align 4, !dbg !933
  br label %while.cond, !dbg !934

while.cond:                                       ; preds = %while.body, %sw.bb
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 12, i32 2), align 4, !dbg !935
  %and = and i32 %2, 262144, !dbg !936
  %cmp = icmp eq i32 %and, 0, !dbg !937
  br i1 %cmp, label %while.body, label %while.end, !dbg !934

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !934, !llvm.loop !938

while.end:                                        ; preds = %while.cond
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 7), align 4, !dbg !940
  %or1 = or i32 %3, 4, !dbg !940
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 7), align 4, !dbg !940
  store i8 0, i8* %i, align 1, !dbg !941
  br label %for.cond, !dbg !943

for.cond:                                         ; preds = %for.inc, %while.end
  %4 = load i8, i8* %i, align 1, !dbg !944
  %conv2 = zext i8 %4 to i32, !dbg !944
  %cmp3 = icmp ult i32 %conv2, 53, !dbg !946
  br i1 %cmp3, label %for.body, label %for.end, !dbg !947

for.body:                                         ; preds = %for.cond
  %5 = load i8, i8* %i, align 1, !dbg !948
  %idxprom = zext i8 %5 to i32, !dbg !950
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @_ZL18test_packet_buffer, i32 0, i32 %idxprom, !dbg !950
  %6 = load i8, i8* %arrayidx, align 1, !dbg !950
  %7 = load i8*, i8** %ptr_dest, align 4, !dbg !951
  %8 = load i8, i8* %i, align 1, !dbg !952
  %idxprom4 = zext i8 %8 to i32, !dbg !951
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i32 %idxprom4, !dbg !951
  store i8 %6, i8* %arrayidx5, align 1, !dbg !953
  br label %for.inc, !dbg !954

for.inc:                                          ; preds = %for.body
  %9 = load i8, i8* %i, align 1, !dbg !955
  %inc = add i8 %9, 1, !dbg !955
  store i8 %inc, i8* %i, align 1, !dbg !955
  br label %for.cond, !dbg !956, !llvm.loop !957

for.end:                                          ; preds = %for.cond
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !959
  %or6 = or i32 %10, 32768, !dbg !959
  store volatile i32 %or6, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !959
  store volatile i32 1, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 14, i32 2), align 4, !dbg !960
  store volatile i32 16384, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 22, i32 2), align 4, !dbg !961
  br label %for.cond7, !dbg !962

for.cond7:                                        ; preds = %for.cond7, %for.end
  br label %for.cond7, !dbg !963, !llvm.loop !966

sw.bb8:                                           ; preds = %entry
  call arm_aapcscc void @_ZL11USB_SendZlpv(), !dbg !969
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !970
  %or9 = or i32 %11, 8192, !dbg !970
  store volatile i32 %or9, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !970
  br label %for.cond10, !dbg !971

for.cond10:                                       ; preds = %for.cond10, %sw.bb8
  br label %for.cond10, !dbg !972, !llvm.loop !975

sw.bb11:                                          ; preds = %entry
  call arm_aapcscc void @_ZL11USB_SendZlpv(), !dbg !978
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !979
  %or12 = or i32 %12, 16384, !dbg !979
  store volatile i32 %or12, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 0), align 4, !dbg !979
  br label %for.cond13, !dbg !980

for.cond13:                                       ; preds = %for.cond13, %sw.bb11
  br label %for.cond13, !dbg !981, !llvm.loop !984

sw.bb14:                                          ; preds = %entry
  call arm_aapcscc void @_ZL11USB_SendZlpv(), !dbg !987
  store volatile i32 2114449535, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 5), align 4, !dbg !988
  br label %for.cond15, !dbg !989

for.cond15:                                       ; preds = %for.cond15, %sw.bb14
  br label %for.cond15, !dbg !990, !llvm.loop !993

sw.epilog:                                        ; preds = %entry
  br label %dec_start

dec_start:                                        ; preds = %sw.epilog
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx2, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL17Test_Mode_Supporth, %sw.epilog.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i1, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %13 = load i32, i32* %i1, align 4
  %cmp4 = icmp slt i32 %13, 12
  br i1 %cmp4, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %14 = load i32, i32* %i1, align 4
  %15 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %15, i32 %14
  %16 = load i8, i8* %arrayidx1, align 1
  %17 = load i32, i32* %i1, align 4
  %arrayidx25 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  store i8 %16, i8* %arrayidx25, align 1
  %18 = load i32, i32* %i1, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %18
  %19 = load i8, i8* %arrayidx3, align 1
  %conv6 = zext i8 %19 to i32
  %xor = xor i32 %conv6, 133
  %conv4 = trunc i32 %xor to i8
  %20 = load i32, i32* %i1, align 4
  %arrayidx57 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %20
  store i8 %conv4, i8* %arrayidx57, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %21 = load i32, i32* %i1, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %i1, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %23 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %24 = phi i8* [ %23, %dec_end ]
  indirectbr i8* %23, [label %sw.epilog.RetBlock]

sw.epilog.RetBlock:                               ; preds = %dec_jmp
  ret void, !dbg !996
}

declare dso_local arm_aapcscc void @UDD_SetAddress(i32) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc zeroext i1 @_ZL19USBD_SendDescriptorR8USBSetup(%struct.USBSetup* dereferenceable(8) %setup) #0 !dbg !997 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i1, align 1
  %setup.addr = alloca %struct.USBSetup*, align 4
  %t = alloca i8, align 1
  %desc_length = alloca i8, align 1
  %ret = alloca i32, align 4
  %desc_addr = alloca i8*, align 4
  %name = alloca [20 x i8], align 1
  store %struct.USBSetup* %setup, %struct.USBSetup** %setup.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.USBSetup** %setup.addr, metadata !998, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata i8* %t, metadata !1000, metadata !DIExpression()), !dbg !1001
  %0 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1002
  %wValueH = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %0, i32 0, i32 3, !dbg !1003
  %1 = load i8, i8* %wValueH, align 1, !dbg !1003
  store i8 %1, i8* %t, align 1, !dbg !1001
  call void @llvm.dbg.declare(metadata i8* %desc_length, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i8 0, i8* %desc_length, align 1, !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i32 0, i32* %ret, align 4, !dbg !1007
  call void @llvm.dbg.declare(metadata i8** %desc_addr, metadata !1008, metadata !DIExpression()), !dbg !1009
  store i8* null, i8** %desc_addr, align 4, !dbg !1009
  %2 = load i8, i8* %t, align 1, !dbg !1010
  %conv = zext i8 %2 to i32, !dbg !1010
  %cmp = icmp eq i32 2, %conv, !dbg !1012
  br i1 %cmp, label %if.then, label %if.end, !dbg !1013

if.then:                                          ; preds = %entry
  %3 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1014
  %wLength = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %3, i32 0, i32 5, !dbg !1016
  %4 = load i16, i16* %wLength, align 2, !dbg !1016
  %conv1 = zext i16 %4 to i32, !dbg !1014
  %call = call arm_aapcscc zeroext i1 @_ZL22USBD_SendConfigurationi(i32 %conv1), !dbg !1017
  store i1 %call, i1* %retval, align 1, !dbg !1018
  br label %return, !dbg !1018

if.end:                                           ; preds = %entry
  %5 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1019
  %wLength2 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %5, i32 0, i32 5, !dbg !1020
  %6 = load i16, i16* %wLength2, align 2, !dbg !1020
  %conv3 = zext i16 %6 to i32, !dbg !1019
  call arm_aapcscc void @_Z16USBD_InitControli(i32 %conv3), !dbg !1021
  %call4 = call arm_aapcscc dereferenceable(8) %class.PluggableUSB_* @_Z12PluggableUSBv(), !dbg !1022
  %7 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1023
  %call5 = call arm_aapcscc i32 @_ZN13PluggableUSB_13getDescriptorER8USBSetup(%class.PluggableUSB_* %call4, %struct.USBSetup* dereferenceable(8) %7), !dbg !1024
  store i32 %call5, i32* %ret, align 4, !dbg !1025
  %8 = load i32, i32* %ret, align 4, !dbg !1026
  %cmp6 = icmp ne i32 %8, 0, !dbg !1028
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1029

if.then7:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !1030
  %cmp8 = icmp sgt i32 %9, 0, !dbg !1032
  %10 = zext i1 %cmp8 to i64, !dbg !1030
  %cond = select i1 %cmp8, i32 1, i32 0, !dbg !1030
  %tobool = icmp ne i32 %cond, 0, !dbg !1033
  store i1 %tobool, i1* %retval, align 1, !dbg !1034
  br label %return, !dbg !1034

if.end9:                                          ; preds = %if.end
  %11 = load i8, i8* %t, align 1, !dbg !1035
  %conv10 = zext i8 %11 to i32, !dbg !1035
  %cmp11 = icmp eq i32 1, %conv10, !dbg !1037
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !1038

if.then12:                                        ; preds = %if.end9
  %12 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1039
  %wLength13 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %12, i32 0, i32 5, !dbg !1042
  %13 = load i16, i16* %wLength13, align 2, !dbg !1042
  %conv14 = zext i16 %13 to i32, !dbg !1039
  %cmp15 = icmp eq i32 %conv14, 8, !dbg !1043
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1044

if.then16:                                        ; preds = %if.then12
  store i32 1, i32* @_cdcComposite, align 4, !dbg !1045
  br label %if.end17, !dbg !1047

if.end17:                                         ; preds = %if.then16, %if.then12
  %14 = load i32, i32* @_cdcComposite, align 4, !dbg !1048
  %tobool18 = icmp ne i32 %14, 0, !dbg !1048
  %15 = zext i1 %tobool18 to i64, !dbg !1048
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds (%struct.DeviceDescriptor, %struct.DeviceDescriptor* @USB_DeviceDescriptorA, i32 0, i32 0), i8* getelementptr inbounds (%struct.DeviceDescriptor, %struct.DeviceDescriptor* @USB_DeviceDescriptor, i32 0, i32 0), !dbg !1048
  store i8* %cond19, i8** %desc_addr, align 4, !dbg !1049
  %16 = load i8*, i8** %desc_addr, align 4, !dbg !1050
  %17 = load i8, i8* %16, align 1, !dbg !1052
  %conv20 = zext i8 %17 to i32, !dbg !1052
  %18 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1053
  %wLength21 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %18, i32 0, i32 5, !dbg !1054
  %19 = load i16, i16* %wLength21, align 2, !dbg !1054
  %conv22 = zext i16 %19 to i32, !dbg !1053
  %cmp23 = icmp sgt i32 %conv20, %conv22, !dbg !1055
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !1056

if.then24:                                        ; preds = %if.end17
  %20 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1057
  %wLength25 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %20, i32 0, i32 5, !dbg !1059
  %21 = load i16, i16* %wLength25, align 2, !dbg !1059
  %conv26 = trunc i16 %21 to i8, !dbg !1057
  store i8 %conv26, i8* %desc_length, align 1, !dbg !1060
  br label %if.end27, !dbg !1061

if.end27:                                         ; preds = %if.then24, %if.end17
  br label %if.end93, !dbg !1062

if.else:                                          ; preds = %if.end9
  %22 = load i8, i8* %t, align 1, !dbg !1063
  %conv28 = zext i8 %22 to i32, !dbg !1063
  %cmp29 = icmp eq i32 3, %conv28, !dbg !1065
  br i1 %cmp29, label %if.then30, label %if.else70, !dbg !1066

if.then30:                                        ; preds = %if.else
  %23 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1067
  %wValueL = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %23, i32 0, i32 2, !dbg !1070
  %24 = load i8, i8* %wValueL, align 2, !dbg !1070
  %conv31 = zext i8 %24 to i32, !dbg !1067
  %cmp32 = icmp eq i32 %conv31, 0, !dbg !1071
  br i1 %cmp32, label %if.then33, label %if.else34, !dbg !1072

if.then33:                                        ; preds = %if.then30
  store i8* bitcast ([2 x i16]* @STRING_LANGUAGE to i8*), i8** %desc_addr, align 4, !dbg !1073
  br label %if.end61, !dbg !1075

if.else34:                                        ; preds = %if.then30
  %25 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1076
  %wValueL35 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %25, i32 0, i32 2, !dbg !1078
  %26 = load i8, i8* %wValueL35, align 2, !dbg !1078
  %conv36 = zext i8 %26 to i32, !dbg !1076
  %cmp37 = icmp eq i32 %conv36, 2, !dbg !1079
  br i1 %cmp37, label %if.then38, label %if.else42, !dbg !1080

if.then38:                                        ; preds = %if.else34
  %27 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1081
  %wLength39 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %27, i32 0, i32 5, !dbg !1083
  %28 = load i16, i16* %wLength39, align 2, !dbg !1083
  %conv40 = zext i16 %28 to i32, !dbg !1081
  %call41 = call arm_aapcscc zeroext i1 @_ZL24USB_SendStringDescriptorPKhi(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @STRING_PRODUCT, i32 0, i32 0), i32 %conv40), !dbg !1084
  store i1 %call41, i1* %retval, align 1, !dbg !1085
  br label %return, !dbg !1085

if.else42:                                        ; preds = %if.else34
  %29 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1086
  %wValueL43 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %29, i32 0, i32 2, !dbg !1088
  %30 = load i8, i8* %wValueL43, align 2, !dbg !1088
  %conv44 = zext i8 %30 to i32, !dbg !1086
  %cmp45 = icmp eq i32 %conv44, 1, !dbg !1089
  br i1 %cmp45, label %if.then46, label %if.else50, !dbg !1090

if.then46:                                        ; preds = %if.else42
  %31 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1091
  %wLength47 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %31, i32 0, i32 5, !dbg !1093
  %32 = load i16, i16* %wLength47, align 2, !dbg !1093
  %conv48 = zext i16 %32 to i32, !dbg !1091
  %call49 = call arm_aapcscc zeroext i1 @_ZL24USB_SendStringDescriptorPKhi(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @STRING_MANUFACTURER, i32 0, i32 0), i32 %conv48), !dbg !1094
  store i1 %call49, i1* %retval, align 1, !dbg !1095
  br label %return, !dbg !1095

if.else50:                                        ; preds = %if.else42
  %33 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1096
  %wValueL51 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %33, i32 0, i32 2, !dbg !1098
  %34 = load i8, i8* %wValueL51, align 2, !dbg !1098
  %conv52 = zext i8 %34 to i32, !dbg !1096
  %cmp53 = icmp eq i32 %conv52, 3, !dbg !1099
  br i1 %cmp53, label %if.then54, label %if.else60, !dbg !1100

if.then54:                                        ; preds = %if.else50
  call void @llvm.dbg.declare(metadata [20 x i8]* %name, metadata !1101, metadata !DIExpression()), !dbg !1106
  %call55 = call arm_aapcscc dereferenceable(8) %class.PluggableUSB_* @_Z12PluggableUSBv(), !dbg !1107
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0, !dbg !1108
  call arm_aapcscc void @_ZN13PluggableUSB_12getShortNameEPc(%class.PluggableUSB_* %call55, i8* %arraydecay), !dbg !1109
  %arraydecay56 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0, !dbg !1110
  %35 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1111
  %wLength57 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %35, i32 0, i32 5, !dbg !1112
  %36 = load i16, i16* %wLength57, align 2, !dbg !1112
  %conv58 = zext i16 %36 to i32, !dbg !1111
  %call59 = call arm_aapcscc zeroext i1 @_ZL24USB_SendStringDescriptorPKhi(i8* %arraydecay56, i32 %conv58), !dbg !1113
  store i1 %call59, i1* %retval, align 1, !dbg !1114
  br label %return, !dbg !1114

if.else60:                                        ; preds = %if.else50
  store i1 false, i1* %retval, align 1, !dbg !1115
  br label %return, !dbg !1115

if.end61:                                         ; preds = %if.then33
  %37 = load i8*, i8** %desc_addr, align 4, !dbg !1117
  %38 = load i8, i8* %37, align 1, !dbg !1119
  %conv62 = zext i8 %38 to i32, !dbg !1119
  %39 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1120
  %wLength63 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %39, i32 0, i32 5, !dbg !1121
  %40 = load i16, i16* %wLength63, align 2, !dbg !1121
  %conv64 = zext i16 %40 to i32, !dbg !1120
  %cmp65 = icmp sgt i32 %conv62, %conv64, !dbg !1122
  br i1 %cmp65, label %if.then66, label %if.end69, !dbg !1123

if.then66:                                        ; preds = %if.end61
  %41 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1124
  %wLength67 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %41, i32 0, i32 5, !dbg !1126
  %42 = load i16, i16* %wLength67, align 2, !dbg !1126
  %conv68 = trunc i16 %42 to i8, !dbg !1124
  store i8 %conv68, i8* %desc_length, align 1, !dbg !1127
  br label %if.end69, !dbg !1128

if.end69:                                         ; preds = %if.then66, %if.end61
  br label %if.end92, !dbg !1129

if.else70:                                        ; preds = %if.else
  %43 = load i8, i8* %t, align 1, !dbg !1130
  %conv71 = zext i8 %43 to i32, !dbg !1130
  %cmp72 = icmp eq i32 6, %conv71, !dbg !1132
  br i1 %cmp72, label %if.then73, label %if.else82, !dbg !1133

if.then73:                                        ; preds = %if.else70
  store i8* getelementptr inbounds (%struct.QualifierDescriptor, %struct.QualifierDescriptor* @_ZL19USB_DeviceQualifier, i32 0, i32 0), i8** %desc_addr, align 4, !dbg !1134
  %44 = load i8*, i8** %desc_addr, align 4, !dbg !1136
  %45 = load i8, i8* %44, align 1, !dbg !1138
  %conv74 = zext i8 %45 to i32, !dbg !1138
  %46 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1139
  %wLength75 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %46, i32 0, i32 5, !dbg !1140
  %47 = load i16, i16* %wLength75, align 2, !dbg !1140
  %conv76 = zext i16 %47 to i32, !dbg !1139
  %cmp77 = icmp sgt i32 %conv74, %conv76, !dbg !1141
  br i1 %cmp77, label %if.then78, label %if.end81, !dbg !1142

if.then78:                                        ; preds = %if.then73
  %48 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1143
  %wLength79 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %48, i32 0, i32 5, !dbg !1145
  %49 = load i16, i16* %wLength79, align 2, !dbg !1145
  %conv80 = trunc i16 %49 to i8, !dbg !1143
  store i8 %conv80, i8* %desc_length, align 1, !dbg !1146
  br label %if.end81, !dbg !1147

if.end81:                                         ; preds = %if.then78, %if.then73
  br label %if.end91, !dbg !1148

if.else82:                                        ; preds = %if.else70
  %50 = load i8, i8* %t, align 1, !dbg !1149
  %conv83 = zext i8 %50 to i32, !dbg !1149
  %cmp84 = icmp eq i32 7, %conv83, !dbg !1151
  br i1 %cmp84, label %if.then85, label %if.else89, !dbg !1152

if.then85:                                        ; preds = %if.else82
  %51 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !1153
  %wLength86 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %51, i32 0, i32 5, !dbg !1155
  %52 = load i16, i16* %wLength86, align 2, !dbg !1155
  %conv87 = zext i16 %52 to i32, !dbg !1153
  %call88 = call arm_aapcscc zeroext i1 @_ZL27USBD_SendOtherConfigurationi(i32 %conv87), !dbg !1156
  store i1 %call88, i1* %retval, align 1, !dbg !1157
  br label %return, !dbg !1157

if.else89:                                        ; preds = %if.else82
  br label %if.end90

if.end90:                                         ; preds = %if.else89
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end81
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end69
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end27
  %53 = load i8*, i8** %desc_addr, align 4, !dbg !1158
  %cmp94 = icmp eq i8* %53, null, !dbg !1160
  br i1 %cmp94, label %if.then95, label %if.end96, !dbg !1161

if.then95:                                        ; preds = %if.end93
  store i1 false, i1* %retval, align 1, !dbg !1162
  br label %return, !dbg !1162

if.end96:                                         ; preds = %if.end93
  %54 = load i8, i8* %desc_length, align 1, !dbg !1164
  %conv97 = zext i8 %54 to i32, !dbg !1164
  %cmp98 = icmp eq i32 %conv97, 0, !dbg !1166
  br i1 %cmp98, label %if.then99, label %if.end100, !dbg !1167

if.then99:                                        ; preds = %if.end96
  %55 = load i8*, i8** %desc_addr, align 4, !dbg !1168
  %56 = load i8, i8* %55, align 1, !dbg !1170
  store i8 %56, i8* %desc_length, align 1, !dbg !1171
  br label %if.end100, !dbg !1172

if.end100:                                        ; preds = %if.then99, %if.end96
  %57 = load i8*, i8** %desc_addr, align 4, !dbg !1173
  %58 = load i8, i8* %desc_length, align 1, !dbg !1174
  %conv101 = zext i8 %58 to i32, !dbg !1174
  %call102 = call arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext 0, i8* %57, i32 %conv101), !dbg !1175
  store i1 true, i1* %retval, align 1, !dbg !1176
  br label %return, !dbg !1176

return:                                           ; preds = %if.end100, %if.then95, %if.then85, %if.else60, %if.then54, %if.then46, %if.then38, %if.then7, %if.then
  %59 = load i1, i1* %retval, align 1, !dbg !1177
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL19USBD_SendDescriptorR8USBSetup, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %60 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %60, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %61 = load i32, i32* %i, align 4
  %62 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %62, i32 %61
  %63 = load i8, i8* %arrayidx1, align 1
  %64 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %64
  store i8 %63, i8* %arrayidx2, align 1
  %65 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %65
  %66 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %66 to i32
  %xor = xor i32 %conv2, 133
  %conv4 = trunc i32 %xor to i8
  %67 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %67
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %68 = load i32, i32* %i, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %70 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %71 = phi i8* [ %70, %dec_end ]
  indirectbr i8* %70, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i1 %59, !dbg !1177
}

declare dso_local arm_aapcscc void @UDD_InitEndpoints(i32*, i32) #2

declare dso_local arm_aapcscc void @UDD_Stall() #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @_ZL11USB_SendZlpv() #0 !dbg !1178 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  br label %while.cond, !dbg !1179

while.cond:                                       ; preds = %if.end, %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 12, i32 0), align 4, !dbg !1180
  %and = and i32 %0, 1, !dbg !1181
  %cmp = icmp ne i32 1, %and, !dbg !1182
  br i1 %cmp, label %while.body, label %while.end, !dbg !1179

while.body:                                       ; preds = %while.cond
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 1), align 4, !dbg !1183
  %and1 = and i32 %1, 1, !dbg !1186
  %cmp2 = icmp eq i32 %and1, 1, !dbg !1187
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1188

if.then:                                          ; preds = %while.body
  br label %return, !dbg !1189

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !1179, !llvm.loop !1191

while.end:                                        ; preds = %while.cond
  store volatile i32 1, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 14, i32 0), align 4, !dbg !1193
  br label %return, !dbg !1194

return:                                           ; preds = %while.end, %if.then
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL11USB_SendZlpv, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %3 = load i32, i32* %i, align 4
  %4 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i32 %3
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %6
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %7
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %10 = load i32, i32* %i, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %12 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %13 = phi i8* [ %12, %dec_end ]
  indirectbr i8* %12, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !1194
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc zeroext i1 @_ZL22USBD_SendConfigurationi(i32 %maxlen) #0 !dbg !1195 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %maxlen.addr = alloca i32, align 4
  %interfaces = alloca i8, align 1
  %config = alloca %struct.ConfigDescriptor, align 1
  store i32 %maxlen, i32* %maxlen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %maxlen.addr, metadata !1198, metadata !DIExpression()), !dbg !1199
  call arm_aapcscc void @_Z16USBD_InitControli(i32 0), !dbg !1200
  call void @llvm.dbg.declare(metadata i8* %interfaces, metadata !1201, metadata !DIExpression()), !dbg !1202
  %call = call arm_aapcscc zeroext i8 @_Z19USBD_SendInterfacesv(), !dbg !1203
  store i8 %call, i8* %interfaces, align 1, !dbg !1202
  call void @llvm.dbg.declare(metadata %struct.ConfigDescriptor* %config, metadata !1204, metadata !DIExpression()), !dbg !1216
  %len = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 0, !dbg !1217
  store i8 9, i8* %len, align 1, !dbg !1217
  %dtype = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 1, !dbg !1217
  store i8 2, i8* %dtype, align 1, !dbg !1217
  %clen = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 2, !dbg !1217
  %0 = load i16, i16* @_cmark, align 2, !dbg !1217
  %conv = zext i16 %0 to i32, !dbg !1217
  %add = add i32 %conv, 9, !dbg !1217
  %conv1 = trunc i32 %add to i16, !dbg !1217
  store i16 %conv1, i16* %clen, align 1, !dbg !1217
  %numInterfaces = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 3, !dbg !1217
  %1 = load i8, i8* %interfaces, align 1, !dbg !1217
  store i8 %1, i8* %numInterfaces, align 1, !dbg !1217
  %config2 = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 4, !dbg !1217
  store i8 1, i8* %config2, align 1, !dbg !1217
  %iconfig = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 5, !dbg !1217
  store i8 0, i8* %iconfig, align 1, !dbg !1217
  %attributes = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 6, !dbg !1217
  store i8 -64, i8* %attributes, align 1, !dbg !1217
  %maxPower = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 7, !dbg !1217
  store i8 -6, i8* %maxPower, align 1, !dbg !1217
  %2 = load i32, i32* %maxlen.addr, align 4, !dbg !1218
  call arm_aapcscc void @_Z16USBD_InitControli(i32 %2), !dbg !1219
  %3 = bitcast %struct.ConfigDescriptor* %config to i8*, !dbg !1220
  %call3 = call arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext 0, i8* %3, i32 9), !dbg !1221
  %call4 = call arm_aapcscc zeroext i8 @_Z19USBD_SendInterfacesv(), !dbg !1222
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL22USBD_SendConfigurationi, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %5 = load i32, i32* %i, align 4
  %6 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i32 %5
  %7 = load i8, i8* %arrayidx1, align 1
  %8 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %7, i8* %arrayidx2, align 1
  %9 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  %10 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %10 to i32
  %xor = xor i32 %conv2, 133
  %conv4 = trunc i32 %xor to i8
  %11 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %12 = load i32, i32* %i, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %14 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %15 = phi i8* [ %14, %dec_end ]
  indirectbr i8* %14, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i1 true, !dbg !1223
}

declare dso_local arm_aapcscc i32 @_ZN13PluggableUSB_13getDescriptorER8USBSetup(%class.PluggableUSB_*, %struct.USBSetup* dereferenceable(8)) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc zeroext i1 @_ZL24USB_SendStringDescriptorPKhi(i8* %string, i32 %wLength) #0 !dbg !1224 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i1 = alloca i32, align 4
  %retval = alloca i1, align 1
  %string.addr = alloca i8*, align 4
  %wLength.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 4
  %__vla_expr0 = alloca i32, align 4
  %i = alloca i8, align 1
  store i8* %string, i8** %string.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !1227, metadata !DIExpression()), !dbg !1228
  store i32 %wLength, i32* %wLength.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wLength.addr, metadata !1229, metadata !DIExpression()), !dbg !1230
  %0 = load i32, i32* %wLength.addr, align 4, !dbg !1231
  %cmp = icmp slt i32 %0, 2, !dbg !1233
  br i1 %cmp, label %if.then, label %if.end, !dbg !1234

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !1235
  br label %return, !dbg !1235

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %wLength.addr, align 4, !dbg !1236
  %2 = call i8* @llvm.stacksave(), !dbg !1237
  store i8* %2, i8** %saved_stack, align 4, !dbg !1237
  %vla = alloca i8, i32 %1, align 1, !dbg !1237
  store i32 %1, i32* %__vla_expr0, align 4, !dbg !1237
  call void @llvm.dbg.declare(metadata i32* %__vla_expr0, metadata !1238, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.declare(metadata i8* %vla, metadata !1240, metadata !DIExpression()), !dbg !1244
  %3 = load i8*, i8** %string.addr, align 4, !dbg !1245
  %call = call arm_aapcscc i32 @strlen(i8* %3), !dbg !1246
  %mul = mul i32 %call, 2, !dbg !1247
  %add = add i32 %mul, 2, !dbg !1248
  %conv = trunc i32 %add to i8, !dbg !1246
  %arrayidx = getelementptr inbounds i8, i8* %vla, i32 0, !dbg !1249
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1250
  %arrayidx1 = getelementptr inbounds i8, i8* %vla, i32 1, !dbg !1251
  store i8 3, i8* %arrayidx1, align 1, !dbg !1252
  call void @llvm.dbg.declare(metadata i8* %i, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i8 2, i8* %i, align 1, !dbg !1255
  br label %for.cond, !dbg !1257

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i8, i8* %i, align 1, !dbg !1258
  %conv2 = zext i8 %4 to i32, !dbg !1258
  %5 = load i32, i32* %wLength.addr, align 4, !dbg !1260
  %cmp3 = icmp slt i32 %conv2, %5, !dbg !1261
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !1262

land.rhs:                                         ; preds = %for.cond
  %6 = load i8*, i8** %string.addr, align 4, !dbg !1263
  %7 = load i8, i8* %6, align 1, !dbg !1264
  %tobool = icmp ne i8 %7, 0, !dbg !1264
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !1265
  br i1 %8, label %for.body, label %for.end, !dbg !1266

for.body:                                         ; preds = %land.end
  %9 = load i8*, i8** %string.addr, align 4, !dbg !1267
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1, !dbg !1267
  store i8* %incdec.ptr, i8** %string.addr, align 4, !dbg !1267
  %10 = load i8, i8* %9, align 1, !dbg !1269
  %11 = load i8, i8* %i, align 1, !dbg !1270
  %inc = add i8 %11, 1, !dbg !1270
  store i8 %inc, i8* %i, align 1, !dbg !1270
  %idxprom = zext i8 %11 to i32, !dbg !1271
  %arrayidx4 = getelementptr inbounds i8, i8* %vla, i32 %idxprom, !dbg !1271
  store i8 %10, i8* %arrayidx4, align 1, !dbg !1272
  %12 = load i8, i8* %i, align 1, !dbg !1273
  %conv5 = zext i8 %12 to i32, !dbg !1273
  %13 = load i32, i32* %wLength.addr, align 4, !dbg !1275
  %cmp6 = icmp eq i32 %conv5, %13, !dbg !1276
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1277

if.then7:                                         ; preds = %for.body
  br label %for.end, !dbg !1278

if.end8:                                          ; preds = %for.body
  %14 = load i8, i8* %i, align 1, !dbg !1279
  %idxprom9 = zext i8 %14 to i32, !dbg !1280
  %arrayidx10 = getelementptr inbounds i8, i8* %vla, i32 %idxprom9, !dbg !1280
  store i8 0, i8* %arrayidx10, align 1, !dbg !1281
  br label %for.inc, !dbg !1282

for.inc:                                          ; preds = %if.end8
  %15 = load i8, i8* %i, align 1, !dbg !1283
  %inc11 = add i8 %15, 1, !dbg !1283
  store i8 %inc11, i8* %i, align 1, !dbg !1283
  br label %for.cond, !dbg !1284, !llvm.loop !1285

for.end:                                          ; preds = %if.then7, %land.end
  %16 = load i8, i8* %i, align 1, !dbg !1287
  %conv12 = zext i8 %16 to i32, !dbg !1287
  %call13 = call arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext 0, i8* %vla, i32 %conv12), !dbg !1288
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1288
  store i1 %tobool14, i1* %retval, align 1, !dbg !1289
  %17 = load i8*, i8** %saved_stack, align 4, !dbg !1290
  call void @llvm.stackrestore(i8* %17), !dbg !1290
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i1, i1* %retval, align 1, !dbg !1290
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx2, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL24USB_SendStringDescriptorPKhi, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i1, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %19 = load i32, i32* %i1, align 4
  %cmp4 = icmp slt i32 %19, 12
  br i1 %cmp4, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %20 = load i32, i32* %i1, align 4
  %21 = load i8*, i8** %ptr, align 4
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i32 %20
  %22 = load i8, i8* %arrayidx15, align 1
  %23 = load i32, i32* %i1, align 4
  %arrayidx26 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %23
  store i8 %22, i8* %arrayidx26, align 1
  %24 = load i32, i32* %i1, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %24
  %25 = load i8, i8* %arrayidx3, align 1
  %conv7 = zext i8 %25 to i32
  %xor = xor i32 %conv7, 133
  %conv4 = trunc i32 %xor to i8
  %26 = load i32, i32* %i1, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %26
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %27 = load i32, i32* %i1, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %i1, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %29 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %30 = phi i8* [ %29, %dec_end ]
  indirectbr i8* %29, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i1 %18, !dbg !1290
}

declare dso_local arm_aapcscc void @_ZN13PluggableUSB_12getShortNameEPc(%class.PluggableUSB_*, i8*) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc zeroext i1 @_ZL27USBD_SendOtherConfigurationi(i32 %maxlen) #0 !dbg !1291 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %maxlen.addr = alloca i32, align 4
  %interfaces = alloca i8, align 1
  %config = alloca %struct.ConfigDescriptor, align 1
  store i32 %maxlen, i32* %maxlen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %maxlen.addr, metadata !1292, metadata !DIExpression()), !dbg !1293
  call arm_aapcscc void @_Z16USBD_InitControli(i32 0), !dbg !1294
  call void @llvm.dbg.declare(metadata i8* %interfaces, metadata !1295, metadata !DIExpression()), !dbg !1296
  %call = call arm_aapcscc zeroext i8 @_Z24USBD_SendOtherInterfacesv(), !dbg !1297
  store i8 %call, i8* %interfaces, align 1, !dbg !1296
  call void @llvm.dbg.declare(metadata %struct.ConfigDescriptor* %config, metadata !1298, metadata !DIExpression()), !dbg !1299
  %len = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 0, !dbg !1300
  store i8 9, i8* %len, align 1, !dbg !1300
  %dtype = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 1, !dbg !1300
  store i8 7, i8* %dtype, align 1, !dbg !1300
  %clen = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 2, !dbg !1300
  %0 = load i16, i16* @_cmark, align 2, !dbg !1300
  %conv = zext i16 %0 to i32, !dbg !1300
  %add = add i32 %conv, 9, !dbg !1300
  %conv1 = trunc i32 %add to i16, !dbg !1300
  store i16 %conv1, i16* %clen, align 1, !dbg !1300
  %numInterfaces = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 3, !dbg !1300
  %1 = load i8, i8* %interfaces, align 1, !dbg !1300
  store i8 %1, i8* %numInterfaces, align 1, !dbg !1300
  %config2 = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 4, !dbg !1300
  store i8 1, i8* %config2, align 1, !dbg !1300
  %iconfig = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 5, !dbg !1300
  store i8 0, i8* %iconfig, align 1, !dbg !1300
  %attributes = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 6, !dbg !1300
  store i8 -64, i8* %attributes, align 1, !dbg !1300
  %maxPower = getelementptr inbounds %struct.ConfigDescriptor, %struct.ConfigDescriptor* %config, i32 0, i32 7, !dbg !1300
  store i8 -6, i8* %maxPower, align 1, !dbg !1300
  %2 = load i32, i32* %maxlen.addr, align 4, !dbg !1301
  call arm_aapcscc void @_Z16USBD_InitControli(i32 %2), !dbg !1302
  %3 = bitcast %struct.ConfigDescriptor* %config to i8*, !dbg !1303
  %call3 = call arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext 0, i8* %3, i32 9), !dbg !1304
  %call4 = call arm_aapcscc zeroext i8 @_Z24USBD_SendOtherInterfacesv(), !dbg !1305
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZL27USBD_SendOtherConfigurationi, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %5 = load i32, i32* %i, align 4
  %6 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i32 %5
  %7 = load i8, i8* %arrayidx1, align 1
  %8 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %8
  store i8 %7, i8* %arrayidx2, align 1
  %9 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  %10 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %10 to i32
  %xor = xor i32 %conv2, 133
  %conv4 = trunc i32 %xor to i8
  %11 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %12 = load i32, i32* %i, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %14 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %15 = phi i8* [ %14, %dec_end ]
  indirectbr i8* %14, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i1 true, !dbg !1306
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare dso_local arm_aapcscc i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @_GLOBAL__sub_I_USBCore.cpp() #3 !dbg !1307 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  call arm_aapcscc void @__cxx_global_var_init(), !dbg !1309
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_GLOBAL__sub_I_USBCore.cpp, %entry.RetBlock), i8** %ptr, align 4
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
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EndPoints", scope: !2, file: !150, line: 27, type: !239, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !147, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/USBCore.cpp", directory: "/home/aaa/llvm-arduino-due")
!4 = !{}
!5 = !{!6, !12, !14, !134, !136, !141, !144}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 42, baseType: !9)
!8 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 28, baseType: !11)
!10 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uotghs", file: !16, line: 123, baseType: !17)
!16 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_uotghs.h", directory: "/home/aaa")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 57, size: 16768, flags: DIFlagTypePassByValue, elements: !18, identifier: "_ZTS6Uotghs")
!18 = !{!19, !26, !28, !30, !31, !32, !33, !34, !35, !36, !40, !44, !48, !50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !65, !76, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !117, !126, !127, !128, !129, !130, !131, !133}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVCTRL", scope: !17, file: !16, line: 58, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !21, line: 54, baseType: !22)
!21 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 66, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 56, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVISR", scope: !17, file: !16, line: 59, baseType: !27, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !21, line: 51, baseType: !22)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVICR", scope: !17, file: !16, line: 60, baseType: !29, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !21, line: 53, baseType: !22)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVIFR", scope: !17, file: !16, line: 61, baseType: !29, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVIMR", scope: !17, file: !16, line: 62, baseType: !27, size: 32, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVIDR", scope: !17, file: !16, line: 63, baseType: !29, size: 32, offset: 160)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVIER", scope: !17, file: !16, line: 64, baseType: !29, size: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPT", scope: !17, file: !16, line: 65, baseType: !20, size: 32, offset: 224)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVFNUM", scope: !17, file: !16, line: 66, baseType: !27, size: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !17, file: !16, line: 67, baseType: !37, size: 1760, offset: 288)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1760, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 55)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTCFG", scope: !17, file: !16, line: 68, baseType: !41, size: 320, offset: 2048)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 320, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 10)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !17, file: !16, line: 69, baseType: !45, size: 64, offset: 2368)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 2)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTISR", scope: !17, file: !16, line: 70, baseType: !49, size: 320, offset: 2432)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 320, elements: !42)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !17, file: !16, line: 71, baseType: !45, size: 64, offset: 2752)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTICR", scope: !17, file: !16, line: 72, baseType: !52, size: 320, offset: 2816)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 320, elements: !42)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !17, file: !16, line: 73, baseType: !45, size: 64, offset: 3136)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTIFR", scope: !17, file: !16, line: 74, baseType: !52, size: 320, offset: 3200)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !17, file: !16, line: 75, baseType: !45, size: 64, offset: 3520)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTIMR", scope: !17, file: !16, line: 76, baseType: !49, size: 320, offset: 3584)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !17, file: !16, line: 77, baseType: !45, size: 64, offset: 3904)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTIER", scope: !17, file: !16, line: 78, baseType: !52, size: 320, offset: 3968)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved7", scope: !17, file: !16, line: 79, baseType: !45, size: 64, offset: 4288)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTIDR", scope: !17, file: !16, line: 80, baseType: !52, size: 320, offset: 4352)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved8", scope: !17, file: !16, line: 81, baseType: !62, size: 1600, offset: 4672)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1600, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 50)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMA", scope: !17, file: !16, line: 82, baseType: !66, size: 896, offset: 6272)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 896, elements: !74)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "UotghsDevdma", file: !16, line: 46, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 41, size: 128, flags: DIFlagTypePassByValue, elements: !69, identifier: "_ZTS12UotghsDevdma")
!69 = !{!70, !71, !72, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMANXTDSC", scope: !68, file: !16, line: 42, baseType: !20, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMAADDRESS", scope: !68, file: !16, line: 43, baseType: !20, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMACONTROL", scope: !68, file: !16, line: 44, baseType: !20, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMASTATUS", scope: !68, file: !16, line: 45, baseType: !20, size: 32, offset: 96)
!74 = !{!75}
!75 = !DISubrange(count: 7)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved9", scope: !17, file: !16, line: 83, baseType: !77, size: 1024, offset: 7168)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1024, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTCTRL", scope: !17, file: !16, line: 84, baseType: !20, size: 32, offset: 8192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTISR", scope: !17, file: !16, line: 85, baseType: !27, size: 32, offset: 8224)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTICR", scope: !17, file: !16, line: 86, baseType: !29, size: 32, offset: 8256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTIFR", scope: !17, file: !16, line: 87, baseType: !29, size: 32, offset: 8288)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTIMR", scope: !17, file: !16, line: 88, baseType: !27, size: 32, offset: 8320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTIDR", scope: !17, file: !16, line: 89, baseType: !29, size: 32, offset: 8352)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTIER", scope: !17, file: !16, line: 90, baseType: !29, size: 32, offset: 8384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIP", scope: !17, file: !16, line: 91, baseType: !20, size: 32, offset: 8416)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTFNUM", scope: !17, file: !16, line: 92, baseType: !20, size: 32, offset: 8448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTADDR1", scope: !17, file: !16, line: 93, baseType: !20, size: 32, offset: 8480)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTADDR2", scope: !17, file: !16, line: 94, baseType: !20, size: 32, offset: 8512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTADDR3", scope: !17, file: !16, line: 95, baseType: !20, size: 32, offset: 8544)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved10", scope: !17, file: !16, line: 96, baseType: !93, size: 1664, offset: 8576)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1664, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 52)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPCFG", scope: !17, file: !16, line: 97, baseType: !41, size: 320, offset: 10240)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved11", scope: !17, file: !16, line: 98, baseType: !45, size: 64, offset: 10560)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPISR", scope: !17, file: !16, line: 99, baseType: !49, size: 320, offset: 10624)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved12", scope: !17, file: !16, line: 100, baseType: !45, size: 64, offset: 10944)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPICR", scope: !17, file: !16, line: 101, baseType: !52, size: 320, offset: 11008)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved13", scope: !17, file: !16, line: 102, baseType: !45, size: 64, offset: 11328)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPIFR", scope: !17, file: !16, line: 103, baseType: !52, size: 320, offset: 11392)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved14", scope: !17, file: !16, line: 104, baseType: !45, size: 64, offset: 11712)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPIMR", scope: !17, file: !16, line: 105, baseType: !49, size: 320, offset: 11776)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved15", scope: !17, file: !16, line: 106, baseType: !45, size: 64, offset: 12096)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPIER", scope: !17, file: !16, line: 107, baseType: !52, size: 320, offset: 12160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved16", scope: !17, file: !16, line: 108, baseType: !45, size: 64, offset: 12480)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPIDR", scope: !17, file: !16, line: 109, baseType: !52, size: 320, offset: 12544)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved17", scope: !17, file: !16, line: 110, baseType: !45, size: 64, offset: 12864)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPINRQ", scope: !17, file: !16, line: 111, baseType: !41, size: 320, offset: 12928)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved18", scope: !17, file: !16, line: 112, baseType: !45, size: 64, offset: 13248)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPERR", scope: !17, file: !16, line: 113, baseType: !41, size: 320, offset: 13312)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved19", scope: !17, file: !16, line: 114, baseType: !114, size: 832, offset: 13632)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 832, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 26)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMA", scope: !17, file: !16, line: 115, baseType: !118, size: 896, offset: 14464)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 896, elements: !74)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "UotghsHstdma", file: !16, line: 53, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 48, size: 128, flags: DIFlagTypePassByValue, elements: !121, identifier: "_ZTS12UotghsHstdma")
!121 = !{!122, !123, !124, !125}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMANXTDSC", scope: !120, file: !16, line: 49, baseType: !20, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMAADDRESS", scope: !120, file: !16, line: 50, baseType: !20, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMACONTROL", scope: !120, file: !16, line: 51, baseType: !20, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMASTATUS", scope: !120, file: !16, line: 52, baseType: !20, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved20", scope: !17, file: !16, line: 116, baseType: !77, size: 1024, offset: 15360)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_CTRL", scope: !17, file: !16, line: 117, baseType: !20, size: 32, offset: 16384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_SR", scope: !17, file: !16, line: 118, baseType: !27, size: 32, offset: 16416)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_SCR", scope: !17, file: !16, line: 119, baseType: !29, size: 32, offset: 16448)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_SFR", scope: !17, file: !16, line: 120, baseType: !29, size: 32, offset: 16480)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved21", scope: !17, file: !16, line: 121, baseType: !132, size: 224, offset: 16512)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 224, elements: !74)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_FSM", scope: !17, file: !16, line: 122, baseType: !27, size: 32, offset: 16736)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !135, line: 87, baseType: !23)
!135 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/libsam/include/USB_device.h", directory: "/home/aaa")
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 262144, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!139 = !{!140}
!140 = !DISubrange(count: 32768)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 54, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 38, baseType: !143)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!147 = !{!0, !148, !151, !153, !157, !162, !164, !185, !187, !189, !191, !193, !195, !197, !199, !215, !217, !219, !225}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "TxLEDPulse", scope: !2, file: !150, line: 50, type: !138, isLocal: false, isDefinition: true)
!150 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/USBCore.cpp", directory: "/home/aaa")
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "RxLEDPulse", scope: !2, file: !150, line: 51, type: !138, isLocal: false, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "STRING_LANGUAGE", scope: !2, file: !150, line: 63, type: !155, isLocal: false, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 32, elements: !46)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "STRING_PRODUCT", scope: !2, file: !150, line: 72, type: !159, isLocal: false, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 12)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "STRING_MANUFACTURER", scope: !2, file: !150, line: 78, type: !159, isLocal: false, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "USB_DeviceDescriptor", scope: !2, file: !150, line: 87, type: !166, isLocal: false, isDefinition: true)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "DeviceDescriptor", file: !168, line: 139, baseType: !169)
!168 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/USBCore.h", directory: "/home/aaa")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 124, size: 144, flags: DIFlagTypePassByValue, elements: !170, identifier: "_ZTS16DeviceDescriptor")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !169, file: !168, line: 125, baseType: !7, size: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !169, file: !168, line: 126, baseType: !7, size: 8, offset: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "usbVersion", scope: !169, file: !168, line: 127, baseType: !141, size: 16, offset: 16)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "deviceClass", scope: !169, file: !168, line: 128, baseType: !7, size: 8, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "deviceSubClass", scope: !169, file: !168, line: 129, baseType: !7, size: 8, offset: 40)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "deviceProtocol", scope: !169, file: !168, line: 130, baseType: !7, size: 8, offset: 48)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "packetSize0", scope: !169, file: !168, line: 131, baseType: !7, size: 8, offset: 56)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !169, file: !168, line: 132, baseType: !141, size: 16, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !169, file: !168, line: 133, baseType: !141, size: 16, offset: 80)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "deviceVersion", scope: !169, file: !168, line: 134, baseType: !141, size: 16, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !169, file: !168, line: 135, baseType: !7, size: 8, offset: 112)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !169, file: !168, line: 136, baseType: !7, size: 8, offset: 120)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !169, file: !168, line: 137, baseType: !7, size: 8, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !169, file: !168, line: 138, baseType: !7, size: 8, offset: 136)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "USB_DeviceDescriptorA", scope: !2, file: !150, line: 90, type: !166, isLocal: false, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "_usbConfiguration", scope: !2, file: !150, line: 109, type: !22, isLocal: false, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "_usbInitialized", scope: !2, file: !150, line: 110, type: !22, isLocal: false, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "_usbSetInterface", scope: !2, file: !150, line: 111, type: !23, isLocal: false, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "_cdcComposite", scope: !2, file: !150, line: 112, type: !23, isLocal: false, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "_cmark", scope: !2, file: !150, line: 211, type: !141, isLocal: false, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "_cend", scope: !2, file: !150, line: 212, type: !141, isLocal: false, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "USBDevice", scope: !2, file: !150, line: 846, type: !201, isLocal: false, isDefinition: true)
!201 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "USBDevice_", file: !202, line: 31, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !203, identifier: "_ZTS10USBDevice_")
!202 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/USBAPI.h", directory: "/home/aaa")
!203 = !{!204, !208, !212, !213, !214}
!204 = !DISubprogram(name: "USBDevice_", scope: !201, file: !202, line: 34, type: !205, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!208 = !DISubprogram(name: "configured", linkageName: "_ZN10USBDevice_10configuredEv", scope: !201, file: !202, line: 35, type: !209, scopeLine: 35, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !207}
!211 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!212 = !DISubprogram(name: "attach", linkageName: "_ZN10USBDevice_6attachEv", scope: !201, file: !202, line: 37, type: !209, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!213 = !DISubprogram(name: "detach", linkageName: "_ZN10USBDevice_6detachEv", scope: !201, file: !202, line: 38, type: !209, scopeLine: 38, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!214 = !DISubprogram(name: "poll", linkageName: "_ZN10USBDevice_4pollEv", scope: !201, file: !202, line: 39, type: !205, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "isEndpointHalt", linkageName: "_ZL14isEndpointHalt", scope: !2, file: !150, line: 53, type: !146, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "isRemoteWakeUpEnabled", linkageName: "_ZL21isRemoteWakeUpEnabled", scope: !2, file: !150, line: 52, type: !146, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "test_packet_buffer", linkageName: "_ZL18test_packet_buffer", scope: !2, file: !150, line: 97, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 424, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!223 = !{!224}
!224 = !DISubrange(count: 53)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "USB_DeviceQualifier", linkageName: "_ZL19USB_DeviceQualifier", scope: !2, file: !150, line: 93, type: !227, isLocal: true, isDefinition: true)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "QualifierDescriptor", file: !168, line: 163, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 154, size: 72, flags: DIFlagTypePassByValue, elements: !230, identifier: "_ZTS19QualifierDescriptor")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !229, file: !168, line: 155, baseType: !7, size: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !229, file: !168, line: 156, baseType: !7, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !229, file: !168, line: 157, baseType: !141, size: 16, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !229, file: !168, line: 158, baseType: !7, size: 8, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !229, file: !168, line: 159, baseType: !7, size: 8, offset: 40)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !229, file: !168, line: 160, baseType: !7, size: 8, offset: 48)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !229, file: !168, line: 161, baseType: !7, size: 8, offset: 56)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !229, file: !168, line: 162, baseType: !7, size: 8, offset: 64)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !42)
!240 = !{i32 7, !"Dwarf Version", i32 4}
!241 = !{i32 2, !"Debug Info Version", i32 3}
!242 = !{i32 1, !"wchar_size", i32 4}
!243 = !{i32 1, !"min_enum_size", i32 1}
!244 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!245 = distinct !DISubprogram(name: "USBD_Available", linkageName: "_Z14USBD_Availablej", scope: !150, file: !150, line: 132, type: !246, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!246 = !DISubroutineType(types: !247)
!247 = !{!23, !23}
!248 = !DILocalVariable(name: "ep", arg: 1, scope: !245, file: !150, line: 132, type: !23)
!249 = !DILocation(line: 132, column: 34, scope: !245)
!250 = !DILocalVariable(name: "lock", scope: !245, file: !150, line: 134, type: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LockEP", file: !150, line: 118, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !252, identifier: "_ZTS6LockEP")
!252 = !{!253, !256, !260}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !150, line: 120, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqflags_t", file: !255, line: 117, baseType: !23)
!255 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/libsam/include/interrupt_sam_nvic.h", directory: "/home/aaa")
!256 = !DISubprogram(name: "LockEP", scope: !251, file: !150, line: 122, type: !257, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259, !23}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!260 = !DISubprogram(name: "~LockEP", scope: !251, file: !150, line: 125, type: !261, scopeLine: 125, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !259}
!263 = !DILocation(line: 134, column: 9, scope: !245)
!264 = !DILocation(line: 134, column: 14, scope: !245)
!265 = !DILocation(line: 135, column: 27, scope: !245)
!266 = !DILocation(line: 135, column: 30, scope: !245)
!267 = !DILocation(line: 135, column: 9, scope: !245)
!268 = !DILocation(line: 136, column: 1, scope: !245)
!269 = distinct !DISubprogram(name: "LockEP", linkageName: "_ZN6LockEPC2Ej", scope: !251, file: !150, line: 122, type: !257, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !256, retainedNodes: !4)
!270 = !DILocalVariable(name: "this", arg: 1, scope: !269, type: !271, flags: DIFlagArtificial | DIFlagObjectPointer)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32)
!272 = !DILocation(line: 0, scope: !269)
!273 = !DILocalVariable(name: "ep", arg: 2, scope: !269, file: !150, line: 122, type: !23)
!274 = !DILocation(line: 122, column: 18, scope: !269)
!275 = !DILocation(line: 122, column: 49, scope: !269)
!276 = !DILocation(line: 122, column: 55, scope: !269)
!277 = !DILocation(line: 124, column: 2, scope: !269)
!278 = distinct !DISubprogram(name: "~LockEP", linkageName: "_ZN6LockEPD2Ev", scope: !251, file: !150, line: 125, type: !261, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !260, retainedNodes: !4)
!279 = !DILocalVariable(name: "this", arg: 1, scope: !278, type: !271, flags: DIFlagArtificial | DIFlagObjectPointer)
!280 = !DILocation(line: 0, scope: !278)
!281 = !DILocation(line: 127, column: 19, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !150, line: 126, column: 2)
!283 = !DILocation(line: 127, column: 3, scope: !282)
!284 = !DILocation(line: 128, column: 2, scope: !278)
!285 = distinct !DISubprogram(name: "USBD_Recv", linkageName: "_Z9USBD_RecvjPvj", scope: !150, file: !150, line: 140, type: !286, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!286 = !DISubroutineType(types: !287)
!287 = !{!23, !23, !288, !23}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!289 = !DILocalVariable(name: "ep", arg: 1, scope: !285, file: !150, line: 140, type: !23)
!290 = !DILocation(line: 140, column: 29, scope: !285)
!291 = !DILocalVariable(name: "d", arg: 2, scope: !285, file: !150, line: 140, type: !288)
!292 = !DILocation(line: 140, column: 39, scope: !285)
!293 = !DILocalVariable(name: "len", arg: 3, scope: !285, file: !150, line: 140, type: !23)
!294 = !DILocation(line: 140, column: 51, scope: !285)
!295 = !DILocation(line: 142, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !285, file: !150, line: 142, column: 6)
!297 = !DILocation(line: 142, column: 6, scope: !285)
!298 = !DILocation(line: 143, column: 3, scope: !296)
!299 = !DILocalVariable(name: "lock", scope: !285, file: !150, line: 145, type: !251)
!300 = !DILocation(line: 145, column: 9, scope: !285)
!301 = !DILocation(line: 145, column: 14, scope: !285)
!302 = !DILocalVariable(name: "n", scope: !285, file: !150, line: 146, type: !23)
!303 = !DILocation(line: 146, column: 11, scope: !285)
!304 = !DILocation(line: 146, column: 33, scope: !285)
!305 = !DILocation(line: 146, column: 36, scope: !285)
!306 = !DILocation(line: 146, column: 15, scope: !285)
!307 = !DILocation(line: 147, column: 8, scope: !285)
!308 = !DILocation(line: 147, column: 6, scope: !285)
!309 = !DILocation(line: 148, column: 6, scope: !285)
!310 = !DILocation(line: 148, column: 4, scope: !285)
!311 = !DILocalVariable(name: "dst", scope: !285, file: !150, line: 149, type: !6)
!312 = !DILocation(line: 149, column: 11, scope: !285)
!313 = !DILocation(line: 149, column: 27, scope: !285)
!314 = !DILocation(line: 150, column: 2, scope: !285)
!315 = !DILocation(line: 150, column: 10, scope: !285)
!316 = !DILocation(line: 150, column: 9, scope: !285)
!317 = !DILocation(line: 151, column: 22, scope: !285)
!318 = !DILocation(line: 151, column: 25, scope: !285)
!319 = !DILocation(line: 151, column: 12, scope: !285)
!320 = !DILocation(line: 151, column: 7, scope: !285)
!321 = !DILocation(line: 151, column: 10, scope: !285)
!322 = distinct !{!322, !314, !323}
!323 = !DILocation(line: 151, column: 30, scope: !285)
!324 = !DILocation(line: 152, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !285, file: !150, line: 152, column: 6)
!326 = !DILocation(line: 152, column: 10, scope: !325)
!327 = !DILocation(line: 152, column: 32, scope: !325)
!328 = !DILocation(line: 152, column: 35, scope: !325)
!329 = !DILocation(line: 152, column: 14, scope: !325)
!330 = !DILocation(line: 152, column: 6, scope: !285)
!331 = !DILocation(line: 153, column: 17, scope: !325)
!332 = !DILocation(line: 153, column: 20, scope: !325)
!333 = !DILocation(line: 153, column: 3, scope: !325)
!334 = !DILocation(line: 155, column: 9, scope: !285)
!335 = !DILocation(line: 155, column: 2, scope: !285)
!336 = !DILocation(line: 156, column: 1, scope: !285)
!337 = distinct !DISubprogram(name: "USBD_Recv", linkageName: "_Z9USBD_Recvj", scope: !150, file: !150, line: 159, type: !246, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!338 = !DILocalVariable(name: "ep", arg: 1, scope: !337, file: !150, line: 159, type: !23)
!339 = !DILocation(line: 159, column: 29, scope: !337)
!340 = !DILocalVariable(name: "c", scope: !337, file: !150, line: 161, type: !7)
!341 = !DILocation(line: 161, column: 10, scope: !337)
!342 = !DILocation(line: 162, column: 16, scope: !343)
!343 = distinct !DILexicalBlock(scope: !337, file: !150, line: 162, column: 6)
!344 = !DILocation(line: 162, column: 19, scope: !343)
!345 = !DILocation(line: 162, column: 6, scope: !343)
!346 = !DILocation(line: 162, column: 33, scope: !343)
!347 = !DILocation(line: 162, column: 6, scope: !337)
!348 = !DILocation(line: 163, column: 3, scope: !343)
!349 = !DILocation(line: 165, column: 10, scope: !343)
!350 = !DILocation(line: 165, column: 3, scope: !343)
!351 = !DILocation(line: 166, column: 1, scope: !337)
!352 = distinct !DISubprogram(name: "USBD_Send", linkageName: "_Z9USBD_SendjPKvj", scope: !150, file: !150, line: 183, type: !353, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!353 = !DISubroutineType(types: !354)
!354 = !{!23, !23, !355, !23}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!357 = !DILocalVariable(name: "ep", arg: 1, scope: !352, file: !150, line: 183, type: !23)
!358 = !DILocation(line: 183, column: 29, scope: !352)
!359 = !DILocalVariable(name: "d", arg: 2, scope: !352, file: !150, line: 183, type: !355)
!360 = !DILocation(line: 183, column: 45, scope: !352)
!361 = !DILocalVariable(name: "len", arg: 3, scope: !352, file: !150, line: 183, type: !23)
!362 = !DILocation(line: 183, column: 57, scope: !352)
!363 = !DILocalVariable(name: "n", scope: !352, file: !150, line: 185, type: !23)
!364 = !DILocation(line: 185, column: 14, scope: !352)
!365 = !DILocalVariable(name: "r", scope: !352, file: !150, line: 186, type: !366)
!366 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!367 = !DILocation(line: 186, column: 6, scope: !352)
!368 = !DILocation(line: 186, column: 10, scope: !352)
!369 = !DILocalVariable(name: "data", scope: !352, file: !150, line: 187, type: !12)
!370 = !DILocation(line: 187, column: 17, scope: !352)
!371 = !DILocation(line: 187, column: 40, scope: !352)
!372 = !DILocation(line: 189, column: 10, scope: !373)
!373 = distinct !DILexicalBlock(scope: !352, file: !150, line: 189, column: 9)
!374 = !DILocation(line: 189, column: 9, scope: !352)
!375 = !DILocation(line: 192, column: 3, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !150, line: 190, column: 5)
!377 = !DILocation(line: 195, column: 2, scope: !352)
!378 = !DILocation(line: 195, column: 9, scope: !352)
!379 = !DILocation(line: 197, column: 12, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !150, line: 197, column: 12)
!381 = distinct !DILexicalBlock(scope: !352, file: !150, line: 196, column: 2)
!382 = !DILocation(line: 197, column: 14, scope: !380)
!383 = !DILocation(line: 197, column: 12, scope: !381)
!384 = !DILocation(line: 197, column: 21, scope: !380)
!385 = !DILocation(line: 197, column: 19, scope: !380)
!386 = !DILocation(line: 198, column: 16, scope: !380)
!387 = !DILocation(line: 199, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !381, file: !150, line: 199, column: 7)
!389 = !DILocation(line: 199, column: 11, scope: !388)
!390 = !DILocation(line: 199, column: 9, scope: !388)
!391 = !DILocation(line: 199, column: 7, scope: !381)
!392 = !DILocation(line: 200, column: 8, scope: !388)
!393 = !DILocation(line: 200, column: 6, scope: !388)
!394 = !DILocation(line: 200, column: 4, scope: !388)
!395 = !DILocation(line: 201, column: 10, scope: !381)
!396 = !DILocation(line: 201, column: 7, scope: !381)
!397 = !DILocation(line: 203, column: 12, scope: !381)
!398 = !DILocation(line: 203, column: 15, scope: !381)
!399 = !DILocation(line: 203, column: 22, scope: !381)
!400 = !DILocation(line: 203, column: 28, scope: !381)
!401 = !DILocation(line: 203, column: 3, scope: !381)
!402 = !DILocation(line: 204, column: 11, scope: !381)
!403 = !DILocation(line: 204, column: 8, scope: !381)
!404 = distinct !{!404, !377, !405}
!405 = !DILocation(line: 205, column: 5, scope: !352)
!406 = !DILocation(line: 208, column: 9, scope: !352)
!407 = !DILocation(line: 208, column: 2, scope: !352)
!408 = !DILocation(line: 209, column: 1, scope: !352)
!409 = distinct !DISubprogram(name: "USBD_InitControl", linkageName: "_Z16USBD_InitControli", scope: !150, file: !150, line: 214, type: !410, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !366}
!412 = !DILocalVariable(name: "end", arg: 1, scope: !409, file: !150, line: 214, type: !366)
!413 = !DILocation(line: 214, column: 27, scope: !409)
!414 = !DILocation(line: 216, column: 9, scope: !409)
!415 = !DILocation(line: 217, column: 10, scope: !409)
!416 = !DILocation(line: 217, column: 8, scope: !409)
!417 = !DILocation(line: 218, column: 1, scope: !409)
!418 = distinct !DISubprogram(name: "USBD_SendControl", linkageName: "_Z16USBD_SendControlhPKvj", scope: !150, file: !150, line: 221, type: !419, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!419 = !DISubroutineType(types: !420)
!420 = !{!366, !7, !355, !23}
!421 = !DILocalVariable(name: "flags", arg: 1, scope: !418, file: !150, line: 221, type: !7)
!422 = !DILocation(line: 221, column: 30, scope: !418)
!423 = !DILocalVariable(name: "d", arg: 2, scope: !418, file: !150, line: 221, type: !355)
!424 = !DILocation(line: 221, column: 74, scope: !418)
!425 = !DILocalVariable(name: "len", arg: 3, scope: !418, file: !150, line: 221, type: !23)
!426 = !DILocation(line: 221, column: 86, scope: !418)
!427 = !DILocalVariable(name: "data", scope: !418, file: !150, line: 223, type: !12)
!428 = !DILocation(line: 223, column: 17, scope: !418)
!429 = !DILocation(line: 223, column: 40, scope: !418)
!430 = !DILocalVariable(name: "length", scope: !418, file: !150, line: 224, type: !23)
!431 = !DILocation(line: 224, column: 11, scope: !418)
!432 = !DILocation(line: 224, column: 20, scope: !418)
!433 = !DILocalVariable(name: "sent", scope: !418, file: !150, line: 225, type: !23)
!434 = !DILocation(line: 225, column: 11, scope: !418)
!435 = !DILocalVariable(name: "pos", scope: !418, file: !150, line: 226, type: !23)
!436 = !DILocation(line: 226, column: 11, scope: !418)
!437 = !DILocation(line: 230, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !418, file: !150, line: 230, column: 6)
!439 = !DILocation(line: 230, column: 15, scope: !438)
!440 = !DILocation(line: 230, column: 13, scope: !438)
!441 = !DILocation(line: 230, column: 6, scope: !418)
!442 = !DILocation(line: 232, column: 3, scope: !443)
!443 = distinct !DILexicalBlock(scope: !438, file: !150, line: 231, column: 2)
!444 = !DILocation(line: 232, column: 10, scope: !443)
!445 = !DILocation(line: 232, column: 14, scope: !443)
!446 = !DILocation(line: 234, column: 25, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !150, line: 233, column: 3)
!448 = !DILocation(line: 234, column: 32, scope: !447)
!449 = !DILocation(line: 234, column: 30, scope: !447)
!450 = !DILocation(line: 234, column: 37, scope: !447)
!451 = !DILocation(line: 234, column: 11, scope: !447)
!452 = !DILocation(line: 234, column: 9, scope: !447)
!453 = !DILocation(line: 236, column: 11, scope: !447)
!454 = !DILocation(line: 236, column: 8, scope: !447)
!455 = !DILocation(line: 237, column: 11, scope: !447)
!456 = !DILocation(line: 237, column: 8, scope: !447)
!457 = distinct !{!457, !442, !458}
!458 = !DILocation(line: 238, column: 3, scope: !443)
!459 = !DILocation(line: 239, column: 2, scope: !443)
!460 = !DILocation(line: 241, column: 12, scope: !418)
!461 = !DILocation(line: 241, column: 9, scope: !418)
!462 = !DILocation(line: 243, column: 9, scope: !418)
!463 = !DILocation(line: 243, column: 2, scope: !418)
!464 = distinct !DISubprogram(name: "USBD_RecvControl", linkageName: "_Z16USBD_RecvControlPvj", scope: !150, file: !150, line: 270, type: !465, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!465 = !DISubroutineType(types: !466)
!466 = !{!366, !288, !23}
!467 = !DILocalVariable(name: "d", arg: 1, scope: !464, file: !150, line: 270, type: !288)
!468 = !DILocation(line: 270, column: 28, scope: !464)
!469 = !DILocalVariable(name: "len", arg: 2, scope: !464, file: !150, line: 270, type: !23)
!470 = !DILocation(line: 270, column: 40, scope: !464)
!471 = !DILocation(line: 272, column: 2, scope: !464)
!472 = !DILocation(line: 273, column: 26, scope: !464)
!473 = !DILocation(line: 273, column: 29, scope: !464)
!474 = !DILocation(line: 273, column: 2, scope: !464)
!475 = !DILocation(line: 274, column: 2, scope: !464)
!476 = !DILocation(line: 276, column: 9, scope: !464)
!477 = !DILocation(line: 276, column: 2, scope: !464)
!478 = distinct !DISubprogram(name: "USBD_ClassInterfaceRequest", linkageName: "_Z26USBD_ClassInterfaceRequestR8USBSetup", scope: !150, file: !150, line: 280, type: !479, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!479 = !DISubroutineType(types: !480)
!480 = !{!211, !481}
!481 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "USBSetup", file: !202, line: 120, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 112, size: 64, flags: DIFlagTypePassByValue, elements: !484, identifier: "_ZTS8USBSetup")
!484 = !{!485, !486, !487, !488, !489, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bmRequestType", scope: !483, file: !202, line: 114, baseType: !7, size: 8)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !483, file: !202, line: 115, baseType: !7, size: 8, offset: 8)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wValueL", scope: !483, file: !202, line: 116, baseType: !7, size: 8, offset: 16)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wValueH", scope: !483, file: !202, line: 117, baseType: !7, size: 8, offset: 24)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !483, file: !202, line: 118, baseType: !141, size: 16, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !483, file: !202, line: 119, baseType: !141, size: 16, offset: 48)
!491 = !DILocalVariable(name: "setup", arg: 1, scope: !478, file: !150, line: 280, type: !481)
!492 = !DILocation(line: 280, column: 43, scope: !478)
!493 = !DILocalVariable(name: "i", scope: !478, file: !150, line: 282, type: !7)
!494 = !DILocation(line: 282, column: 10, scope: !478)
!495 = !DILocation(line: 282, column: 14, scope: !478)
!496 = !DILocation(line: 282, column: 20, scope: !478)
!497 = !DILocation(line: 287, column: 27, scope: !498)
!498 = distinct !DILexicalBlock(scope: !478, file: !150, line: 287, column: 6)
!499 = !DILocation(line: 287, column: 24, scope: !498)
!500 = !DILocation(line: 287, column: 6, scope: !478)
!501 = !DILocation(line: 289, column: 20, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !150, line: 288, column: 2)
!503 = !DILocation(line: 289, column: 10, scope: !502)
!504 = !DILocation(line: 289, column: 3, scope: !502)
!505 = !DILocation(line: 294, column: 9, scope: !478)
!506 = !DILocation(line: 294, column: 30, scope: !478)
!507 = !DILocation(line: 294, column: 24, scope: !478)
!508 = !DILocation(line: 294, column: 2, scope: !478)
!509 = !DILocation(line: 298, column: 1, scope: !478)
!510 = distinct !DISubprogram(name: "USBD_SendInterfaces", linkageName: "_Z19USBD_SendInterfacesv", scope: !150, file: !150, line: 300, type: !511, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!511 = !DISubroutineType(types: !512)
!512 = !{!7}
!513 = !DILocalVariable(name: "interfaces", scope: !510, file: !150, line: 302, type: !7)
!514 = !DILocation(line: 302, column: 10, scope: !510)
!515 = !DILocation(line: 305, column: 2, scope: !510)
!516 = !DILocation(line: 309, column: 2, scope: !510)
!517 = !DILocation(line: 309, column: 17, scope: !510)
!518 = !DILocation(line: 313, column: 9, scope: !510)
!519 = !DILocation(line: 313, column: 2, scope: !510)
!520 = distinct !DISubprogram(name: "USBD_SendOtherInterfaces", linkageName: "_Z24USBD_SendOtherInterfacesv", scope: !150, file: !150, line: 316, type: !511, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!521 = !DILocalVariable(name: "interfaces", scope: !520, file: !150, line: 318, type: !7)
!522 = !DILocation(line: 318, column: 10, scope: !520)
!523 = !DILocation(line: 321, column: 2, scope: !520)
!524 = !DILocation(line: 325, column: 2, scope: !520)
!525 = !DILocation(line: 325, column: 17, scope: !520)
!526 = !DILocation(line: 329, column: 9, scope: !520)
!527 = !DILocation(line: 329, column: 2, scope: !520)
!528 = distinct !DISubprogram(name: "USBD_Flush", linkageName: "_Z10USBD_Flushj", scope: !150, file: !150, line: 825, type: !529, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !23}
!531 = !DILocalVariable(name: "ep", arg: 1, scope: !528, file: !150, line: 825, type: !23)
!532 = !DILocation(line: 825, column: 26, scope: !528)
!533 = !DILocation(line: 827, column: 24, scope: !534)
!534 = distinct !DILexicalBlock(scope: !528, file: !150, line: 827, column: 6)
!535 = !DILocation(line: 827, column: 6, scope: !534)
!536 = !DILocation(line: 827, column: 6, scope: !528)
!537 = !DILocation(line: 828, column: 17, scope: !534)
!538 = !DILocation(line: 828, column: 3, scope: !534)
!539 = !DILocation(line: 829, column: 1, scope: !528)
!540 = distinct !DISubprogram(name: "USBD_Connected", linkageName: "_Z14USBD_Connectedv", scope: !150, file: !150, line: 833, type: !541, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!541 = !DISubroutineType(types: !542)
!542 = !{!23}
!543 = !DILocalVariable(name: "f", scope: !540, file: !150, line: 835, type: !7)
!544 = !DILocation(line: 835, column: 10, scope: !540)
!545 = !DILocation(line: 835, column: 14, scope: !540)
!546 = !DILocation(line: 837, column: 2, scope: !540)
!547 = !DILocation(line: 839, column: 9, scope: !540)
!548 = !DILocation(line: 839, column: 14, scope: !540)
!549 = !DILocation(line: 839, column: 11, scope: !540)
!550 = !DILocation(line: 839, column: 2, scope: !540)
!551 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !150, file: !150, line: 846, type: !552, scopeLine: 846, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!552 = !DISubroutineType(types: !553)
!553 = !{null}
!554 = !DILocation(line: 846, column: 12, scope: !551)
!555 = distinct !DISubprogram(name: "USBDevice_", linkageName: "_ZN10USBDevice_C2Ev", scope: !201, file: !150, line: 848, type: !205, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !204, retainedNodes: !4)
!556 = !DILocalVariable(name: "this", arg: 1, scope: !555, type: !557, flags: DIFlagArtificial | DIFlagObjectPointer)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!558 = !DILocation(line: 0, scope: !555)
!559 = !DILocation(line: 850, column: 2, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !150, line: 849, column: 1)
!561 = !DILocation(line: 852, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !560, file: !150, line: 852, column: 6)
!563 = !DILocation(line: 852, column: 17, scope: !562)
!564 = !DILocation(line: 852, column: 6, scope: !560)
!565 = !DILocation(line: 854, column: 18, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !150, line: 853, column: 2)
!567 = !DILocation(line: 855, column: 2, scope: !566)
!568 = !DILocation(line: 856, column: 1, scope: !555)
!569 = distinct !DISubprogram(name: "USB_ISR", linkageName: "_ZL7USB_ISRv", scope: !150, file: !150, line: 600, type: !552, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!570 = !DILocation(line: 605, column: 9, scope: !571)
!571 = distinct !DILexicalBlock(scope: !569, file: !150, line: 605, column: 9)
!572 = !DILocation(line: 605, column: 9, scope: !569)
!573 = !DILocation(line: 610, column: 3, scope: !574)
!574 = distinct !DILexicalBlock(scope: !571, file: !150, line: 606, column: 5)
!575 = !DILocation(line: 611, column: 3, scope: !574)
!576 = !DILocation(line: 614, column: 9, scope: !574)
!577 = !DILocation(line: 615, column: 3, scope: !574)
!578 = !DILocation(line: 616, column: 3, scope: !574)
!579 = !DILocation(line: 618, column: 27, scope: !574)
!580 = !DILocation(line: 619, column: 3, scope: !574)
!581 = !DILocation(line: 620, column: 5, scope: !574)
!582 = !DILocation(line: 623, column: 8, scope: !583)
!583 = distinct !DILexicalBlock(scope: !569, file: !150, line: 623, column: 8)
!584 = !DILocation(line: 623, column: 8, scope: !569)
!585 = !DILocation(line: 625, column: 3, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !150, line: 624, column: 2)
!587 = !DILocation(line: 628, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !586, file: !150, line: 628, column: 7)
!589 = !DILocation(line: 628, column: 7, scope: !586)
!590 = !DILocation(line: 629, column: 14, scope: !588)
!591 = !DILocation(line: 629, column: 4, scope: !588)
!592 = !DILocation(line: 630, column: 2, scope: !586)
!593 = !DILocation(line: 632, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !569, file: !150, line: 632, column: 6)
!595 = !DILocation(line: 632, column: 6, scope: !569)
!596 = !DILocation(line: 634, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !150, line: 633, column: 2)
!598 = !DILocation(line: 636, column: 2, scope: !597)
!599 = !DILocation(line: 640, column: 6, scope: !600)
!600 = distinct !DILexicalBlock(scope: !569, file: !150, line: 640, column: 6)
!601 = !DILocation(line: 640, column: 6, scope: !569)
!602 = !DILocation(line: 642, column: 8, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !150, line: 642, column: 7)
!604 = distinct !DILexicalBlock(scope: !600, file: !150, line: 641, column: 2)
!605 = !DILocation(line: 642, column: 7, scope: !604)
!606 = !DILocation(line: 644, column: 4, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !150, line: 643, column: 3)
!608 = !DILocalVariable(name: "setup", scope: !604, file: !150, line: 647, type: !482)
!609 = !DILocation(line: 647, column: 12, scope: !604)
!610 = !DILocation(line: 648, column: 17, scope: !604)
!611 = !DILocation(line: 648, column: 3, scope: !604)
!612 = !DILocation(line: 649, column: 3, scope: !604)
!613 = !DILocalVariable(name: "requestType", scope: !604, file: !150, line: 651, type: !7)
!614 = !DILocation(line: 651, column: 11, scope: !604)
!615 = !DILocation(line: 651, column: 31, scope: !604)
!616 = !DILocation(line: 652, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !604, file: !150, line: 652, column: 7)
!618 = !DILocation(line: 652, column: 19, scope: !617)
!619 = !DILocation(line: 652, column: 7, scope: !604)
!620 = !DILocation(line: 655, column: 4, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !150, line: 653, column: 3)
!622 = !DILocation(line: 656, column: 3, scope: !621)
!623 = !DILocation(line: 660, column: 4, scope: !624)
!624 = distinct !DILexicalBlock(scope: !617, file: !150, line: 658, column: 3)
!625 = !DILocalVariable(name: "ok", scope: !604, file: !150, line: 663, type: !211)
!626 = !DILocation(line: 663, column: 8, scope: !604)
!627 = !DILocation(line: 664, column: 28, scope: !628)
!628 = distinct !DILexicalBlock(scope: !604, file: !150, line: 664, column: 7)
!629 = !DILocation(line: 664, column: 40, scope: !628)
!630 = !DILocation(line: 664, column: 24, scope: !628)
!631 = !DILocation(line: 664, column: 7, scope: !604)
!632 = !DILocalVariable(name: "r", scope: !633, file: !150, line: 667, type: !7)
!633 = distinct !DILexicalBlock(scope: !628, file: !150, line: 665, column: 3)
!634 = !DILocation(line: 667, column: 12, scope: !633)
!635 = !DILocation(line: 667, column: 22, scope: !633)
!636 = !DILocation(line: 668, column: 22, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !150, line: 668, column: 8)
!638 = !DILocation(line: 668, column: 19, scope: !637)
!639 = !DILocation(line: 668, column: 8, scope: !633)
!640 = !DILocation(line: 670, column: 27, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !150, line: 670, column: 21)
!642 = distinct !DILexicalBlock(scope: !637, file: !150, line: 669, column: 4)
!643 = !DILocation(line: 670, column: 21, scope: !641)
!644 = !DILocation(line: 670, column: 41, scope: !641)
!645 = !DILocation(line: 670, column: 21, scope: !642)
!646 = !DILocation(line: 678, column: 21, scope: !647)
!647 = distinct !DILexicalBlock(scope: !641, file: !150, line: 671, column: 17)
!648 = !DILocation(line: 679, column: 9, scope: !647)
!649 = !DILocation(line: 680, column: 17, scope: !647)
!650 = !DILocation(line: 686, column: 25, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !150, line: 686, column: 25)
!652 = distinct !DILexicalBlock(scope: !641, file: !150, line: 683, column: 17)
!653 = !DILocation(line: 686, column: 40, scope: !651)
!654 = !DILocation(line: 686, column: 25, scope: !652)
!655 = !DILocation(line: 687, column: 9, scope: !651)
!656 = !DILocation(line: 689, column: 9, scope: !651)
!657 = !DILocation(line: 690, column: 9, scope: !652)
!658 = !DILocation(line: 692, column: 4, scope: !642)
!659 = !DILocation(line: 693, column: 30, scope: !660)
!660 = distinct !DILexicalBlock(scope: !637, file: !150, line: 693, column: 13)
!661 = !DILocation(line: 693, column: 27, scope: !660)
!662 = !DILocation(line: 693, column: 13, scope: !637)
!663 = !DILocation(line: 696, column: 27, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !150, line: 696, column: 21)
!665 = distinct !DILexicalBlock(scope: !660, file: !150, line: 694, column: 4)
!666 = !DILocation(line: 696, column: 21, scope: !664)
!667 = !DILocation(line: 696, column: 35, scope: !664)
!668 = !DILocation(line: 696, column: 21, scope: !665)
!669 = !DILocation(line: 699, column: 25, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !150, line: 699, column: 25)
!671 = distinct !DILexicalBlock(scope: !664, file: !150, line: 697, column: 17)
!672 = !DILocation(line: 699, column: 47, scope: !670)
!673 = !DILocation(line: 699, column: 25, scope: !671)
!674 = !DILocation(line: 700, column: 9, scope: !670)
!675 = !DILocation(line: 702, column: 9, scope: !670)
!676 = !DILocation(line: 703, column: 21, scope: !671)
!677 = !DILocation(line: 704, column: 17, scope: !671)
!678 = !DILocation(line: 707, column: 36, scope: !679)
!679 = distinct !DILexicalBlock(scope: !664, file: !150, line: 706, column: 17)
!680 = !DILocation(line: 708, column: 9, scope: !679)
!681 = !DILocation(line: 709, column: 9, scope: !679)
!682 = !DILocation(line: 712, column: 5, scope: !665)
!683 = !DILocation(line: 713, column: 28, scope: !684)
!684 = distinct !DILexicalBlock(scope: !660, file: !150, line: 713, column: 13)
!685 = !DILocation(line: 713, column: 25, scope: !684)
!686 = !DILocation(line: 713, column: 13, scope: !660)
!687 = !DILocation(line: 716, column: 27, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !150, line: 716, column: 21)
!689 = distinct !DILexicalBlock(scope: !684, file: !150, line: 714, column: 4)
!690 = !DILocation(line: 716, column: 21, scope: !688)
!691 = !DILocation(line: 716, column: 35, scope: !688)
!692 = !DILocation(line: 716, column: 21, scope: !689)
!693 = !DILocation(line: 719, column: 43, scope: !694)
!694 = distinct !DILexicalBlock(scope: !688, file: !150, line: 717, column: 17)
!695 = !DILocation(line: 720, column: 9, scope: !694)
!696 = !DILocation(line: 721, column: 17, scope: !694)
!697 = !DILocation(line: 722, column: 27, scope: !698)
!698 = distinct !DILexicalBlock(scope: !689, file: !150, line: 722, column: 21)
!699 = !DILocation(line: 722, column: 21, scope: !698)
!700 = !DILocation(line: 722, column: 35, scope: !698)
!701 = !DILocation(line: 722, column: 21, scope: !689)
!702 = !DILocation(line: 725, column: 36, scope: !703)
!703 = distinct !DILexicalBlock(scope: !698, file: !150, line: 723, column: 17)
!704 = !DILocation(line: 727, column: 9, scope: !703)
!705 = !DILocation(line: 728, column: 17, scope: !703)
!706 = !DILocation(line: 729, column: 27, scope: !707)
!707 = distinct !DILexicalBlock(scope: !689, file: !150, line: 729, column: 21)
!708 = !DILocation(line: 729, column: 21, scope: !707)
!709 = !DILocation(line: 729, column: 35, scope: !707)
!710 = !DILocation(line: 729, column: 21, scope: !689)
!711 = !DILocation(line: 732, column: 32, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !150, line: 732, column: 25)
!713 = distinct !DILexicalBlock(scope: !707, file: !150, line: 730, column: 17)
!714 = !DILocation(line: 732, column: 26, scope: !712)
!715 = !DILocation(line: 732, column: 46, scope: !712)
!716 = !DILocation(line: 732, column: 81, scope: !712)
!717 = !DILocation(line: 733, column: 33, scope: !712)
!718 = !DILocation(line: 733, column: 27, scope: !712)
!719 = !DILocation(line: 733, column: 40, scope: !712)
!720 = !DILocation(line: 733, column: 50, scope: !712)
!721 = !DILocation(line: 732, column: 25, scope: !713)
!722 = !DILocation(line: 738, column: 47, scope: !723)
!723 = distinct !DILexicalBlock(scope: !712, file: !150, line: 734, column: 21)
!724 = !DILocation(line: 739, column: 48, scope: !723)
!725 = !DILocation(line: 741, column: 51, scope: !723)
!726 = !DILocation(line: 741, column: 45, scope: !723)
!727 = !DILocation(line: 741, column: 58, scope: !723)
!728 = !DILocation(line: 741, column: 67, scope: !723)
!729 = !DILocation(line: 741, column: 44, scope: !723)
!730 = !DILocation(line: 741, column: 25, scope: !723)
!731 = !DILocation(line: 742, column: 21, scope: !723)
!732 = !DILocation(line: 743, column: 17, scope: !713)
!733 = !DILocation(line: 744, column: 4, scope: !689)
!734 = !DILocation(line: 745, column: 28, scope: !735)
!735 = distinct !DILexicalBlock(scope: !684, file: !150, line: 745, column: 13)
!736 = !DILocation(line: 745, column: 25, scope: !735)
!737 = !DILocation(line: 745, column: 13, scope: !684)
!738 = !DILocation(line: 748, column: 5, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !150, line: 746, column: 4)
!740 = !DILocation(line: 749, column: 26, scope: !739)
!741 = !DILocation(line: 749, column: 20, scope: !739)
!742 = !DILocation(line: 749, column: 5, scope: !739)
!743 = !DILocation(line: 750, column: 4, scope: !739)
!744 = !DILocation(line: 751, column: 31, scope: !745)
!745 = distinct !DILexicalBlock(scope: !735, file: !150, line: 751, column: 13)
!746 = !DILocation(line: 751, column: 28, scope: !745)
!747 = !DILocation(line: 751, column: 13, scope: !735)
!748 = !DILocation(line: 754, column: 10, scope: !749)
!749 = distinct !DILexicalBlock(scope: !745, file: !150, line: 752, column: 4)
!750 = !DILocation(line: 754, column: 8, scope: !749)
!751 = !DILocation(line: 755, column: 4, scope: !749)
!752 = !DILocation(line: 756, column: 31, scope: !753)
!753 = distinct !DILexicalBlock(scope: !745, file: !150, line: 756, column: 13)
!754 = !DILocation(line: 756, column: 28, scope: !753)
!755 = !DILocation(line: 756, column: 13, scope: !745)
!756 = !DILocation(line: 759, column: 8, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !150, line: 757, column: 4)
!758 = !DILocation(line: 760, column: 4, scope: !757)
!759 = !DILocation(line: 761, column: 34, scope: !760)
!760 = distinct !DILexicalBlock(scope: !753, file: !150, line: 761, column: 13)
!761 = !DILocation(line: 761, column: 31, scope: !760)
!762 = !DILocation(line: 761, column: 13, scope: !753)
!763 = !DILocation(line: 764, column: 20, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !150, line: 762, column: 4)
!765 = !DILocation(line: 764, column: 5, scope: !764)
!766 = !DILocation(line: 765, column: 4, scope: !764)
!767 = !DILocation(line: 766, column: 34, scope: !768)
!768 = distinct !DILexicalBlock(scope: !760, file: !150, line: 766, column: 13)
!769 = !DILocation(line: 766, column: 31, scope: !768)
!770 = !DILocation(line: 766, column: 13, scope: !760)
!771 = !DILocation(line: 768, column: 28, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !150, line: 768, column: 9)
!773 = distinct !DILexicalBlock(scope: !768, file: !150, line: 767, column: 4)
!774 = !DILocation(line: 768, column: 40, scope: !772)
!775 = !DILocation(line: 768, column: 24, scope: !772)
!776 = !DILocation(line: 768, column: 9, scope: !773)
!777 = !DILocalVariable(name: "num_endpoints", scope: !778, file: !150, line: 772, type: !23)
!778 = distinct !DILexicalBlock(scope: !772, file: !150, line: 769, column: 5)
!779 = !DILocation(line: 772, column: 15, scope: !778)
!780 = !DILocation(line: 773, column: 6, scope: !778)
!781 = !DILocation(line: 773, column: 23, scope: !778)
!782 = !DILocation(line: 773, column: 13, scope: !778)
!783 = !DILocation(line: 773, column: 38, scope: !778)
!784 = !DILocation(line: 774, column: 20, scope: !785)
!785 = distinct !DILexicalBlock(scope: !778, file: !150, line: 773, column: 44)
!786 = distinct !{!786, !780, !787}
!787 = !DILocation(line: 775, column: 6, scope: !778)
!788 = !DILocation(line: 776, column: 35, scope: !778)
!789 = !DILocation(line: 776, column: 6, scope: !778)
!790 = !DILocation(line: 777, column: 32, scope: !778)
!791 = !DILocation(line: 777, column: 26, scope: !778)
!792 = !DILocation(line: 777, column: 24, scope: !778)
!793 = !DILocation(line: 781, column: 6, scope: !778)
!794 = !DILocation(line: 782, column: 6, scope: !778)
!795 = !DILocation(line: 784, column: 5, scope: !778)
!796 = !DILocation(line: 788, column: 9, scope: !797)
!797 = distinct !DILexicalBlock(scope: !772, file: !150, line: 786, column: 5)
!798 = !DILocation(line: 790, column: 4, scope: !773)
!799 = !DILocation(line: 791, column: 30, scope: !800)
!800 = distinct !DILexicalBlock(scope: !768, file: !150, line: 791, column: 13)
!801 = !DILocation(line: 791, column: 27, scope: !800)
!802 = !DILocation(line: 791, column: 13, scope: !768)
!803 = !DILocation(line: 794, column: 20, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !150, line: 792, column: 4)
!805 = !DILocation(line: 794, column: 5, scope: !804)
!806 = !DILocation(line: 795, column: 4, scope: !804)
!807 = !DILocation(line: 796, column: 30, scope: !808)
!808 = distinct !DILexicalBlock(scope: !800, file: !150, line: 796, column: 13)
!809 = !DILocation(line: 796, column: 27, scope: !808)
!810 = !DILocation(line: 796, column: 13, scope: !800)
!811 = !DILocation(line: 798, column: 42, scope: !812)
!812 = distinct !DILexicalBlock(scope: !808, file: !150, line: 797, column: 4)
!813 = !DILocation(line: 798, column: 36, scope: !812)
!814 = !DILocation(line: 798, column: 34, scope: !812)
!815 = !DILocation(line: 800, column: 4, scope: !812)
!816 = !DILocation(line: 801, column: 3, scope: !633)
!817 = !DILocation(line: 806, column: 4, scope: !818)
!818 = distinct !DILexicalBlock(scope: !628, file: !150, line: 803, column: 3)
!819 = !DILocation(line: 808, column: 27, scope: !818)
!820 = !DILocation(line: 808, column: 21, scope: !818)
!821 = !DILocation(line: 808, column: 4, scope: !818)
!822 = !DILocation(line: 809, column: 9, scope: !818)
!823 = !DILocation(line: 809, column: 7, scope: !818)
!824 = !DILocation(line: 812, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !604, file: !150, line: 812, column: 7)
!826 = !DILocation(line: 812, column: 7, scope: !604)
!827 = !DILocation(line: 815, column: 4, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !150, line: 813, column: 3)
!829 = !DILocation(line: 816, column: 3, scope: !828)
!830 = !DILocation(line: 820, column: 4, scope: !831)
!831 = distinct !DILexicalBlock(scope: !825, file: !150, line: 818, column: 3)
!832 = !DILocation(line: 822, column: 2, scope: !604)
!833 = !DILocation(line: 823, column: 1, scope: !569)
!834 = distinct !DISubprogram(name: "attach", linkageName: "_ZN10USBDevice_6attachEv", scope: !201, file: !150, line: 858, type: !209, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !212, retainedNodes: !4)
!835 = !DILocalVariable(name: "this", arg: 1, scope: !834, type: !557, flags: DIFlagArtificial | DIFlagObjectPointer)
!836 = !DILocation(line: 0, scope: !834)
!837 = !DILocation(line: 860, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !150, line: 860, column: 7)
!839 = !DILocation(line: 860, column: 23, scope: !838)
!840 = !DILocation(line: 860, column: 7, scope: !834)
!841 = !DILocation(line: 862, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !838, file: !150, line: 861, column: 3)
!843 = !DILocation(line: 863, column: 20, scope: !842)
!844 = !DILocation(line: 864, column: 2, scope: !842)
!845 = !DILocation(line: 868, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !838, file: !150, line: 867, column: 3)
!847 = !DILocation(line: 870, column: 1, scope: !834)
!848 = distinct !DISubprogram(name: "detach", linkageName: "_ZN10USBDevice_6detachEv", scope: !201, file: !150, line: 872, type: !209, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !213, retainedNodes: !4)
!849 = !DILocalVariable(name: "this", arg: 1, scope: !848, type: !557, flags: DIFlagArtificial | DIFlagObjectPointer)
!850 = !DILocation(line: 0, scope: !848)
!851 = !DILocation(line: 874, column: 6, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !150, line: 874, column: 6)
!853 = !DILocation(line: 874, column: 22, scope: !852)
!854 = !DILocation(line: 874, column: 6, scope: !848)
!855 = !DILocation(line: 876, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !150, line: 875, column: 2)
!857 = !DILocation(line: 877, column: 3, scope: !856)
!858 = !DILocation(line: 881, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !150, line: 880, column: 2)
!860 = !DILocation(line: 883, column: 1, scope: !848)
!861 = distinct !DISubprogram(name: "configured", linkageName: "_ZN10USBDevice_10configuredEv", scope: !201, file: !150, line: 887, type: !209, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !208, retainedNodes: !4)
!862 = !DILocalVariable(name: "this", arg: 1, scope: !861, type: !557, flags: DIFlagArtificial | DIFlagObjectPointer)
!863 = !DILocation(line: 0, scope: !861)
!864 = !DILocation(line: 889, column: 9, scope: !861)
!865 = !DILocation(line: 889, column: 2, scope: !861)
!866 = distinct !DISubprogram(name: "poll", linkageName: "_ZN10USBDevice_4pollEv", scope: !201, file: !150, line: 892, type: !205, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !214, retainedNodes: !4)
!867 = !DILocalVariable(name: "this", arg: 1, scope: !866, type: !557, flags: DIFlagArtificial | DIFlagObjectPointer)
!868 = !DILocation(line: 0, scope: !866)
!869 = !DILocation(line: 894, column: 1, scope: !866)
!870 = distinct !DISubprogram(name: "cpu_irq_save", linkageName: "_ZL12cpu_irq_savev", scope: !255, file: !255, line: 120, type: !871, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!871 = !DISubroutineType(types: !872)
!872 = !{!254}
!873 = !DILocalVariable(name: "flags", scope: !870, file: !255, line: 122, type: !254)
!874 = !DILocation(line: 122, column: 13, scope: !870)
!875 = !DILocation(line: 122, column: 21, scope: !870)
!876 = !DILocation(line: 123, column: 2, scope: !870)
!877 = !DILocation(line: 321, column: 3, scope: !878, inlinedAt: !880)
!878 = distinct !DISubprogram(name: "__disable_irq", linkageName: "_ZL13__disable_irqv", scope: !879, file: !879, line: 319, type: !552, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!879 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cmFunc.h", directory: "/home/aaa")
!880 = distinct !DILocation(line: 123, column: 2, scope: !881)
!881 = distinct !DILexicalBlock(scope: !870, file: !255, line: 123, column: 2)
!882 = !{i32 388914}
!883 = !DILocation(line: 337, column: 3, scope: !884, inlinedAt: !886)
!884 = distinct !DISubprogram(name: "__DMB", linkageName: "_ZL5__DMBv", scope: !885, file: !885, line: 335, type: !552, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!885 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cmInstr.h", directory: "/home/aaa")
!886 = distinct !DILocation(line: 123, column: 2, scope: !881)
!887 = !{i32 374096}
!888 = !DILocation(line: 123, column: 2, scope: !881)
!889 = !DILocation(line: 124, column: 9, scope: !870)
!890 = !DILocation(line: 124, column: 2, scope: !870)
!891 = distinct !DISubprogram(name: "cpu_irq_restore", linkageName: "_ZL15cpu_irq_restorej", scope: !255, file: !255, line: 132, type: !892, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !254}
!894 = !DILocalVariable(name: "flags", arg: 1, scope: !891, file: !255, line: 132, type: !254)
!895 = !DILocation(line: 132, column: 47, scope: !891)
!896 = !DILocation(line: 134, column: 31, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !255, line: 134, column: 6)
!898 = !DILocation(line: 134, column: 6, scope: !897)
!899 = !DILocation(line: 134, column: 6, scope: !891)
!900 = !DILocation(line: 135, column: 3, scope: !897)
!901 = !DILocation(line: 135, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !255, line: 135, column: 3)
!903 = !DILocation(line: 337, column: 3, scope: !884, inlinedAt: !904)
!904 = distinct !DILocation(line: 135, column: 3, scope: !902)
!905 = !DILocation(line: 310, column: 3, scope: !906, inlinedAt: !907)
!906 = distinct !DISubprogram(name: "__enable_irq", linkageName: "_ZL12__enable_irqv", scope: !879, file: !879, line: 308, type: !552, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!907 = distinct !DILocation(line: 135, column: 3, scope: !902)
!908 = !{i32 388644}
!909 = !DILocation(line: 136, column: 1, scope: !891)
!910 = distinct !DISubprogram(name: "cpu_irq_is_enabled_flags", linkageName: "_ZL24cpu_irq_is_enabled_flagsj", scope: !255, file: !255, line: 127, type: !911, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!911 = !DISubroutineType(types: !912)
!912 = !{!366, !254}
!913 = !DILocalVariable(name: "flags", arg: 1, scope: !910, file: !255, line: 127, type: !254)
!914 = !DILocation(line: 127, column: 55, scope: !910)
!915 = !DILocation(line: 129, column: 10, scope: !910)
!916 = !DILocation(line: 129, column: 2, scope: !910)
!917 = distinct !DISubprogram(name: "Test_Mode_Support", linkageName: "_ZL17Test_Mode_Supporth", scope: !150, file: !150, line: 489, type: !918, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !7}
!920 = !DILocalVariable(name: "wIndex", arg: 1, scope: !917, file: !150, line: 489, type: !7)
!921 = !DILocation(line: 489, column: 40, scope: !917)
!922 = !DILocalVariable(name: "i", scope: !917, file: !150, line: 491, type: !7)
!923 = !DILocation(line: 491, column: 13, scope: !917)
!924 = !DILocalVariable(name: "ptr_dest", scope: !917, file: !150, line: 492, type: !6)
!925 = !DILocation(line: 492, column: 11, scope: !917)
!926 = !DILocation(line: 494, column: 10, scope: !917)
!927 = !DILocation(line: 494, column: 2, scope: !917)
!928 = !DILocation(line: 510, column: 4, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !150, line: 495, column: 2)
!930 = !DILocation(line: 512, column: 50, scope: !929)
!931 = !DILocation(line: 513, column: 50, scope: !929)
!932 = !DILocation(line: 516, column: 32, scope: !929)
!933 = !DILocation(line: 521, column: 32, scope: !929)
!934 = !DILocation(line: 522, column: 4, scope: !929)
!935 = !DILocation(line: 522, column: 11, scope: !929)
!936 = !DILocation(line: 522, column: 38, scope: !929)
!937 = !DILocation(line: 522, column: 62, scope: !929)
!938 = distinct !{!938, !934, !939}
!939 = !DILocation(line: 522, column: 68, scope: !929)
!940 = !DILocation(line: 523, column: 26, scope: !929)
!941 = !DILocation(line: 525, column: 10, scope: !942)
!942 = distinct !DILexicalBlock(scope: !929, file: !150, line: 525, column: 4)
!943 = !DILocation(line: 525, column: 9, scope: !942)
!944 = !DILocation(line: 525, column: 14, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !150, line: 525, column: 4)
!946 = !DILocation(line: 525, column: 15, scope: !945)
!947 = !DILocation(line: 525, column: 4, scope: !942)
!948 = !DILocation(line: 527, column: 38, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !150, line: 526, column: 4)
!950 = !DILocation(line: 527, column: 19, scope: !949)
!951 = !DILocation(line: 527, column: 5, scope: !949)
!952 = !DILocation(line: 527, column: 14, scope: !949)
!953 = !DILocation(line: 527, column: 17, scope: !949)
!954 = !DILocation(line: 528, column: 4, scope: !949)
!955 = !DILocation(line: 525, column: 45, scope: !945)
!956 = !DILocation(line: 525, column: 4, scope: !945)
!957 = distinct !{!957, !947, !958}
!958 = !DILocation(line: 528, column: 4, scope: !942)
!959 = !DILocation(line: 530, column: 27, scope: !929)
!960 = !DILocation(line: 532, column: 32, scope: !929)
!961 = !DILocation(line: 533, column: 32, scope: !929)
!962 = !DILocation(line: 534, column: 4, scope: !929)
!963 = !DILocation(line: 534, column: 4, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !150, line: 534, column: 4)
!965 = distinct !DILexicalBlock(scope: !929, file: !150, line: 534, column: 4)
!966 = distinct !{!966, !967, !968}
!967 = !DILocation(line: 534, column: 4, scope: !965)
!968 = !DILocation(line: 534, column: 11, scope: !965)
!969 = !DILocation(line: 543, column: 4, scope: !929)
!970 = !DILocation(line: 544, column: 27, scope: !929)
!971 = !DILocation(line: 545, column: 4, scope: !929)
!972 = !DILocation(line: 545, column: 4, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !150, line: 545, column: 4)
!974 = distinct !DILexicalBlock(scope: !929, file: !150, line: 545, column: 4)
!975 = distinct !{!975, !976, !977}
!976 = !DILocation(line: 545, column: 4, scope: !974)
!977 = !DILocation(line: 545, column: 11, scope: !974)
!978 = !DILocation(line: 554, column: 4, scope: !929)
!979 = !DILocation(line: 555, column: 27, scope: !929)
!980 = !DILocation(line: 556, column: 4, scope: !929)
!981 = !DILocation(line: 556, column: 4, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !150, line: 556, column: 4)
!983 = distinct !DILexicalBlock(scope: !929, file: !150, line: 556, column: 4)
!984 = distinct !{!984, !985, !986}
!985 = !DILocation(line: 556, column: 4, scope: !983)
!986 = !DILocation(line: 556, column: 11, scope: !983)
!987 = !DILocation(line: 571, column: 4, scope: !929)
!988 = !DILocation(line: 572, column: 26, scope: !929)
!989 = !DILocation(line: 592, column: 4, scope: !929)
!990 = !DILocation(line: 592, column: 4, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !150, line: 592, column: 4)
!992 = distinct !DILexicalBlock(scope: !929, file: !150, line: 592, column: 4)
!993 = distinct !{!993, !994, !995}
!994 = !DILocation(line: 592, column: 4, scope: !992)
!995 = !DILocation(line: 592, column: 11, scope: !992)
!996 = !DILocation(line: 595, column: 1, scope: !917)
!997 = distinct !DISubprogram(name: "USBD_SendDescriptor", linkageName: "_ZL19USBD_SendDescriptorR8USBSetup", scope: !150, file: !150, line: 381, type: !479, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!998 = !DILocalVariable(name: "setup", arg: 1, scope: !997, file: !150, line: 381, type: !481)
!999 = !DILocation(line: 381, column: 43, scope: !997)
!1000 = !DILocalVariable(name: "t", scope: !997, file: !150, line: 383, type: !7)
!1001 = !DILocation(line: 383, column: 10, scope: !997)
!1002 = !DILocation(line: 383, column: 14, scope: !997)
!1003 = !DILocation(line: 383, column: 20, scope: !997)
!1004 = !DILocalVariable(name: "desc_length", scope: !997, file: !150, line: 384, type: !7)
!1005 = !DILocation(line: 384, column: 10, scope: !997)
!1006 = !DILocalVariable(name: "ret", scope: !997, file: !150, line: 385, type: !366)
!1007 = !DILocation(line: 385, column: 6, scope: !997)
!1008 = !DILocalVariable(name: "desc_addr", scope: !997, file: !150, line: 386, type: !12)
!1009 = !DILocation(line: 386, column: 17, scope: !997)
!1010 = !DILocation(line: 388, column: 43, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !997, file: !150, line: 388, column: 6)
!1012 = !DILocation(line: 388, column: 40, scope: !1011)
!1013 = !DILocation(line: 388, column: 6, scope: !997)
!1014 = !DILocation(line: 391, column: 33, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !150, line: 389, column: 2)
!1016 = !DILocation(line: 391, column: 39, scope: !1015)
!1017 = !DILocation(line: 391, column: 10, scope: !1015)
!1018 = !DILocation(line: 391, column: 3, scope: !1015)
!1019 = !DILocation(line: 394, column: 19, scope: !997)
!1020 = !DILocation(line: 394, column: 25, scope: !997)
!1021 = !DILocation(line: 394, column: 2, scope: !997)
!1022 = !DILocation(line: 397, column: 8, scope: !997)
!1023 = !DILocation(line: 397, column: 37, scope: !997)
!1024 = !DILocation(line: 397, column: 23, scope: !997)
!1025 = !DILocation(line: 397, column: 6, scope: !997)
!1026 = !DILocation(line: 398, column: 6, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !997, file: !150, line: 398, column: 6)
!1028 = !DILocation(line: 398, column: 10, scope: !1027)
!1029 = !DILocation(line: 398, column: 6, scope: !997)
!1030 = !DILocation(line: 399, column: 11, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !150, line: 398, column: 16)
!1032 = !DILocation(line: 399, column: 15, scope: !1031)
!1033 = !DILocation(line: 399, column: 10, scope: !1031)
!1034 = !DILocation(line: 399, column: 3, scope: !1031)
!1035 = !DILocation(line: 403, column: 36, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !997, file: !150, line: 403, column: 6)
!1037 = !DILocation(line: 403, column: 33, scope: !1036)
!1038 = !DILocation(line: 403, column: 6, scope: !997)
!1039 = !DILocation(line: 406, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !150, line: 406, column: 7)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !150, line: 404, column: 2)
!1042 = !DILocation(line: 406, column: 13, scope: !1040)
!1043 = !DILocation(line: 406, column: 21, scope: !1040)
!1044 = !DILocation(line: 406, column: 7, scope: !1041)
!1045 = !DILocation(line: 408, column: 18, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1040, file: !150, line: 407, column: 3)
!1047 = !DILocation(line: 409, column: 3, scope: !1046)
!1048 = !DILocation(line: 410, column: 15, scope: !1041)
!1049 = !DILocation(line: 410, column: 13, scope: !1041)
!1050 = !DILocation(line: 411, column: 14, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1041, file: !150, line: 411, column: 13)
!1052 = !DILocation(line: 411, column: 13, scope: !1051)
!1053 = !DILocation(line: 411, column: 26, scope: !1051)
!1054 = !DILocation(line: 411, column: 32, scope: !1051)
!1055 = !DILocation(line: 411, column: 24, scope: !1051)
!1056 = !DILocation(line: 411, column: 13, scope: !1041)
!1057 = !DILocation(line: 412, column: 27, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1051, file: !150, line: 411, column: 42)
!1059 = !DILocation(line: 412, column: 33, scope: !1058)
!1060 = !DILocation(line: 412, column: 25, scope: !1058)
!1061 = !DILocation(line: 413, column: 9, scope: !1058)
!1062 = !DILocation(line: 414, column: 2, scope: !1041)
!1063 = !DILocation(line: 415, column: 41, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1036, file: !150, line: 415, column: 11)
!1065 = !DILocation(line: 415, column: 38, scope: !1064)
!1066 = !DILocation(line: 415, column: 11, scope: !1036)
!1067 = !DILocation(line: 418, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !150, line: 418, column: 7)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !150, line: 416, column: 2)
!1070 = !DILocation(line: 418, column: 13, scope: !1068)
!1071 = !DILocation(line: 418, column: 21, scope: !1068)
!1072 = !DILocation(line: 418, column: 7, scope: !1069)
!1073 = !DILocation(line: 419, column: 14, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1068, file: !150, line: 418, column: 27)
!1075 = !DILocation(line: 420, column: 3, scope: !1074)
!1076 = !DILocation(line: 421, column: 12, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1068, file: !150, line: 421, column: 12)
!1078 = !DILocation(line: 421, column: 18, scope: !1077)
!1079 = !DILocation(line: 421, column: 26, scope: !1077)
!1080 = !DILocation(line: 421, column: 12, scope: !1068)
!1081 = !DILocation(line: 422, column: 52, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !150, line: 421, column: 39)
!1083 = !DILocation(line: 422, column: 58, scope: !1082)
!1084 = !DILocation(line: 422, column: 11, scope: !1082)
!1085 = !DILocation(line: 422, column: 4, scope: !1082)
!1086 = !DILocation(line: 424, column: 12, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1077, file: !150, line: 424, column: 12)
!1088 = !DILocation(line: 424, column: 18, scope: !1087)
!1089 = !DILocation(line: 424, column: 26, scope: !1087)
!1090 = !DILocation(line: 424, column: 12, scope: !1077)
!1091 = !DILocation(line: 425, column: 57, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !150, line: 424, column: 44)
!1093 = !DILocation(line: 425, column: 63, scope: !1092)
!1094 = !DILocation(line: 425, column: 11, scope: !1092)
!1095 = !DILocation(line: 425, column: 4, scope: !1092)
!1096 = !DILocation(line: 427, column: 12, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1087, file: !150, line: 427, column: 12)
!1098 = !DILocation(line: 427, column: 18, scope: !1097)
!1099 = !DILocation(line: 427, column: 26, scope: !1097)
!1100 = !DILocation(line: 427, column: 12, scope: !1087)
!1101 = !DILocalVariable(name: "name", scope: !1102, file: !150, line: 429, type: !1103)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !150, line: 427, column: 38)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 160, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 20)
!1106 = !DILocation(line: 429, column: 9, scope: !1102)
!1107 = !DILocation(line: 430, column: 4, scope: !1102)
!1108 = !DILocation(line: 430, column: 32, scope: !1102)
!1109 = !DILocation(line: 430, column: 19, scope: !1102)
!1110 = !DILocation(line: 431, column: 46, scope: !1102)
!1111 = !DILocation(line: 431, column: 52, scope: !1102)
!1112 = !DILocation(line: 431, column: 58, scope: !1102)
!1113 = !DILocation(line: 431, column: 11, scope: !1102)
!1114 = !DILocation(line: 431, column: 4, scope: !1102)
!1115 = !DILocation(line: 435, column: 4, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1097, file: !150, line: 434, column: 8)
!1117 = !DILocation(line: 437, column: 8, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1069, file: !150, line: 437, column: 7)
!1119 = !DILocation(line: 437, column: 7, scope: !1118)
!1120 = !DILocation(line: 437, column: 20, scope: !1118)
!1121 = !DILocation(line: 437, column: 26, scope: !1118)
!1122 = !DILocation(line: 437, column: 18, scope: !1118)
!1123 = !DILocation(line: 437, column: 7, scope: !1069)
!1124 = !DILocation(line: 438, column: 18, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !150, line: 437, column: 36)
!1126 = !DILocation(line: 438, column: 24, scope: !1125)
!1127 = !DILocation(line: 438, column: 16, scope: !1125)
!1128 = !DILocation(line: 439, column: 3, scope: !1125)
!1129 = !DILocation(line: 440, column: 2, scope: !1069)
!1130 = !DILocation(line: 441, column: 35, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1064, file: !150, line: 441, column: 11)
!1132 = !DILocation(line: 441, column: 32, scope: !1131)
!1133 = !DILocation(line: 441, column: 11, scope: !1064)
!1134 = !DILocation(line: 444, column: 13, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !150, line: 442, column: 2)
!1136 = !DILocation(line: 445, column: 14, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1135, file: !150, line: 445, column: 13)
!1138 = !DILocation(line: 445, column: 13, scope: !1137)
!1139 = !DILocation(line: 445, column: 26, scope: !1137)
!1140 = !DILocation(line: 445, column: 32, scope: !1137)
!1141 = !DILocation(line: 445, column: 24, scope: !1137)
!1142 = !DILocation(line: 445, column: 13, scope: !1135)
!1143 = !DILocation(line: 446, column: 27, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !150, line: 445, column: 42)
!1145 = !DILocation(line: 446, column: 33, scope: !1144)
!1146 = !DILocation(line: 446, column: 25, scope: !1144)
!1147 = !DILocation(line: 447, column: 9, scope: !1144)
!1148 = !DILocation(line: 448, column: 5, scope: !1135)
!1149 = !DILocation(line: 449, column: 47, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1131, file: !150, line: 449, column: 14)
!1151 = !DILocation(line: 449, column: 44, scope: !1150)
!1152 = !DILocation(line: 449, column: 14, scope: !1131)
!1153 = !DILocation(line: 452, column: 38, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !150, line: 450, column: 5)
!1155 = !DILocation(line: 452, column: 44, scope: !1154)
!1156 = !DILocation(line: 452, column: 10, scope: !1154)
!1157 = !DILocation(line: 452, column: 3, scope: !1154)
!1158 = !DILocation(line: 459, column: 6, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !997, file: !150, line: 459, column: 6)
!1160 = !DILocation(line: 459, column: 16, scope: !1159)
!1161 = !DILocation(line: 459, column: 6, scope: !997)
!1162 = !DILocation(line: 461, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !150, line: 460, column: 2)
!1164 = !DILocation(line: 464, column: 6, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !997, file: !150, line: 464, column: 6)
!1166 = !DILocation(line: 464, column: 18, scope: !1165)
!1167 = !DILocation(line: 464, column: 6, scope: !997)
!1168 = !DILocation(line: 466, column: 18, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !150, line: 465, column: 2)
!1170 = !DILocation(line: 466, column: 17, scope: !1169)
!1171 = !DILocation(line: 466, column: 15, scope: !1169)
!1172 = !DILocation(line: 467, column: 2, scope: !1169)
!1173 = !DILocation(line: 470, column: 22, scope: !997)
!1174 = !DILocation(line: 470, column: 33, scope: !997)
!1175 = !DILocation(line: 470, column: 2, scope: !997)
!1176 = !DILocation(line: 472, column: 2, scope: !997)
!1177 = !DILocation(line: 473, column: 1, scope: !997)
!1178 = distinct !DISubprogram(name: "USB_SendZlp", linkageName: "_ZL11USB_SendZlpv", scope: !150, file: !150, line: 476, type: !552, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1179 = !DILocation(line: 478, column: 5, scope: !1178)
!1180 = !DILocation(line: 478, column: 39, scope: !1178)
!1181 = !DILocation(line: 478, column: 67, scope: !1178)
!1182 = !DILocation(line: 478, column: 35, scope: !1178)
!1183 = !DILocation(line: 480, column: 21, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !150, line: 480, column: 12)
!1185 = distinct !DILexicalBlock(scope: !1178, file: !150, line: 479, column: 5)
!1186 = !DILocation(line: 480, column: 35, scope: !1184)
!1187 = !DILocation(line: 480, column: 57, scope: !1184)
!1188 = !DILocation(line: 480, column: 12, scope: !1185)
!1189 = !DILocation(line: 482, column: 13, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 481, column: 9)
!1191 = distinct !{!1191, !1179, !1192}
!1192 = !DILocation(line: 484, column: 5, scope: !1178)
!1193 = !DILocation(line: 485, column: 33, scope: !1178)
!1194 = !DILocation(line: 486, column: 1, scope: !1178)
!1195 = distinct !DISubprogram(name: "USBD_SendConfiguration", linkageName: "_ZL22USBD_SendConfigurationi", scope: !150, file: !150, line: 335, type: !1196, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!211, !366}
!1198 = !DILocalVariable(name: "maxlen", arg: 1, scope: !1195, file: !150, line: 335, type: !366)
!1199 = !DILocation(line: 335, column: 40, scope: !1195)
!1200 = !DILocation(line: 338, column: 2, scope: !1195)
!1201 = !DILocalVariable(name: "interfaces", scope: !1195, file: !150, line: 340, type: !7)
!1202 = !DILocation(line: 340, column: 10, scope: !1195)
!1203 = !DILocation(line: 340, column: 23, scope: !1195)
!1204 = !DILocalVariable(name: "config", scope: !1195, file: !150, line: 345, type: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConfigDescriptor", file: !168, line: 151, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 142, size: 72, flags: DIFlagTypePassByValue, elements: !1207, identifier: "_ZTS16ConfigDescriptor")
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1206, file: !168, line: 143, baseType: !7, size: 8)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !1206, file: !168, line: 144, baseType: !7, size: 8, offset: 8)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !1206, file: !168, line: 145, baseType: !141, size: 16, offset: 16)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "numInterfaces", scope: !1206, file: !168, line: 146, baseType: !7, size: 8, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !1206, file: !168, line: 147, baseType: !7, size: 8, offset: 40)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "iconfig", scope: !1206, file: !168, line: 148, baseType: !7, size: 8, offset: 48)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1206, file: !168, line: 149, baseType: !7, size: 8, offset: 56)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "maxPower", scope: !1206, file: !168, line: 150, baseType: !7, size: 8, offset: 64)
!1216 = !DILocation(line: 345, column: 19, scope: !1195)
!1217 = !DILocation(line: 345, column: 28, scope: !1195)
!1218 = !DILocation(line: 352, column: 19, scope: !1195)
!1219 = !DILocation(line: 352, column: 2, scope: !1195)
!1220 = !DILocation(line: 353, column: 21, scope: !1195)
!1221 = !DILocation(line: 353, column: 2, scope: !1195)
!1222 = !DILocation(line: 354, column: 2, scope: !1195)
!1223 = !DILocation(line: 355, column: 2, scope: !1195)
!1224 = distinct !DISubprogram(name: "USB_SendStringDescriptor", linkageName: "_ZL24USB_SendStringDescriptorPKhi", scope: !150, file: !150, line: 249, type: !1225, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!211, !12, !366}
!1227 = !DILocalVariable(name: "string", arg: 1, scope: !1224, file: !150, line: 249, type: !12)
!1228 = !DILocation(line: 249, column: 53, scope: !1224)
!1229 = !DILocalVariable(name: "wLength", arg: 2, scope: !1224, file: !150, line: 249, type: !366)
!1230 = !DILocation(line: 249, column: 65, scope: !1224)
!1231 = !DILocation(line: 250, column: 6, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !150, line: 250, column: 6)
!1233 = !DILocation(line: 250, column: 14, scope: !1232)
!1234 = !DILocation(line: 250, column: 6, scope: !1224)
!1235 = !DILocation(line: 251, column: 3, scope: !1232)
!1236 = !DILocation(line: 253, column: 17, scope: !1224)
!1237 = !DILocation(line: 253, column: 2, scope: !1224)
!1238 = !DILocalVariable(name: "__vla_expr0", scope: !1224, type: !25, flags: DIFlagArtificial)
!1239 = !DILocation(line: 0, scope: !1224)
!1240 = !DILocalVariable(name: "buffer", scope: !1224, file: !150, line: 253, type: !1241)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1242)
!1242 = !{!1243}
!1243 = !DISubrange(count: !1238)
!1244 = !DILocation(line: 253, column: 10, scope: !1224)
!1245 = !DILocation(line: 254, column: 34, scope: !1224)
!1246 = !DILocation(line: 254, column: 14, scope: !1224)
!1247 = !DILocation(line: 254, column: 42, scope: !1224)
!1248 = !DILocation(line: 254, column: 46, scope: !1224)
!1249 = !DILocation(line: 254, column: 2, scope: !1224)
!1250 = !DILocation(line: 254, column: 12, scope: !1224)
!1251 = !DILocation(line: 255, column: 2, scope: !1224)
!1252 = !DILocation(line: 255, column: 12, scope: !1224)
!1253 = !DILocalVariable(name: "i", scope: !1224, file: !150, line: 257, type: !7)
!1254 = !DILocation(line: 257, column: 10, scope: !1224)
!1255 = !DILocation(line: 258, column: 9, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1224, file: !150, line: 258, column: 2)
!1257 = !DILocation(line: 258, column: 7, scope: !1256)
!1258 = !DILocation(line: 258, column: 14, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !150, line: 258, column: 2)
!1260 = !DILocation(line: 258, column: 18, scope: !1259)
!1261 = !DILocation(line: 258, column: 16, scope: !1259)
!1262 = !DILocation(line: 258, column: 26, scope: !1259)
!1263 = !DILocation(line: 258, column: 30, scope: !1259)
!1264 = !DILocation(line: 258, column: 29, scope: !1259)
!1265 = !DILocation(line: 0, scope: !1259)
!1266 = !DILocation(line: 258, column: 2, scope: !1256)
!1267 = !DILocation(line: 259, column: 24, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !150, line: 258, column: 43)
!1269 = !DILocation(line: 259, column: 17, scope: !1268)
!1270 = !DILocation(line: 259, column: 11, scope: !1268)
!1271 = !DILocation(line: 259, column: 3, scope: !1268)
!1272 = !DILocation(line: 259, column: 15, scope: !1268)
!1273 = !DILocation(line: 260, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !150, line: 260, column: 7)
!1275 = !DILocation(line: 260, column: 12, scope: !1274)
!1276 = !DILocation(line: 260, column: 9, scope: !1274)
!1277 = !DILocation(line: 260, column: 7, scope: !1268)
!1278 = !DILocation(line: 260, column: 21, scope: !1274)
!1279 = !DILocation(line: 261, column: 10, scope: !1268)
!1280 = !DILocation(line: 261, column: 3, scope: !1268)
!1281 = !DILocation(line: 261, column: 13, scope: !1268)
!1282 = !DILocation(line: 262, column: 2, scope: !1268)
!1283 = !DILocation(line: 258, column: 39, scope: !1259)
!1284 = !DILocation(line: 258, column: 2, scope: !1259)
!1285 = distinct !{!1285, !1266, !1286}
!1286 = !DILocation(line: 262, column: 2, scope: !1256)
!1287 = !DILocation(line: 264, column: 47, scope: !1224)
!1288 = !DILocation(line: 264, column: 9, scope: !1224)
!1289 = !DILocation(line: 264, column: 2, scope: !1224)
!1290 = !DILocation(line: 265, column: 1, scope: !1224)
!1291 = distinct !DISubprogram(name: "USBD_SendOtherConfiguration", linkageName: "_ZL27USBD_SendOtherConfigurationi", scope: !150, file: !150, line: 358, type: !1196, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1292 = !DILocalVariable(name: "maxlen", arg: 1, scope: !1291, file: !150, line: 358, type: !366)
!1293 = !DILocation(line: 358, column: 45, scope: !1291)
!1294 = !DILocation(line: 361, column: 2, scope: !1291)
!1295 = !DILocalVariable(name: "interfaces", scope: !1291, file: !150, line: 363, type: !7)
!1296 = !DILocation(line: 363, column: 10, scope: !1291)
!1297 = !DILocation(line: 363, column: 23, scope: !1291)
!1298 = !DILocalVariable(name: "config", scope: !1291, file: !150, line: 368, type: !1205)
!1299 = !DILocation(line: 368, column: 19, scope: !1291)
!1300 = !DILocation(line: 368, column: 28, scope: !1291)
!1301 = !DILocation(line: 375, column: 19, scope: !1291)
!1302 = !DILocation(line: 375, column: 2, scope: !1291)
!1303 = !DILocation(line: 376, column: 21, scope: !1291)
!1304 = !DILocation(line: 376, column: 2, scope: !1291)
!1305 = !DILocation(line: 377, column: 2, scope: !1291)
!1306 = !DILocation(line: 378, column: 2, scope: !1291)
!1307 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_USBCore.cpp", scope: !3, file: !3, type: !1308, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1308 = !DISubroutineType(types: !4)
!1309 = !DILocation(line: 0, scope: !1307)

; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.Print = type { i32 (...)**, i32 }
%class.__FlashStringHelper = type opaque
%class.String = type { i8*, i32, i32 }
%class.Printable = type { i32 (...)** }

$_ZN5Print5writeEPKcj = comdat any

$_ZNK6String5c_strEv = comdat any

$_ZNK6String6lengthEv = comdat any

$_ZN5Print5writeEPKc = comdat any

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ovf\00", align 1
@_ZTV5Print = dso_local unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* null, i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i32 (%class.Print*, i8*, i32)* @_ZN5Print5writeEPKhj to i8*)] }, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5writeEPKhj(%class.Print* %this, i8* %buffer, i32 %size) unnamed_addr #0 align 2 !dbg !23 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %buffer.addr = alloca i8*, align 4
  %size.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !372, metadata !DIExpression()), !dbg !374
  store i8* %buffer, i8** %buffer.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !375, metadata !DIExpression()), !dbg !376
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !379, metadata !DIExpression()), !dbg !380
  store i32 0, i32* %n, align 4, !dbg !380
  br label %while.cond, !dbg !381

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %size.addr, align 4, !dbg !382
  %dec = add i32 %0, -1, !dbg !382
  store i32 %dec, i32* %size.addr, align 4, !dbg !382
  %tobool = icmp ne i32 %0, 0, !dbg !383
  br i1 %tobool, label %while.body, label %while.end, !dbg !381

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %buffer.addr, align 4, !dbg !384
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1, !dbg !384
  store i8* %incdec.ptr, i8** %buffer.addr, align 4, !dbg !384
  %2 = load i8, i8* %1, align 1, !dbg !387
  %3 = bitcast %class.Print* %this1 to i32 (%class.Print*, i8)***, !dbg !388
  %vtable = load i32 (%class.Print*, i8)**, i32 (%class.Print*, i8)*** %3, align 4, !dbg !388
  %vfn = getelementptr inbounds i32 (%class.Print*, i8)*, i32 (%class.Print*, i8)** %vtable, i64 0, !dbg !388
  %4 = load i32 (%class.Print*, i8)*, i32 (%class.Print*, i8)** %vfn, align 4, !dbg !388
  %call = call arm_aapcscc i32 %4(%class.Print* %this1, i8 zeroext %2), !dbg !388
  %tobool2 = icmp ne i32 %call, 0, !dbg !388
  br i1 %tobool2, label %if.then, label %if.else, !dbg !389

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %n, align 4, !dbg !390
  %inc = add i32 %5, 1, !dbg !390
  store i32 %inc, i32* %n, align 4, !dbg !390
  br label %if.end, !dbg !391

if.else:                                          ; preds = %while.body
  br label %while.end, !dbg !392

if.end:                                           ; preds = %if.then
  br label %while.cond, !dbg !381, !llvm.loop !393

while.end:                                        ; preds = %if.else, %while.cond
  %6 = load i32, i32* %n, align 4, !dbg !395
  ret i32 %6, !dbg !396
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEPK19__FlashStringHelper(%class.Print* %this, %class.__FlashStringHelper* %ifsh) #0 align 2 !dbg !397 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %ifsh.addr = alloca %class.__FlashStringHelper*, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !398, metadata !DIExpression()), !dbg !399
  store %class.__FlashStringHelper* %ifsh, %class.__FlashStringHelper** %ifsh.addr, align 4
  call void @llvm.dbg.declare(metadata %class.__FlashStringHelper** %ifsh.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %ifsh.addr, align 4, !dbg !402
  %1 = bitcast %class.__FlashStringHelper* %0 to i8*, !dbg !403
  %call = call arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print* %this1, i8* %1), !dbg !404
  ret i32 %call, !dbg !405
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print* %this, i8* %str) #0 align 2 !dbg !406 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %str.addr = alloca i8*, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !407, metadata !DIExpression()), !dbg !408
  store i8* %str, i8** %str.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4, !dbg !411
  %call = call arm_aapcscc i32 @_ZN5Print5writeEPKc(%class.Print* %this1, i8* %0), !dbg !412
  ret i32 %call, !dbg !413
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printERK6String(%class.Print* %this, %class.String* dereferenceable(12) %s) #0 align 2 !dbg !414 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %s.addr = alloca %class.String*, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !415, metadata !DIExpression()), !dbg !416
  store %class.String* %s, %class.String** %s.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load %class.String*, %class.String** %s.addr, align 4, !dbg !419
  %call = call arm_aapcscc i8* @_ZNK6String5c_strEv(%class.String* %0), !dbg !420
  %1 = load %class.String*, %class.String** %s.addr, align 4, !dbg !421
  %call2 = call arm_aapcscc i32 @_ZNK6String6lengthEv(%class.String* %1), !dbg !422
  %call3 = call arm_aapcscc i32 @_ZN5Print5writeEPKcj(%class.Print* %this1, i8* %call, i32 %call2), !dbg !423
  ret i32 %call3, !dbg !424
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc i32 @_ZN5Print5writeEPKcj(%class.Print* %this, i8* %buffer, i32 %size) #0 comdat align 2 !dbg !425 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %buffer.addr = alloca i8*, align 4
  %size.addr = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store i8* %buffer, i8** %buffer.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !428, metadata !DIExpression()), !dbg !429
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i8*, i8** %buffer.addr, align 4, !dbg !432
  %1 = load i32, i32* %size.addr, align 4, !dbg !433
  %2 = bitcast %class.Print* %this1 to i32 (%class.Print*, i8*, i32)***, !dbg !434
  %vtable = load i32 (%class.Print*, i8*, i32)**, i32 (%class.Print*, i8*, i32)*** %2, align 4, !dbg !434
  %vfn = getelementptr inbounds i32 (%class.Print*, i8*, i32)*, i32 (%class.Print*, i8*, i32)** %vtable, i64 1, !dbg !434
  %3 = load i32 (%class.Print*, i8*, i32)*, i32 (%class.Print*, i8*, i32)** %vfn, align 4, !dbg !434
  %call = call arm_aapcscc i32 %3(%class.Print* %this1, i8* %0, i32 %1), !dbg !434
  ret i32 %call, !dbg !435
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc i8* @_ZNK6String5c_strEv(%class.String* %this) #0 comdat align 2 !dbg !436 {
entry:
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !437, metadata !DIExpression()), !dbg !439
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !440
  %0 = load i8*, i8** %buffer, align 4, !dbg !440
  ret i8* %0, !dbg !441
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc i32 @_ZNK6String6lengthEv(%class.String* %this) #0 comdat align 2 !dbg !442 {
entry:
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !445
  %0 = load i32, i32* %len, align 4, !dbg !445
  ret i32 %0, !dbg !446
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc i32 @_ZN5Print5writeEPKc(%class.Print* %this, i8* %str) #0 comdat align 2 !dbg !447 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Print*, align 4
  %str.addr = alloca i8*, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i8* %str, i8** %str.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4, !dbg !452
  %cmp = icmp eq i8* %0, null, !dbg !454
  br i1 %cmp, label %if.then, label %if.end, !dbg !455

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !456
  br label %return, !dbg !456

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 4, !dbg !457
  %2 = load i8*, i8** %str.addr, align 4, !dbg !458
  %call = call arm_aapcscc i32 @strlen(i8* %2), !dbg !459
  %3 = bitcast %class.Print* %this1 to i32 (%class.Print*, i8*, i32)***, !dbg !460
  %vtable = load i32 (%class.Print*, i8*, i32)**, i32 (%class.Print*, i8*, i32)*** %3, align 4, !dbg !460
  %vfn = getelementptr inbounds i32 (%class.Print*, i8*, i32)*, i32 (%class.Print*, i8*, i32)** %vtable, i64 1, !dbg !460
  %4 = load i32 (%class.Print*, i8*, i32)*, i32 (%class.Print*, i8*, i32)** %vfn, align 4, !dbg !460
  %call2 = call arm_aapcscc i32 %4(%class.Print* %this1, i8* %1, i32 %call), !dbg !460
  store i32 %call2, i32* %retval, align 4, !dbg !461
  br label %return, !dbg !461

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !462
  ret i32 %5, !dbg !462
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEc(%class.Print* %this, i8 zeroext %c) #0 align 2 !dbg !463 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %c.addr = alloca i8, align 1
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !466, metadata !DIExpression()), !dbg !467
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i8, i8* %c.addr, align 1, !dbg !468
  %1 = bitcast %class.Print* %this1 to i32 (%class.Print*, i8)***, !dbg !469
  %vtable = load i32 (%class.Print*, i8)**, i32 (%class.Print*, i8)*** %1, align 4, !dbg !469
  %vfn = getelementptr inbounds i32 (%class.Print*, i8)*, i32 (%class.Print*, i8)** %vtable, i64 0, !dbg !469
  %2 = load i32 (%class.Print*, i8)*, i32 (%class.Print*, i8)** %vfn, align 4, !dbg !469
  %call = call arm_aapcscc i32 %2(%class.Print* %this1, i8 zeroext %0), !dbg !469
  ret i32 %call, !dbg !470
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEhi(%class.Print* %this, i8 zeroext %b, i32 %base) #0 align 2 !dbg !471 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %b.addr = alloca i8, align 1
  %base.addr = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store i8 %b, i8* %b.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !474, metadata !DIExpression()), !dbg !475
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i8, i8* %b.addr, align 1, !dbg !478
  %conv = zext i8 %0 to i32, !dbg !478
  %1 = load i32, i32* %base.addr, align 4, !dbg !479
  %call = call arm_aapcscc i32 @_ZN5Print5printEmi(%class.Print* %this1, i32 %conv, i32 %1), !dbg !480
  ret i32 %call, !dbg !481
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEmi(%class.Print* %this, i32 %n, i32 %base) #0 align 2 !dbg !482 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Print*, align 4
  %n.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !483, metadata !DIExpression()), !dbg !484
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !485, metadata !DIExpression()), !dbg !486
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !487, metadata !DIExpression()), !dbg !488
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i32, i32* %base.addr, align 4, !dbg !489
  %cmp = icmp eq i32 %0, 0, !dbg !491
  br i1 %cmp, label %if.then, label %if.else, !dbg !492

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !493
  %conv = trunc i32 %1 to i8, !dbg !493
  %2 = bitcast %class.Print* %this1 to i32 (%class.Print*, i8)***, !dbg !494
  %vtable = load i32 (%class.Print*, i8)**, i32 (%class.Print*, i8)*** %2, align 4, !dbg !494
  %vfn = getelementptr inbounds i32 (%class.Print*, i8)*, i32 (%class.Print*, i8)** %vtable, i64 0, !dbg !494
  %3 = load i32 (%class.Print*, i8)*, i32 (%class.Print*, i8)** %vfn, align 4, !dbg !494
  %call = call arm_aapcscc i32 %3(%class.Print* %this1, i8 zeroext %conv), !dbg !494
  store i32 %call, i32* %retval, align 4, !dbg !495
  br label %return, !dbg !495

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4, !dbg !496
  %5 = load i32, i32* %base.addr, align 4, !dbg !497
  %conv2 = trunc i32 %5 to i8, !dbg !497
  %call3 = call arm_aapcscc i32 @_ZN5Print11printNumberEmh(%class.Print* %this1, i32 %4, i8 zeroext %conv2), !dbg !498
  store i32 %call3, i32* %retval, align 4, !dbg !499
  br label %return, !dbg !499

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !500
  ret i32 %6, !dbg !500
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEii(%class.Print* %this, i32 %n, i32 %base) #0 align 2 !dbg !501 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %n.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !508
  %1 = load i32, i32* %base.addr, align 4, !dbg !509
  %call = call arm_aapcscc i32 @_ZN5Print5printEli(%class.Print* %this1, i32 %0, i32 %1), !dbg !510
  ret i32 %call, !dbg !511
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEli(%class.Print* %this, i32 %n, i32 %base) #0 align 2 !dbg !512 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Print*, align 4
  %n.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !513, metadata !DIExpression()), !dbg !514
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !517, metadata !DIExpression()), !dbg !518
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i32, i32* %base.addr, align 4, !dbg !519
  %cmp = icmp eq i32 %0, 0, !dbg !521
  br i1 %cmp, label %if.then, label %if.else, !dbg !522

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !523
  %conv = trunc i32 %1 to i8, !dbg !523
  %2 = bitcast %class.Print* %this1 to i32 (%class.Print*, i8)***, !dbg !525
  %vtable = load i32 (%class.Print*, i8)**, i32 (%class.Print*, i8)*** %2, align 4, !dbg !525
  %vfn = getelementptr inbounds i32 (%class.Print*, i8)*, i32 (%class.Print*, i8)** %vtable, i64 0, !dbg !525
  %3 = load i32 (%class.Print*, i8)*, i32 (%class.Print*, i8)** %vfn, align 4, !dbg !525
  %call = call arm_aapcscc i32 %3(%class.Print* %this1, i8 zeroext %conv), !dbg !525
  store i32 %call, i32* %retval, align 4, !dbg !526
  br label %return, !dbg !526

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %base.addr, align 4, !dbg !527
  %cmp2 = icmp eq i32 %4, 10, !dbg !529
  br i1 %cmp2, label %if.then3, label %if.else9, !dbg !530

if.then3:                                         ; preds = %if.else
  %5 = load i32, i32* %n.addr, align 4, !dbg !531
  %cmp4 = icmp slt i32 %5, 0, !dbg !534
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !535

if.then5:                                         ; preds = %if.then3
  call void @llvm.dbg.declare(metadata i32* %t, metadata !536, metadata !DIExpression()), !dbg !538
  %call6 = call arm_aapcscc i32 @_ZN5Print5printEc(%class.Print* %this1, i8 zeroext 45), !dbg !539
  store i32 %call6, i32* %t, align 4, !dbg !538
  %6 = load i32, i32* %n.addr, align 4, !dbg !540
  %sub = sub nsw i32 0, %6, !dbg !541
  store i32 %sub, i32* %n.addr, align 4, !dbg !542
  %7 = load i32, i32* %n.addr, align 4, !dbg !543
  %call7 = call arm_aapcscc i32 @_ZN5Print11printNumberEmh(%class.Print* %this1, i32 %7, i8 zeroext 10), !dbg !544
  %8 = load i32, i32* %t, align 4, !dbg !545
  %add = add i32 %call7, %8, !dbg !546
  store i32 %add, i32* %retval, align 4, !dbg !547
  br label %return, !dbg !547

if.end:                                           ; preds = %if.then3
  %9 = load i32, i32* %n.addr, align 4, !dbg !548
  %call8 = call arm_aapcscc i32 @_ZN5Print11printNumberEmh(%class.Print* %this1, i32 %9, i8 zeroext 10), !dbg !549
  store i32 %call8, i32* %retval, align 4, !dbg !550
  br label %return, !dbg !550

if.else9:                                         ; preds = %if.else
  %10 = load i32, i32* %n.addr, align 4, !dbg !551
  %11 = load i32, i32* %base.addr, align 4, !dbg !553
  %conv10 = trunc i32 %11 to i8, !dbg !553
  %call11 = call arm_aapcscc i32 @_ZN5Print11printNumberEmh(%class.Print* %this1, i32 %10, i8 zeroext %conv10), !dbg !554
  store i32 %call11, i32* %retval, align 4, !dbg !555
  br label %return, !dbg !555

return:                                           ; preds = %if.else9, %if.end, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !556
  ret i32 %12, !dbg !556
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEji(%class.Print* %this, i32 %n, i32 %base) #0 align 2 !dbg !557 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %n.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !558, metadata !DIExpression()), !dbg !559
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !560, metadata !DIExpression()), !dbg !561
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !564
  %1 = load i32, i32* %base.addr, align 4, !dbg !565
  %call = call arm_aapcscc i32 @_ZN5Print5printEmi(%class.Print* %this1, i32 %0, i32 %1), !dbg !566
  ret i32 %call, !dbg !567
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print11printNumberEmh(%class.Print* %this, i32 %n, i8 zeroext %base) #0 align 2 !dbg !568 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %n.addr = alloca i32, align 4
  %base.addr = alloca i8, align 1
  %buf = alloca [33 x i8], align 1
  %str = alloca i8*, align 4
  %c = alloca i8, align 1
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !569, metadata !DIExpression()), !dbg !570
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store i8 %base, i8* %base.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %base.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !575, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata i8** %str, metadata !580, metadata !DIExpression()), !dbg !581
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i32 0, i32 32, !dbg !582
  store i8* %arrayidx, i8** %str, align 4, !dbg !581
  %0 = load i8*, i8** %str, align 4, !dbg !583
  store i8 0, i8* %0, align 1, !dbg !584
  %1 = load i8, i8* %base.addr, align 1, !dbg !585
  %conv = zext i8 %1 to i32, !dbg !585
  %cmp = icmp slt i32 %conv, 2, !dbg !587
  br i1 %cmp, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  store i8 10, i8* %base.addr, align 1, !dbg !589
  br label %if.end, !dbg !590

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !591

do.body:                                          ; preds = %do.cond, %if.end
  call void @llvm.dbg.declare(metadata i8* %c, metadata !592, metadata !DIExpression()), !dbg !594
  %2 = load i32, i32* %n.addr, align 4, !dbg !595
  %3 = load i8, i8* %base.addr, align 1, !dbg !596
  %conv2 = zext i8 %3 to i32, !dbg !596
  %rem = urem i32 %2, %conv2, !dbg !597
  %conv3 = trunc i32 %rem to i8, !dbg !595
  store i8 %conv3, i8* %c, align 1, !dbg !594
  %4 = load i8, i8* %base.addr, align 1, !dbg !598
  %conv4 = zext i8 %4 to i32, !dbg !598
  %5 = load i32, i32* %n.addr, align 4, !dbg !599
  %div = udiv i32 %5, %conv4, !dbg !599
  store i32 %div, i32* %n.addr, align 4, !dbg !599
  %6 = load i8, i8* %c, align 1, !dbg !600
  %conv5 = zext i8 %6 to i32, !dbg !600
  %cmp6 = icmp slt i32 %conv5, 10, !dbg !601
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !600

cond.true:                                        ; preds = %do.body
  %7 = load i8, i8* %c, align 1, !dbg !602
  %conv7 = zext i8 %7 to i32, !dbg !602
  %add = add nsw i32 %conv7, 48, !dbg !603
  br label %cond.end, !dbg !600

cond.false:                                       ; preds = %do.body
  %8 = load i8, i8* %c, align 1, !dbg !604
  %conv8 = zext i8 %8 to i32, !dbg !604
  %add9 = add nsw i32 %conv8, 65, !dbg !605
  %sub = sub nsw i32 %add9, 10, !dbg !606
  br label %cond.end, !dbg !600

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %sub, %cond.false ], !dbg !600
  %conv10 = trunc i32 %cond to i8, !dbg !600
  %9 = load i8*, i8** %str, align 4, !dbg !607
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 -1, !dbg !607
  store i8* %incdec.ptr, i8** %str, align 4, !dbg !607
  store i8 %conv10, i8* %incdec.ptr, align 1, !dbg !608
  br label %do.cond, !dbg !609

do.cond:                                          ; preds = %cond.end
  %10 = load i32, i32* %n.addr, align 4, !dbg !610
  %tobool = icmp ne i32 %10, 0, !dbg !610
  br i1 %tobool, label %do.body, label %do.end, !dbg !609, !llvm.loop !611

do.end:                                           ; preds = %do.cond
  %11 = load i8*, i8** %str, align 4, !dbg !613
  %call = call arm_aapcscc i32 @_ZN5Print5writeEPKc(%class.Print* %this1, i8* %11), !dbg !614
  ret i32 %call, !dbg !615
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printEdi(%class.Print* %this, double %n, i32 %digits) #0 align 2 !dbg !616 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %n.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !617, metadata !DIExpression()), !dbg !618
  store double %n, double* %n.addr, align 8
  call void @llvm.dbg.declare(metadata double* %n.addr, metadata !619, metadata !DIExpression()), !dbg !620
  store i32 %digits, i32* %digits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %digits.addr, metadata !621, metadata !DIExpression()), !dbg !622
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load double, double* %n.addr, align 8, !dbg !623
  %1 = load i32, i32* %digits.addr, align 4, !dbg !624
  %conv = trunc i32 %1 to i8, !dbg !624
  %call = call arm_aapcscc i32 @_ZN5Print10printFloatEdh(%class.Print* %this1, double %0, i8 zeroext %conv), !dbg !625
  ret i32 %call, !dbg !626
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print10printFloatEdh(%class.Print* %this, double %number, i8 zeroext %digits) #0 align 2 !dbg !627 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Print*, align 4
  %number.addr = alloca double, align 8
  %digits.addr = alloca i8, align 1
  %n = alloca i32, align 4
  %rounding = alloca double, align 8
  %i = alloca i8, align 1
  %int_part = alloca i32, align 4
  %remainder = alloca double, align 8
  %toPrint = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !628, metadata !DIExpression()), !dbg !629
  store double %number, double* %number.addr, align 8
  call void @llvm.dbg.declare(metadata double* %number.addr, metadata !630, metadata !DIExpression()), !dbg !631
  store i8 %digits, i8* %digits.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %digits.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 0, i32* %n, align 4, !dbg !635
  %0 = load double, double* %number.addr, align 8, !dbg !636
  %call = call arm_aapcscc i32 @__fpclassifyd(double %0), !dbg !636
  %cmp = icmp eq i32 %call, 0, !dbg !636
  br i1 %cmp, label %if.then, label %if.end, !dbg !638

if.then:                                          ; preds = %entry
  %call2 = call arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print* %this1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !639
  store i32 %call2, i32* %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end:                                           ; preds = %entry
  %1 = load double, double* %number.addr, align 8, !dbg !641
  %call3 = call arm_aapcscc i32 @__fpclassifyd(double %1), !dbg !641
  %cmp4 = icmp eq i32 %call3, 1, !dbg !641
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !643

if.then5:                                         ; preds = %if.end
  %call6 = call arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print* %this1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !644
  store i32 %call6, i32* %retval, align 4, !dbg !645
  br label %return, !dbg !645

if.end7:                                          ; preds = %if.end
  %2 = load double, double* %number.addr, align 8, !dbg !646
  %cmp8 = fcmp ogt double %2, 0x41EFFFFFE0000000, !dbg !648
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !649

if.then9:                                         ; preds = %if.end7
  %call10 = call arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print* %this1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !650
  store i32 %call10, i32* %retval, align 4, !dbg !651
  br label %return, !dbg !651

if.end11:                                         ; preds = %if.end7
  %3 = load double, double* %number.addr, align 8, !dbg !652
  %cmp12 = fcmp olt double %3, 0xC1EFFFFFE0000000, !dbg !654
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !655

if.then13:                                        ; preds = %if.end11
  %call14 = call arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print* %this1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !656
  store i32 %call14, i32* %retval, align 4, !dbg !657
  br label %return, !dbg !657

if.end15:                                         ; preds = %if.end11
  %4 = load double, double* %number.addr, align 8, !dbg !658
  %cmp16 = fcmp olt double %4, 0.000000e+00, !dbg !660
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !661

if.then17:                                        ; preds = %if.end15
  %call18 = call arm_aapcscc i32 @_ZN5Print5printEc(%class.Print* %this1, i8 zeroext 45), !dbg !662
  %5 = load i32, i32* %n, align 4, !dbg !664
  %add = add i32 %5, %call18, !dbg !664
  store i32 %add, i32* %n, align 4, !dbg !664
  %6 = load double, double* %number.addr, align 8, !dbg !665
  %fneg = fneg double %6, !dbg !666
  store double %fneg, double* %number.addr, align 8, !dbg !667
  br label %if.end19, !dbg !668

if.end19:                                         ; preds = %if.then17, %if.end15
  call void @llvm.dbg.declare(metadata double* %rounding, metadata !669, metadata !DIExpression()), !dbg !670
  store double 5.000000e-01, double* %rounding, align 8, !dbg !670
  call void @llvm.dbg.declare(metadata i8* %i, metadata !671, metadata !DIExpression()), !dbg !673
  store i8 0, i8* %i, align 1, !dbg !673
  br label %for.cond, !dbg !674

for.cond:                                         ; preds = %for.inc, %if.end19
  %7 = load i8, i8* %i, align 1, !dbg !675
  %conv = zext i8 %7 to i32, !dbg !675
  %8 = load i8, i8* %digits.addr, align 1, !dbg !677
  %conv20 = zext i8 %8 to i32, !dbg !677
  %cmp21 = icmp slt i32 %conv, %conv20, !dbg !678
  br i1 %cmp21, label %for.body, label %for.end, !dbg !679

for.body:                                         ; preds = %for.cond
  %9 = load double, double* %rounding, align 8, !dbg !680
  %div = fdiv double %9, 1.000000e+01, !dbg !680
  store double %div, double* %rounding, align 8, !dbg !680
  br label %for.inc, !dbg !681

for.inc:                                          ; preds = %for.body
  %10 = load i8, i8* %i, align 1, !dbg !682
  %inc = add i8 %10, 1, !dbg !682
  store i8 %inc, i8* %i, align 1, !dbg !682
  br label %for.cond, !dbg !683, !llvm.loop !684

for.end:                                          ; preds = %for.cond
  %11 = load double, double* %rounding, align 8, !dbg !686
  %12 = load double, double* %number.addr, align 8, !dbg !687
  %add22 = fadd double %12, %11, !dbg !687
  store double %add22, double* %number.addr, align 8, !dbg !687
  call void @llvm.dbg.declare(metadata i32* %int_part, metadata !688, metadata !DIExpression()), !dbg !689
  %13 = load double, double* %number.addr, align 8, !dbg !690
  %conv23 = fptoui double %13 to i32, !dbg !690
  store i32 %conv23, i32* %int_part, align 4, !dbg !689
  call void @llvm.dbg.declare(metadata double* %remainder, metadata !691, metadata !DIExpression()), !dbg !692
  %14 = load double, double* %number.addr, align 8, !dbg !693
  %15 = load i32, i32* %int_part, align 4, !dbg !694
  %conv24 = uitofp i32 %15 to double, !dbg !694
  %sub = fsub double %14, %conv24, !dbg !695
  store double %sub, double* %remainder, align 8, !dbg !692
  %16 = load i32, i32* %int_part, align 4, !dbg !696
  %call25 = call arm_aapcscc i32 @_ZN5Print5printEmi(%class.Print* %this1, i32 %16, i32 10), !dbg !697
  %17 = load i32, i32* %n, align 4, !dbg !698
  %add26 = add i32 %17, %call25, !dbg !698
  store i32 %add26, i32* %n, align 4, !dbg !698
  %18 = load i8, i8* %digits.addr, align 1, !dbg !699
  %conv27 = zext i8 %18 to i32, !dbg !699
  %cmp28 = icmp sgt i32 %conv27, 0, !dbg !701
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !702

if.then29:                                        ; preds = %for.end
  %call30 = call arm_aapcscc i32 @_ZN5Print5printEc(%class.Print* %this1, i8 zeroext 46), !dbg !703
  %19 = load i32, i32* %n, align 4, !dbg !705
  %add31 = add i32 %19, %call30, !dbg !705
  store i32 %add31, i32* %n, align 4, !dbg !705
  br label %if.end32, !dbg !706

if.end32:                                         ; preds = %if.then29, %for.end
  br label %while.cond, !dbg !707

while.cond:                                       ; preds = %while.body, %if.end32
  %20 = load i8, i8* %digits.addr, align 1, !dbg !708
  %dec = add i8 %20, -1, !dbg !708
  store i8 %dec, i8* %digits.addr, align 1, !dbg !708
  %conv33 = zext i8 %20 to i32, !dbg !709
  %cmp34 = icmp sgt i32 %conv33, 0, !dbg !710
  br i1 %cmp34, label %while.body, label %while.end, !dbg !707

while.body:                                       ; preds = %while.cond
  %21 = load double, double* %remainder, align 8, !dbg !711
  %mul = fmul double %21, 1.000000e+01, !dbg !711
  store double %mul, double* %remainder, align 8, !dbg !711
  call void @llvm.dbg.declare(metadata i32* %toPrint, metadata !713, metadata !DIExpression()), !dbg !714
  %22 = load double, double* %remainder, align 8, !dbg !715
  %conv35 = fptoui double %22 to i32, !dbg !715
  store i32 %conv35, i32* %toPrint, align 4, !dbg !714
  %23 = load i32, i32* %toPrint, align 4, !dbg !716
  %call36 = call arm_aapcscc i32 @_ZN5Print5printEji(%class.Print* %this1, i32 %23, i32 10), !dbg !717
  %24 = load i32, i32* %n, align 4, !dbg !718
  %add37 = add i32 %24, %call36, !dbg !718
  store i32 %add37, i32* %n, align 4, !dbg !718
  %25 = load i32, i32* %toPrint, align 4, !dbg !719
  %conv38 = uitofp i32 %25 to double, !dbg !719
  %26 = load double, double* %remainder, align 8, !dbg !720
  %sub39 = fsub double %26, %conv38, !dbg !720
  store double %sub39, double* %remainder, align 8, !dbg !720
  br label %while.cond, !dbg !707, !llvm.loop !721

while.end:                                        ; preds = %while.cond
  %27 = load i32, i32* %n, align 4, !dbg !723
  store i32 %27, i32* %retval, align 4, !dbg !724
  br label %return, !dbg !724

return:                                           ; preds = %while.end, %if.then13, %if.then9, %if.then5, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !725
  ret i32 %28, !dbg !725
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEPK19__FlashStringHelper(%class.Print* %this, %class.__FlashStringHelper* %ifsh) #0 align 2 !dbg !726 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %ifsh.addr = alloca %class.__FlashStringHelper*, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !727, metadata !DIExpression()), !dbg !728
  store %class.__FlashStringHelper* %ifsh, %class.__FlashStringHelper** %ifsh.addr, align 4
  call void @llvm.dbg.declare(metadata %class.__FlashStringHelper** %ifsh.addr, metadata !729, metadata !DIExpression()), !dbg !730
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !731, metadata !DIExpression()), !dbg !732
  %0 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %ifsh.addr, align 4, !dbg !733
  %call = call arm_aapcscc i32 @_ZN5Print5printEPK19__FlashStringHelper(%class.Print* %this1, %class.__FlashStringHelper* %0), !dbg !734
  store i32 %call, i32* %n, align 4, !dbg !732
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !735
  %1 = load i32, i32* %n, align 4, !dbg !736
  %add = add i32 %1, %call2, !dbg !736
  store i32 %add, i32* %n, align 4, !dbg !736
  %2 = load i32, i32* %n, align 4, !dbg !737
  ret i32 %2, !dbg !738
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this) #0 align 2 !dbg !739 {
entry:
  %this.addr = alloca %class.Print*, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !740, metadata !DIExpression()), !dbg !741
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %call = call arm_aapcscc i32 @_ZN5Print5writeEPKc(%class.Print* %this1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)), !dbg !742
  ret i32 %call, !dbg !743
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print5printERK9Printable(%class.Print* %this, %class.Printable* dereferenceable(4) %x) #0 align 2 !dbg !744 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %x.addr = alloca %class.Printable*, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !745, metadata !DIExpression()), !dbg !746
  store %class.Printable* %x, %class.Printable** %x.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Printable** %x.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load %class.Printable*, %class.Printable** %x.addr, align 4, !dbg !749
  %1 = bitcast %class.Printable* %0 to i32 (%class.Printable*, %class.Print*)***, !dbg !750
  %vtable = load i32 (%class.Printable*, %class.Print*)**, i32 (%class.Printable*, %class.Print*)*** %1, align 4, !dbg !750
  %vfn = getelementptr inbounds i32 (%class.Printable*, %class.Print*)*, i32 (%class.Printable*, %class.Print*)** %vtable, i64 0, !dbg !750
  %2 = load i32 (%class.Printable*, %class.Print*)*, i32 (%class.Printable*, %class.Print*)** %vfn, align 4, !dbg !750
  %call = call arm_aapcscc i32 %2(%class.Printable* %0, %class.Print* dereferenceable(8) %this1), !dbg !750
  ret i32 %call, !dbg !751
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnERK6String(%class.Print* %this, %class.String* dereferenceable(12) %s) #0 align 2 !dbg !752 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %s.addr = alloca %class.String*, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !753, metadata !DIExpression()), !dbg !754
  store %class.String* %s, %class.String** %s.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s.addr, metadata !755, metadata !DIExpression()), !dbg !756
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !757, metadata !DIExpression()), !dbg !758
  %0 = load %class.String*, %class.String** %s.addr, align 4, !dbg !759
  %call = call arm_aapcscc i32 @_ZN5Print5printERK6String(%class.Print* %this1, %class.String* dereferenceable(12) %0), !dbg !760
  store i32 %call, i32* %n, align 4, !dbg !758
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !761
  %1 = load i32, i32* %n, align 4, !dbg !762
  %add = add i32 %1, %call2, !dbg !762
  store i32 %add, i32* %n, align 4, !dbg !762
  %2 = load i32, i32* %n, align 4, !dbg !763
  ret i32 %2, !dbg !764
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEPKc(%class.Print* %this, i8* %c) #0 align 2 !dbg !765 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %c.addr = alloca i8*, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !766, metadata !DIExpression()), !dbg !767
  store i8* %c, i8** %c.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %c.addr, metadata !768, metadata !DIExpression()), !dbg !769
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !770, metadata !DIExpression()), !dbg !771
  %0 = load i8*, i8** %c.addr, align 4, !dbg !772
  %call = call arm_aapcscc i32 @_ZN5Print5printEPKc(%class.Print* %this1, i8* %0), !dbg !773
  store i32 %call, i32* %n, align 4, !dbg !771
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !774
  %1 = load i32, i32* %n, align 4, !dbg !775
  %add = add i32 %1, %call2, !dbg !775
  store i32 %add, i32* %n, align 4, !dbg !775
  %2 = load i32, i32* %n, align 4, !dbg !776
  ret i32 %2, !dbg !777
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEc(%class.Print* %this, i8 zeroext %c) #0 align 2 !dbg !778 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %c.addr = alloca i8, align 1
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !779, metadata !DIExpression()), !dbg !780
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !781, metadata !DIExpression()), !dbg !782
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !783, metadata !DIExpression()), !dbg !784
  %0 = load i8, i8* %c.addr, align 1, !dbg !785
  %call = call arm_aapcscc i32 @_ZN5Print5printEc(%class.Print* %this1, i8 zeroext %0), !dbg !786
  store i32 %call, i32* %n, align 4, !dbg !784
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !787
  %1 = load i32, i32* %n, align 4, !dbg !788
  %add = add i32 %1, %call2, !dbg !788
  store i32 %add, i32* %n, align 4, !dbg !788
  %2 = load i32, i32* %n, align 4, !dbg !789
  ret i32 %2, !dbg !790
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEhi(%class.Print* %this, i8 zeroext %b, i32 %base) #0 align 2 !dbg !791 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %b.addr = alloca i8, align 1
  %base.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !792, metadata !DIExpression()), !dbg !793
  store i8 %b, i8* %b.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !794, metadata !DIExpression()), !dbg !795
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !796, metadata !DIExpression()), !dbg !797
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !798, metadata !DIExpression()), !dbg !799
  %0 = load i8, i8* %b.addr, align 1, !dbg !800
  %1 = load i32, i32* %base.addr, align 4, !dbg !801
  %call = call arm_aapcscc i32 @_ZN5Print5printEhi(%class.Print* %this1, i8 zeroext %0, i32 %1), !dbg !802
  store i32 %call, i32* %n, align 4, !dbg !799
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !803
  %2 = load i32, i32* %n, align 4, !dbg !804
  %add = add i32 %2, %call2, !dbg !804
  store i32 %add, i32* %n, align 4, !dbg !804
  %3 = load i32, i32* %n, align 4, !dbg !805
  ret i32 %3, !dbg !806
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEii(%class.Print* %this, i32 %num, i32 %base) #0 align 2 !dbg !807 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %num.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !810, metadata !DIExpression()), !dbg !811
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !812, metadata !DIExpression()), !dbg !813
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !814, metadata !DIExpression()), !dbg !815
  %0 = load i32, i32* %num.addr, align 4, !dbg !816
  %1 = load i32, i32* %base.addr, align 4, !dbg !817
  %call = call arm_aapcscc i32 @_ZN5Print5printEii(%class.Print* %this1, i32 %0, i32 %1), !dbg !818
  store i32 %call, i32* %n, align 4, !dbg !815
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !819
  %2 = load i32, i32* %n, align 4, !dbg !820
  %add = add i32 %2, %call2, !dbg !820
  store i32 %add, i32* %n, align 4, !dbg !820
  %3 = load i32, i32* %n, align 4, !dbg !821
  ret i32 %3, !dbg !822
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEji(%class.Print* %this, i32 %num, i32 %base) #0 align 2 !dbg !823 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %num.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !826, metadata !DIExpression()), !dbg !827
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !828, metadata !DIExpression()), !dbg !829
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !830, metadata !DIExpression()), !dbg !831
  %0 = load i32, i32* %num.addr, align 4, !dbg !832
  %1 = load i32, i32* %base.addr, align 4, !dbg !833
  %call = call arm_aapcscc i32 @_ZN5Print5printEji(%class.Print* %this1, i32 %0, i32 %1), !dbg !834
  store i32 %call, i32* %n, align 4, !dbg !831
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !835
  %2 = load i32, i32* %n, align 4, !dbg !836
  %add = add i32 %2, %call2, !dbg !836
  store i32 %add, i32* %n, align 4, !dbg !836
  %3 = load i32, i32* %n, align 4, !dbg !837
  ret i32 %3, !dbg !838
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEli(%class.Print* %this, i32 %num, i32 %base) #0 align 2 !dbg !839 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %num.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !840, metadata !DIExpression()), !dbg !841
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !842, metadata !DIExpression()), !dbg !843
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !844, metadata !DIExpression()), !dbg !845
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !846, metadata !DIExpression()), !dbg !847
  %0 = load i32, i32* %num.addr, align 4, !dbg !848
  %1 = load i32, i32* %base.addr, align 4, !dbg !849
  %call = call arm_aapcscc i32 @_ZN5Print5printEli(%class.Print* %this1, i32 %0, i32 %1), !dbg !850
  store i32 %call, i32* %n, align 4, !dbg !847
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !851
  %2 = load i32, i32* %n, align 4, !dbg !852
  %add = add i32 %2, %call2, !dbg !852
  store i32 %add, i32* %n, align 4, !dbg !852
  %3 = load i32, i32* %n, align 4, !dbg !853
  ret i32 %3, !dbg !854
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEmi(%class.Print* %this, i32 %num, i32 %base) #0 align 2 !dbg !855 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %num.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !856, metadata !DIExpression()), !dbg !857
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !858, metadata !DIExpression()), !dbg !859
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !860, metadata !DIExpression()), !dbg !861
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load i32, i32* %num.addr, align 4, !dbg !864
  %1 = load i32, i32* %base.addr, align 4, !dbg !865
  %call = call arm_aapcscc i32 @_ZN5Print5printEmi(%class.Print* %this1, i32 %0, i32 %1), !dbg !866
  store i32 %call, i32* %n, align 4, !dbg !863
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !867
  %2 = load i32, i32* %n, align 4, !dbg !868
  %add = add i32 %2, %call2, !dbg !868
  store i32 %add, i32* %n, align 4, !dbg !868
  %3 = load i32, i32* %n, align 4, !dbg !869
  ret i32 %3, !dbg !870
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnEdi(%class.Print* %this, double %num, i32 %digits) #0 align 2 !dbg !871 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %num.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !872, metadata !DIExpression()), !dbg !873
  store double %num, double* %num.addr, align 8
  call void @llvm.dbg.declare(metadata double* %num.addr, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 %digits, i32* %digits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %digits.addr, metadata !876, metadata !DIExpression()), !dbg !877
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !878, metadata !DIExpression()), !dbg !879
  %0 = load double, double* %num.addr, align 8, !dbg !880
  %1 = load i32, i32* %digits.addr, align 4, !dbg !881
  %call = call arm_aapcscc i32 @_ZN5Print5printEdi(%class.Print* %this1, double %0, i32 %1), !dbg !882
  store i32 %call, i32* %n, align 4, !dbg !879
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !883
  %2 = load i32, i32* %n, align 4, !dbg !884
  %add = add i32 %2, %call2, !dbg !884
  store i32 %add, i32* %n, align 4, !dbg !884
  %3 = load i32, i32* %n, align 4, !dbg !885
  ret i32 %3, !dbg !886
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN5Print7printlnERK9Printable(%class.Print* %this, %class.Printable* dereferenceable(4) %x) #0 align 2 !dbg !887 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %x.addr = alloca %class.Printable*, align 4
  %n = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !888, metadata !DIExpression()), !dbg !889
  store %class.Printable* %x, %class.Printable** %x.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Printable** %x.addr, metadata !890, metadata !DIExpression()), !dbg !891
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !892, metadata !DIExpression()), !dbg !893
  %0 = load %class.Printable*, %class.Printable** %x.addr, align 4, !dbg !894
  %call = call arm_aapcscc i32 @_ZN5Print5printERK9Printable(%class.Print* %this1, %class.Printable* dereferenceable(4) %0), !dbg !895
  store i32 %call, i32* %n, align 4, !dbg !893
  %call2 = call arm_aapcscc i32 @_ZN5Print7printlnEv(%class.Print* %this1), !dbg !896
  %1 = load i32, i32* %n, align 4, !dbg !897
  %add = add i32 %1, %call2, !dbg !897
  store i32 %add, i32* %n, align 4, !dbg !897
  %2 = load i32, i32* %n, align 4, !dbg !898
  ret i32 %2, !dbg !899
}

declare dso_local arm_aapcscc i32 @__fpclassifyd(double) #2

declare dso_local arm_aapcscc void @__cxa_pure_virtual() unnamed_addr

declare dso_local arm_aapcscc i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{}
!3 = !{!4, !7, !8, !9, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 42, baseType: !15)
!14 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !16, line: 28, baseType: !17)
!16 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 1, !"min_enum_size", i32 1}
!22 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!23 = distinct !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKhj", scope: !25, file: !24, line: 34, type: !61, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !60, retainedNodes: !2)
!24 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.cpp", directory: "/home/aaa")
!25 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Print", file: !26, line: 34, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !27, vtableHolder: !25)
!26 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.h", directory: "/home/aaa")
!27 = !{!28, !34, !35, !41, !44, !47, !50, !53, !54, !57, !60, !63, !66, !73, !329, !330, !333, !336, !339, !342, !345, !348, !351, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Print", scope: !26, file: !26, baseType: !29, size: 32, flags: DIFlagArtificial)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !31, size: 32)
!31 = !DISubroutineType(types: !32)
!32 = !{!33}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "write_error", scope: !25, file: !26, line: 37, baseType: !33, size: 32, offset: 32)
!35 = !DISubprogram(name: "printNumber", linkageName: "_ZN5Print11printNumberEmh", scope: !25, file: !26, line: 38, type: !36, scopeLine: 38, flags: DIFlagPrototyped, spFlags: 0)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !40, !7, !13}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !10)
!39 = !DIFile(filename: "JJS_Project1/src/build/lib/clang/10.0.1/include/stddef.h", directory: "/home/aaa")
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!41 = !DISubprogram(name: "printFloat", linkageName: "_ZN5Print10printFloatEdh", scope: !25, file: !26, line: 39, type: !42, scopeLine: 39, flags: DIFlagPrototyped, spFlags: 0)
!42 = !DISubroutineType(types: !43)
!43 = !{!38, !40, !9, !13}
!44 = !DISubprogram(name: "setWriteError", linkageName: "_ZN5Print13setWriteErrorEi", scope: !25, file: !26, line: 41, type: !45, scopeLine: 41, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !40, !33}
!47 = !DISubprogram(name: "Print", scope: !25, file: !26, line: 43, type: !48, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !40}
!50 = !DISubprogram(name: "getWriteError", linkageName: "_ZN5Print13getWriteErrorEv", scope: !25, file: !26, line: 45, type: !51, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!51 = !DISubroutineType(types: !52)
!52 = !{!33, !40}
!53 = !DISubprogram(name: "clearWriteError", linkageName: "_ZN5Print15clearWriteErrorEv", scope: !25, file: !26, line: 46, type: !48, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!54 = !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEh", scope: !25, file: !26, line: 48, type: !55, scopeLine: 48, containingType: !25, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!55 = !DISubroutineType(types: !56)
!56 = !{!38, !40, !13}
!57 = !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKc", scope: !25, file: !26, line: 49, type: !58, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!58 = !DISubroutineType(types: !59)
!59 = !{!38, !40, !4}
!60 = !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKhj", scope: !25, file: !26, line: 53, type: !61, scopeLine: 53, containingType: !25, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!61 = !DISubroutineType(types: !62)
!62 = !{!38, !40, !11, !38}
!63 = !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKcj", scope: !25, file: !26, line: 54, type: !64, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!64 = !DISubroutineType(types: !65)
!65 = !{!38, !40, !4, !38}
!66 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEPK19__FlashStringHelper", scope: !25, file: !26, line: 58, type: !67, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{!38, !40, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !72, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!72 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.h", directory: "/home/aaa")
!73 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printERK6String", scope: !25, file: !26, line: 59, type: !74, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{!38, !40, !76}
!76 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !72, line: 45, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !79, identifier: "_ZTS6String")
!79 = !{!80, !82, !83, !84, !88, !92, !95, !98, !102, !107, !110, !113, !116, !119, !122, !125, !129, !132, !135, !138, !141, !145, !148, !151, !154, !157, !160, !163, !166, !169, !172, !173, !176, !179, !182, !185, !188, !189, !190, !193, !196, !199, !202, !205, !208, !211, !214, !215, !220, !223, !226, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !242, !243, !246, !249, !250, !254, !258, !261, !264, !267, !268, !269, !270, !273, !276, !277, !280, !281, !282, !283, !284, !287, !290, !293, !296, !299, !302, !303, !304, !305, !308, !311, !314, !315, !316, !317, !320, !323, !326}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !78, file: !72, line: 196, baseType: !81, size: 32, flags: DIFlagProtected)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !78, file: !72, line: 197, baseType: !10, size: 32, offset: 32, flags: DIFlagProtected)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !78, file: !72, line: 198, baseType: !10, size: 32, offset: 64, flags: DIFlagProtected)
!84 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !78, file: !72, line: 51, type: !85, scopeLine: 51, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DISubprogram(name: "String", scope: !78, file: !72, line: 59, type: !89, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !91, !4}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!92 = !DISubprogram(name: "String", scope: !78, file: !72, line: 60, type: !93, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !91, !76}
!95 = !DISubprogram(name: "String", scope: !78, file: !72, line: 61, type: !96, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !91, !69}
!98 = !DISubprogram(name: "String", scope: !78, file: !72, line: 63, type: !99, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !91, !101}
!101 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !78, size: 32)
!102 = !DISubprogram(name: "String", scope: !78, file: !72, line: 64, type: !103, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !91, !105}
!105 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !106, size: 32)
!106 = !DICompositeType(tag: DW_TAG_class_type, name: "StringSumHelper", file: !72, line: 213, flags: DIFlagFwdDecl, identifier: "_ZTS15StringSumHelper")
!107 = !DISubprogram(name: "String", scope: !78, file: !72, line: 66, type: !108, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !91, !6}
!110 = !DISubprogram(name: "String", scope: !78, file: !72, line: 67, type: !111, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !91, !17, !17}
!113 = !DISubprogram(name: "String", scope: !78, file: !72, line: 68, type: !114, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !91, !33, !17}
!116 = !DISubprogram(name: "String", scope: !78, file: !72, line: 69, type: !117, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !91, !10, !17}
!119 = !DISubprogram(name: "String", scope: !78, file: !72, line: 70, type: !120, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !91, !8, !17}
!122 = !DISubprogram(name: "String", scope: !78, file: !72, line: 71, type: !123, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !91, !7, !17}
!125 = !DISubprogram(name: "String", scope: !78, file: !72, line: 72, type: !126, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !91, !128, !17}
!128 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!129 = !DISubprogram(name: "String", scope: !78, file: !72, line: 73, type: !130, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !91, !9, !17}
!132 = !DISubprogram(name: "~String", scope: !78, file: !72, line: 74, type: !133, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !91}
!135 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !78, file: !72, line: 80, type: !136, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!17, !91, !10}
!138 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !78, file: !72, line: 81, type: !139, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!10, !87}
!141 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !78, file: !72, line: 86, type: !142, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !91, !76}
!144 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !78, size: 32)
!145 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !78, file: !72, line: 87, type: !146, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!144, !91, !4}
!148 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !78, file: !72, line: 88, type: !149, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!144, !91, !69}
!151 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEOS_", scope: !78, file: !72, line: 90, type: !152, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!144, !91, !101}
!154 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEO15StringSumHelper", scope: !78, file: !72, line: 91, type: !155, scopeLine: 91, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!144, !91, !105}
!157 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !78, file: !72, line: 99, type: !158, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!17, !91, !76}
!160 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !78, file: !72, line: 100, type: !161, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!17, !91, !4}
!163 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !78, file: !72, line: 101, type: !164, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!17, !91, !6}
!166 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !78, file: !72, line: 102, type: !167, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!17, !91, !17}
!169 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !78, file: !72, line: 103, type: !170, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!17, !91, !33}
!172 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !78, file: !72, line: 104, type: !136, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!173 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !78, file: !72, line: 105, type: !174, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!17, !91, !8}
!176 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !78, file: !72, line: 106, type: !177, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!17, !91, !7}
!179 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !78, file: !72, line: 107, type: !180, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!17, !91, !128}
!182 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !78, file: !72, line: 108, type: !183, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!17, !91, !9}
!185 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !78, file: !72, line: 109, type: !186, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{!17, !91, !69}
!188 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !78, file: !72, line: 113, type: !142, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!189 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !78, file: !72, line: 114, type: !146, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!190 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !78, file: !72, line: 115, type: !191, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!144, !91, !6}
!193 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !78, file: !72, line: 116, type: !194, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!144, !91, !17}
!196 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !78, file: !72, line: 117, type: !197, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{!144, !91, !33}
!199 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !78, file: !72, line: 118, type: !200, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!200 = !DISubroutineType(types: !201)
!201 = !{!144, !91, !10}
!202 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !78, file: !72, line: 119, type: !203, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!144, !91, !8}
!205 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !78, file: !72, line: 120, type: !206, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!144, !91, !7}
!208 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !78, file: !72, line: 121, type: !209, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!144, !91, !128}
!211 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !78, file: !72, line: 122, type: !212, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{!144, !91, !9}
!214 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !78, file: !72, line: 123, type: !149, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!215 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !78, file: !72, line: 138, type: !216, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !87}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !78, file: !72, line: 50, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !85, size: 64, extraData: !78)
!220 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !78, file: !72, line: 139, type: !221, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{!33, !87, !76}
!223 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !78, file: !72, line: 140, type: !224, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{!17, !87, !76}
!226 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !78, file: !72, line: 141, type: !227, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!17, !87, !4}
!229 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !78, file: !72, line: 142, type: !224, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!230 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !78, file: !72, line: 143, type: !227, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!231 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !78, file: !72, line: 144, type: !224, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!232 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !78, file: !72, line: 145, type: !227, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!233 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !78, file: !72, line: 146, type: !224, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!234 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !78, file: !72, line: 147, type: !224, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!235 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !78, file: !72, line: 148, type: !224, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!236 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !78, file: !72, line: 149, type: !224, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!237 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !78, file: !72, line: 150, type: !224, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!238 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !78, file: !72, line: 151, type: !224, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!239 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !78, file: !72, line: 152, type: !240, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!240 = !DISubroutineType(types: !241)
!241 = !{!17, !87, !76, !10}
!242 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !78, file: !72, line: 153, type: !224, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!243 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !78, file: !72, line: 156, type: !244, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!244 = !DISubroutineType(types: !245)
!245 = !{!6, !87, !10}
!246 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !78, file: !72, line: 157, type: !247, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !91, !10, !6}
!249 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !78, file: !72, line: 158, type: !244, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!250 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !78, file: !72, line: 159, type: !251, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !91, !10}
!253 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 32)
!254 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !78, file: !72, line: 160, type: !255, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !87, !257, !10, !10}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!258 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !78, file: !72, line: 161, type: !259, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !87, !81, !10, !10}
!261 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !78, file: !72, line: 163, type: !262, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!4, !87}
!264 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !78, file: !72, line: 164, type: !265, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!81, !91}
!267 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !78, file: !72, line: 165, type: !265, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!268 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !78, file: !72, line: 166, type: !262, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!269 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !78, file: !72, line: 167, type: !262, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!270 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !78, file: !72, line: 170, type: !271, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{!33, !87, !6}
!273 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !78, file: !72, line: 171, type: !274, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{!33, !87, !6, !10}
!276 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !78, file: !72, line: 172, type: !221, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!277 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !78, file: !72, line: 173, type: !278, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{!33, !87, !76, !10}
!280 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !78, file: !72, line: 174, type: !271, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!281 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !78, file: !72, line: 175, type: !274, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!282 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !78, file: !72, line: 176, type: !221, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!283 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !78, file: !72, line: 177, type: !278, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!284 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !78, file: !72, line: 178, type: !285, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!78, !87, !10}
!287 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !78, file: !72, line: 179, type: !288, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!78, !87, !10, !10}
!290 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !78, file: !72, line: 182, type: !291, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !91, !6, !6}
!293 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !78, file: !72, line: 183, type: !294, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !91, !76, !76}
!296 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !78, file: !72, line: 184, type: !297, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !91, !10}
!299 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !78, file: !72, line: 185, type: !300, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !91, !10, !10}
!302 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !78, file: !72, line: 186, type: !133, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !78, file: !72, line: 187, type: !133, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!304 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !78, file: !72, line: 188, type: !133, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!305 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !78, file: !72, line: 191, type: !306, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!8, !87}
!308 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !78, file: !72, line: 192, type: !309, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!128, !87}
!311 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !78, file: !72, line: 193, type: !312, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{!9, !87}
!314 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !78, file: !72, line: 200, type: !133, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!315 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !78, file: !72, line: 201, type: !133, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!316 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !78, file: !72, line: 202, type: !136, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!317 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !78, file: !72, line: 203, type: !318, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{!17, !91, !4, !10}
!320 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !78, file: !72, line: 206, type: !321, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{!144, !91, !4, !10}
!323 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !78, file: !72, line: 207, type: !324, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!144, !91, !69, !10}
!326 = !DISubprogram(name: "move", linkageName: "_ZN6String4moveERS_", scope: !78, file: !72, line: 209, type: !327, scopeLine: 209, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !91, !144}
!329 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEPKc", scope: !25, file: !26, line: 60, type: !58, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEc", scope: !25, file: !26, line: 61, type: !331, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{!38, !40, !6}
!333 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEhi", scope: !25, file: !26, line: 62, type: !334, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{!38, !40, !17, !33}
!336 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEii", scope: !25, file: !26, line: 63, type: !337, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!337 = !DISubroutineType(types: !338)
!338 = !{!38, !40, !33, !33}
!339 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEji", scope: !25, file: !26, line: 64, type: !340, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!38, !40, !10, !33}
!342 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEli", scope: !25, file: !26, line: 65, type: !343, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!343 = !DISubroutineType(types: !344)
!344 = !{!38, !40, !8, !33}
!345 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEmi", scope: !25, file: !26, line: 66, type: !346, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!38, !40, !7, !33}
!348 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEdi", scope: !25, file: !26, line: 67, type: !349, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!349 = !DISubroutineType(types: !350)
!350 = !{!38, !40, !9, !33}
!351 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printERK9Printable", scope: !25, file: !26, line: 68, type: !352, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{!38, !40, !354}
!354 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DICompositeType(tag: DW_TAG_class_type, name: "Printable", file: !357, line: 33, flags: DIFlagFwdDecl, identifier: "_ZTS9Printable")
!357 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Printable.h", directory: "/home/aaa")
!358 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEPK19__FlashStringHelper", scope: !25, file: !26, line: 70, type: !67, scopeLine: 70, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!359 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnERK6String", scope: !25, file: !26, line: 71, type: !74, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!360 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEPKc", scope: !25, file: !26, line: 72, type: !58, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!361 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEc", scope: !25, file: !26, line: 73, type: !331, scopeLine: 73, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!362 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEhi", scope: !25, file: !26, line: 74, type: !334, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!363 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEii", scope: !25, file: !26, line: 75, type: !337, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!364 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEji", scope: !25, file: !26, line: 76, type: !340, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!365 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEli", scope: !25, file: !26, line: 77, type: !343, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!366 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEmi", scope: !25, file: !26, line: 78, type: !346, scopeLine: 78, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!367 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEdi", scope: !25, file: !26, line: 79, type: !349, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!368 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnERK9Printable", scope: !25, file: !26, line: 80, type: !352, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!369 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEv", scope: !25, file: !26, line: 81, type: !370, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!370 = !DISubroutineType(types: !371)
!371 = !{!38, !40}
!372 = !DILocalVariable(name: "this", arg: 1, scope: !23, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!374 = !DILocation(line: 0, scope: !23)
!375 = !DILocalVariable(name: "buffer", arg: 2, scope: !23, file: !24, line: 34, type: !11)
!376 = !DILocation(line: 34, column: 36, scope: !23)
!377 = !DILocalVariable(name: "size", arg: 3, scope: !23, file: !24, line: 34, type: !38)
!378 = !DILocation(line: 34, column: 51, scope: !23)
!379 = !DILocalVariable(name: "n", scope: !23, file: !24, line: 36, type: !38)
!380 = !DILocation(line: 36, column: 10, scope: !23)
!381 = !DILocation(line: 37, column: 3, scope: !23)
!382 = !DILocation(line: 37, column: 14, scope: !23)
!383 = !DILocation(line: 37, column: 10, scope: !23)
!384 = !DILocation(line: 38, column: 22, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !24, line: 38, column: 9)
!386 = distinct !DILexicalBlock(scope: !23, file: !24, line: 37, column: 18)
!387 = !DILocation(line: 38, column: 15, scope: !385)
!388 = !DILocation(line: 38, column: 9, scope: !385)
!389 = !DILocation(line: 38, column: 9, scope: !386)
!390 = !DILocation(line: 38, column: 28, scope: !385)
!391 = !DILocation(line: 38, column: 27, scope: !385)
!392 = !DILocation(line: 39, column: 10, scope: !385)
!393 = distinct !{!393, !381, !394}
!394 = !DILocation(line: 40, column: 3, scope: !23)
!395 = !DILocation(line: 41, column: 10, scope: !23)
!396 = !DILocation(line: 41, column: 3, scope: !23)
!397 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEPK19__FlashStringHelper", scope: !25, file: !24, line: 44, type: !67, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !66, retainedNodes: !2)
!398 = !DILocalVariable(name: "this", arg: 1, scope: !397, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!399 = !DILocation(line: 0, scope: !397)
!400 = !DILocalVariable(name: "ifsh", arg: 2, scope: !397, file: !24, line: 44, type: !69)
!401 = !DILocation(line: 44, column: 48, scope: !397)
!402 = !DILocation(line: 46, column: 47, scope: !397)
!403 = !DILocation(line: 46, column: 16, scope: !397)
!404 = !DILocation(line: 46, column: 10, scope: !397)
!405 = !DILocation(line: 46, column: 3, scope: !397)
!406 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEPKc", scope: !25, file: !24, line: 54, type: !58, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !329, retainedNodes: !2)
!407 = !DILocalVariable(name: "this", arg: 1, scope: !406, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!408 = !DILocation(line: 0, scope: !406)
!409 = !DILocalVariable(name: "str", arg: 2, scope: !406, file: !24, line: 54, type: !4)
!410 = !DILocation(line: 54, column: 32, scope: !406)
!411 = !DILocation(line: 56, column: 16, scope: !406)
!412 = !DILocation(line: 56, column: 10, scope: !406)
!413 = !DILocation(line: 56, column: 3, scope: !406)
!414 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printERK6String", scope: !25, file: !24, line: 49, type: !74, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !73, retainedNodes: !2)
!415 = !DILocalVariable(name: "this", arg: 1, scope: !414, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!416 = !DILocation(line: 0, scope: !414)
!417 = !DILocalVariable(name: "s", arg: 2, scope: !414, file: !24, line: 49, type: !76)
!418 = !DILocation(line: 49, column: 35, scope: !414)
!419 = !DILocation(line: 51, column: 16, scope: !414)
!420 = !DILocation(line: 51, column: 18, scope: !414)
!421 = !DILocation(line: 51, column: 27, scope: !414)
!422 = !DILocation(line: 51, column: 29, scope: !414)
!423 = !DILocation(line: 51, column: 10, scope: !414)
!424 = !DILocation(line: 51, column: 3, scope: !414)
!425 = distinct !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKcj", scope: !25, file: !26, line: 54, type: !64, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !63, retainedNodes: !2)
!426 = !DILocalVariable(name: "this", arg: 1, scope: !425, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!427 = !DILocation(line: 0, scope: !425)
!428 = !DILocalVariable(name: "buffer", arg: 2, scope: !425, file: !26, line: 54, type: !4)
!429 = !DILocation(line: 54, column: 30, scope: !425)
!430 = !DILocalVariable(name: "size", arg: 3, scope: !425, file: !26, line: 54, type: !38)
!431 = !DILocation(line: 54, column: 45, scope: !425)
!432 = !DILocation(line: 55, column: 37, scope: !425)
!433 = !DILocation(line: 55, column: 45, scope: !425)
!434 = !DILocation(line: 55, column: 14, scope: !425)
!435 = !DILocation(line: 55, column: 7, scope: !425)
!436 = distinct !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !78, file: !72, line: 163, type: !262, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !261, retainedNodes: !2)
!437 = !DILocalVariable(name: "this", arg: 1, scope: !436, type: !438, flags: DIFlagArtificial | DIFlagObjectPointer)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!439 = !DILocation(line: 0, scope: !436)
!440 = !DILocation(line: 163, column: 37, scope: !436)
!441 = !DILocation(line: 163, column: 30, scope: !436)
!442 = distinct !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !78, file: !72, line: 81, type: !139, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !138, retainedNodes: !2)
!443 = !DILocalVariable(name: "this", arg: 1, scope: !442, type: !438, flags: DIFlagArtificial | DIFlagObjectPointer)
!444 = !DILocation(line: 0, scope: !442)
!445 = !DILocation(line: 81, column: 49, scope: !442)
!446 = !DILocation(line: 81, column: 42, scope: !442)
!447 = distinct !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKc", scope: !25, file: !26, line: 49, type: !58, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !57, retainedNodes: !2)
!448 = !DILocalVariable(name: "this", arg: 1, scope: !447, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!449 = !DILocation(line: 0, scope: !447)
!450 = !DILocalVariable(name: "str", arg: 2, scope: !447, file: !26, line: 49, type: !4)
!451 = !DILocation(line: 49, column: 30, scope: !447)
!452 = !DILocation(line: 50, column: 11, scope: !453)
!453 = distinct !DILexicalBlock(scope: !447, file: !26, line: 50, column: 11)
!454 = !DILocation(line: 50, column: 15, scope: !453)
!455 = !DILocation(line: 50, column: 11, scope: !447)
!456 = !DILocation(line: 50, column: 24, scope: !453)
!457 = !DILocation(line: 51, column: 37, scope: !447)
!458 = !DILocation(line: 51, column: 49, scope: !447)
!459 = !DILocation(line: 51, column: 42, scope: !447)
!460 = !DILocation(line: 51, column: 14, scope: !447)
!461 = !DILocation(line: 51, column: 7, scope: !447)
!462 = !DILocation(line: 52, column: 5, scope: !447)
!463 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEc", scope: !25, file: !24, line: 59, type: !331, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !330, retainedNodes: !2)
!464 = !DILocalVariable(name: "this", arg: 1, scope: !463, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!465 = !DILocation(line: 0, scope: !463)
!466 = !DILocalVariable(name: "c", arg: 2, scope: !463, file: !24, line: 59, type: !6)
!467 = !DILocation(line: 59, column: 26, scope: !463)
!468 = !DILocation(line: 61, column: 16, scope: !463)
!469 = !DILocation(line: 61, column: 10, scope: !463)
!470 = !DILocation(line: 61, column: 3, scope: !463)
!471 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEhi", scope: !25, file: !24, line: 64, type: !334, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !333, retainedNodes: !2)
!472 = !DILocalVariable(name: "this", arg: 1, scope: !471, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!473 = !DILocation(line: 0, scope: !471)
!474 = !DILocalVariable(name: "b", arg: 2, scope: !471, file: !24, line: 64, type: !17)
!475 = !DILocation(line: 64, column: 35, scope: !471)
!476 = !DILocalVariable(name: "base", arg: 3, scope: !471, file: !24, line: 64, type: !33)
!477 = !DILocation(line: 64, column: 42, scope: !471)
!478 = !DILocation(line: 66, column: 32, scope: !471)
!479 = !DILocation(line: 66, column: 35, scope: !471)
!480 = !DILocation(line: 66, column: 10, scope: !471)
!481 = !DILocation(line: 66, column: 3, scope: !471)
!482 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEmi", scope: !25, file: !24, line: 95, type: !346, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !345, retainedNodes: !2)
!483 = !DILocalVariable(name: "this", arg: 1, scope: !482, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!484 = !DILocation(line: 0, scope: !482)
!485 = !DILocalVariable(name: "n", arg: 2, scope: !482, file: !24, line: 95, type: !7)
!486 = !DILocation(line: 95, column: 35, scope: !482)
!487 = !DILocalVariable(name: "base", arg: 3, scope: !482, file: !24, line: 95, type: !33)
!488 = !DILocation(line: 95, column: 42, scope: !482)
!489 = !DILocation(line: 97, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !482, file: !24, line: 97, column: 7)
!491 = !DILocation(line: 97, column: 12, scope: !490)
!492 = !DILocation(line: 97, column: 7, scope: !482)
!493 = !DILocation(line: 97, column: 31, scope: !490)
!494 = !DILocation(line: 97, column: 25, scope: !490)
!495 = !DILocation(line: 97, column: 18, scope: !490)
!496 = !DILocation(line: 98, column: 27, scope: !490)
!497 = !DILocation(line: 98, column: 30, scope: !490)
!498 = !DILocation(line: 98, column: 15, scope: !490)
!499 = !DILocation(line: 98, column: 8, scope: !490)
!500 = !DILocation(line: 99, column: 1, scope: !482)
!501 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEii", scope: !25, file: !24, line: 69, type: !337, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !336, retainedNodes: !2)
!502 = !DILocalVariable(name: "this", arg: 1, scope: !501, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!503 = !DILocation(line: 0, scope: !501)
!504 = !DILocalVariable(name: "n", arg: 2, scope: !501, file: !24, line: 69, type: !33)
!505 = !DILocation(line: 69, column: 25, scope: !501)
!506 = !DILocalVariable(name: "base", arg: 3, scope: !501, file: !24, line: 69, type: !33)
!507 = !DILocation(line: 69, column: 32, scope: !501)
!508 = !DILocation(line: 71, column: 23, scope: !501)
!509 = !DILocation(line: 71, column: 26, scope: !501)
!510 = !DILocation(line: 71, column: 10, scope: !501)
!511 = !DILocation(line: 71, column: 3, scope: !501)
!512 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEli", scope: !25, file: !24, line: 79, type: !343, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !342, retainedNodes: !2)
!513 = !DILocalVariable(name: "this", arg: 1, scope: !512, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!514 = !DILocation(line: 0, scope: !512)
!515 = !DILocalVariable(name: "n", arg: 2, scope: !512, file: !24, line: 79, type: !8)
!516 = !DILocation(line: 79, column: 26, scope: !512)
!517 = !DILocalVariable(name: "base", arg: 3, scope: !512, file: !24, line: 79, type: !33)
!518 = !DILocation(line: 79, column: 33, scope: !512)
!519 = !DILocation(line: 81, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !512, file: !24, line: 81, column: 7)
!521 = !DILocation(line: 81, column: 12, scope: !520)
!522 = !DILocation(line: 81, column: 7, scope: !512)
!523 = !DILocation(line: 82, column: 18, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !24, line: 81, column: 18)
!525 = !DILocation(line: 82, column: 12, scope: !524)
!526 = !DILocation(line: 82, column: 5, scope: !524)
!527 = !DILocation(line: 83, column: 14, scope: !528)
!528 = distinct !DILexicalBlock(scope: !520, file: !24, line: 83, column: 14)
!529 = !DILocation(line: 83, column: 19, scope: !528)
!530 = !DILocation(line: 83, column: 14, scope: !520)
!531 = !DILocation(line: 84, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !24, line: 84, column: 9)
!533 = distinct !DILexicalBlock(scope: !528, file: !24, line: 83, column: 26)
!534 = !DILocation(line: 84, column: 11, scope: !532)
!535 = !DILocation(line: 84, column: 9, scope: !533)
!536 = !DILocalVariable(name: "t", scope: !537, file: !24, line: 85, type: !33)
!537 = distinct !DILexicalBlock(scope: !532, file: !24, line: 84, column: 16)
!538 = !DILocation(line: 85, column: 11, scope: !537)
!539 = !DILocation(line: 85, column: 15, scope: !537)
!540 = !DILocation(line: 86, column: 12, scope: !537)
!541 = !DILocation(line: 86, column: 11, scope: !537)
!542 = !DILocation(line: 86, column: 9, scope: !537)
!543 = !DILocation(line: 87, column: 26, scope: !537)
!544 = !DILocation(line: 87, column: 14, scope: !537)
!545 = !DILocation(line: 87, column: 35, scope: !537)
!546 = !DILocation(line: 87, column: 33, scope: !537)
!547 = !DILocation(line: 87, column: 7, scope: !537)
!548 = !DILocation(line: 89, column: 24, scope: !533)
!549 = !DILocation(line: 89, column: 12, scope: !533)
!550 = !DILocation(line: 89, column: 5, scope: !533)
!551 = !DILocation(line: 91, column: 24, scope: !552)
!552 = distinct !DILexicalBlock(scope: !528, file: !24, line: 90, column: 10)
!553 = !DILocation(line: 91, column: 27, scope: !552)
!554 = !DILocation(line: 91, column: 12, scope: !552)
!555 = !DILocation(line: 91, column: 5, scope: !552)
!556 = !DILocation(line: 93, column: 1, scope: !512)
!557 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEji", scope: !25, file: !24, line: 74, type: !340, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !339, retainedNodes: !2)
!558 = !DILocalVariable(name: "this", arg: 1, scope: !557, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!559 = !DILocation(line: 0, scope: !557)
!560 = !DILocalVariable(name: "n", arg: 2, scope: !557, file: !24, line: 74, type: !10)
!561 = !DILocation(line: 74, column: 34, scope: !557)
!562 = !DILocalVariable(name: "base", arg: 3, scope: !557, file: !24, line: 74, type: !33)
!563 = !DILocation(line: 74, column: 41, scope: !557)
!564 = !DILocation(line: 76, column: 32, scope: !557)
!565 = !DILocation(line: 76, column: 35, scope: !557)
!566 = !DILocation(line: 76, column: 10, scope: !557)
!567 = !DILocation(line: 76, column: 3, scope: !557)
!568 = distinct !DISubprogram(name: "printNumber", linkageName: "_ZN5Print11printNumberEmh", scope: !25, file: !24, line: 195, type: !36, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !35, retainedNodes: !2)
!569 = !DILocalVariable(name: "this", arg: 1, scope: !568, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!570 = !DILocation(line: 0, scope: !568)
!571 = !DILocalVariable(name: "n", arg: 2, scope: !568, file: !24, line: 195, type: !7)
!572 = !DILocation(line: 195, column: 41, scope: !568)
!573 = !DILocalVariable(name: "base", arg: 3, scope: !568, file: !24, line: 195, type: !13)
!574 = !DILocation(line: 195, column: 52, scope: !568)
!575 = !DILocalVariable(name: "buf", scope: !568, file: !24, line: 197, type: !576)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 264, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 33)
!579 = !DILocation(line: 197, column: 8, scope: !568)
!580 = !DILocalVariable(name: "str", scope: !568, file: !24, line: 198, type: !81)
!581 = !DILocation(line: 198, column: 9, scope: !568)
!582 = !DILocation(line: 198, column: 16, scope: !568)
!583 = !DILocation(line: 200, column: 4, scope: !568)
!584 = !DILocation(line: 200, column: 8, scope: !568)
!585 = !DILocation(line: 203, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !568, file: !24, line: 203, column: 7)
!587 = !DILocation(line: 203, column: 12, scope: !586)
!588 = !DILocation(line: 203, column: 7, scope: !568)
!589 = !DILocation(line: 203, column: 22, scope: !586)
!590 = !DILocation(line: 203, column: 17, scope: !586)
!591 = !DILocation(line: 205, column: 3, scope: !568)
!592 = !DILocalVariable(name: "c", scope: !593, file: !24, line: 206, type: !6)
!593 = distinct !DILexicalBlock(scope: !568, file: !24, line: 205, column: 6)
!594 = !DILocation(line: 206, column: 10, scope: !593)
!595 = !DILocation(line: 206, column: 14, scope: !593)
!596 = !DILocation(line: 206, column: 18, scope: !593)
!597 = !DILocation(line: 206, column: 16, scope: !593)
!598 = !DILocation(line: 207, column: 10, scope: !593)
!599 = !DILocation(line: 207, column: 7, scope: !593)
!600 = !DILocation(line: 209, column: 14, scope: !593)
!601 = !DILocation(line: 209, column: 16, scope: !593)
!602 = !DILocation(line: 209, column: 23, scope: !593)
!603 = !DILocation(line: 209, column: 25, scope: !593)
!604 = !DILocation(line: 209, column: 33, scope: !593)
!605 = !DILocation(line: 209, column: 35, scope: !593)
!606 = !DILocation(line: 209, column: 41, scope: !593)
!607 = !DILocation(line: 209, column: 6, scope: !593)
!608 = !DILocation(line: 209, column: 12, scope: !593)
!609 = !DILocation(line: 210, column: 3, scope: !593)
!610 = !DILocation(line: 210, column: 11, scope: !568)
!611 = distinct !{!611, !591, !612}
!612 = !DILocation(line: 210, column: 12, scope: !568)
!613 = !DILocation(line: 212, column: 16, scope: !568)
!614 = !DILocation(line: 212, column: 10, scope: !568)
!615 = !DILocation(line: 212, column: 3, scope: !568)
!616 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printEdi", scope: !25, file: !24, line: 101, type: !349, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !348, retainedNodes: !2)
!617 = !DILocalVariable(name: "this", arg: 1, scope: !616, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!618 = !DILocation(line: 0, scope: !616)
!619 = !DILocalVariable(name: "n", arg: 2, scope: !616, file: !24, line: 101, type: !9)
!620 = !DILocation(line: 101, column: 28, scope: !616)
!621 = !DILocalVariable(name: "digits", arg: 3, scope: !616, file: !24, line: 101, type: !33)
!622 = !DILocation(line: 101, column: 35, scope: !616)
!623 = !DILocation(line: 103, column: 21, scope: !616)
!624 = !DILocation(line: 103, column: 24, scope: !616)
!625 = !DILocation(line: 103, column: 10, scope: !616)
!626 = !DILocation(line: 103, column: 3, scope: !616)
!627 = distinct !DISubprogram(name: "printFloat", linkageName: "_ZN5Print10printFloatEdh", scope: !25, file: !24, line: 215, type: !42, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !41, retainedNodes: !2)
!628 = !DILocalVariable(name: "this", arg: 1, scope: !627, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!629 = !DILocation(line: 0, scope: !627)
!630 = !DILocalVariable(name: "number", arg: 2, scope: !627, file: !24, line: 215, type: !9)
!631 = !DILocation(line: 215, column: 33, scope: !627)
!632 = !DILocalVariable(name: "digits", arg: 3, scope: !627, file: !24, line: 215, type: !13)
!633 = !DILocation(line: 215, column: 49, scope: !627)
!634 = !DILocalVariable(name: "n", scope: !627, file: !24, line: 217, type: !38)
!635 = !DILocation(line: 217, column: 10, scope: !627)
!636 = !DILocation(line: 219, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !627, file: !24, line: 219, column: 7)
!638 = !DILocation(line: 219, column: 7, scope: !627)
!639 = !DILocation(line: 219, column: 29, scope: !637)
!640 = !DILocation(line: 219, column: 22, scope: !637)
!641 = !DILocation(line: 220, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !627, file: !24, line: 220, column: 7)
!643 = !DILocation(line: 220, column: 7, scope: !627)
!644 = !DILocation(line: 220, column: 29, scope: !642)
!645 = !DILocation(line: 220, column: 22, scope: !642)
!646 = !DILocation(line: 221, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !627, file: !24, line: 221, column: 7)
!648 = !DILocation(line: 221, column: 14, scope: !647)
!649 = !DILocation(line: 221, column: 7, scope: !627)
!650 = !DILocation(line: 221, column: 37, scope: !647)
!651 = !DILocation(line: 221, column: 30, scope: !647)
!652 = !DILocation(line: 222, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !627, file: !24, line: 222, column: 7)
!654 = !DILocation(line: 222, column: 14, scope: !653)
!655 = !DILocation(line: 222, column: 7, scope: !627)
!656 = !DILocation(line: 222, column: 37, scope: !653)
!657 = !DILocation(line: 222, column: 30, scope: !653)
!658 = !DILocation(line: 225, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !627, file: !24, line: 225, column: 7)
!660 = !DILocation(line: 225, column: 14, scope: !659)
!661 = !DILocation(line: 225, column: 7, scope: !627)
!662 = !DILocation(line: 227, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !24, line: 226, column: 3)
!664 = !DILocation(line: 227, column: 8, scope: !663)
!665 = !DILocation(line: 228, column: 16, scope: !663)
!666 = !DILocation(line: 228, column: 15, scope: !663)
!667 = !DILocation(line: 228, column: 13, scope: !663)
!668 = !DILocation(line: 229, column: 3, scope: !663)
!669 = !DILocalVariable(name: "rounding", scope: !627, file: !24, line: 232, type: !9)
!670 = !DILocation(line: 232, column: 10, scope: !627)
!671 = !DILocalVariable(name: "i", scope: !672, file: !24, line: 233, type: !13)
!672 = distinct !DILexicalBlock(scope: !627, file: !24, line: 233, column: 3)
!673 = !DILocation(line: 233, column: 16, scope: !672)
!674 = !DILocation(line: 233, column: 8, scope: !672)
!675 = !DILocation(line: 233, column: 21, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !24, line: 233, column: 3)
!677 = !DILocation(line: 233, column: 23, scope: !676)
!678 = !DILocation(line: 233, column: 22, scope: !676)
!679 = !DILocation(line: 233, column: 3, scope: !672)
!680 = !DILocation(line: 234, column: 14, scope: !676)
!681 = !DILocation(line: 234, column: 5, scope: !676)
!682 = !DILocation(line: 233, column: 31, scope: !676)
!683 = !DILocation(line: 233, column: 3, scope: !676)
!684 = distinct !{!684, !679, !685}
!685 = !DILocation(line: 234, column: 17, scope: !672)
!686 = !DILocation(line: 236, column: 13, scope: !627)
!687 = !DILocation(line: 236, column: 10, scope: !627)
!688 = !DILocalVariable(name: "int_part", scope: !627, file: !24, line: 239, type: !7)
!689 = !DILocation(line: 239, column: 17, scope: !627)
!690 = !DILocation(line: 239, column: 43, scope: !627)
!691 = !DILocalVariable(name: "remainder", scope: !627, file: !24, line: 240, type: !9)
!692 = !DILocation(line: 240, column: 10, scope: !627)
!693 = !DILocation(line: 240, column: 22, scope: !627)
!694 = !DILocation(line: 240, column: 39, scope: !627)
!695 = !DILocation(line: 240, column: 29, scope: !627)
!696 = !DILocation(line: 241, column: 14, scope: !627)
!697 = !DILocation(line: 241, column: 8, scope: !627)
!698 = !DILocation(line: 241, column: 5, scope: !627)
!699 = !DILocation(line: 244, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !627, file: !24, line: 244, column: 7)
!701 = !DILocation(line: 244, column: 14, scope: !700)
!702 = !DILocation(line: 244, column: 7, scope: !627)
!703 = !DILocation(line: 245, column: 10, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !24, line: 244, column: 19)
!705 = !DILocation(line: 245, column: 7, scope: !704)
!706 = !DILocation(line: 246, column: 3, scope: !704)
!707 = !DILocation(line: 249, column: 3, scope: !627)
!708 = !DILocation(line: 249, column: 16, scope: !627)
!709 = !DILocation(line: 249, column: 10, scope: !627)
!710 = !DILocation(line: 249, column: 19, scope: !627)
!711 = !DILocation(line: 251, column: 15, scope: !712)
!712 = distinct !DILexicalBlock(scope: !627, file: !24, line: 250, column: 3)
!713 = !DILocalVariable(name: "toPrint", scope: !712, file: !24, line: 252, type: !10)
!714 = !DILocation(line: 252, column: 18, scope: !712)
!715 = !DILocation(line: 252, column: 42, scope: !712)
!716 = !DILocation(line: 253, column: 16, scope: !712)
!717 = !DILocation(line: 253, column: 10, scope: !712)
!718 = !DILocation(line: 253, column: 7, scope: !712)
!719 = !DILocation(line: 254, column: 18, scope: !712)
!720 = !DILocation(line: 254, column: 15, scope: !712)
!721 = distinct !{!721, !707, !722}
!722 = !DILocation(line: 255, column: 3, scope: !627)
!723 = !DILocation(line: 257, column: 10, scope: !627)
!724 = !DILocation(line: 257, column: 3, scope: !627)
!725 = !DILocation(line: 258, column: 1, scope: !627)
!726 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEPK19__FlashStringHelper", scope: !25, file: !24, line: 106, type: !67, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !358, retainedNodes: !2)
!727 = !DILocalVariable(name: "this", arg: 1, scope: !726, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!728 = !DILocation(line: 0, scope: !726)
!729 = !DILocalVariable(name: "ifsh", arg: 2, scope: !726, file: !24, line: 106, type: !69)
!730 = !DILocation(line: 106, column: 50, scope: !726)
!731 = !DILocalVariable(name: "n", scope: !726, file: !24, line: 108, type: !38)
!732 = !DILocation(line: 108, column: 10, scope: !726)
!733 = !DILocation(line: 108, column: 20, scope: !726)
!734 = !DILocation(line: 108, column: 14, scope: !726)
!735 = !DILocation(line: 109, column: 8, scope: !726)
!736 = !DILocation(line: 109, column: 5, scope: !726)
!737 = !DILocation(line: 110, column: 10, scope: !726)
!738 = !DILocation(line: 110, column: 3, scope: !726)
!739 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEv", scope: !25, file: !24, line: 118, type: !370, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !369, retainedNodes: !2)
!740 = !DILocalVariable(name: "this", arg: 1, scope: !739, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!741 = !DILocation(line: 0, scope: !739)
!742 = !DILocation(line: 120, column: 10, scope: !739)
!743 = !DILocation(line: 120, column: 3, scope: !739)
!744 = distinct !DISubprogram(name: "print", linkageName: "_ZN5Print5printERK9Printable", scope: !25, file: !24, line: 113, type: !352, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !351, retainedNodes: !2)
!745 = !DILocalVariable(name: "this", arg: 1, scope: !744, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!746 = !DILocation(line: 0, scope: !744)
!747 = !DILocalVariable(name: "x", arg: 2, scope: !744, file: !24, line: 113, type: !354)
!748 = !DILocation(line: 113, column: 38, scope: !744)
!749 = !DILocation(line: 115, column: 10, scope: !744)
!750 = !DILocation(line: 115, column: 12, scope: !744)
!751 = !DILocation(line: 115, column: 3, scope: !744)
!752 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnERK6String", scope: !25, file: !24, line: 123, type: !74, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !359, retainedNodes: !2)
!753 = !DILocalVariable(name: "this", arg: 1, scope: !752, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!754 = !DILocation(line: 0, scope: !752)
!755 = !DILocalVariable(name: "s", arg: 2, scope: !752, file: !24, line: 123, type: !76)
!756 = !DILocation(line: 123, column: 37, scope: !752)
!757 = !DILocalVariable(name: "n", scope: !752, file: !24, line: 125, type: !38)
!758 = !DILocation(line: 125, column: 10, scope: !752)
!759 = !DILocation(line: 125, column: 20, scope: !752)
!760 = !DILocation(line: 125, column: 14, scope: !752)
!761 = !DILocation(line: 126, column: 8, scope: !752)
!762 = !DILocation(line: 126, column: 5, scope: !752)
!763 = !DILocation(line: 127, column: 10, scope: !752)
!764 = !DILocation(line: 127, column: 3, scope: !752)
!765 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEPKc", scope: !25, file: !24, line: 130, type: !58, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !360, retainedNodes: !2)
!766 = !DILocalVariable(name: "this", arg: 1, scope: !765, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!767 = !DILocation(line: 0, scope: !765)
!768 = !DILocalVariable(name: "c", arg: 2, scope: !765, file: !24, line: 130, type: !4)
!769 = !DILocation(line: 130, column: 34, scope: !765)
!770 = !DILocalVariable(name: "n", scope: !765, file: !24, line: 132, type: !38)
!771 = !DILocation(line: 132, column: 10, scope: !765)
!772 = !DILocation(line: 132, column: 20, scope: !765)
!773 = !DILocation(line: 132, column: 14, scope: !765)
!774 = !DILocation(line: 133, column: 8, scope: !765)
!775 = !DILocation(line: 133, column: 5, scope: !765)
!776 = !DILocation(line: 134, column: 10, scope: !765)
!777 = !DILocation(line: 134, column: 3, scope: !765)
!778 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEc", scope: !25, file: !24, line: 137, type: !331, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !361, retainedNodes: !2)
!779 = !DILocalVariable(name: "this", arg: 1, scope: !778, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!780 = !DILocation(line: 0, scope: !778)
!781 = !DILocalVariable(name: "c", arg: 2, scope: !778, file: !24, line: 137, type: !6)
!782 = !DILocation(line: 137, column: 28, scope: !778)
!783 = !DILocalVariable(name: "n", scope: !778, file: !24, line: 139, type: !38)
!784 = !DILocation(line: 139, column: 10, scope: !778)
!785 = !DILocation(line: 139, column: 20, scope: !778)
!786 = !DILocation(line: 139, column: 14, scope: !778)
!787 = !DILocation(line: 140, column: 8, scope: !778)
!788 = !DILocation(line: 140, column: 5, scope: !778)
!789 = !DILocation(line: 141, column: 10, scope: !778)
!790 = !DILocation(line: 141, column: 3, scope: !778)
!791 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEhi", scope: !25, file: !24, line: 144, type: !334, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !362, retainedNodes: !2)
!792 = !DILocalVariable(name: "this", arg: 1, scope: !791, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!793 = !DILocation(line: 0, scope: !791)
!794 = !DILocalVariable(name: "b", arg: 2, scope: !791, file: !24, line: 144, type: !17)
!795 = !DILocation(line: 144, column: 37, scope: !791)
!796 = !DILocalVariable(name: "base", arg: 3, scope: !791, file: !24, line: 144, type: !33)
!797 = !DILocation(line: 144, column: 44, scope: !791)
!798 = !DILocalVariable(name: "n", scope: !791, file: !24, line: 146, type: !38)
!799 = !DILocation(line: 146, column: 10, scope: !791)
!800 = !DILocation(line: 146, column: 20, scope: !791)
!801 = !DILocation(line: 146, column: 23, scope: !791)
!802 = !DILocation(line: 146, column: 14, scope: !791)
!803 = !DILocation(line: 147, column: 8, scope: !791)
!804 = !DILocation(line: 147, column: 5, scope: !791)
!805 = !DILocation(line: 148, column: 10, scope: !791)
!806 = !DILocation(line: 148, column: 3, scope: !791)
!807 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEii", scope: !25, file: !24, line: 151, type: !337, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !363, retainedNodes: !2)
!808 = !DILocalVariable(name: "this", arg: 1, scope: !807, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!809 = !DILocation(line: 0, scope: !807)
!810 = !DILocalVariable(name: "num", arg: 2, scope: !807, file: !24, line: 151, type: !33)
!811 = !DILocation(line: 151, column: 27, scope: !807)
!812 = !DILocalVariable(name: "base", arg: 3, scope: !807, file: !24, line: 151, type: !33)
!813 = !DILocation(line: 151, column: 36, scope: !807)
!814 = !DILocalVariable(name: "n", scope: !807, file: !24, line: 153, type: !38)
!815 = !DILocation(line: 153, column: 10, scope: !807)
!816 = !DILocation(line: 153, column: 20, scope: !807)
!817 = !DILocation(line: 153, column: 25, scope: !807)
!818 = !DILocation(line: 153, column: 14, scope: !807)
!819 = !DILocation(line: 154, column: 8, scope: !807)
!820 = !DILocation(line: 154, column: 5, scope: !807)
!821 = !DILocation(line: 155, column: 10, scope: !807)
!822 = !DILocation(line: 155, column: 3, scope: !807)
!823 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEji", scope: !25, file: !24, line: 158, type: !340, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !364, retainedNodes: !2)
!824 = !DILocalVariable(name: "this", arg: 1, scope: !823, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!825 = !DILocation(line: 0, scope: !823)
!826 = !DILocalVariable(name: "num", arg: 2, scope: !823, file: !24, line: 158, type: !10)
!827 = !DILocation(line: 158, column: 36, scope: !823)
!828 = !DILocalVariable(name: "base", arg: 3, scope: !823, file: !24, line: 158, type: !33)
!829 = !DILocation(line: 158, column: 45, scope: !823)
!830 = !DILocalVariable(name: "n", scope: !823, file: !24, line: 160, type: !38)
!831 = !DILocation(line: 160, column: 10, scope: !823)
!832 = !DILocation(line: 160, column: 20, scope: !823)
!833 = !DILocation(line: 160, column: 25, scope: !823)
!834 = !DILocation(line: 160, column: 14, scope: !823)
!835 = !DILocation(line: 161, column: 8, scope: !823)
!836 = !DILocation(line: 161, column: 5, scope: !823)
!837 = !DILocation(line: 162, column: 10, scope: !823)
!838 = !DILocation(line: 162, column: 3, scope: !823)
!839 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEli", scope: !25, file: !24, line: 165, type: !343, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !365, retainedNodes: !2)
!840 = !DILocalVariable(name: "this", arg: 1, scope: !839, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!841 = !DILocation(line: 0, scope: !839)
!842 = !DILocalVariable(name: "num", arg: 2, scope: !839, file: !24, line: 165, type: !8)
!843 = !DILocation(line: 165, column: 28, scope: !839)
!844 = !DILocalVariable(name: "base", arg: 3, scope: !839, file: !24, line: 165, type: !33)
!845 = !DILocation(line: 165, column: 37, scope: !839)
!846 = !DILocalVariable(name: "n", scope: !839, file: !24, line: 167, type: !38)
!847 = !DILocation(line: 167, column: 10, scope: !839)
!848 = !DILocation(line: 167, column: 20, scope: !839)
!849 = !DILocation(line: 167, column: 25, scope: !839)
!850 = !DILocation(line: 167, column: 14, scope: !839)
!851 = !DILocation(line: 168, column: 8, scope: !839)
!852 = !DILocation(line: 168, column: 5, scope: !839)
!853 = !DILocation(line: 169, column: 10, scope: !839)
!854 = !DILocation(line: 169, column: 3, scope: !839)
!855 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEmi", scope: !25, file: !24, line: 172, type: !346, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !366, retainedNodes: !2)
!856 = !DILocalVariable(name: "this", arg: 1, scope: !855, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!857 = !DILocation(line: 0, scope: !855)
!858 = !DILocalVariable(name: "num", arg: 2, scope: !855, file: !24, line: 172, type: !7)
!859 = !DILocation(line: 172, column: 37, scope: !855)
!860 = !DILocalVariable(name: "base", arg: 3, scope: !855, file: !24, line: 172, type: !33)
!861 = !DILocation(line: 172, column: 46, scope: !855)
!862 = !DILocalVariable(name: "n", scope: !855, file: !24, line: 174, type: !38)
!863 = !DILocation(line: 174, column: 10, scope: !855)
!864 = !DILocation(line: 174, column: 20, scope: !855)
!865 = !DILocation(line: 174, column: 25, scope: !855)
!866 = !DILocation(line: 174, column: 14, scope: !855)
!867 = !DILocation(line: 175, column: 8, scope: !855)
!868 = !DILocation(line: 175, column: 5, scope: !855)
!869 = !DILocation(line: 176, column: 10, scope: !855)
!870 = !DILocation(line: 176, column: 3, scope: !855)
!871 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEdi", scope: !25, file: !24, line: 179, type: !349, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !367, retainedNodes: !2)
!872 = !DILocalVariable(name: "this", arg: 1, scope: !871, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!873 = !DILocation(line: 0, scope: !871)
!874 = !DILocalVariable(name: "num", arg: 2, scope: !871, file: !24, line: 179, type: !9)
!875 = !DILocation(line: 179, column: 30, scope: !871)
!876 = !DILocalVariable(name: "digits", arg: 3, scope: !871, file: !24, line: 179, type: !33)
!877 = !DILocation(line: 179, column: 39, scope: !871)
!878 = !DILocalVariable(name: "n", scope: !871, file: !24, line: 181, type: !38)
!879 = !DILocation(line: 181, column: 10, scope: !871)
!880 = !DILocation(line: 181, column: 20, scope: !871)
!881 = !DILocation(line: 181, column: 25, scope: !871)
!882 = !DILocation(line: 181, column: 14, scope: !871)
!883 = !DILocation(line: 182, column: 8, scope: !871)
!884 = !DILocation(line: 182, column: 5, scope: !871)
!885 = !DILocation(line: 183, column: 10, scope: !871)
!886 = !DILocation(line: 183, column: 3, scope: !871)
!887 = distinct !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnERK9Printable", scope: !25, file: !24, line: 186, type: !352, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !368, retainedNodes: !2)
!888 = !DILocalVariable(name: "this", arg: 1, scope: !887, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!889 = !DILocation(line: 0, scope: !887)
!890 = !DILocalVariable(name: "x", arg: 2, scope: !887, file: !24, line: 186, type: !354)
!891 = !DILocation(line: 186, column: 40, scope: !887)
!892 = !DILocalVariable(name: "n", scope: !887, file: !24, line: 188, type: !38)
!893 = !DILocation(line: 188, column: 10, scope: !887)
!894 = !DILocation(line: 188, column: 20, scope: !887)
!895 = !DILocation(line: 188, column: 14, scope: !887)
!896 = !DILocation(line: 189, column: 8, scope: !887)
!897 = !DILocation(line: 189, column: 5, scope: !887)
!898 = !DILocation(line: 190, column: 10, scope: !887)
!899 = !DILocation(line: 190, column: 3, scope: !887)

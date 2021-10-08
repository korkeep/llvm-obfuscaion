; ModuleID = '/home/aaa/llvm-arduino-due/build/core/IPAddress.cpp.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/IPAddress.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.IPAddress = type { %class.Printable, %union.anon }
%class.Printable = type { i32 (...)** }
%union.anon = type { i32 }
%class.Print = type { i32 (...)**, i32 }

$_ZN9PrintableC2Ev = comdat any

$_ZTV9Printable = comdat any

@_ZL11INADDR_NONE = internal global %class.IPAddress zeroinitializer, align 4, !dbg !0
@_ZTV9IPAddress = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%class.IPAddress*, %class.Print*)* @_ZNK9IPAddress7printToER5Print to i8*)] }, align 4
@_ZTV9Printable = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* null, i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_IPAddress.cpp, i8* null }]

@_ZN9IPAddressC1Ev = dso_local unnamed_addr alias %class.IPAddress* (%class.IPAddress*), %class.IPAddress* (%class.IPAddress*)* @_ZN9IPAddressC2Ev
@_ZN9IPAddressC1Ehhhh = dso_local unnamed_addr alias %class.IPAddress* (%class.IPAddress*, i8, i8, i8, i8), %class.IPAddress* (%class.IPAddress*, i8, i8, i8, i8)* @_ZN9IPAddressC2Ehhhh
@_ZN9IPAddressC1Ej = dso_local unnamed_addr alias %class.IPAddress* (%class.IPAddress*, i32), %class.IPAddress* (%class.IPAddress*, i32)* @_ZN9IPAddressC2Ej
@_ZN9IPAddressC1EPKh = dso_local unnamed_addr alias %class.IPAddress* (%class.IPAddress*, i8*), %class.IPAddress* (%class.IPAddress*, i8*)* @_ZN9IPAddressC2EPKh

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init() #0 !dbg !368 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %call = call arm_aapcscc %class.IPAddress* @_ZN9IPAddressC1Ehhhh(%class.IPAddress* @_ZL11INADDR_NONE, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0), !dbg !371
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
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.IPAddress* @_ZN9IPAddressC2Ev(%class.IPAddress* returned %this) unnamed_addr #1 align 2 !dbg !373 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.IPAddress*, align 4
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !375, metadata !DIExpression()), !dbg !377
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  %0 = bitcast %class.IPAddress* %this1 to %class.Printable*, !dbg !378
  %call = call arm_aapcscc %class.Printable* @_ZN9PrintableC2Ev(%class.Printable* %0) #5, !dbg !379
  %1 = bitcast %class.IPAddress* %this1 to i32 (...)***, !dbg !378
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV9IPAddress, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !378
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !379
  %_address2 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !380
  %dword = bitcast %union.anon* %_address2 to i32*, !dbg !382
  store i32 0, i32* %dword, align 4, !dbg !383
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9IPAddressC2Ev, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.IPAddress* %this1, !dbg !384
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.Printable* @_ZN9PrintableC2Ev(%class.Printable* returned %this) unnamed_addr #1 comdat align 2 !dbg !385 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.Printable*, align 4
  store %class.Printable* %this, %class.Printable** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Printable** %this.addr, metadata !390, metadata !DIExpression()), !dbg !392
  %this1 = load %class.Printable*, %class.Printable** %this.addr, align 4
  %0 = bitcast %class.Printable* %this1 to i32 (...)***, !dbg !393
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV9Printable, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 4, !dbg !393
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9PrintableC2Ev, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.Printable* %this1, !dbg !393
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.IPAddress* @_ZN9IPAddressC2Ehhhh(%class.IPAddress* returned %this, i8 zeroext %first_octet, i8 zeroext %second_octet, i8 zeroext %third_octet, i8 zeroext %fourth_octet) unnamed_addr #1 align 2 !dbg !394 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.IPAddress*, align 4
  %first_octet.addr = alloca i8, align 1
  %second_octet.addr = alloca i8, align 1
  %third_octet.addr = alloca i8, align 1
  %fourth_octet.addr = alloca i8, align 1
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !395, metadata !DIExpression()), !dbg !396
  store i8 %first_octet, i8* %first_octet.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %first_octet.addr, metadata !397, metadata !DIExpression()), !dbg !398
  store i8 %second_octet, i8* %second_octet.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %second_octet.addr, metadata !399, metadata !DIExpression()), !dbg !400
  store i8 %third_octet, i8* %third_octet.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %third_octet.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store i8 %fourth_octet, i8* %fourth_octet.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %fourth_octet.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  %0 = bitcast %class.IPAddress* %this1 to %class.Printable*, !dbg !405
  %call = call arm_aapcscc %class.Printable* @_ZN9PrintableC2Ev(%class.Printable* %0) #5, !dbg !406
  %1 = bitcast %class.IPAddress* %this1 to i32 (...)***, !dbg !405
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV9IPAddress, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !405
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !406
  %2 = load i8, i8* %first_octet.addr, align 1, !dbg !407
  %_address2 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !409
  %bytes = bitcast %union.anon* %_address2 to [4 x i8]*, !dbg !410
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i32 0, i32 0, !dbg !409
  store i8 %2, i8* %arrayidx, align 4, !dbg !411
  %3 = load i8, i8* %second_octet.addr, align 1, !dbg !412
  %_address3 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !413
  %bytes4 = bitcast %union.anon* %_address3 to [4 x i8]*, !dbg !414
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes4, i32 0, i32 1, !dbg !413
  store i8 %3, i8* %arrayidx5, align 1, !dbg !415
  %4 = load i8, i8* %third_octet.addr, align 1, !dbg !416
  %_address6 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !417
  %bytes7 = bitcast %union.anon* %_address6 to [4 x i8]*, !dbg !418
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes7, i32 0, i32 2, !dbg !417
  store i8 %4, i8* %arrayidx8, align 2, !dbg !419
  %5 = load i8, i8* %fourth_octet.addr, align 1, !dbg !420
  %_address9 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !421
  %bytes10 = bitcast %union.anon* %_address9 to [4 x i8]*, !dbg !422
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes10, i32 0, i32 3, !dbg !421
  store i8 %5, i8* %arrayidx11, align 1, !dbg !423
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9IPAddressC2Ehhhh, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %7 = load i32, i32* %i, align 4
  %8 = load i8*, i8** %ptr, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i32 %7
  %9 = load i8, i8* %arrayidx12, align 1
  %10 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  store i8 %9, i8* %arrayidx2, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %12 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %13 = load i32, i32* %i, align 4
  %arrayidx53 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  store i8 %conv4, i8* %arrayidx53, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %14 = load i32, i32* %i, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %16 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %17 = phi i8* [ %16, %dec_end ]
  indirectbr i8* %16, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret %class.IPAddress* %this1, !dbg !424
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.IPAddress* @_ZN9IPAddressC2Ej(%class.IPAddress* returned %this, i32 %address) unnamed_addr #1 align 2 !dbg !425 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.IPAddress*, align 4
  %address.addr = alloca i32, align 4
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store i32 %address, i32* %address.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %address.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  %0 = bitcast %class.IPAddress* %this1 to %class.Printable*, !dbg !430
  %call = call arm_aapcscc %class.Printable* @_ZN9PrintableC2Ev(%class.Printable* %0) #5, !dbg !431
  %1 = bitcast %class.IPAddress* %this1 to i32 (...)***, !dbg !430
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV9IPAddress, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !430
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !431
  %2 = load i32, i32* %address.addr, align 4, !dbg !432
  %_address2 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !434
  %dword = bitcast %union.anon* %_address2 to i32*, !dbg !435
  store i32 %2, i32* %dword, align 4, !dbg !436
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9IPAddressC2Ej, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.IPAddress* %this1, !dbg !437
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.IPAddress* @_ZN9IPAddressC2EPKh(%class.IPAddress* returned %this, i8* %address) unnamed_addr #1 align 2 !dbg !438 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.IPAddress*, align 4
  %address.addr = alloca i8*, align 4
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i8* %address, i8** %address.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  %0 = bitcast %class.IPAddress* %this1 to %class.Printable*, !dbg !443
  %call = call arm_aapcscc %class.Printable* @_ZN9PrintableC2Ev(%class.Printable* %0) #5, !dbg !444
  %1 = bitcast %class.IPAddress* %this1 to i32 (...)***, !dbg !443
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV9IPAddress, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !443
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !444
  %_address2 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !445
  %bytes = bitcast %union.anon* %_address2 to [4 x i8]*, !dbg !447
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i32 0, i32 0, !dbg !448
  %2 = load i8*, i8** %address.addr, align 4, !dbg !449
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %arraydecay, i8* align 1 %2, i32 4, i1 false), !dbg !448
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9IPAddressC2EPKh, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.IPAddress* %this1, !dbg !450
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN9IPAddress10fromStringEPKc(%class.IPAddress* %this, i8* %address) #1 align 2 !dbg !451 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i1, align 1
  %this.addr = alloca %class.IPAddress*, align 4
  %address.addr = alloca i8*, align 4
  %acc = alloca i16, align 2
  %dots = alloca i8, align 1
  %c = alloca i8, align 1
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !452, metadata !DIExpression()), !dbg !453
  store i8* %address, i8** %address.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i16* %acc, metadata !456, metadata !DIExpression()), !dbg !460
  store i16 0, i16* %acc, align 2, !dbg !460
  call void @llvm.dbg.declare(metadata i8* %dots, metadata !461, metadata !DIExpression()), !dbg !462
  store i8 0, i8* %dots, align 1, !dbg !462
  br label %while.cond, !dbg !463

while.cond:                                       ; preds = %if.end20, %entry
  %0 = load i8*, i8** %address.addr, align 4, !dbg !464
  %1 = load i8, i8* %0, align 1, !dbg !465
  %tobool = icmp ne i8 %1, 0, !dbg !465
  br i1 %tobool, label %while.body, label %while.end, !dbg !463

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8* %c, metadata !466, metadata !DIExpression()), !dbg !468
  %2 = load i8*, i8** %address.addr, align 4, !dbg !469
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1, !dbg !469
  store i8* %incdec.ptr, i8** %address.addr, align 4, !dbg !469
  %3 = load i8, i8* %2, align 1, !dbg !470
  store i8 %3, i8* %c, align 1, !dbg !468
  %4 = load i8, i8* %c, align 1, !dbg !471
  %conv = zext i8 %4 to i32, !dbg !471
  %cmp = icmp sge i32 %conv, 48, !dbg !473
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !474

land.lhs.true:                                    ; preds = %while.body
  %5 = load i8, i8* %c, align 1, !dbg !475
  %conv2 = zext i8 %5 to i32, !dbg !475
  %cmp3 = icmp sle i32 %conv2, 57, !dbg !476
  br i1 %cmp3, label %if.then, label %if.else, !dbg !477

if.then:                                          ; preds = %land.lhs.true
  %6 = load i16, i16* %acc, align 2, !dbg !478
  %conv4 = zext i16 %6 to i32, !dbg !478
  %mul = mul nsw i32 %conv4, 10, !dbg !480
  %7 = load i8, i8* %c, align 1, !dbg !481
  %conv5 = zext i8 %7 to i32, !dbg !481
  %sub = sub nsw i32 %conv5, 48, !dbg !482
  %add = add nsw i32 %mul, %sub, !dbg !483
  %conv6 = trunc i32 %add to i16, !dbg !478
  store i16 %conv6, i16* %acc, align 2, !dbg !484
  %8 = load i16, i16* %acc, align 2, !dbg !485
  %conv7 = zext i16 %8 to i32, !dbg !485
  %cmp8 = icmp sgt i32 %conv7, 255, !dbg !487
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !488

if.then9:                                         ; preds = %if.then
  store i1 false, i1* %retval, align 1, !dbg !489
  br label %return, !dbg !489

if.end:                                           ; preds = %if.then
  br label %if.end20, !dbg !491

if.else:                                          ; preds = %land.lhs.true, %while.body
  %9 = load i8, i8* %c, align 1, !dbg !492
  %conv10 = zext i8 %9 to i32, !dbg !492
  %cmp11 = icmp eq i32 %conv10, 46, !dbg !494
  br i1 %cmp11, label %if.then12, label %if.else18, !dbg !495

if.then12:                                        ; preds = %if.else
  %10 = load i8, i8* %dots, align 1, !dbg !496
  %conv13 = zext i8 %10 to i32, !dbg !496
  %cmp14 = icmp eq i32 %conv13, 3, !dbg !499
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !500

if.then15:                                        ; preds = %if.then12
  store i1 false, i1* %retval, align 1, !dbg !501
  br label %return, !dbg !501

if.end16:                                         ; preds = %if.then12
  %11 = load i16, i16* %acc, align 2, !dbg !503
  %conv17 = trunc i16 %11 to i8, !dbg !503
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !504
  %bytes = bitcast %union.anon* %_address to [4 x i8]*, !dbg !505
  %12 = load i8, i8* %dots, align 1, !dbg !506
  %inc = add i8 %12, 1, !dbg !506
  store i8 %inc, i8* %dots, align 1, !dbg !506
  %idxprom = zext i8 %12 to i32, !dbg !504
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i32 0, i32 %idxprom, !dbg !504
  store i8 %conv17, i8* %arrayidx, align 1, !dbg !507
  store i16 0, i16* %acc, align 2, !dbg !508
  br label %if.end19, !dbg !509

if.else18:                                        ; preds = %if.else
  store i1 false, i1* %retval, align 1, !dbg !510
  br label %return, !dbg !510

if.end19:                                         ; preds = %if.end16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  br label %while.cond, !dbg !463, !llvm.loop !512

while.end:                                        ; preds = %while.cond
  %13 = load i8, i8* %dots, align 1, !dbg !514
  %conv21 = zext i8 %13 to i32, !dbg !514
  %cmp22 = icmp ne i32 %conv21, 3, !dbg !516
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !517

if.then23:                                        ; preds = %while.end
  store i1 false, i1* %retval, align 1, !dbg !518
  br label %return, !dbg !518

if.end24:                                         ; preds = %while.end
  %14 = load i16, i16* %acc, align 2, !dbg !520
  %conv25 = trunc i16 %14 to i8, !dbg !520
  %_address26 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !521
  %bytes27 = bitcast %union.anon* %_address26 to [4 x i8]*, !dbg !522
  %arrayidx28 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes27, i32 0, i32 3, !dbg !521
  store i8 %conv25, i8* %arrayidx28, align 1, !dbg !523
  store i1 true, i1* %retval, align 1, !dbg !524
  br label %return, !dbg !524

return:                                           ; preds = %if.end24, %if.then23, %if.else18, %if.then15, %if.then9
  %15 = load i1, i1* %retval, align 1, !dbg !525
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9IPAddress10fromStringEPKc, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %16 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %16, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %17 = load i32, i32* %i, align 4
  %18 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i32 %17
  %19 = load i8, i8* %arrayidx13, align 1
  %20 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %20
  store i8 %19, i8* %arrayidx2, align 1
  %21 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %21
  %22 = load i8, i8* %arrayidx3, align 1
  %conv8 = zext i8 %22 to i32
  %xor = xor i32 %conv8, 133
  %conv49 = trunc i32 %xor to i8
  %23 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %23
  store i8 %conv49, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %24 = load i32, i32* %i, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %26 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %27 = phi i8* [ %26, %dec_end ]
  indirectbr i8* %26, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i1 %15, !dbg !525
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(8) %class.IPAddress* @_ZN9IPAddressaSEPKh(%class.IPAddress* %this, i8* %address) #1 align 2 !dbg !526 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.IPAddress*, align 4
  %address.addr = alloca i8*, align 4
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store i8* %address, i8** %address.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !531
  %bytes = bitcast %union.anon* %_address to [4 x i8]*, !dbg !532
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i32 0, i32 0, !dbg !533
  %0 = load i8*, i8** %address.addr, align 4, !dbg !534
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %arraydecay, i8* align 1 %0, i32 4, i1 false), !dbg !533
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9IPAddressaSEPKh, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.IPAddress* %this1, !dbg !535
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(8) %class.IPAddress* @_ZN9IPAddressaSEj(%class.IPAddress* %this, i32 %address) #1 align 2 !dbg !536 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.IPAddress*, align 4
  %address.addr = alloca i32, align 4
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !537, metadata !DIExpression()), !dbg !538
  store i32 %address, i32* %address.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %address.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  %0 = load i32, i32* %address.addr, align 4, !dbg !541
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !542
  %dword = bitcast %union.anon* %_address to i32*, !dbg !543
  store i32 %0, i32* %dword, align 4, !dbg !544
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9IPAddressaSEj, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.IPAddress* %this1, !dbg !545
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZNK9IPAddresseqEPKh(%class.IPAddress* %this, i8* %addr) #1 align 2 !dbg !546 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.IPAddress*, align 4
  %addr.addr = alloca i8*, align 4
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !547, metadata !DIExpression()), !dbg !549
  store i8* %addr, i8** %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !550, metadata !DIExpression()), !dbg !551
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  %0 = load i8*, i8** %addr.addr, align 4, !dbg !552
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !553
  %bytes = bitcast %union.anon* %_address to [4 x i8]*, !dbg !554
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i32 0, i32 0, !dbg !553
  %call = call arm_aapcscc i32 @memcmp(i8* %0, i8* %arraydecay, i32 4), !dbg !555
  %cmp = icmp eq i32 %call, 0, !dbg !556
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK9IPAddresseqEPKh, %entry.RetBlock), i8** %ptr, align 4
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
  indirectbr i8* %11, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret i1 %cmp, !dbg !557
}

declare dso_local arm_aapcscc i32 @memcmp(i8*, i8*, i32) #4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK9IPAddress7printToER5Print(%class.IPAddress* %this, %class.Print* dereferenceable(8) %p) unnamed_addr #1 align 2 !dbg !558 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i1 = alloca i32, align 4
  %this.addr = alloca %class.IPAddress*, align 4
  %p.addr = alloca %class.Print*, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.IPAddress* %this, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.IPAddress** %this.addr, metadata !559, metadata !DIExpression()), !dbg !560
  store %class.Print* %p, %class.Print** %p.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %p.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %this1 = load %class.IPAddress*, %class.IPAddress** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !563, metadata !DIExpression()), !dbg !564
  store i32 0, i32* %n, align 4, !dbg !564
  call void @llvm.dbg.declare(metadata i32* %i, metadata !565, metadata !DIExpression()), !dbg !567
  store i32 0, i32* %i, align 4, !dbg !567
  br label %for.cond, !dbg !568

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !569
  %cmp = icmp slt i32 %0, 3, !dbg !571
  br i1 %cmp, label %for.body, label %for.end, !dbg !572

for.body:                                         ; preds = %for.cond
  %1 = load %class.Print*, %class.Print** %p.addr, align 4, !dbg !573
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !575
  %bytes = bitcast %union.anon* %_address to [4 x i8]*, !dbg !576
  %2 = load i32, i32* %i, align 4, !dbg !577
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i32 0, i32 %2, !dbg !575
  %3 = load i8, i8* %arrayidx, align 1, !dbg !575
  %call = call arm_aapcscc i32 @_ZN5Print5printEhi(%class.Print* %1, i8 zeroext %3, i32 10), !dbg !578
  %4 = load i32, i32* %n, align 4, !dbg !579
  %add = add i32 %4, %call, !dbg !579
  store i32 %add, i32* %n, align 4, !dbg !579
  %5 = load %class.Print*, %class.Print** %p.addr, align 4, !dbg !580
  %call2 = call arm_aapcscc i32 @_ZN5Print5printEc(%class.Print* %5, i8 zeroext 46), !dbg !581
  %6 = load i32, i32* %n, align 4, !dbg !582
  %add3 = add i32 %6, %call2, !dbg !582
  store i32 %add3, i32* %n, align 4, !dbg !582
  br label %for.inc, !dbg !583

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !584
  %inc = add nsw i32 %7, 1, !dbg !584
  store i32 %inc, i32* %i, align 4, !dbg !584
  br label %for.cond, !dbg !585, !llvm.loop !586

for.end:                                          ; preds = %for.cond
  %8 = load %class.Print*, %class.Print** %p.addr, align 4, !dbg !588
  %_address4 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this1, i32 0, i32 1, !dbg !589
  %bytes5 = bitcast %union.anon* %_address4 to [4 x i8]*, !dbg !590
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes5, i32 0, i32 3, !dbg !589
  %9 = load i8, i8* %arrayidx6, align 1, !dbg !589
  %call7 = call arm_aapcscc i32 @_ZN5Print5printEhi(%class.Print* %8, i8 zeroext %9, i32 10), !dbg !591
  %10 = load i32, i32* %n, align 4, !dbg !592
  %add8 = add i32 %10, %call7, !dbg !592
  store i32 %add8, i32* %n, align 4, !dbg !592
  %11 = load i32, i32* %n, align 4, !dbg !593
  br label %dec_start

dec_start:                                        ; preds = %for.end
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx2, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK9IPAddress7printToER5Print, %for.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i1, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %12 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %12, 12
  br i1 %cmp3, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %13 = load i32, i32* %i1, align 4
  %14 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %14, i32 %13
  %15 = load i8, i8* %arrayidx1, align 1
  %16 = load i32, i32* %i1, align 4
  %arrayidx24 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %16
  store i8 %15, i8* %arrayidx24, align 1
  %17 = load i32, i32* %i1, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  %18 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %18 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %19 = load i32, i32* %i1, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %19
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %20 = load i32, i32* %i1, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %i1, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %22 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %23 = phi i8* [ %22, %dec_end ]
  indirectbr i8* %22, [label %for.end.RetBlock]

for.end.RetBlock:                                 ; preds = %dec_jmp
  ret i32 %11, !dbg !594
}

declare dso_local arm_aapcscc i32 @_ZN5Print5printEhi(%class.Print*, i8 zeroext, i32) #4

declare dso_local arm_aapcscc i32 @_ZN5Print5printEc(%class.Print*, i8 zeroext) #4

declare dso_local arm_aapcscc void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @_GLOBAL__sub_I_IPAddress.cpp() #0 !dbg !595 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  call arm_aapcscc void @__cxx_global_var_init(), !dbg !597
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_GLOBAL__sub_I_IPAddress.cpp, %entry.RetBlock), i8** %ptr, align 4
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

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!363, !364, !365, !366}
!llvm.ident = !{!367}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "INADDR_NONE", linkageName: "_ZL11INADDR_NONE", scope: !2, file: !6, line: 76, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/IPAddress.cpp", directory: "/home/aaa/llvm-arduino-due")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/IPAddress.h", directory: "/home/aaa")
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "IPAddress", file: !6, line: 29, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !9, vtableHolder: !11)
!9 = !{!10, !31, !46, !51, !54, !57, !60, !65, !72, !335, !339, !343, !346, !349, !353, !357, !360}
!10 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !8, baseType: !11, flags: DIFlagPublic, extraData: i32 0)
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printable", file: !12, line: 33, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !13, vtableHolder: !11, identifier: "_ZTS9Printable")
!12 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Printable.h", directory: "/home/aaa")
!13 = !{!14, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Printable", scope: !12, file: !12, baseType: !15, size: 32, flags: DIFlagArtificial)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !17, size: 32)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DISubprogram(name: "printTo", linkageName: "_ZNK9Printable7printToER5Print", scope: !11, file: !12, line: 36, type: !21, scopeLine: 36, containingType: !11, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !26, !28}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 46, baseType: !25)
!24 = !DIFile(filename: "JJS_Project1/src/build/lib/clang/10.0.1/include/stddef.h", directory: "/home/aaa")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!28 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !29, size: 32)
!29 = !DICompositeType(tag: DW_TAG_class_type, name: "Print", file: !30, line: 34, flags: DIFlagFwdDecl)
!30 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.h", directory: "/home/aaa")
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_address", scope: !8, file: !6, line: 34, baseType: !32, size: 32, offset: 32)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !8, file: !6, line: 31, size: 32, flags: DIFlagTypePassByValue, elements: !33, identifier: "_ZTSN9IPAddressUt_E")
!33 = !{!34, !43}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !32, file: !6, line: 32, baseType: !35, size: 32)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !41)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !37, line: 42, baseType: !38)
!37 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !39, line: 28, baseType: !40)
!39 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42}
!42 = !DISubrange(count: 4)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !32, file: !6, line: 33, baseType: !44, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 66, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !39, line: 56, baseType: !25)
!46 = !DISubprogram(name: "raw_address", linkageName: "_ZN9IPAddress11raw_addressEv", scope: !8, file: !6, line: 40, type: !47, scopeLine: 40, flags: DIFlagPrototyped, spFlags: 0)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!51 = !DISubprogram(name: "IPAddress", scope: !8, file: !6, line: 44, type: !52, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !50}
!54 = !DISubprogram(name: "IPAddress", scope: !8, file: !6, line: 45, type: !55, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !50, !36, !36, !36, !36}
!57 = !DISubprogram(name: "IPAddress", scope: !8, file: !6, line: 46, type: !58, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !50, !44}
!60 = !DISubprogram(name: "IPAddress", scope: !8, file: !6, line: 47, type: !61, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !50, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!65 = !DISubprogram(name: "fromString", linkageName: "_ZN9IPAddress10fromStringEPKc", scope: !8, file: !6, line: 49, type: !66, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !50, !69}
!68 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DISubprogram(name: "fromString", linkageName: "_ZN9IPAddress10fromStringERK6String", scope: !8, file: !6, line: 50, type: !73, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{!68, !50, !75}
!75 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !78, line: 45, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !79, identifier: "_ZTS6String")
!78 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.h", directory: "/home/aaa")
!79 = !{!80, !82, !83, !84, !88, !92, !95, !101, !105, !110, !113, !116, !119, !122, !126, !130, !134, !138, !141, !144, !147, !151, !154, !157, !160, !163, !166, !169, !172, !175, !178, !179, !182, !185, !188, !191, !194, !195, !196, !199, !202, !205, !208, !211, !214, !217, !220, !221, !226, !229, !232, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !248, !249, !252, !255, !256, !260, !264, !267, !270, !273, !274, !275, !276, !279, !282, !283, !286, !287, !288, !289, !290, !293, !296, !299, !302, !305, !308, !309, !310, !311, !314, !317, !320, !321, !322, !323, !326, !329, !332}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !77, file: !78, line: 196, baseType: !81, size: 32, flags: DIFlagProtected)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !77, file: !78, line: 197, baseType: !25, size: 32, offset: 32, flags: DIFlagProtected)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !77, file: !78, line: 198, baseType: !25, size: 32, offset: 64, flags: DIFlagProtected)
!84 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !77, file: !78, line: 51, type: !85, scopeLine: 51, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DISubprogram(name: "String", scope: !77, file: !78, line: 59, type: !89, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !91, !69}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!92 = !DISubprogram(name: "String", scope: !77, file: !78, line: 60, type: !93, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !91, !75}
!95 = !DISubprogram(name: "String", scope: !77, file: !78, line: 61, type: !96, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !91, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !78, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!101 = !DISubprogram(name: "String", scope: !77, file: !78, line: 63, type: !102, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !91, !104}
!104 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !77, size: 32)
!105 = !DISubprogram(name: "String", scope: !77, file: !78, line: 64, type: !106, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !91, !108}
!108 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "StringSumHelper", file: !78, line: 213, flags: DIFlagFwdDecl, identifier: "_ZTS15StringSumHelper")
!110 = !DISubprogram(name: "String", scope: !77, file: !78, line: 66, type: !111, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !91, !71}
!113 = !DISubprogram(name: "String", scope: !77, file: !78, line: 67, type: !114, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !91, !40, !40}
!116 = !DISubprogram(name: "String", scope: !77, file: !78, line: 68, type: !117, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !91, !19, !40}
!119 = !DISubprogram(name: "String", scope: !77, file: !78, line: 69, type: !120, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !91, !25, !40}
!122 = !DISubprogram(name: "String", scope: !77, file: !78, line: 70, type: !123, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !91, !125, !40}
!125 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!126 = !DISubprogram(name: "String", scope: !77, file: !78, line: 71, type: !127, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !91, !129, !40}
!129 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!130 = !DISubprogram(name: "String", scope: !77, file: !78, line: 72, type: !131, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !91, !133, !40}
!133 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!134 = !DISubprogram(name: "String", scope: !77, file: !78, line: 73, type: !135, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !91, !137, !40}
!137 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!138 = !DISubprogram(name: "~String", scope: !77, file: !78, line: 74, type: !139, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !91}
!141 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !77, file: !78, line: 80, type: !142, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!40, !91, !25}
!144 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !77, file: !78, line: 81, type: !145, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!25, !87}
!147 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !77, file: !78, line: 86, type: !148, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!150, !91, !75}
!150 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !77, size: 32)
!151 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !77, file: !78, line: 87, type: !152, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!150, !91, !69}
!154 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !77, file: !78, line: 88, type: !155, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!150, !91, !98}
!157 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEOS_", scope: !77, file: !78, line: 90, type: !158, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!150, !91, !104}
!160 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEO15StringSumHelper", scope: !77, file: !78, line: 91, type: !161, scopeLine: 91, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!150, !91, !108}
!163 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !77, file: !78, line: 99, type: !164, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!40, !91, !75}
!166 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !77, file: !78, line: 100, type: !167, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!40, !91, !69}
!169 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !77, file: !78, line: 101, type: !170, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!40, !91, !71}
!172 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !77, file: !78, line: 102, type: !173, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!173 = !DISubroutineType(types: !174)
!174 = !{!40, !91, !40}
!175 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !77, file: !78, line: 103, type: !176, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!40, !91, !19}
!178 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !77, file: !78, line: 104, type: !142, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!179 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !77, file: !78, line: 105, type: !180, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!40, !91, !125}
!182 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !77, file: !78, line: 106, type: !183, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!40, !91, !129}
!185 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !77, file: !78, line: 107, type: !186, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{!40, !91, !133}
!188 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !77, file: !78, line: 108, type: !189, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{!40, !91, !137}
!191 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !77, file: !78, line: 109, type: !192, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!192 = !DISubroutineType(types: !193)
!193 = !{!40, !91, !98}
!194 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !77, file: !78, line: 113, type: !148, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!195 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !77, file: !78, line: 114, type: !152, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!196 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !77, file: !78, line: 115, type: !197, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{!150, !91, !71}
!199 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !77, file: !78, line: 116, type: !200, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!200 = !DISubroutineType(types: !201)
!201 = !{!150, !91, !40}
!202 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !77, file: !78, line: 117, type: !203, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!150, !91, !19}
!205 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !77, file: !78, line: 118, type: !206, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!150, !91, !25}
!208 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !77, file: !78, line: 119, type: !209, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!150, !91, !125}
!211 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !77, file: !78, line: 120, type: !212, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{!150, !91, !129}
!214 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !77, file: !78, line: 121, type: !215, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{!150, !91, !133}
!217 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !77, file: !78, line: 122, type: !218, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!150, !91, !137}
!220 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !77, file: !78, line: 123, type: !155, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!221 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !77, file: !78, line: 138, type: !222, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !87}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !77, file: !78, line: 50, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !85, size: 64, extraData: !77)
!226 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !77, file: !78, line: 139, type: !227, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!19, !87, !75}
!229 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !77, file: !78, line: 140, type: !230, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!40, !87, !75}
!232 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !77, file: !78, line: 141, type: !233, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!40, !87, !69}
!235 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !77, file: !78, line: 142, type: !230, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!236 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !77, file: !78, line: 143, type: !233, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!237 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !77, file: !78, line: 144, type: !230, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!238 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !77, file: !78, line: 145, type: !233, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!239 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !77, file: !78, line: 146, type: !230, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!240 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !77, file: !78, line: 147, type: !230, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!241 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !77, file: !78, line: 148, type: !230, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!242 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !77, file: !78, line: 149, type: !230, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!243 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !77, file: !78, line: 150, type: !230, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!244 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !77, file: !78, line: 151, type: !230, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!245 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !77, file: !78, line: 152, type: !246, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!40, !87, !75, !25}
!248 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !77, file: !78, line: 153, type: !230, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!249 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !77, file: !78, line: 156, type: !250, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{!71, !87, !25}
!252 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !77, file: !78, line: 157, type: !253, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !91, !25, !71}
!255 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !77, file: !78, line: 158, type: !250, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!256 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !77, file: !78, line: 159, type: !257, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !91, !25}
!259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !71, size: 32)
!260 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !77, file: !78, line: 160, type: !261, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !87, !263, !25, !25}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!264 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !77, file: !78, line: 161, type: !265, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !87, !81, !25, !25}
!267 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !77, file: !78, line: 163, type: !268, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{!69, !87}
!270 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !77, file: !78, line: 164, type: !271, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{!81, !91}
!273 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !77, file: !78, line: 165, type: !271, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!274 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !77, file: !78, line: 166, type: !268, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!275 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !77, file: !78, line: 167, type: !268, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!276 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !77, file: !78, line: 170, type: !277, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{!19, !87, !71}
!279 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !77, file: !78, line: 171, type: !280, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!19, !87, !71, !25}
!282 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !77, file: !78, line: 172, type: !227, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!283 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !77, file: !78, line: 173, type: !284, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!19, !87, !75, !25}
!286 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !77, file: !78, line: 174, type: !277, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!287 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !77, file: !78, line: 175, type: !280, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!288 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !77, file: !78, line: 176, type: !227, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!289 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !77, file: !78, line: 177, type: !284, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!290 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !77, file: !78, line: 178, type: !291, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!77, !87, !25}
!293 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !77, file: !78, line: 179, type: !294, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{!77, !87, !25, !25}
!296 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !77, file: !78, line: 182, type: !297, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !91, !71, !71}
!299 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !77, file: !78, line: 183, type: !300, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !91, !75, !75}
!302 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !77, file: !78, line: 184, type: !303, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !91, !25}
!305 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !77, file: !78, line: 185, type: !306, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !91, !25, !25}
!308 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !77, file: !78, line: 186, type: !139, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !77, file: !78, line: 187, type: !139, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!310 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !77, file: !78, line: 188, type: !139, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!311 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !77, file: !78, line: 191, type: !312, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{!125, !87}
!314 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !77, file: !78, line: 192, type: !315, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!133, !87}
!317 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !77, file: !78, line: 193, type: !318, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{!137, !87}
!320 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !77, file: !78, line: 200, type: !139, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!321 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !77, file: !78, line: 201, type: !139, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!322 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !77, file: !78, line: 202, type: !142, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!323 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !77, file: !78, line: 203, type: !324, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!40, !91, !69, !25}
!326 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !77, file: !78, line: 206, type: !327, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!327 = !DISubroutineType(types: !328)
!328 = !{!150, !91, !69, !25}
!329 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !77, file: !78, line: 207, type: !330, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!150, !91, !98, !25}
!332 = !DISubprogram(name: "move", linkageName: "_ZN6String4moveERS_", scope: !77, file: !78, line: 209, type: !333, scopeLine: 209, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !91, !150}
!335 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK9IPAddresscvjEv", scope: !8, file: !6, line: 54, type: !336, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{!44, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!339 = !DISubprogram(name: "operator==", linkageName: "_ZNK9IPAddresseqERKS_", scope: !8, file: !6, line: 55, type: !340, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!68, !338, !342}
!342 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 32)
!343 = !DISubprogram(name: "operator==", linkageName: "_ZNK9IPAddresseqEPKh", scope: !8, file: !6, line: 56, type: !344, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!68, !338, !63}
!346 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9IPAddressixEi", scope: !8, file: !6, line: 59, type: !347, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{!36, !338, !19}
!349 = !DISubprogram(name: "operator[]", linkageName: "_ZN9IPAddressixEi", scope: !8, file: !6, line: 60, type: !350, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !50, !19}
!352 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !36, size: 32)
!353 = !DISubprogram(name: "operator=", linkageName: "_ZN9IPAddressaSEPKh", scope: !8, file: !6, line: 63, type: !354, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !50, !63}
!356 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 32)
!357 = !DISubprogram(name: "operator=", linkageName: "_ZN9IPAddressaSEj", scope: !8, file: !6, line: 64, type: !358, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!356, !50, !44}
!360 = !DISubprogram(name: "printTo", linkageName: "_ZNK9IPAddress7printToER5Print", scope: !8, file: !6, line: 66, type: !361, scopeLine: 66, containingType: !8, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!361 = !DISubroutineType(types: !362)
!362 = !{!23, !338, !28}
!363 = !{i32 7, !"Dwarf Version", i32 4}
!364 = !{i32 2, !"Debug Info Version", i32 3}
!365 = !{i32 1, !"wchar_size", i32 4}
!366 = !{i32 1, !"min_enum_size", i32 1}
!367 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!368 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !6, file: !6, line: 76, type: !369, scopeLine: 76, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!369 = !DISubroutineType(types: !370)
!370 = !{null}
!371 = !DILocation(line: 76, column: 17, scope: !368)
!372 = !DILocation(line: 76, column: 35, scope: !368)
!373 = distinct !DISubprogram(name: "IPAddress", linkageName: "_ZN9IPAddressC2Ev", scope: !8, file: !374, line: 23, type: !52, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !51, retainedNodes: !4)
!374 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/IPAddress.cpp", directory: "/home/aaa")
!375 = !DILocalVariable(name: "this", arg: 1, scope: !373, type: !376, flags: DIFlagArtificial | DIFlagObjectPointer)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!377 = !DILocation(line: 0, scope: !373)
!378 = !DILocation(line: 24, column: 1, scope: !373)
!379 = !DILocation(line: 23, column: 12, scope: !373)
!380 = !DILocation(line: 25, column: 5, scope: !381)
!381 = distinct !DILexicalBlock(scope: !373, file: !374, line: 24, column: 1)
!382 = !DILocation(line: 25, column: 14, scope: !381)
!383 = !DILocation(line: 25, column: 20, scope: !381)
!384 = !DILocation(line: 26, column: 1, scope: !373)
!385 = distinct !DISubprogram(name: "Printable", linkageName: "_ZN9PrintableC2Ev", scope: !11, file: !12, line: 33, type: !386, scopeLine: 33, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !389, retainedNodes: !4)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!389 = !DISubprogram(name: "Printable", scope: !11, type: !386, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!390 = !DILocalVariable(name: "this", arg: 1, scope: !385, type: !391, flags: DIFlagArtificial | DIFlagObjectPointer)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!392 = !DILocation(line: 0, scope: !385)
!393 = !DILocation(line: 33, column: 7, scope: !385)
!394 = distinct !DISubprogram(name: "IPAddress", linkageName: "_ZN9IPAddressC2Ehhhh", scope: !8, file: !374, line: 28, type: !55, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !54, retainedNodes: !4)
!395 = !DILocalVariable(name: "this", arg: 1, scope: !394, type: !376, flags: DIFlagArtificial | DIFlagObjectPointer)
!396 = !DILocation(line: 0, scope: !394)
!397 = !DILocalVariable(name: "first_octet", arg: 2, scope: !394, file: !374, line: 28, type: !36)
!398 = !DILocation(line: 28, column: 30, scope: !394)
!399 = !DILocalVariable(name: "second_octet", arg: 3, scope: !394, file: !374, line: 28, type: !36)
!400 = !DILocation(line: 28, column: 51, scope: !394)
!401 = !DILocalVariable(name: "third_octet", arg: 4, scope: !394, file: !374, line: 28, type: !36)
!402 = !DILocation(line: 28, column: 73, scope: !394)
!403 = !DILocalVariable(name: "fourth_octet", arg: 5, scope: !394, file: !374, line: 28, type: !36)
!404 = !DILocation(line: 28, column: 94, scope: !394)
!405 = !DILocation(line: 29, column: 1, scope: !394)
!406 = !DILocation(line: 28, column: 12, scope: !394)
!407 = !DILocation(line: 30, column: 25, scope: !408)
!408 = distinct !DILexicalBlock(scope: !394, file: !374, line: 29, column: 1)
!409 = !DILocation(line: 30, column: 5, scope: !408)
!410 = !DILocation(line: 30, column: 14, scope: !408)
!411 = !DILocation(line: 30, column: 23, scope: !408)
!412 = !DILocation(line: 31, column: 25, scope: !408)
!413 = !DILocation(line: 31, column: 5, scope: !408)
!414 = !DILocation(line: 31, column: 14, scope: !408)
!415 = !DILocation(line: 31, column: 23, scope: !408)
!416 = !DILocation(line: 32, column: 25, scope: !408)
!417 = !DILocation(line: 32, column: 5, scope: !408)
!418 = !DILocation(line: 32, column: 14, scope: !408)
!419 = !DILocation(line: 32, column: 23, scope: !408)
!420 = !DILocation(line: 33, column: 25, scope: !408)
!421 = !DILocation(line: 33, column: 5, scope: !408)
!422 = !DILocation(line: 33, column: 14, scope: !408)
!423 = !DILocation(line: 33, column: 23, scope: !408)
!424 = !DILocation(line: 34, column: 1, scope: !394)
!425 = distinct !DISubprogram(name: "IPAddress", linkageName: "_ZN9IPAddressC2Ej", scope: !8, file: !374, line: 36, type: !58, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !57, retainedNodes: !4)
!426 = !DILocalVariable(name: "this", arg: 1, scope: !425, type: !376, flags: DIFlagArtificial | DIFlagObjectPointer)
!427 = !DILocation(line: 0, scope: !425)
!428 = !DILocalVariable(name: "address", arg: 2, scope: !425, file: !374, line: 36, type: !44)
!429 = !DILocation(line: 36, column: 31, scope: !425)
!430 = !DILocation(line: 37, column: 1, scope: !425)
!431 = !DILocation(line: 36, column: 12, scope: !425)
!432 = !DILocation(line: 38, column: 22, scope: !433)
!433 = distinct !DILexicalBlock(scope: !425, file: !374, line: 37, column: 1)
!434 = !DILocation(line: 38, column: 5, scope: !433)
!435 = !DILocation(line: 38, column: 14, scope: !433)
!436 = !DILocation(line: 38, column: 20, scope: !433)
!437 = !DILocation(line: 39, column: 1, scope: !425)
!438 = distinct !DISubprogram(name: "IPAddress", linkageName: "_ZN9IPAddressC2EPKh", scope: !8, file: !374, line: 41, type: !61, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !60, retainedNodes: !4)
!439 = !DILocalVariable(name: "this", arg: 1, scope: !438, type: !376, flags: DIFlagArtificial | DIFlagObjectPointer)
!440 = !DILocation(line: 0, scope: !438)
!441 = !DILocalVariable(name: "address", arg: 2, scope: !438, file: !374, line: 41, type: !63)
!442 = !DILocation(line: 41, column: 37, scope: !438)
!443 = !DILocation(line: 42, column: 1, scope: !438)
!444 = !DILocation(line: 41, column: 12, scope: !438)
!445 = !DILocation(line: 43, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !438, file: !374, line: 42, column: 1)
!447 = !DILocation(line: 43, column: 21, scope: !446)
!448 = !DILocation(line: 43, column: 5, scope: !446)
!449 = !DILocation(line: 43, column: 28, scope: !446)
!450 = !DILocation(line: 44, column: 1, scope: !438)
!451 = distinct !DISubprogram(name: "fromString", linkageName: "_ZN9IPAddress10fromStringEPKc", scope: !8, file: !374, line: 46, type: !66, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !65, retainedNodes: !4)
!452 = !DILocalVariable(name: "this", arg: 1, scope: !451, type: !376, flags: DIFlagArtificial | DIFlagObjectPointer)
!453 = !DILocation(line: 0, scope: !451)
!454 = !DILocalVariable(name: "address", arg: 2, scope: !451, file: !374, line: 46, type: !69)
!455 = !DILocation(line: 46, column: 40, scope: !451)
!456 = !DILocalVariable(name: "acc", scope: !451, file: !374, line: 48, type: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !37, line: 54, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !39, line: 38, baseType: !459)
!459 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!460 = !DILocation(line: 48, column: 14, scope: !451)
!461 = !DILocalVariable(name: "dots", scope: !451, file: !374, line: 49, type: !36)
!462 = !DILocation(line: 49, column: 13, scope: !451)
!463 = !DILocation(line: 51, column: 5, scope: !451)
!464 = !DILocation(line: 51, column: 13, scope: !451)
!465 = !DILocation(line: 51, column: 12, scope: !451)
!466 = !DILocalVariable(name: "c", scope: !467, file: !374, line: 53, type: !71)
!467 = distinct !DILexicalBlock(scope: !451, file: !374, line: 52, column: 5)
!468 = !DILocation(line: 53, column: 14, scope: !467)
!469 = !DILocation(line: 53, column: 26, scope: !467)
!470 = !DILocation(line: 53, column: 18, scope: !467)
!471 = !DILocation(line: 54, column: 13, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !374, line: 54, column: 13)
!473 = !DILocation(line: 54, column: 15, scope: !472)
!474 = !DILocation(line: 54, column: 22, scope: !472)
!475 = !DILocation(line: 54, column: 25, scope: !472)
!476 = !DILocation(line: 54, column: 27, scope: !472)
!477 = !DILocation(line: 54, column: 13, scope: !467)
!478 = !DILocation(line: 56, column: 19, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !374, line: 55, column: 9)
!480 = !DILocation(line: 56, column: 23, scope: !479)
!481 = !DILocation(line: 56, column: 31, scope: !479)
!482 = !DILocation(line: 56, column: 33, scope: !479)
!483 = !DILocation(line: 56, column: 28, scope: !479)
!484 = !DILocation(line: 56, column: 17, scope: !479)
!485 = !DILocation(line: 57, column: 17, scope: !486)
!486 = distinct !DILexicalBlock(scope: !479, file: !374, line: 57, column: 17)
!487 = !DILocation(line: 57, column: 21, scope: !486)
!488 = !DILocation(line: 57, column: 17, scope: !479)
!489 = !DILocation(line: 59, column: 17, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !374, line: 57, column: 28)
!491 = !DILocation(line: 61, column: 9, scope: !479)
!492 = !DILocation(line: 62, column: 18, scope: !493)
!493 = distinct !DILexicalBlock(scope: !472, file: !374, line: 62, column: 18)
!494 = !DILocation(line: 62, column: 20, scope: !493)
!495 = !DILocation(line: 62, column: 18, scope: !472)
!496 = !DILocation(line: 64, column: 17, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !374, line: 64, column: 17)
!498 = distinct !DILexicalBlock(scope: !493, file: !374, line: 63, column: 9)
!499 = !DILocation(line: 64, column: 22, scope: !497)
!500 = !DILocation(line: 64, column: 17, scope: !498)
!501 = !DILocation(line: 66, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !374, line: 64, column: 28)
!503 = !DILocation(line: 68, column: 38, scope: !498)
!504 = !DILocation(line: 68, column: 13, scope: !498)
!505 = !DILocation(line: 68, column: 22, scope: !498)
!506 = !DILocation(line: 68, column: 32, scope: !498)
!507 = !DILocation(line: 68, column: 36, scope: !498)
!508 = !DILocation(line: 69, column: 17, scope: !498)
!509 = !DILocation(line: 70, column: 9, scope: !498)
!510 = !DILocation(line: 74, column: 13, scope: !511)
!511 = distinct !DILexicalBlock(scope: !493, file: !374, line: 72, column: 9)
!512 = distinct !{!512, !463, !513}
!513 = !DILocation(line: 76, column: 5, scope: !451)
!514 = !DILocation(line: 78, column: 9, scope: !515)
!515 = distinct !DILexicalBlock(scope: !451, file: !374, line: 78, column: 9)
!516 = !DILocation(line: 78, column: 14, scope: !515)
!517 = !DILocation(line: 78, column: 9, scope: !451)
!518 = !DILocation(line: 80, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !374, line: 78, column: 20)
!520 = !DILocation(line: 82, column: 25, scope: !451)
!521 = !DILocation(line: 82, column: 5, scope: !451)
!522 = !DILocation(line: 82, column: 14, scope: !451)
!523 = !DILocation(line: 82, column: 23, scope: !451)
!524 = !DILocation(line: 83, column: 5, scope: !451)
!525 = !DILocation(line: 84, column: 1, scope: !451)
!526 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN9IPAddressaSEPKh", scope: !8, file: !374, line: 86, type: !354, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !353, retainedNodes: !4)
!527 = !DILocalVariable(name: "this", arg: 1, scope: !526, type: !376, flags: DIFlagArtificial | DIFlagObjectPointer)
!528 = !DILocation(line: 0, scope: !526)
!529 = !DILocalVariable(name: "address", arg: 2, scope: !526, file: !374, line: 86, type: !63)
!530 = !DILocation(line: 86, column: 48, scope: !526)
!531 = !DILocation(line: 88, column: 12, scope: !526)
!532 = !DILocation(line: 88, column: 21, scope: !526)
!533 = !DILocation(line: 88, column: 5, scope: !526)
!534 = !DILocation(line: 88, column: 28, scope: !526)
!535 = !DILocation(line: 89, column: 5, scope: !526)
!536 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN9IPAddressaSEj", scope: !8, file: !374, line: 92, type: !358, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !357, retainedNodes: !4)
!537 = !DILocalVariable(name: "this", arg: 1, scope: !536, type: !376, flags: DIFlagArtificial | DIFlagObjectPointer)
!538 = !DILocation(line: 0, scope: !536)
!539 = !DILocalVariable(name: "address", arg: 2, scope: !536, file: !374, line: 92, type: !44)
!540 = !DILocation(line: 92, column: 42, scope: !536)
!541 = !DILocation(line: 94, column: 22, scope: !536)
!542 = !DILocation(line: 94, column: 5, scope: !536)
!543 = !DILocation(line: 94, column: 14, scope: !536)
!544 = !DILocation(line: 94, column: 20, scope: !536)
!545 = !DILocation(line: 95, column: 5, scope: !536)
!546 = distinct !DISubprogram(name: "operator==", linkageName: "_ZNK9IPAddresseqEPKh", scope: !8, file: !374, line: 98, type: !344, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !343, retainedNodes: !4)
!547 = !DILocalVariable(name: "this", arg: 1, scope: !546, type: !548, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!549 = !DILocation(line: 0, scope: !546)
!550 = !DILocalVariable(name: "addr", arg: 2, scope: !546, file: !374, line: 98, type: !63)
!551 = !DILocation(line: 98, column: 43, scope: !546)
!552 = !DILocation(line: 100, column: 19, scope: !546)
!553 = !DILocation(line: 100, column: 25, scope: !546)
!554 = !DILocation(line: 100, column: 34, scope: !546)
!555 = !DILocation(line: 100, column: 12, scope: !546)
!556 = !DILocation(line: 100, column: 65, scope: !546)
!557 = !DILocation(line: 100, column: 5, scope: !546)
!558 = distinct !DISubprogram(name: "printTo", linkageName: "_ZNK9IPAddress7printToER5Print", scope: !8, file: !374, line: 103, type: !361, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !360, retainedNodes: !4)
!559 = !DILocalVariable(name: "this", arg: 1, scope: !558, type: !548, flags: DIFlagArtificial | DIFlagObjectPointer)
!560 = !DILocation(line: 0, scope: !558)
!561 = !DILocalVariable(name: "p", arg: 2, scope: !558, file: !374, line: 103, type: !28)
!562 = !DILocation(line: 103, column: 34, scope: !558)
!563 = !DILocalVariable(name: "n", scope: !558, file: !374, line: 105, type: !23)
!564 = !DILocation(line: 105, column: 12, scope: !558)
!565 = !DILocalVariable(name: "i", scope: !566, file: !374, line: 106, type: !19)
!566 = distinct !DILexicalBlock(scope: !558, file: !374, line: 106, column: 5)
!567 = !DILocation(line: 106, column: 14, scope: !566)
!568 = !DILocation(line: 106, column: 10, scope: !566)
!569 = !DILocation(line: 106, column: 20, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !374, line: 106, column: 5)
!571 = !DILocation(line: 106, column: 22, scope: !570)
!572 = !DILocation(line: 106, column: 5, scope: !566)
!573 = !DILocation(line: 108, column: 14, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !374, line: 107, column: 5)
!575 = !DILocation(line: 108, column: 22, scope: !574)
!576 = !DILocation(line: 108, column: 31, scope: !574)
!577 = !DILocation(line: 108, column: 37, scope: !574)
!578 = !DILocation(line: 108, column: 16, scope: !574)
!579 = !DILocation(line: 108, column: 11, scope: !574)
!580 = !DILocation(line: 109, column: 14, scope: !574)
!581 = !DILocation(line: 109, column: 16, scope: !574)
!582 = !DILocation(line: 109, column: 11, scope: !574)
!583 = !DILocation(line: 110, column: 5, scope: !574)
!584 = !DILocation(line: 106, column: 28, scope: !570)
!585 = !DILocation(line: 106, column: 5, scope: !570)
!586 = distinct !{!586, !572, !587}
!587 = !DILocation(line: 110, column: 5, scope: !566)
!588 = !DILocation(line: 111, column: 10, scope: !558)
!589 = !DILocation(line: 111, column: 18, scope: !558)
!590 = !DILocation(line: 111, column: 27, scope: !558)
!591 = !DILocation(line: 111, column: 12, scope: !558)
!592 = !DILocation(line: 111, column: 7, scope: !558)
!593 = !DILocation(line: 112, column: 12, scope: !558)
!594 = !DILocation(line: 112, column: 5, scope: !558)
!595 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_IPAddress.cpp", scope: !3, file: !3, type: !596, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!596 = !DISubroutineType(types: !4)
!597 = !DILocation(line: 0, scope: !595)

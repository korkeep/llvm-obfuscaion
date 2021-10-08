; ModuleID = '/home/aaa/llvm-arduino-due/build/core/WString.cpp.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.String = type { i8*, i32, i32 }
%class.__FlashStringHelper = type opaque
%class.StringSumHelper = type { %class.String }

$_ZN6String4initEv = comdat any

$_ZNK6StringcvMS_KFvvEEv = comdat any

$_ZNK6String14StringIfHelperEv = comdat any

@_ZZN6StringixEjE19dummy_writable_char = internal global i8 0, align 1, !dbg !0
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

@_ZN6StringC1EPKc = dso_local unnamed_addr alias %class.String* (%class.String*, i8*), %class.String* (%class.String*, i8*)* @_ZN6StringC2EPKc
@_ZN6StringC1ERKS_ = dso_local unnamed_addr alias %class.String* (%class.String*, %class.String*), %class.String* (%class.String*, %class.String*)* @_ZN6StringC2ERKS_
@_ZN6StringC1EPK19__FlashStringHelper = dso_local unnamed_addr alias %class.String* (%class.String*, %class.__FlashStringHelper*), %class.String* (%class.String*, %class.__FlashStringHelper*)* @_ZN6StringC2EPK19__FlashStringHelper
@_ZN6StringC1EOS_ = dso_local unnamed_addr alias %class.String* (%class.String*, %class.String*), %class.String* (%class.String*, %class.String*)* @_ZN6StringC2EOS_
@_ZN6StringC1EO15StringSumHelper = dso_local unnamed_addr alias %class.String* (%class.String*, %class.StringSumHelper*), %class.String* (%class.String*, %class.StringSumHelper*)* @_ZN6StringC2EO15StringSumHelper
@_ZN6StringC1Ec = dso_local unnamed_addr alias %class.String* (%class.String*, i8), %class.String* (%class.String*, i8)* @_ZN6StringC2Ec
@_ZN6StringC1Ehh = dso_local unnamed_addr alias %class.String* (%class.String*, i8, i8), %class.String* (%class.String*, i8, i8)* @_ZN6StringC2Ehh
@_ZN6StringC1Eih = dso_local unnamed_addr alias %class.String* (%class.String*, i32, i8), %class.String* (%class.String*, i32, i8)* @_ZN6StringC2Eih
@_ZN6StringC1Ejh = dso_local unnamed_addr alias %class.String* (%class.String*, i32, i8), %class.String* (%class.String*, i32, i8)* @_ZN6StringC2Ejh
@_ZN6StringC1Elh = dso_local unnamed_addr alias %class.String* (%class.String*, i32, i8), %class.String* (%class.String*, i32, i8)* @_ZN6StringC2Elh
@_ZN6StringC1Emh = dso_local unnamed_addr alias %class.String* (%class.String*, i32, i8), %class.String* (%class.String*, i32, i8)* @_ZN6StringC2Emh
@_ZN6StringC1Efh = dso_local unnamed_addr alias %class.String* (%class.String*, float, i8), %class.String* (%class.String*, float, i8)* @_ZN6StringC2Efh
@_ZN6StringC1Edh = dso_local unnamed_addr alias %class.String* (%class.String*, double, i8), %class.String* (%class.String*, double, i8)* @_ZN6StringC2Edh
@_ZN6StringD1Ev = dso_local unnamed_addr alias %class.String* (%class.String*), %class.String* (%class.String*)* @_ZN6StringD2Ev

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2EPKc(%class.String* returned %this, i8* %cstr) unnamed_addr #0 align 2 !dbg !313 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca %class.String*, align 4
  %this.addr = alloca %class.String*, align 4
  %cstr.addr = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !314, metadata !DIExpression()), !dbg !316
  store i8* %cstr, i8** %cstr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cstr.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  store %class.String* %this1, %class.String** %retval, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !319
  %0 = load i8*, i8** %cstr.addr, align 4, !dbg !321
  %tobool = icmp ne i8* %0, null, !dbg !321
  br i1 %tobool, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %cstr.addr, align 4, !dbg !324
  %2 = load i8*, i8** %cstr.addr, align 4, !dbg !325
  %call = call arm_aapcscc i32 @strlen(i8* %2), !dbg !326
  %call2 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6String4copyEPKcj(%class.String* %this1, i8* %1, i32 %call), !dbg !327
  br label %if.end, !dbg !327

if.end:                                           ; preds = %if.then, %entry
  %3 = load %class.String*, %class.String** %retval, align 4, !dbg !328
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2EPKc, %if.end.RetBlock), i8** %ptr, align 4
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
  %conv = zext i8 %10 to i32
  %xor = xor i32 %conv, 133
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
  indirectbr i8* %14, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.String* %3, !dbg !328
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc void @_ZN6String4initEv(%class.String* %this) #0 comdat align 2 !dbg !329 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !332
  store i8* null, i8** %buffer, align 4, !dbg !333
  %capacity = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 1, !dbg !334
  store i32 0, i32* %capacity, align 4, !dbg !335
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !336
  store i32 0, i32* %len, align 4, !dbg !337
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String4initEv, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.String* @_ZN6String4copyEPKcj(%class.String* %this, i8* %cstr, i32 %length) #0 align 2 !dbg !339 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca %class.String*, align 4
  %this.addr = alloca %class.String*, align 4
  %cstr.addr = alloca i8*, align 4
  %length.addr = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !340, metadata !DIExpression()), !dbg !341
  store i8* %cstr, i8** %cstr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cstr.addr, metadata !342, metadata !DIExpression()), !dbg !343
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %length.addr, align 4, !dbg !346
  %call = call arm_aapcscc zeroext i8 @_ZN6String7reserveEj(%class.String* %this1, i32 %0), !dbg !348
  %tobool = icmp ne i8 %call, 0, !dbg !348
  br i1 %tobool, label %if.end, label %if.then, !dbg !349

if.then:                                          ; preds = %entry
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %this1), !dbg !350
  store %class.String* %this1, %class.String** %retval, align 4, !dbg !352
  br label %return, !dbg !352

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4, !dbg !353
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !354
  store i32 %1, i32* %len, align 4, !dbg !355
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !356
  %2 = load i8*, i8** %buffer, align 4, !dbg !356
  %3 = load i8*, i8** %cstr.addr, align 4, !dbg !357
  %call2 = call arm_aapcscc i8* @strcpy(i8* %2, i8* %3), !dbg !358
  store %class.String* %this1, %class.String** %retval, align 4, !dbg !359
  br label %return, !dbg !359

return:                                           ; preds = %if.end, %if.then
  %4 = load %class.String*, %class.String** %retval, align 4, !dbg !360
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String4copyEPKcj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %6 = load i32, i32* %i, align 4
  %7 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i32 %6
  %8 = load i8, i8* %arrayidx1, align 1
  %9 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %8, i8* %arrayidx2, align 1
  %10 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %12 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %13 = load i32, i32* %i, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %15 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %16 = phi i8* [ %15, %dec_end ]
  indirectbr i8* %15, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret %class.String* %4, !dbg !360
}

declare dso_local arm_aapcscc i32 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2ERKS_(%class.String* returned %this, %class.String* dereferenceable(12) %value) unnamed_addr #0 align 2 !dbg !361 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %value.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !362, metadata !DIExpression()), !dbg !363
  store %class.String* %value, %class.String** %value.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %value.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !366
  %0 = load %class.String*, %class.String** %value.addr, align 4, !dbg !368
  %call = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSERKS_(%class.String* %this1, %class.String* dereferenceable(12) %0), !dbg !369
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2ERKS_, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.String* %this1, !dbg !370
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSERKS_(%class.String* %this, %class.String* dereferenceable(12) %rhs) #0 align 2 !dbg !371 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca %class.String*, align 4
  %this.addr = alloca %class.String*, align 4
  %rhs.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !372, metadata !DIExpression()), !dbg !373
  store %class.String* %rhs, %class.String** %rhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rhs.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !376
  %cmp = icmp eq %class.String* %this1, %0, !dbg !378
  br i1 %cmp, label %if.then, label %if.end, !dbg !379

if.then:                                          ; preds = %entry
  store %class.String* %this1, %class.String** %retval, align 4, !dbg !380
  br label %return, !dbg !380

if.end:                                           ; preds = %entry
  %1 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !381
  %buffer = getelementptr inbounds %class.String, %class.String* %1, i32 0, i32 0, !dbg !383
  %2 = load i8*, i8** %buffer, align 4, !dbg !383
  %tobool = icmp ne i8* %2, null, !dbg !381
  br i1 %tobool, label %if.then2, label %if.else, !dbg !384

if.then2:                                         ; preds = %if.end
  %3 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !385
  %buffer3 = getelementptr inbounds %class.String, %class.String* %3, i32 0, i32 0, !dbg !386
  %4 = load i8*, i8** %buffer3, align 4, !dbg !386
  %5 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !387
  %len = getelementptr inbounds %class.String, %class.String* %5, i32 0, i32 2, !dbg !388
  %6 = load i32, i32* %len, align 4, !dbg !388
  %call = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6String4copyEPKcj(%class.String* %this1, i8* %4, i32 %6), !dbg !389
  br label %if.end4, !dbg !389

if.else:                                          ; preds = %if.end
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %this1), !dbg !390
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  store %class.String* %this1, %class.String** %retval, align 4, !dbg !391
  br label %return, !dbg !391

return:                                           ; preds = %if.end4, %if.then
  %7 = load %class.String*, %class.String** %retval, align 4, !dbg !392
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringaSERKS_, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %8 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %8, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %9 = load i32, i32* %i, align 4
  %10 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i32 %9
  %11 = load i8, i8* %arrayidx1, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  store i8 %11, i8* %arrayidx2, align 1
  %13 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  %14 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %14 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %15 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %16 = load i32, i32* %i, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %18 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %19 = phi i8* [ %18, %dec_end ]
  indirectbr i8* %18, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret %class.String* %7, !dbg !392
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2EPK19__FlashStringHelper(%class.String* returned %this, %class.__FlashStringHelper* %pstr) unnamed_addr #0 align 2 !dbg !393 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %pstr.addr = alloca %class.__FlashStringHelper*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !394, metadata !DIExpression()), !dbg !395
  store %class.__FlashStringHelper* %pstr, %class.__FlashStringHelper** %pstr.addr, align 4
  call void @llvm.dbg.declare(metadata %class.__FlashStringHelper** %pstr.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !398
  %0 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %pstr.addr, align 4, !dbg !400
  %call = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPK19__FlashStringHelper(%class.String* %this1, %class.__FlashStringHelper* %0), !dbg !401
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2EPK19__FlashStringHelper, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.String* %this1, !dbg !402
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPK19__FlashStringHelper(%class.String* %this, %class.__FlashStringHelper* %pstr) #0 align 2 !dbg !403 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %pstr.addr = alloca %class.__FlashStringHelper*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !404, metadata !DIExpression()), !dbg !405
  store %class.__FlashStringHelper* %pstr, %class.__FlashStringHelper** %pstr.addr, align 4
  call void @llvm.dbg.declare(metadata %class.__FlashStringHelper** %pstr.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %pstr.addr, align 4, !dbg !408
  %tobool = icmp ne %class.__FlashStringHelper* %0, null, !dbg !408
  br i1 %tobool, label %if.then, label %if.else, !dbg !410

if.then:                                          ; preds = %entry
  %1 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %pstr.addr, align 4, !dbg !411
  %2 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %pstr.addr, align 4, !dbg !412
  %3 = bitcast %class.__FlashStringHelper* %2 to i8*, !dbg !412
  %call = call arm_aapcscc i32 @strlen(i8* %3), !dbg !412
  %call2 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6String4copyEPK19__FlashStringHelperj(%class.String* %this1, %class.__FlashStringHelper* %1, i32 %call), !dbg !413
  br label %if.end, !dbg !413

if.else:                                          ; preds = %entry
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %this1), !dbg !414
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringaSEPK19__FlashStringHelper, %if.end.RetBlock), i8** %ptr, align 4
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
  %conv = zext i8 %10 to i32
  %xor = xor i32 %conv, 133
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
  indirectbr i8* %14, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.String* %this1, !dbg !415
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2EOS_(%class.String* returned %this, %class.String* dereferenceable(12) %rval) unnamed_addr #0 align 2 !dbg !416 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rval.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !417, metadata !DIExpression()), !dbg !418
  store %class.String* %rval, %class.String** %rval.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rval.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !421
  %0 = load %class.String*, %class.String** %rval.addr, align 4, !dbg !423
  call arm_aapcscc void @_ZN6String4moveERS_(%class.String* %this1, %class.String* dereferenceable(12) %0), !dbg !424
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2EOS_, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.String* %this1, !dbg !425
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String4moveERS_(%class.String* %this, %class.String* dereferenceable(12) %rhs) #0 align 2 !dbg !426 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rhs.addr = alloca %class.String*, align 4
  %tmp = alloca { i32, i32 }, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !427, metadata !DIExpression()), !dbg !428
  store %class.String* %rhs, %class.String** %rhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rhs.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !431
  %0 = load i8*, i8** %buffer, align 4, !dbg !431
  %tobool = icmp ne i8* %0, null, !dbg !431
  br i1 %tobool, label %if.then, label %if.end9, !dbg !433

if.then:                                          ; preds = %entry
  %1 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !434
  call arm_aapcscc void @_ZNK6StringcvMS_KFvvEEv({ i32, i32 }* sret %tmp, %class.String* %1), !dbg !434
  %2 = load { i32, i32 }, { i32, i32 }* %tmp, align 4, !dbg !434
  %memptr.ptr = extractvalue { i32, i32 } %2, 0, !dbg !434
  %memptr.tobool = icmp ne i32 %memptr.ptr, 0, !dbg !434
  %memptr.adj = extractvalue { i32, i32 } %2, 1, !dbg !434
  %memptr.virtualbit = and i32 %memptr.adj, 1, !dbg !434
  %memptr.isvirtual = icmp ne i32 %memptr.virtualbit, 0, !dbg !434
  %3 = or i1 %memptr.tobool, %memptr.isvirtual, !dbg !434
  br i1 %3, label %land.lhs.true, label %if.else, !dbg !437

land.lhs.true:                                    ; preds = %if.then
  %capacity = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 1, !dbg !438
  %4 = load i32, i32* %capacity, align 4, !dbg !438
  %5 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !439
  %len = getelementptr inbounds %class.String, %class.String* %5, i32 0, i32 2, !dbg !440
  %6 = load i32, i32* %len, align 4, !dbg !440
  %cmp = icmp uge i32 %4, %6, !dbg !441
  br i1 %cmp, label %if.then2, label %if.else, !dbg !442

if.then2:                                         ; preds = %land.lhs.true
  %buffer3 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !443
  %7 = load i8*, i8** %buffer3, align 4, !dbg !443
  %8 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !445
  %buffer4 = getelementptr inbounds %class.String, %class.String* %8, i32 0, i32 0, !dbg !446
  %9 = load i8*, i8** %buffer4, align 4, !dbg !446
  %call = call arm_aapcscc i8* @strcpy(i8* %7, i8* %9), !dbg !447
  %10 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !448
  %len5 = getelementptr inbounds %class.String, %class.String* %10, i32 0, i32 2, !dbg !449
  %11 = load i32, i32* %len5, align 4, !dbg !449
  %len6 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !450
  store i32 %11, i32* %len6, align 4, !dbg !451
  %12 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !452
  %len7 = getelementptr inbounds %class.String, %class.String* %12, i32 0, i32 2, !dbg !453
  store i32 0, i32* %len7, align 4, !dbg !454
  br label %return, !dbg !455

if.else:                                          ; preds = %land.lhs.true, %if.then
  %buffer8 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !456
  %13 = load i8*, i8** %buffer8, align 4, !dbg !456
  call arm_aapcscc void @free(i8* %13) #6, !dbg !458
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end9, !dbg !459

if.end9:                                          ; preds = %if.end, %entry
  %14 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !460
  %buffer10 = getelementptr inbounds %class.String, %class.String* %14, i32 0, i32 0, !dbg !461
  %15 = load i8*, i8** %buffer10, align 4, !dbg !461
  %buffer11 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !462
  store i8* %15, i8** %buffer11, align 4, !dbg !463
  %16 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !464
  %capacity12 = getelementptr inbounds %class.String, %class.String* %16, i32 0, i32 1, !dbg !465
  %17 = load i32, i32* %capacity12, align 4, !dbg !465
  %capacity13 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 1, !dbg !466
  store i32 %17, i32* %capacity13, align 4, !dbg !467
  %18 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !468
  %len14 = getelementptr inbounds %class.String, %class.String* %18, i32 0, i32 2, !dbg !469
  %19 = load i32, i32* %len14, align 4, !dbg !469
  %len15 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !470
  store i32 %19, i32* %len15, align 4, !dbg !471
  %20 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !472
  %buffer16 = getelementptr inbounds %class.String, %class.String* %20, i32 0, i32 0, !dbg !473
  store i8* null, i8** %buffer16, align 4, !dbg !474
  %21 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !475
  %capacity17 = getelementptr inbounds %class.String, %class.String* %21, i32 0, i32 1, !dbg !476
  store i32 0, i32* %capacity17, align 4, !dbg !477
  %22 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !478
  %len18 = getelementptr inbounds %class.String, %class.String* %22, i32 0, i32 2, !dbg !479
  store i32 0, i32* %len18, align 4, !dbg !480
  br label %return, !dbg !481

return:                                           ; preds = %if.end9, %if.then2
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String4moveERS_, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %23 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %23, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %24 = load i32, i32* %i, align 4
  %25 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %25, i32 %24
  %26 = load i8, i8* %arrayidx1, align 1
  %27 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %27
  store i8 %26, i8* %arrayidx2, align 1
  %28 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %28
  %29 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %29 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %30 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %30
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %31 = load i32, i32* %i, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %33 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %34 = phi i8* [ %33, %dec_end ]
  indirectbr i8* %33, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2EO15StringSumHelper(%class.String* returned %this, %class.StringSumHelper* dereferenceable(12) %rval) unnamed_addr #0 align 2 !dbg !482 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rval.addr = alloca %class.StringSumHelper*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !483, metadata !DIExpression()), !dbg !484
  store %class.StringSumHelper* %rval, %class.StringSumHelper** %rval.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %rval.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !487
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %rval.addr, align 4, !dbg !489
  %1 = bitcast %class.StringSumHelper* %0 to %class.String*, !dbg !489
  call arm_aapcscc void @_ZN6String4moveERS_(%class.String* %this1, %class.String* dereferenceable(12) %1), !dbg !490
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2EO15StringSumHelper, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.String* %this1, !dbg !491
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2Ec(%class.String* returned %this, i8 zeroext %c) unnamed_addr #0 align 2 !dbg !492 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %c.addr = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !493, metadata !DIExpression()), !dbg !494
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !497
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !499, metadata !DIExpression()), !dbg !503
  %0 = load i8, i8* %c.addr, align 1, !dbg !504
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0, !dbg !505
  store i8 %0, i8* %arrayidx, align 1, !dbg !506
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 1, !dbg !507
  store i8 0, i8* %arrayidx2, align 1, !dbg !508
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0, !dbg !509
  %call = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this1, i8* %arraydecay), !dbg !510
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2Ec, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx12, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx23, align 1
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
  ret %class.String* %this1, !dbg !511
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this, i8* %cstr) #0 align 2 !dbg !512 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %cstr.addr = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !513, metadata !DIExpression()), !dbg !514
  store i8* %cstr, i8** %cstr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cstr.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i8*, i8** %cstr.addr, align 4, !dbg !517
  %tobool = icmp ne i8* %0, null, !dbg !517
  br i1 %tobool, label %if.then, label %if.else, !dbg !519

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %cstr.addr, align 4, !dbg !520
  %2 = load i8*, i8** %cstr.addr, align 4, !dbg !521
  %call = call arm_aapcscc i32 @strlen(i8* %2), !dbg !522
  %call2 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6String4copyEPKcj(%class.String* %this1, i8* %1, i32 %call), !dbg !523
  br label %if.end, !dbg !523

if.else:                                          ; preds = %entry
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %this1), !dbg !524
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringaSEPKc, %if.end.RetBlock), i8** %ptr, align 4
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
  indirectbr i8* %13, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.String* %this1, !dbg !525
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2Ehh(%class.String* returned %this, i8 zeroext %value, i8 zeroext %base) unnamed_addr #0 align 2 !dbg !526 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %value.addr = alloca i8, align 1
  %base.addr = alloca i8, align 1
  %buf = alloca [9 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !529, metadata !DIExpression()), !dbg !530
  store i8 %base, i8* %base.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %base.addr, metadata !531, metadata !DIExpression()), !dbg !532
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !533
  call void @llvm.dbg.declare(metadata [9 x i8]* %buf, metadata !535, metadata !DIExpression()), !dbg !539
  %0 = load i8, i8* %value.addr, align 1, !dbg !540
  %conv = zext i8 %0 to i32, !dbg !540
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i32 0, i32 0, !dbg !541
  %1 = load i8, i8* %base.addr, align 1, !dbg !542
  %conv2 = zext i8 %1 to i32, !dbg !542
  %call = call arm_aapcscc i8* @utoa(i32 %conv, i8* %arraydecay, i32 %conv2), !dbg !543
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i32 0, i32 0, !dbg !544
  %call4 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this1, i8* %arraydecay3), !dbg !545
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2Ehh, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %8 to i32
  %xor = xor i32 %conv1, 133
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
  ret %class.String* %this1, !dbg !546
}

declare dso_local arm_aapcscc i8* @utoa(i32, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2Eih(%class.String* returned %this, i32 %value, i8 zeroext %base) unnamed_addr #0 align 2 !dbg !547 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %value.addr = alloca i32, align 4
  %base.addr = alloca i8, align 1
  %buf = alloca [34 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !548, metadata !DIExpression()), !dbg !549
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !550, metadata !DIExpression()), !dbg !551
  store i8 %base, i8* %base.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %base.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !554
  call void @llvm.dbg.declare(metadata [34 x i8]* %buf, metadata !556, metadata !DIExpression()), !dbg !560
  %0 = load i32, i32* %value.addr, align 4, !dbg !561
  %arraydecay = getelementptr inbounds [34 x i8], [34 x i8]* %buf, i32 0, i32 0, !dbg !562
  %1 = load i8, i8* %base.addr, align 1, !dbg !563
  %conv = zext i8 %1 to i32, !dbg !563
  %call = call arm_aapcscc i8* @itoa(i32 %0, i8* %arraydecay, i32 %conv), !dbg !564
  %arraydecay2 = getelementptr inbounds [34 x i8], [34 x i8]* %buf, i32 0, i32 0, !dbg !565
  %call3 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this1, i8* %arraydecay2), !dbg !566
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2Eih, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %8 to i32
  %xor = xor i32 %conv1, 133
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
  ret %class.String* %this1, !dbg !567
}

declare dso_local arm_aapcscc i8* @itoa(i32, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2Ejh(%class.String* returned %this, i32 %value, i8 zeroext %base) unnamed_addr #0 align 2 !dbg !568 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %value.addr = alloca i32, align 4
  %base.addr = alloca i8, align 1
  %buf = alloca [33 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !569, metadata !DIExpression()), !dbg !570
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store i8 %base, i8* %base.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %base.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !575
  call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !577, metadata !DIExpression()), !dbg !581
  %0 = load i32, i32* %value.addr, align 4, !dbg !582
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i32 0, i32 0, !dbg !583
  %1 = load i8, i8* %base.addr, align 1, !dbg !584
  %conv = zext i8 %1 to i32, !dbg !584
  %call = call arm_aapcscc i8* @utoa(i32 %0, i8* %arraydecay, i32 %conv), !dbg !585
  %arraydecay2 = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i32 0, i32 0, !dbg !586
  %call3 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this1, i8* %arraydecay2), !dbg !587
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2Ejh, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %8 to i32
  %xor = xor i32 %conv1, 133
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
  ret %class.String* %this1, !dbg !588
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2Elh(%class.String* returned %this, i32 %value, i8 zeroext %base) unnamed_addr #0 align 2 !dbg !589 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %value.addr = alloca i32, align 4
  %base.addr = alloca i8, align 1
  %buf = alloca [34 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !590, metadata !DIExpression()), !dbg !591
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !592, metadata !DIExpression()), !dbg !593
  store i8 %base, i8* %base.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %base.addr, metadata !594, metadata !DIExpression()), !dbg !595
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !596
  call void @llvm.dbg.declare(metadata [34 x i8]* %buf, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load i32, i32* %value.addr, align 4, !dbg !600
  %arraydecay = getelementptr inbounds [34 x i8], [34 x i8]* %buf, i32 0, i32 0, !dbg !601
  %1 = load i8, i8* %base.addr, align 1, !dbg !602
  %conv = zext i8 %1 to i32, !dbg !602
  %call = call arm_aapcscc i8* @ltoa(i32 %0, i8* %arraydecay, i32 %conv), !dbg !603
  %arraydecay2 = getelementptr inbounds [34 x i8], [34 x i8]* %buf, i32 0, i32 0, !dbg !604
  %call3 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this1, i8* %arraydecay2), !dbg !605
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2Elh, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %8 to i32
  %xor = xor i32 %conv1, 133
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
  ret %class.String* %this1, !dbg !606
}

declare dso_local arm_aapcscc i8* @ltoa(i32, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2Emh(%class.String* returned %this, i32 %value, i8 zeroext %base) unnamed_addr #0 align 2 !dbg !607 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %value.addr = alloca i32, align 4
  %base.addr = alloca i8, align 1
  %buf = alloca [33 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store i8 %base, i8* %base.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %base.addr, metadata !612, metadata !DIExpression()), !dbg !613
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !614
  call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !616, metadata !DIExpression()), !dbg !617
  %0 = load i32, i32* %value.addr, align 4, !dbg !618
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i32 0, i32 0, !dbg !619
  %1 = load i8, i8* %base.addr, align 1, !dbg !620
  %conv = zext i8 %1 to i32, !dbg !620
  %call = call arm_aapcscc i8* @ultoa(i32 %0, i8* %arraydecay, i32 %conv), !dbg !621
  %arraydecay2 = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i32 0, i32 0, !dbg !622
  %call3 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this1, i8* %arraydecay2), !dbg !623
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2Emh, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %8 to i32
  %xor = xor i32 %conv1, 133
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
  ret %class.String* %this1, !dbg !624
}

declare dso_local arm_aapcscc i8* @ultoa(i32, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2Efh(%class.String* returned %this, float %value, i8 zeroext %decimalPlaces) unnamed_addr #0 align 2 !dbg !625 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %value.addr = alloca float, align 4
  %decimalPlaces.addr = alloca i8, align 1
  %buf = alloca [33 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !626, metadata !DIExpression()), !dbg !627
  store float %value, float* %value.addr, align 4
  call void @llvm.dbg.declare(metadata float* %value.addr, metadata !628, metadata !DIExpression()), !dbg !629
  store i8 %decimalPlaces, i8* %decimalPlaces.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %decimalPlaces.addr, metadata !630, metadata !DIExpression()), !dbg !631
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !632
  call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !634, metadata !DIExpression()), !dbg !635
  %0 = load float, float* %value.addr, align 4, !dbg !636
  %conv = fpext float %0 to double, !dbg !636
  %1 = load i8, i8* %decimalPlaces.addr, align 1, !dbg !637
  %conv2 = zext i8 %1 to i32, !dbg !637
  %add = add nsw i32 %conv2, 2, !dbg !638
  %conv3 = trunc i32 %add to i8, !dbg !639
  %2 = load i8, i8* %decimalPlaces.addr, align 1, !dbg !640
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i32 0, i32 0, !dbg !641
  %call = call arm_aapcscc i8* @dtostrf(double %conv, i8 signext %conv3, i8 zeroext %2, i8* %arraydecay), !dbg !642
  %call4 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this1, i8* %call), !dbg !643
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2Efh, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %9 to i32
  %xor = xor i32 %conv1, 133
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
  ret %class.String* %this1, !dbg !644
}

declare dso_local arm_aapcscc i8* @dtostrf(double, i8 signext, i8 zeroext, i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringC2Edh(%class.String* returned %this, double %value, i8 zeroext %decimalPlaces) unnamed_addr #0 align 2 !dbg !645 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %value.addr = alloca double, align 8
  %decimalPlaces.addr = alloca i8, align 1
  %buf = alloca [33 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !646, metadata !DIExpression()), !dbg !647
  store double %value, double* %value.addr, align 8
  call void @llvm.dbg.declare(metadata double* %value.addr, metadata !648, metadata !DIExpression()), !dbg !649
  store i8 %decimalPlaces, i8* %decimalPlaces.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %decimalPlaces.addr, metadata !650, metadata !DIExpression()), !dbg !651
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call arm_aapcscc void @_ZN6String4initEv(%class.String* %this1), !dbg !652
  call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load double, double* %value.addr, align 8, !dbg !656
  %1 = load i8, i8* %decimalPlaces.addr, align 1, !dbg !657
  %conv = zext i8 %1 to i32, !dbg !657
  %add = add nsw i32 %conv, 2, !dbg !658
  %conv2 = trunc i32 %add to i8, !dbg !659
  %2 = load i8, i8* %decimalPlaces.addr, align 1, !dbg !660
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i32 0, i32 0, !dbg !661
  %call = call arm_aapcscc i8* @dtostrf(double %0, i8 signext %conv2, i8 zeroext %2, i8* %arraydecay), !dbg !662
  %call3 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %this1, i8* %call), !dbg !663
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringC2Edh, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %9 to i32
  %xor = xor i32 %conv1, 133
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
  ret %class.String* %this1, !dbg !664
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.String* @_ZN6StringD2Ev(%class.String* returned %this) unnamed_addr #0 align 2 !dbg !665 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !666, metadata !DIExpression()), !dbg !667
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !668
  %0 = load i8*, i8** %buffer, align 4, !dbg !668
  call arm_aapcscc void @free(i8* %0) #6, !dbg !670
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringD2Ev, %entry.RetBlock), i8** %ptr, align 4
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
  ret %class.String* %this1, !dbg !671
}

; Function Attrs: nounwind
declare dso_local arm_aapcscc void @free(i8*) #3

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %this) #0 align 2 !dbg !672 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !673, metadata !DIExpression()), !dbg !674
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !675
  %0 = load i8*, i8** %buffer, align 4, !dbg !675
  %tobool = icmp ne i8* %0, null, !dbg !675
  br i1 %tobool, label %if.then, label %if.end, !dbg !677

if.then:                                          ; preds = %entry
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !678
  %1 = load i8*, i8** %buffer2, align 4, !dbg !678
  call arm_aapcscc void @free(i8* %1) #6, !dbg !679
  br label %if.end, !dbg !679

if.end:                                           ; preds = %if.then, %entry
  %buffer3 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !680
  store i8* null, i8** %buffer3, align 4, !dbg !681
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !682
  store i32 0, i32* %len, align 4, !dbg !683
  %capacity = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 1, !dbg !684
  store i32 0, i32* %capacity, align 4, !dbg !685
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String10invalidateEv, %if.end.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String7reserveEj(%class.String* %this, i32 %size) #0 align 2 !dbg !687 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %size.addr = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !688, metadata !DIExpression()), !dbg !689
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !690, metadata !DIExpression()), !dbg !691
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !692
  %0 = load i8*, i8** %buffer, align 4, !dbg !692
  %tobool = icmp ne i8* %0, null, !dbg !692
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !694

land.lhs.true:                                    ; preds = %entry
  %capacity = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 1, !dbg !695
  %1 = load i32, i32* %capacity, align 4, !dbg !695
  %2 = load i32, i32* %size.addr, align 4, !dbg !696
  %cmp = icmp uge i32 %1, %2, !dbg !697
  br i1 %cmp, label %if.then, label %if.end, !dbg !698

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %retval, align 1, !dbg !699
  br label %return, !dbg !699

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %size.addr, align 4, !dbg !700
  %call = call arm_aapcscc zeroext i8 @_ZN6String12changeBufferEj(%class.String* %this1, i32 %3), !dbg !702
  %tobool2 = icmp ne i8 %call, 0, !dbg !702
  br i1 %tobool2, label %if.then3, label %if.end8, !dbg !703

if.then3:                                         ; preds = %if.end
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !704
  %4 = load i32, i32* %len, align 4, !dbg !704
  %cmp4 = icmp eq i32 %4, 0, !dbg !707
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !708

if.then5:                                         ; preds = %if.then3
  %buffer6 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !709
  %5 = load i8*, i8** %buffer6, align 4, !dbg !709
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 0, !dbg !709
  store i8 0, i8* %arrayidx, align 1, !dbg !710
  br label %if.end7, !dbg !709

if.end7:                                          ; preds = %if.then5, %if.then3
  store i8 1, i8* %retval, align 1, !dbg !711
  br label %return, !dbg !711

if.end8:                                          ; preds = %if.end
  store i8 0, i8* %retval, align 1, !dbg !712
  br label %return, !dbg !712

return:                                           ; preds = %if.end8, %if.end7, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !713
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String7reserveEj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %7, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx13, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %6, !dbg !713
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String12changeBufferEj(%class.String* %this, i32 %maxStrLen) #0 align 2 !dbg !714 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %maxStrLen.addr = alloca i32, align 4
  %newbuffer = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !715, metadata !DIExpression()), !dbg !716
  store i32 %maxStrLen, i32* %maxStrLen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %maxStrLen.addr, metadata !717, metadata !DIExpression()), !dbg !718
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %newbuffer, metadata !719, metadata !DIExpression()), !dbg !720
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !721
  %0 = load i8*, i8** %buffer, align 4, !dbg !721
  %1 = load i32, i32* %maxStrLen.addr, align 4, !dbg !722
  %add = add i32 %1, 1, !dbg !723
  %call = call arm_aapcscc i8* @realloc(i8* %0, i32 %add) #6, !dbg !724
  store i8* %call, i8** %newbuffer, align 4, !dbg !720
  %2 = load i8*, i8** %newbuffer, align 4, !dbg !725
  %tobool = icmp ne i8* %2, null, !dbg !725
  br i1 %tobool, label %if.then, label %if.end, !dbg !727

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %newbuffer, align 4, !dbg !728
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !730
  store i8* %3, i8** %buffer2, align 4, !dbg !731
  %4 = load i32, i32* %maxStrLen.addr, align 4, !dbg !732
  %capacity = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 1, !dbg !733
  store i32 %4, i32* %capacity, align 4, !dbg !734
  store i8 1, i8* %retval, align 1, !dbg !735
  br label %return, !dbg !735

if.end:                                           ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !736
  br label %return, !dbg !736

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, i8* %retval, align 1, !dbg !737
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String12changeBufferEj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %7 = load i32, i32* %i, align 4
  %8 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i32 %7
  %9 = load i8, i8* %arrayidx1, align 1
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
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  store i8 %conv4, i8* %arrayidx5, align 1
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
  indirectbr i8* %16, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %5, !dbg !737
}

; Function Attrs: nounwind
declare dso_local arm_aapcscc i8* @realloc(i8*, i32) #3

declare dso_local arm_aapcscc i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.String* @_ZN6String4copyEPK19__FlashStringHelperj(%class.String* %this, %class.__FlashStringHelper* %pstr, i32 %length) #0 align 2 !dbg !738 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca %class.String*, align 4
  %this.addr = alloca %class.String*, align 4
  %pstr.addr = alloca %class.__FlashStringHelper*, align 4
  %length.addr = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !739, metadata !DIExpression()), !dbg !740
  store %class.__FlashStringHelper* %pstr, %class.__FlashStringHelper** %pstr.addr, align 4
  call void @llvm.dbg.declare(metadata %class.__FlashStringHelper** %pstr.addr, metadata !741, metadata !DIExpression()), !dbg !742
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !743, metadata !DIExpression()), !dbg !744
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %length.addr, align 4, !dbg !745
  %call = call arm_aapcscc zeroext i8 @_ZN6String7reserveEj(%class.String* %this1, i32 %0), !dbg !747
  %tobool = icmp ne i8 %call, 0, !dbg !747
  br i1 %tobool, label %if.end, label %if.then, !dbg !748

if.then:                                          ; preds = %entry
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %this1), !dbg !749
  store %class.String* %this1, %class.String** %retval, align 4, !dbg !751
  br label %return, !dbg !751

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4, !dbg !752
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !753
  store i32 %1, i32* %len, align 4, !dbg !754
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !755
  %2 = load i8*, i8** %buffer, align 4, !dbg !755
  %3 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %pstr.addr, align 4, !dbg !755
  %4 = bitcast %class.__FlashStringHelper* %3 to i8*, !dbg !755
  %call2 = call arm_aapcscc i8* @strcpy(i8* %2, i8* %4), !dbg !755
  store %class.String* %this1, %class.String** %retval, align 4, !dbg !756
  br label %return, !dbg !756

return:                                           ; preds = %if.end, %if.then
  %5 = load %class.String*, %class.String** %retval, align 4, !dbg !757
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String4copyEPK19__FlashStringHelperj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %7 = load i32, i32* %i, align 4
  %8 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i32 %7
  %9 = load i8, i8* %arrayidx1, align 1
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
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  store i8 %conv4, i8* %arrayidx5, align 1
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
  indirectbr i8* %16, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret %class.String* %5, !dbg !757
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc void @_ZNK6StringcvMS_KFvvEEv({ i32, i32 }* noalias sret %agg.result, %class.String* %this) #0 comdat align 2 !dbg !758 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !759, metadata !DIExpression()), !dbg !761
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !762
  %0 = load i8*, i8** %buffer, align 4, !dbg !762
  %tobool = icmp ne i8* %0, null, !dbg !762
  %1 = zext i1 %tobool to i64, !dbg !762
  %cond = select i1 %tobool, { i32, i32 } { i32 ptrtoint (void (%class.String*)* @_ZNK6String14StringIfHelperEv to i32), i32 0 }, { i32, i32 } zeroinitializer, !dbg !762
  store { i32, i32 } %cond, { i32, i32 }* %agg.result, align 4, !dbg !763
  %2 = load { i32, i32 }, { i32, i32 }* %agg.result, align 4, !dbg !763
  store { i32, i32 } %2, { i32, i32 }* %agg.result, align 4, !dbg !763
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6StringcvMS_KFvvEEv, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !763
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEOS_(%class.String* %this, %class.String* dereferenceable(12) %rval) #0 align 2 !dbg !764 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rval.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !765, metadata !DIExpression()), !dbg !766
  store %class.String* %rval, %class.String** %rval.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rval.addr, metadata !767, metadata !DIExpression()), !dbg !768
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %rval.addr, align 4, !dbg !769
  %cmp = icmp ne %class.String* %this1, %0, !dbg !771
  br i1 %cmp, label %if.then, label %if.end, !dbg !772

if.then:                                          ; preds = %entry
  %1 = load %class.String*, %class.String** %rval.addr, align 4, !dbg !773
  call arm_aapcscc void @_ZN6String4moveERS_(%class.String* %this1, %class.String* dereferenceable(12) %1), !dbg !774
  br label %if.end, !dbg !774

if.end:                                           ; preds = %if.then, %entry
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringaSEOS_, %if.end.RetBlock), i8** %ptr, align 4
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
  indirectbr i8* %12, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.String* %this1, !dbg !775
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEO15StringSumHelper(%class.String* %this, %class.StringSumHelper* dereferenceable(12) %rval) #0 align 2 !dbg !776 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rval.addr = alloca %class.StringSumHelper*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !777, metadata !DIExpression()), !dbg !778
  store %class.StringSumHelper* %rval, %class.StringSumHelper** %rval.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %rval.addr, metadata !779, metadata !DIExpression()), !dbg !780
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %rval.addr, align 4, !dbg !781
  %1 = bitcast %class.StringSumHelper* %0 to %class.String*, !dbg !783
  %cmp = icmp ne %class.String* %this1, %1, !dbg !784
  br i1 %cmp, label %if.then, label %if.end, !dbg !785

if.then:                                          ; preds = %entry
  %2 = load %class.StringSumHelper*, %class.StringSumHelper** %rval.addr, align 4, !dbg !786
  %3 = bitcast %class.StringSumHelper* %2 to %class.String*, !dbg !786
  call arm_aapcscc void @_ZN6String4moveERS_(%class.String* %this1, %class.String* dereferenceable(12) %3), !dbg !787
  br label %if.end, !dbg !787

if.end:                                           ; preds = %if.then, %entry
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringaSEO15StringSumHelper, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %4, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

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
  %conv = zext i8 %10 to i32
  %xor = xor i32 %conv, 133
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
  indirectbr i8* %14, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.String* %this1, !dbg !788
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatERKS_(%class.String* %this, %class.String* dereferenceable(12) %s) #0 align 2 !dbg !789 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %s.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !790, metadata !DIExpression()), !dbg !791
  store %class.String* %s, %class.String** %s.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s.addr, metadata !792, metadata !DIExpression()), !dbg !793
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %s.addr, align 4, !dbg !794
  %buffer = getelementptr inbounds %class.String, %class.String* %0, i32 0, i32 0, !dbg !795
  %1 = load i8*, i8** %buffer, align 4, !dbg !795
  %2 = load %class.String*, %class.String** %s.addr, align 4, !dbg !796
  %len = getelementptr inbounds %class.String, %class.String* %2, i32 0, i32 2, !dbg !797
  %3 = load i32, i32* %len, align 4, !dbg !797
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %1, i32 %3), !dbg !798
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatERKS_, %entry.RetBlock), i8** %ptr, align 4
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
  %conv = zext i8 %10 to i32
  %xor = xor i32 %conv, 133
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
  ret i8 %call, !dbg !799
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this, i8* %cstr, i32 %length) #0 align 2 !dbg !800 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %cstr.addr = alloca i8*, align 4
  %length.addr = alloca i32, align 4
  %newlen = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !801, metadata !DIExpression()), !dbg !802
  store i8* %cstr, i8** %cstr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cstr.addr, metadata !803, metadata !DIExpression()), !dbg !804
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !805, metadata !DIExpression()), !dbg !806
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %newlen, metadata !807, metadata !DIExpression()), !dbg !808
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !809
  %0 = load i32, i32* %len, align 4, !dbg !809
  %1 = load i32, i32* %length.addr, align 4, !dbg !810
  %add = add i32 %0, %1, !dbg !811
  store i32 %add, i32* %newlen, align 4, !dbg !808
  %2 = load i8*, i8** %cstr.addr, align 4, !dbg !812
  %tobool = icmp ne i8* %2, null, !dbg !812
  br i1 %tobool, label %if.end, label %if.then, !dbg !814

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !815
  br label %return, !dbg !815

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %length.addr, align 4, !dbg !816
  %cmp = icmp eq i32 %3, 0, !dbg !818
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !819

if.then2:                                         ; preds = %if.end
  store i8 1, i8* %retval, align 1, !dbg !820
  br label %return, !dbg !820

if.end3:                                          ; preds = %if.end
  %4 = load i32, i32* %newlen, align 4, !dbg !821
  %call = call arm_aapcscc zeroext i8 @_ZN6String7reserveEj(%class.String* %this1, i32 %4), !dbg !823
  %tobool4 = icmp ne i8 %call, 0, !dbg !823
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !824

if.then5:                                         ; preds = %if.end3
  store i8 0, i8* %retval, align 1, !dbg !825
  br label %return, !dbg !825

if.end6:                                          ; preds = %if.end3
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !826
  %5 = load i8*, i8** %buffer, align 4, !dbg !826
  %len7 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !827
  %6 = load i32, i32* %len7, align 4, !dbg !827
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 %6, !dbg !828
  %7 = load i8*, i8** %cstr.addr, align 4, !dbg !829
  %call8 = call arm_aapcscc i8* @strcpy(i8* %add.ptr, i8* %7), !dbg !830
  %8 = load i32, i32* %newlen, align 4, !dbg !831
  %len9 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !832
  store i32 %8, i32* %len9, align 4, !dbg !833
  store i8 1, i8* %retval, align 1, !dbg !834
  br label %return, !dbg !834

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !835
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEPKcj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %10 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %10, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %11 = load i32, i32* %i, align 4
  %12 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %12, i32 %11
  %13 = load i8, i8* %arrayidx1, align 1
  %14 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %13, i8* %arrayidx2, align 1
  %15 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  %16 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %16 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %17 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %18 = load i32, i32* %i, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %20 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %21 = phi i8* [ %20, %dec_end ]
  indirectbr i8* %20, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %9, !dbg !835
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEPKc(%class.String* %this, i8* %cstr) #0 align 2 !dbg !836 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %cstr.addr = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !837, metadata !DIExpression()), !dbg !838
  store i8* %cstr, i8** %cstr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cstr.addr, metadata !839, metadata !DIExpression()), !dbg !840
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i8*, i8** %cstr.addr, align 4, !dbg !841
  %tobool = icmp ne i8* %0, null, !dbg !841
  br i1 %tobool, label %if.end, label %if.then, !dbg !843

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !844
  br label %return, !dbg !844

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %cstr.addr, align 4, !dbg !845
  %2 = load i8*, i8** %cstr.addr, align 4, !dbg !846
  %call = call arm_aapcscc i32 @strlen(i8* %2), !dbg !847
  %call2 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %1, i32 %call), !dbg !848
  store i8 %call2, i8* %retval, align 1, !dbg !849
  br label %return, !dbg !849

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, i8* %retval, align 1, !dbg !850
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEPKc, %return.RetBlock), i8** %ptr, align 4
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
  %conv = zext i8 %10 to i32
  %xor = xor i32 %conv, 133
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
  indirectbr i8* %14, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %3, !dbg !850
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEc(%class.String* %this, i8 zeroext %c) #0 align 2 !dbg !851 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %c.addr = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !852, metadata !DIExpression()), !dbg !853
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !854, metadata !DIExpression()), !dbg !855
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !856, metadata !DIExpression()), !dbg !857
  %0 = load i8, i8* %c.addr, align 1, !dbg !858
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0, !dbg !859
  store i8 %0, i8* %arrayidx, align 1, !dbg !860
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 1, !dbg !861
  store i8 0, i8* %arrayidx2, align 1, !dbg !862
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0, !dbg !863
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %arraydecay, i32 1), !dbg !864
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEc, %entry.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8*, i8** %ptr, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %3, i32 %2
  %4 = load i8, i8* %arrayidx12, align 1
  %5 = load i32, i32* %i, align 4
  %arrayidx23 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %5
  store i8 %4, i8* %arrayidx23, align 1
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
  ret i8 %call, !dbg !865
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEh(%class.String* %this, i8 zeroext %num) #0 align 2 !dbg !866 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %num.addr = alloca i8, align 1
  %buf = alloca [4 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !867, metadata !DIExpression()), !dbg !868
  store i8 %num, i8* %num.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %num.addr, metadata !869, metadata !DIExpression()), !dbg !870
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [4 x i8]* %buf, metadata !871, metadata !DIExpression()), !dbg !875
  %0 = load i8, i8* %num.addr, align 1, !dbg !876
  %conv = zext i8 %0 to i32, !dbg !876
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0, !dbg !877
  %call = call arm_aapcscc i8* @itoa(i32 %conv, i8* %arraydecay, i32 10), !dbg !878
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0, !dbg !879
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0, !dbg !880
  %call4 = call arm_aapcscc i32 @strlen(i8* %arraydecay3), !dbg !881
  %call5 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %arraydecay2, i32 %call4), !dbg !882
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEh, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %call5, !dbg !883
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEi(%class.String* %this, i32 %num) #0 align 2 !dbg !884 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %num.addr = alloca i32, align 4
  %buf = alloca [14 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !885, metadata !DIExpression()), !dbg !886
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !887, metadata !DIExpression()), !dbg !888
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [14 x i8]* %buf, metadata !889, metadata !DIExpression()), !dbg !893
  %0 = load i32, i32* %num.addr, align 4, !dbg !894
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i32 0, i32 0, !dbg !895
  %call = call arm_aapcscc i8* @itoa(i32 %0, i8* %arraydecay, i32 10), !dbg !896
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i32 0, i32 0, !dbg !897
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i32 0, i32 0, !dbg !898
  %call4 = call arm_aapcscc i32 @strlen(i8* %arraydecay3), !dbg !899
  %call5 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %arraydecay2, i32 %call4), !dbg !900
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEi, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %call5, !dbg !901
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEj(%class.String* %this, i32 %num) #0 align 2 !dbg !902 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %num.addr = alloca i32, align 4
  %buf = alloca [13 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !903, metadata !DIExpression()), !dbg !904
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !905, metadata !DIExpression()), !dbg !906
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [13 x i8]* %buf, metadata !907, metadata !DIExpression()), !dbg !911
  %0 = load i32, i32* %num.addr, align 4, !dbg !912
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !913
  %call = call arm_aapcscc i8* @utoa(i32 %0, i8* %arraydecay, i32 10), !dbg !914
  %arraydecay2 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !915
  %arraydecay3 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !916
  %call4 = call arm_aapcscc i32 @strlen(i8* %arraydecay3), !dbg !917
  %call5 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %arraydecay2, i32 %call4), !dbg !918
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEj, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %call5, !dbg !919
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEl(%class.String* %this, i32 %num) #0 align 2 !dbg !920 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %num.addr = alloca i32, align 4
  %buf = alloca [14 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !921, metadata !DIExpression()), !dbg !922
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !923, metadata !DIExpression()), !dbg !924
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [14 x i8]* %buf, metadata !925, metadata !DIExpression()), !dbg !926
  %0 = load i32, i32* %num.addr, align 4, !dbg !927
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i32 0, i32 0, !dbg !928
  %call = call arm_aapcscc i8* @ltoa(i32 %0, i8* %arraydecay, i32 10), !dbg !929
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i32 0, i32 0, !dbg !930
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i32 0, i32 0, !dbg !931
  %call4 = call arm_aapcscc i32 @strlen(i8* %arraydecay3), !dbg !932
  %call5 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %arraydecay2, i32 %call4), !dbg !933
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEl, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %call5, !dbg !934
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEm(%class.String* %this, i32 %num) #0 align 2 !dbg !935 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %num.addr = alloca i32, align 4
  %buf = alloca [13 x i8], align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !936, metadata !DIExpression()), !dbg !937
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !938, metadata !DIExpression()), !dbg !939
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [13 x i8]* %buf, metadata !940, metadata !DIExpression()), !dbg !941
  %0 = load i32, i32* %num.addr, align 4, !dbg !942
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !943
  %call = call arm_aapcscc i8* @ultoa(i32 %0, i8* %arraydecay, i32 10), !dbg !944
  %arraydecay2 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !945
  %arraydecay3 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !946
  %call4 = call arm_aapcscc i32 @strlen(i8* %arraydecay3), !dbg !947
  %call5 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %arraydecay2, i32 %call4), !dbg !948
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEm, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %call5, !dbg !949
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEf(%class.String* %this, float %num) #0 align 2 !dbg !950 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %num.addr = alloca float, align 4
  %buf = alloca [20 x i8], align 1
  %string = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !951, metadata !DIExpression()), !dbg !952
  store float %num, float* %num.addr, align 4
  call void @llvm.dbg.declare(metadata float* %num.addr, metadata !953, metadata !DIExpression()), !dbg !954
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %buf, metadata !955, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata i8** %string, metadata !960, metadata !DIExpression()), !dbg !961
  %0 = load float, float* %num.addr, align 4, !dbg !962
  %conv = fpext float %0 to double, !dbg !962
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !963
  %call = call arm_aapcscc i8* @dtostrf(double %conv, i8 signext 4, i8 zeroext 2, i8* %arraydecay), !dbg !964
  store i8* %call, i8** %string, align 4, !dbg !961
  %1 = load i8*, i8** %string, align 4, !dbg !965
  %2 = load i8*, i8** %string, align 4, !dbg !966
  %call2 = call arm_aapcscc i32 @strlen(i8* %2), !dbg !967
  %call3 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %1, i32 %call2), !dbg !968
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEf, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %9 to i32
  %xor = xor i32 %conv1, 133
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
  ret i8 %call3, !dbg !969
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEd(%class.String* %this, double %num) #0 align 2 !dbg !970 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %num.addr = alloca double, align 8
  %buf = alloca [20 x i8], align 1
  %string = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !971, metadata !DIExpression()), !dbg !972
  store double %num, double* %num.addr, align 8
  call void @llvm.dbg.declare(metadata double* %num.addr, metadata !973, metadata !DIExpression()), !dbg !974
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %buf, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.declare(metadata i8** %string, metadata !977, metadata !DIExpression()), !dbg !978
  %0 = load double, double* %num.addr, align 8, !dbg !979
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !980
  %call = call arm_aapcscc i8* @dtostrf(double %0, i8 signext 4, i8 zeroext 2, i8* %arraydecay), !dbg !981
  store i8* %call, i8** %string, align 4, !dbg !978
  %1 = load i8*, i8** %string, align 4, !dbg !982
  %2 = load i8*, i8** %string, align 4, !dbg !983
  %call2 = call arm_aapcscc i32 @strlen(i8* %2), !dbg !984
  %call3 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %this1, i8* %1, i32 %call2), !dbg !985
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEd, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %call3, !dbg !986
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEPK19__FlashStringHelper(%class.String* %this, %class.__FlashStringHelper* %str) #0 align 2 !dbg !987 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %str.addr = alloca %class.__FlashStringHelper*, align 4
  %length = alloca i32, align 4
  %newlen = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !988, metadata !DIExpression()), !dbg !989
  store %class.__FlashStringHelper* %str, %class.__FlashStringHelper** %str.addr, align 4
  call void @llvm.dbg.declare(metadata %class.__FlashStringHelper** %str.addr, metadata !990, metadata !DIExpression()), !dbg !991
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %str.addr, align 4, !dbg !992
  %tobool = icmp ne %class.__FlashStringHelper* %0, null, !dbg !992
  br i1 %tobool, label %if.end, label %if.then, !dbg !994

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !995
  br label %return, !dbg !995

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %length, metadata !996, metadata !DIExpression()), !dbg !997
  %1 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %str.addr, align 4, !dbg !998
  %2 = bitcast %class.__FlashStringHelper* %1 to i8*, !dbg !998
  %call = call arm_aapcscc i32 @strlen(i8* %2), !dbg !998
  store i32 %call, i32* %length, align 4, !dbg !997
  %3 = load i32, i32* %length, align 4, !dbg !999
  %cmp = icmp eq i32 %3, 0, !dbg !1001
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1002

if.then2:                                         ; preds = %if.end
  store i8 1, i8* %retval, align 1, !dbg !1003
  br label %return, !dbg !1003

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %newlen, metadata !1004, metadata !DIExpression()), !dbg !1005
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1006
  %4 = load i32, i32* %len, align 4, !dbg !1006
  %5 = load i32, i32* %length, align 4, !dbg !1007
  %add = add i32 %4, %5, !dbg !1008
  store i32 %add, i32* %newlen, align 4, !dbg !1005
  %6 = load i32, i32* %newlen, align 4, !dbg !1009
  %call4 = call arm_aapcscc zeroext i8 @_ZN6String7reserveEj(%class.String* %this1, i32 %6), !dbg !1011
  %tobool5 = icmp ne i8 %call4, 0, !dbg !1011
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1012

if.then6:                                         ; preds = %if.end3
  store i8 0, i8* %retval, align 1, !dbg !1013
  br label %return, !dbg !1013

if.end7:                                          ; preds = %if.end3
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1014
  %7 = load i8*, i8** %buffer, align 4, !dbg !1014
  %len8 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1014
  %8 = load i32, i32* %len8, align 4, !dbg !1014
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 %8, !dbg !1014
  %9 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %str.addr, align 4, !dbg !1014
  %10 = bitcast %class.__FlashStringHelper* %9 to i8*, !dbg !1014
  %call9 = call arm_aapcscc i8* @strcpy(i8* %add.ptr, i8* %10), !dbg !1014
  %11 = load i32, i32* %newlen, align 4, !dbg !1015
  %len10 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1016
  store i32 %11, i32* %len10, align 4, !dbg !1017
  store i8 1, i8* %retval, align 1, !dbg !1018
  br label %return, !dbg !1018

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %12 = load i8, i8* %retval, align 1, !dbg !1019
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6concatEPK19__FlashStringHelper, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %13 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %13, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %14 = load i32, i32* %i, align 4
  %15 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %15, i32 %14
  %16 = load i8, i8* %arrayidx1, align 1
  %17 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  store i8 %16, i8* %arrayidx2, align 1
  %18 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %18
  %19 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %19 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %20 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %20
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %21 = load i32, i32* %i, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %23 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %24 = phi i8* [ %23, %dec_end ]
  indirectbr i8* %23, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %12, !dbg !1019
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperRK6String(%class.StringSumHelper* dereferenceable(12) %lhs, %class.String* dereferenceable(12) %rhs) #0 !dbg !1020 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %rhs.addr = alloca %class.String*, align 4
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  store %class.String* %rhs, %class.String** %rhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rhs.addr, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1030, metadata !DIExpression()), !dbg !1031
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1032
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1031
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1033
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1033
  %3 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !1035
  %buffer = getelementptr inbounds %class.String, %class.String* %3, i32 0, i32 0, !dbg !1036
  %4 = load i8*, i8** %buffer, align 4, !dbg !1036
  %5 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !1037
  %len = getelementptr inbounds %class.String, %class.String* %5, i32 0, i32 2, !dbg !1038
  %6 = load i32, i32* %len, align 4, !dbg !1038
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %2, i8* %4, i32 %6), !dbg !1039
  %tobool = icmp ne i8 %call, 0, !dbg !1033
  br i1 %tobool, label %if.end, label %if.then, !dbg !1040

if.then:                                          ; preds = %entry
  %7 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1041
  %8 = bitcast %class.StringSumHelper* %7 to %class.String*, !dbg !1041
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %8), !dbg !1042
  br label %if.end, !dbg !1041

if.end:                                           ; preds = %if.then, %entry
  %9 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1043
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperRK6String, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %10 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %10, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %11 = load i32, i32* %i, align 4
  %12 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %12, i32 %11
  %13 = load i8, i8* %arrayidx1, align 1
  %14 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %13, i8* %arrayidx2, align 1
  %15 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  %16 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %16 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %17 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %18 = load i32, i32* %i, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %20 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %21 = phi i8* [ %20, %dec_end ]
  indirectbr i8* %20, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %9, !dbg !1044
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperPKc(%class.StringSumHelper* dereferenceable(12) %lhs, i8* %cstr) #0 !dbg !1045 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %cstr.addr = alloca i8*, align 4
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i8* %cstr, i8** %cstr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cstr.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1052, metadata !DIExpression()), !dbg !1053
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1054
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1053
  %1 = load i8*, i8** %cstr.addr, align 4, !dbg !1055
  %tobool = icmp ne i8* %1, null, !dbg !1055
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1057

lor.lhs.false:                                    ; preds = %entry
  %2 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1058
  %3 = bitcast %class.StringSumHelper* %2 to %class.String*, !dbg !1058
  %4 = load i8*, i8** %cstr.addr, align 4, !dbg !1059
  %5 = load i8*, i8** %cstr.addr, align 4, !dbg !1060
  %call = call arm_aapcscc i32 @strlen(i8* %5), !dbg !1061
  %call1 = call arm_aapcscc zeroext i8 @_ZN6String6concatEPKcj(%class.String* %3, i8* %4, i32 %call), !dbg !1062
  %tobool2 = icmp ne i8 %call1, 0, !dbg !1058
  br i1 %tobool2, label %if.end, label %if.then, !dbg !1063

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1064
  %7 = bitcast %class.StringSumHelper* %6 to %class.String*, !dbg !1064
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %7), !dbg !1065
  br label %if.end, !dbg !1064

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1066
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperPKc, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %10 = load i32, i32* %i, align 4
  %11 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %11, i32 %10
  %12 = load i8, i8* %arrayidx1, align 1
  %13 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  store i8 %12, i8* %arrayidx2, align 1
  %14 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  %15 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %15 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %16 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %16
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %17 = load i32, i32* %i, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %19 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %20 = phi i8* [ %19, %dec_end ]
  indirectbr i8* %19, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %8, !dbg !1067
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperc(%class.StringSumHelper* dereferenceable(12) %lhs, i8 zeroext %c) #0 !dbg !1068 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %c.addr = alloca i8, align 1
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1075, metadata !DIExpression()), !dbg !1076
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1077
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1076
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1078
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1078
  %3 = load i8, i8* %c.addr, align 1, !dbg !1080
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEc(%class.String* %2, i8 zeroext %3), !dbg !1081
  %tobool = icmp ne i8 %call, 0, !dbg !1078
  br i1 %tobool, label %if.end, label %if.then, !dbg !1082

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1083
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1083
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1084
  br label %if.end, !dbg !1083

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1085
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperc, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1086
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperh(%class.StringSumHelper* dereferenceable(12) %lhs, i8 zeroext %num) #0 !dbg !1087 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %num.addr = alloca i8, align 1
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1090, metadata !DIExpression()), !dbg !1091
  store i8 %num, i8* %num.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %num.addr, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1094, metadata !DIExpression()), !dbg !1095
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1096
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1095
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1097
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1097
  %3 = load i8, i8* %num.addr, align 1, !dbg !1099
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEh(%class.String* %2, i8 zeroext %3), !dbg !1100
  %tobool = icmp ne i8 %call, 0, !dbg !1097
  br i1 %tobool, label %if.end, label %if.then, !dbg !1101

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1102
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1102
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1103
  br label %if.end, !dbg !1102

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1104
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperh, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1105
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperi(%class.StringSumHelper* dereferenceable(12) %lhs, i32 %num) #0 !dbg !1106 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %num.addr = alloca i32, align 4
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1109, metadata !DIExpression()), !dbg !1110
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !1111, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1113, metadata !DIExpression()), !dbg !1114
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1115
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1114
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1116
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1116
  %3 = load i32, i32* %num.addr, align 4, !dbg !1118
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEi(%class.String* %2, i32 %3), !dbg !1119
  %tobool = icmp ne i8 %call, 0, !dbg !1116
  br i1 %tobool, label %if.end, label %if.then, !dbg !1120

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1121
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1121
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1122
  br label %if.end, !dbg !1121

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1123
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperi, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1124
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperj(%class.StringSumHelper* dereferenceable(12) %lhs, i32 %num) #0 !dbg !1125 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %num.addr = alloca i32, align 4
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1132, metadata !DIExpression()), !dbg !1133
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1134
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1133
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1135
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1135
  %3 = load i32, i32* %num.addr, align 4, !dbg !1137
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEj(%class.String* %2, i32 %3), !dbg !1138
  %tobool = icmp ne i8 %call, 0, !dbg !1135
  br i1 %tobool, label %if.end, label %if.then, !dbg !1139

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1140
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1140
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1141
  br label %if.end, !dbg !1140

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1142
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperj, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1143
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperl(%class.StringSumHelper* dereferenceable(12) %lhs, i32 %num) #0 !dbg !1144 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %num.addr = alloca i32, align 4
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1151, metadata !DIExpression()), !dbg !1152
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1153
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1152
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1154
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1154
  %3 = load i32, i32* %num.addr, align 4, !dbg !1156
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEl(%class.String* %2, i32 %3), !dbg !1157
  %tobool = icmp ne i8 %call, 0, !dbg !1154
  br i1 %tobool, label %if.end, label %if.then, !dbg !1158

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1159
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1159
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1160
  br label %if.end, !dbg !1159

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1161
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperl, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1162
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperm(%class.StringSumHelper* dereferenceable(12) %lhs, i32 %num) #0 !dbg !1163 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %num.addr = alloca i32, align 4
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !1168, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1170, metadata !DIExpression()), !dbg !1171
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1172
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1171
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1173
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1173
  %3 = load i32, i32* %num.addr, align 4, !dbg !1175
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEm(%class.String* %2, i32 %3), !dbg !1176
  %tobool = icmp ne i8 %call, 0, !dbg !1173
  br i1 %tobool, label %if.end, label %if.then, !dbg !1177

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1178
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1178
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1179
  br label %if.end, !dbg !1178

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1180
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperm, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1181
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperf(%class.StringSumHelper* dereferenceable(12) %lhs, float %num) #0 !dbg !1182 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %num.addr = alloca float, align 4
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1185, metadata !DIExpression()), !dbg !1186
  store float %num, float* %num.addr, align 4
  call void @llvm.dbg.declare(metadata float* %num.addr, metadata !1187, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1189, metadata !DIExpression()), !dbg !1190
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1191
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1190
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1192
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1192
  %3 = load float, float* %num.addr, align 4, !dbg !1194
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEf(%class.String* %2, float %3), !dbg !1195
  %tobool = icmp ne i8 %call, 0, !dbg !1192
  br i1 %tobool, label %if.end, label %if.then, !dbg !1196

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1197
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1197
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1198
  br label %if.end, !dbg !1197

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1199
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperf, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1200
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperd(%class.StringSumHelper* dereferenceable(12) %lhs, double %num) #0 !dbg !1201 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %num.addr = alloca double, align 8
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1204, metadata !DIExpression()), !dbg !1205
  store double %num, double* %num.addr, align 8
  call void @llvm.dbg.declare(metadata double* %num.addr, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1208, metadata !DIExpression()), !dbg !1209
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1210
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1209
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1211
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1211
  %3 = load double, double* %num.addr, align 8, !dbg !1213
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEd(%class.String* %2, double %3), !dbg !1214
  %tobool = icmp ne i8 %call, 0, !dbg !1211
  br i1 %tobool, label %if.end, label %if.then, !dbg !1215

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1216
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1216
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1217
  br label %if.end, !dbg !1216

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1218
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperd, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1219
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(12) %class.StringSumHelper* @_ZplRK15StringSumHelperPK19__FlashStringHelper(%class.StringSumHelper* dereferenceable(12) %lhs, %class.__FlashStringHelper* %rhs) #0 !dbg !1220 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %lhs.addr = alloca %class.StringSumHelper*, align 4
  %rhs.addr = alloca %class.__FlashStringHelper*, align 4
  %a = alloca %class.StringSumHelper*, align 4
  store %class.StringSumHelper* %lhs, %class.StringSumHelper** %lhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %lhs.addr, metadata !1223, metadata !DIExpression()), !dbg !1224
  store %class.__FlashStringHelper* %rhs, %class.__FlashStringHelper** %rhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.__FlashStringHelper** %rhs.addr, metadata !1225, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.declare(metadata %class.StringSumHelper** %a, metadata !1227, metadata !DIExpression()), !dbg !1228
  %0 = load %class.StringSumHelper*, %class.StringSumHelper** %lhs.addr, align 4, !dbg !1229
  store %class.StringSumHelper* %0, %class.StringSumHelper** %a, align 4, !dbg !1228
  %1 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1230
  %2 = bitcast %class.StringSumHelper* %1 to %class.String*, !dbg !1230
  %3 = load %class.__FlashStringHelper*, %class.__FlashStringHelper** %rhs.addr, align 4, !dbg !1232
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEPK19__FlashStringHelper(%class.String* %2, %class.__FlashStringHelper* %3), !dbg !1233
  %tobool = icmp ne i8 %call, 0, !dbg !1230
  br i1 %tobool, label %if.end, label %if.then, !dbg !1234

if.then:                                          ; preds = %entry
  %4 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1235
  %5 = bitcast %class.StringSumHelper* %4 to %class.String*, !dbg !1235
  call arm_aapcscc void @_ZN6String10invalidateEv(%class.String* %5), !dbg !1236
  br label %if.end, !dbg !1235

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.StringSumHelper*, %class.StringSumHelper** %a, align 4, !dbg !1237
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZplRK15StringSumHelperPK19__FlashStringHelper, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx1, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret %class.StringSumHelper* %6, !dbg !1238
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String9compareToERKS_(%class.String* %this, %class.String* dereferenceable(12) %s) #0 align 2 !dbg !1239 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %s.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1240, metadata !DIExpression()), !dbg !1241
  store %class.String* %s, %class.String** %s.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s.addr, metadata !1242, metadata !DIExpression()), !dbg !1243
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1244
  %0 = load i8*, i8** %buffer, align 4, !dbg !1244
  %tobool = icmp ne i8* %0, null, !dbg !1244
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1246

lor.lhs.false:                                    ; preds = %entry
  %1 = load %class.String*, %class.String** %s.addr, align 4, !dbg !1247
  %buffer2 = getelementptr inbounds %class.String, %class.String* %1, i32 0, i32 0, !dbg !1248
  %2 = load i8*, i8** %buffer2, align 4, !dbg !1248
  %tobool3 = icmp ne i8* %2, null, !dbg !1247
  br i1 %tobool3, label %if.end17, label %if.then, !dbg !1249

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %class.String*, %class.String** %s.addr, align 4, !dbg !1250
  %buffer4 = getelementptr inbounds %class.String, %class.String* %3, i32 0, i32 0, !dbg !1253
  %4 = load i8*, i8** %buffer4, align 4, !dbg !1253
  %tobool5 = icmp ne i8* %4, null, !dbg !1250
  br i1 %tobool5, label %land.lhs.true, label %if.end, !dbg !1254

land.lhs.true:                                    ; preds = %if.then
  %5 = load %class.String*, %class.String** %s.addr, align 4, !dbg !1255
  %len = getelementptr inbounds %class.String, %class.String* %5, i32 0, i32 2, !dbg !1256
  %6 = load i32, i32* %len, align 4, !dbg !1256
  %cmp = icmp ugt i32 %6, 0, !dbg !1257
  br i1 %cmp, label %if.then6, label %if.end, !dbg !1258

if.then6:                                         ; preds = %land.lhs.true
  %7 = load %class.String*, %class.String** %s.addr, align 4, !dbg !1259
  %buffer7 = getelementptr inbounds %class.String, %class.String* %7, i32 0, i32 0, !dbg !1260
  %8 = load i8*, i8** %buffer7, align 4, !dbg !1260
  %9 = load i8, i8* %8, align 1, !dbg !1261
  %conv = zext i8 %9 to i32, !dbg !1261
  %sub = sub nsw i32 0, %conv, !dbg !1262
  store i32 %sub, i32* %retval, align 4, !dbg !1263
  br label %return, !dbg !1263

if.end:                                           ; preds = %land.lhs.true, %if.then
  %buffer8 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1264
  %10 = load i8*, i8** %buffer8, align 4, !dbg !1264
  %tobool9 = icmp ne i8* %10, null, !dbg !1264
  br i1 %tobool9, label %land.lhs.true10, label %if.end16, !dbg !1266

land.lhs.true10:                                  ; preds = %if.end
  %len11 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1267
  %11 = load i32, i32* %len11, align 4, !dbg !1267
  %cmp12 = icmp ugt i32 %11, 0, !dbg !1268
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !1269

if.then13:                                        ; preds = %land.lhs.true10
  %buffer14 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1270
  %12 = load i8*, i8** %buffer14, align 4, !dbg !1270
  %13 = load i8, i8* %12, align 1, !dbg !1271
  %conv15 = zext i8 %13 to i32, !dbg !1271
  store i32 %conv15, i32* %retval, align 4, !dbg !1272
  br label %return, !dbg !1272

if.end16:                                         ; preds = %land.lhs.true10, %if.end
  store i32 0, i32* %retval, align 4, !dbg !1273
  br label %return, !dbg !1273

if.end17:                                         ; preds = %lor.lhs.false
  %buffer18 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1274
  %14 = load i8*, i8** %buffer18, align 4, !dbg !1274
  %15 = load %class.String*, %class.String** %s.addr, align 4, !dbg !1275
  %buffer19 = getelementptr inbounds %class.String, %class.String* %15, i32 0, i32 0, !dbg !1276
  %16 = load i8*, i8** %buffer19, align 4, !dbg !1276
  %call = call arm_aapcscc i32 @strcmp(i8* %14, i8* %16), !dbg !1277
  store i32 %call, i32* %retval, align 4, !dbg !1278
  br label %return, !dbg !1278

return:                                           ; preds = %if.end17, %if.end16, %if.then13, %if.then6
  %17 = load i32, i32* %retval, align 4, !dbg !1279
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String9compareToERKS_, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %18 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %18, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %19 = load i32, i32* %i, align 4
  %20 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %20, i32 %19
  %21 = load i8, i8* %arrayidx1, align 1
  %22 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %22
  store i8 %21, i8* %arrayidx2, align 1
  %23 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %23
  %24 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %24 to i32
  %xor = xor i32 %conv2, 133
  %conv4 = trunc i32 %xor to i8
  %25 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %25
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %26 = load i32, i32* %i, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %28 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %29 = phi i8* [ %28, %dec_end ]
  indirectbr i8* %28, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %17, !dbg !1279
}

declare dso_local arm_aapcscc i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6String6equalsERKS_(%class.String* %this, %class.String* dereferenceable(12) %s2) #0 align 2 !dbg !1280 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1281, metadata !DIExpression()), !dbg !1282
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1283, metadata !DIExpression()), !dbg !1284
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1285
  %0 = load i32, i32* %len, align 4, !dbg !1285
  %1 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1286
  %len2 = getelementptr inbounds %class.String, %class.String* %1, i32 0, i32 2, !dbg !1287
  %2 = load i32, i32* %len2, align 4, !dbg !1287
  %cmp = icmp eq i32 %0, %2, !dbg !1288
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1289

land.rhs:                                         ; preds = %entry
  %3 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1290
  %call = call arm_aapcscc i32 @_ZNK6String9compareToERKS_(%class.String* %this1, %class.String* dereferenceable(12) %3), !dbg !1291
  %cmp3 = icmp eq i32 %call, 0, !dbg !1292
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !1282
  %conv = zext i1 %4 to i8, !dbg !1293
  br label %dec_start

dec_start:                                        ; preds = %land.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String6equalsERKS_, %land.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %5, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %6 = load i32, i32* %i, align 4
  %7 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i32 %6
  %8 = load i8, i8* %arrayidx1, align 1
  %9 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %8, i8* %arrayidx2, align 1
  %10 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  %11 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %11 to i32
  %xor = xor i32 %conv2, 133
  %conv4 = trunc i32 %xor to i8
  %12 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %13 = load i32, i32* %i, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %15 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %16 = phi i8* [ %15, %dec_end ]
  indirectbr i8* %15, [label %land.end.RetBlock]

land.end.RetBlock:                                ; preds = %dec_jmp
  ret i8 %conv, !dbg !1294
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6String6equalsEPKc(%class.String* %this, i8* %cstr) #0 align 2 !dbg !1295 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %cstr.addr = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1296, metadata !DIExpression()), !dbg !1297
  store i8* %cstr, i8** %cstr.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %cstr.addr, metadata !1298, metadata !DIExpression()), !dbg !1299
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1300
  %0 = load i32, i32* %len, align 4, !dbg !1300
  %cmp = icmp eq i32 %0, 0, !dbg !1302
  br i1 %cmp, label %if.then, label %if.end, !dbg !1303

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %cstr.addr, align 4, !dbg !1304
  %cmp2 = icmp eq i8* %1, null, !dbg !1305
  br i1 %cmp2, label %lor.end, label %lor.rhs, !dbg !1306

lor.rhs:                                          ; preds = %if.then
  %2 = load i8*, i8** %cstr.addr, align 4, !dbg !1307
  %3 = load i8, i8* %2, align 1, !dbg !1308
  %conv = zext i8 %3 to i32, !dbg !1308
  %cmp3 = icmp eq i32 %conv, 0, !dbg !1309
  br label %lor.end, !dbg !1306

lor.end:                                          ; preds = %lor.rhs, %if.then
  %4 = phi i1 [ true, %if.then ], [ %cmp3, %lor.rhs ]
  %conv4 = zext i1 %4 to i8, !dbg !1310
  store i8 %conv4, i8* %retval, align 1, !dbg !1311
  br label %return, !dbg !1311

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %cstr.addr, align 4, !dbg !1312
  %cmp5 = icmp eq i8* %5, null, !dbg !1314
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !1315

if.then6:                                         ; preds = %if.end
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1316
  %6 = load i8*, i8** %buffer, align 4, !dbg !1316
  %arrayidx = getelementptr inbounds i8, i8* %6, i32 0, !dbg !1316
  %7 = load i8, i8* %arrayidx, align 1, !dbg !1316
  %conv7 = zext i8 %7 to i32, !dbg !1316
  %cmp8 = icmp eq i32 %conv7, 0, !dbg !1317
  %conv9 = zext i1 %cmp8 to i8, !dbg !1316
  store i8 %conv9, i8* %retval, align 1, !dbg !1318
  br label %return, !dbg !1318

if.end10:                                         ; preds = %if.end
  %buffer11 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1319
  %8 = load i8*, i8** %buffer11, align 4, !dbg !1319
  %9 = load i8*, i8** %cstr.addr, align 4, !dbg !1320
  %call = call arm_aapcscc i32 @strcmp(i8* %8, i8* %9), !dbg !1321
  %cmp12 = icmp eq i32 %call, 0, !dbg !1322
  %conv13 = zext i1 %cmp12 to i8, !dbg !1321
  store i8 %conv13, i8* %retval, align 1, !dbg !1323
  br label %return, !dbg !1323

return:                                           ; preds = %if.end10, %if.then6, %lor.end
  %10 = load i8, i8* %retval, align 1, !dbg !1324
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String6equalsEPKc, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %11 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %11, 12
  br i1 %cmp4, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %12 = load i32, i32* %i, align 4
  %13 = load i8*, i8** %ptr, align 4
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i32 %12
  %14 = load i8, i8* %arrayidx15, align 1
  %15 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  store i8 %14, i8* %arrayidx2, align 1
  %16 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %16
  %17 = load i8, i8* %arrayidx3, align 1
  %conv6 = zext i8 %17 to i32
  %xor = xor i32 %conv6, 133
  %conv47 = trunc i32 %xor to i8
  %18 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %18
  store i8 %conv47, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %19 = load i32, i32* %i, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %21 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %22 = phi i8* [ %21, %dec_end ]
  indirectbr i8* %21, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %10, !dbg !1324
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6StringltERKS_(%class.String* %this, %class.String* dereferenceable(12) %rhs) #0 align 2 !dbg !1325 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rhs.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1326, metadata !DIExpression()), !dbg !1327
  store %class.String* %rhs, %class.String** %rhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rhs.addr, metadata !1328, metadata !DIExpression()), !dbg !1329
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !1330
  %call = call arm_aapcscc i32 @_ZNK6String9compareToERKS_(%class.String* %this1, %class.String* dereferenceable(12) %0), !dbg !1331
  %cmp = icmp slt i32 %call, 0, !dbg !1332
  %conv = zext i1 %cmp to i8, !dbg !1331
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6StringltERKS_, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %conv, !dbg !1333
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6StringgtERKS_(%class.String* %this, %class.String* dereferenceable(12) %rhs) #0 align 2 !dbg !1334 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rhs.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1335, metadata !DIExpression()), !dbg !1336
  store %class.String* %rhs, %class.String** %rhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rhs.addr, metadata !1337, metadata !DIExpression()), !dbg !1338
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !1339
  %call = call arm_aapcscc i32 @_ZNK6String9compareToERKS_(%class.String* %this1, %class.String* dereferenceable(12) %0), !dbg !1340
  %cmp = icmp sgt i32 %call, 0, !dbg !1341
  %conv = zext i1 %cmp to i8, !dbg !1340
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6StringgtERKS_, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %conv, !dbg !1342
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6StringleERKS_(%class.String* %this, %class.String* dereferenceable(12) %rhs) #0 align 2 !dbg !1343 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rhs.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1344, metadata !DIExpression()), !dbg !1345
  store %class.String* %rhs, %class.String** %rhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rhs.addr, metadata !1346, metadata !DIExpression()), !dbg !1347
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !1348
  %call = call arm_aapcscc i32 @_ZNK6String9compareToERKS_(%class.String* %this1, %class.String* dereferenceable(12) %0), !dbg !1349
  %cmp = icmp sle i32 %call, 0, !dbg !1350
  %conv = zext i1 %cmp to i8, !dbg !1349
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6StringleERKS_, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %conv, !dbg !1351
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6StringgeERKS_(%class.String* %this, %class.String* dereferenceable(12) %rhs) #0 align 2 !dbg !1352 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %rhs.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1353, metadata !DIExpression()), !dbg !1354
  store %class.String* %rhs, %class.String** %rhs.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %rhs.addr, metadata !1355, metadata !DIExpression()), !dbg !1356
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %rhs.addr, align 4, !dbg !1357
  %call = call arm_aapcscc i32 @_ZNK6String9compareToERKS_(%class.String* %this1, %class.String* dereferenceable(12) %0), !dbg !1358
  %cmp = icmp sge i32 %call, 0, !dbg !1359
  %conv = zext i1 %cmp to i8, !dbg !1358
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6StringgeERKS_, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %conv, !dbg !1360
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6String16equalsIgnoreCaseERKS_(%class.String* %this, %class.String* dereferenceable(12) %s2) #0 align 2 !dbg !1361 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  %p1 = alloca i8*, align 4
  %p2 = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1362, metadata !DIExpression()), !dbg !1363
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1364, metadata !DIExpression()), !dbg !1365
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1366
  %cmp = icmp eq %class.String* %this1, %0, !dbg !1368
  br i1 %cmp, label %if.then, label %if.end, !dbg !1369

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !1370
  br label %return, !dbg !1370

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1371
  %1 = load i32, i32* %len, align 4, !dbg !1371
  %2 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1373
  %len2 = getelementptr inbounds %class.String, %class.String* %2, i32 0, i32 2, !dbg !1374
  %3 = load i32, i32* %len2, align 4, !dbg !1374
  %cmp3 = icmp ne i32 %1, %3, !dbg !1375
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1376

if.then4:                                         ; preds = %if.end
  store i8 0, i8* %retval, align 1, !dbg !1377
  br label %return, !dbg !1377

if.end5:                                          ; preds = %if.end
  %len6 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1378
  %4 = load i32, i32* %len6, align 4, !dbg !1378
  %cmp7 = icmp eq i32 %4, 0, !dbg !1380
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1381

if.then8:                                         ; preds = %if.end5
  store i8 1, i8* %retval, align 1, !dbg !1382
  br label %return, !dbg !1382

if.end9:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %p1, metadata !1383, metadata !DIExpression()), !dbg !1384
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1385
  %5 = load i8*, i8** %buffer, align 4, !dbg !1385
  store i8* %5, i8** %p1, align 4, !dbg !1384
  call void @llvm.dbg.declare(metadata i8** %p2, metadata !1386, metadata !DIExpression()), !dbg !1387
  %6 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1388
  %buffer10 = getelementptr inbounds %class.String, %class.String* %6, i32 0, i32 0, !dbg !1389
  %7 = load i8*, i8** %buffer10, align 4, !dbg !1389
  store i8* %7, i8** %p2, align 4, !dbg !1387
  br label %while.cond, !dbg !1390

while.cond:                                       ; preds = %if.end16, %if.end9
  %8 = load i8*, i8** %p1, align 4, !dbg !1391
  %9 = load i8, i8* %8, align 1, !dbg !1392
  %tobool = icmp ne i8 %9, 0, !dbg !1392
  br i1 %tobool, label %while.body, label %while.end, !dbg !1390

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %p1, align 4, !dbg !1393
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1, !dbg !1393
  store i8* %incdec.ptr, i8** %p1, align 4, !dbg !1393
  %11 = load i8, i8* %10, align 1, !dbg !1396
  %conv = zext i8 %11 to i32, !dbg !1396
  %call = call arm_aapcscc i32 @tolower(i32 %conv) #7, !dbg !1397
  %12 = load i8*, i8** %p2, align 4, !dbg !1398
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !1398
  store i8* %incdec.ptr11, i8** %p2, align 4, !dbg !1398
  %13 = load i8, i8* %12, align 1, !dbg !1399
  %conv12 = zext i8 %13 to i32, !dbg !1399
  %call13 = call arm_aapcscc i32 @tolower(i32 %conv12) #7, !dbg !1400
  %cmp14 = icmp ne i32 %call, %call13, !dbg !1401
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1402

if.then15:                                        ; preds = %while.body
  store i8 0, i8* %retval, align 1, !dbg !1403
  br label %return, !dbg !1403

if.end16:                                         ; preds = %while.body
  br label %while.cond, !dbg !1390, !llvm.loop !1404

while.end:                                        ; preds = %while.cond
  store i8 1, i8* %retval, align 1, !dbg !1406
  br label %return, !dbg !1406

return:                                           ; preds = %while.end, %if.then15, %if.then8, %if.then4, %if.then
  %14 = load i8, i8* %retval, align 1, !dbg !1407
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String16equalsIgnoreCaseERKS_, %return.RetBlock), i8** %ptr, align 4
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
  indirectbr i8* %25, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %14, !dbg !1407
}

; Function Attrs: nounwind readonly
declare dso_local arm_aapcscc i32 @tolower(i32) #4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6String10startsWithERKS_(%class.String* %this, %class.String* dereferenceable(12) %s2) #0 align 2 !dbg !1408 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1409, metadata !DIExpression()), !dbg !1410
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1411, metadata !DIExpression()), !dbg !1412
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1413
  %0 = load i32, i32* %len, align 4, !dbg !1413
  %1 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1415
  %len2 = getelementptr inbounds %class.String, %class.String* %1, i32 0, i32 2, !dbg !1416
  %2 = load i32, i32* %len2, align 4, !dbg !1416
  %cmp = icmp ult i32 %0, %2, !dbg !1417
  br i1 %cmp, label %if.then, label %if.end, !dbg !1418

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !1419
  br label %return, !dbg !1419

if.end:                                           ; preds = %entry
  %3 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1420
  %call = call arm_aapcscc zeroext i8 @_ZNK6String10startsWithERKS_j(%class.String* %this1, %class.String* dereferenceable(12) %3, i32 0), !dbg !1421
  store i8 %call, i8* %retval, align 1, !dbg !1422
  br label %return, !dbg !1422

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !1423
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String10startsWithERKS_, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %5, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %6 = load i32, i32* %i, align 4
  %7 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i32 %6
  %8 = load i8, i8* %arrayidx1, align 1
  %9 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %8, i8* %arrayidx2, align 1
  %10 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %12 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %13 = load i32, i32* %i, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %15 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %16 = phi i8* [ %15, %dec_end ]
  indirectbr i8* %15, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %4, !dbg !1423
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6String10startsWithERKS_j(%class.String* %this, %class.String* dereferenceable(12) %s2, i32 %offset) #0 align 2 !dbg !1424 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  %offset.addr = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1425, metadata !DIExpression()), !dbg !1426
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1427, metadata !DIExpression()), !dbg !1428
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !1429, metadata !DIExpression()), !dbg !1430
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %offset.addr, align 4, !dbg !1431
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1433
  %1 = load i32, i32* %len, align 4, !dbg !1433
  %2 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1434
  %len2 = getelementptr inbounds %class.String, %class.String* %2, i32 0, i32 2, !dbg !1435
  %3 = load i32, i32* %len2, align 4, !dbg !1435
  %sub = sub i32 %1, %3, !dbg !1436
  %cmp = icmp ugt i32 %0, %sub, !dbg !1437
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1438

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1439
  %4 = load i8*, i8** %buffer, align 4, !dbg !1439
  %tobool = icmp ne i8* %4, null, !dbg !1439
  br i1 %tobool, label %lor.lhs.false3, label %if.then, !dbg !1440

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1441
  %buffer4 = getelementptr inbounds %class.String, %class.String* %5, i32 0, i32 0, !dbg !1442
  %6 = load i8*, i8** %buffer4, align 4, !dbg !1442
  %tobool5 = icmp ne i8* %6, null, !dbg !1441
  br i1 %tobool5, label %if.end, label %if.then, !dbg !1443

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i8 0, i8* %retval, align 1, !dbg !1444
  br label %return, !dbg !1444

if.end:                                           ; preds = %lor.lhs.false3
  %buffer6 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1445
  %7 = load i8*, i8** %buffer6, align 4, !dbg !1445
  %8 = load i32, i32* %offset.addr, align 4, !dbg !1446
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 %8, !dbg !1445
  %9 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1447
  %buffer7 = getelementptr inbounds %class.String, %class.String* %9, i32 0, i32 0, !dbg !1448
  %10 = load i8*, i8** %buffer7, align 4, !dbg !1448
  %11 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1449
  %len8 = getelementptr inbounds %class.String, %class.String* %11, i32 0, i32 2, !dbg !1450
  %12 = load i32, i32* %len8, align 4, !dbg !1450
  %call = call arm_aapcscc i32 @strncmp(i8* %arrayidx, i8* %10, i32 %12), !dbg !1451
  %cmp9 = icmp eq i32 %call, 0, !dbg !1452
  %conv = zext i1 %cmp9 to i8, !dbg !1451
  store i8 %conv, i8* %retval, align 1, !dbg !1453
  br label %return, !dbg !1453

return:                                           ; preds = %if.end, %if.then
  %13 = load i8, i8* %retval, align 1, !dbg !1454
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String10startsWithERKS_j, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %14 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %14, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %15 = load i32, i32* %i, align 4
  %16 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i32 %15
  %17 = load i8, i8* %arrayidx13, align 1
  %18 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %18
  store i8 %17, i8* %arrayidx2, align 1
  %19 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %19
  %20 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %20 to i32
  %xor = xor i32 %conv4, 133
  %conv45 = trunc i32 %xor to i8
  %21 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %21
  store i8 %conv45, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %22 = load i32, i32* %i, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %24 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %25 = phi i8* [ %24, %dec_end ]
  indirectbr i8* %24, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %13, !dbg !1454
}

declare dso_local arm_aapcscc i32 @strncmp(i8*, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6String8endsWithERKS_(%class.String* %this, %class.String* dereferenceable(12) %s2) #0 align 2 !dbg !1455 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1456, metadata !DIExpression()), !dbg !1457
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1458, metadata !DIExpression()), !dbg !1459
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1460
  %0 = load i32, i32* %len, align 4, !dbg !1460
  %1 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1462
  %len2 = getelementptr inbounds %class.String, %class.String* %1, i32 0, i32 2, !dbg !1463
  %2 = load i32, i32* %len2, align 4, !dbg !1463
  %cmp = icmp ult i32 %0, %2, !dbg !1464
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1465

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1466
  %3 = load i8*, i8** %buffer, align 4, !dbg !1466
  %tobool = icmp ne i8* %3, null, !dbg !1466
  br i1 %tobool, label %lor.lhs.false3, label %if.then, !dbg !1467

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1468
  %buffer4 = getelementptr inbounds %class.String, %class.String* %4, i32 0, i32 0, !dbg !1469
  %5 = load i8*, i8** %buffer4, align 4, !dbg !1469
  %tobool5 = icmp ne i8* %5, null, !dbg !1468
  br i1 %tobool5, label %if.end, label %if.then, !dbg !1470

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i8 0, i8* %retval, align 1, !dbg !1471
  br label %return, !dbg !1471

if.end:                                           ; preds = %lor.lhs.false3
  %buffer6 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1472
  %6 = load i8*, i8** %buffer6, align 4, !dbg !1472
  %len7 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1473
  %7 = load i32, i32* %len7, align 4, !dbg !1473
  %8 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1474
  %len8 = getelementptr inbounds %class.String, %class.String* %8, i32 0, i32 2, !dbg !1475
  %9 = load i32, i32* %len8, align 4, !dbg !1475
  %sub = sub i32 %7, %9, !dbg !1476
  %arrayidx = getelementptr inbounds i8, i8* %6, i32 %sub, !dbg !1472
  %10 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1477
  %buffer9 = getelementptr inbounds %class.String, %class.String* %10, i32 0, i32 0, !dbg !1478
  %11 = load i8*, i8** %buffer9, align 4, !dbg !1478
  %call = call arm_aapcscc i32 @strcmp(i8* %arrayidx, i8* %11), !dbg !1479
  %cmp10 = icmp eq i32 %call, 0, !dbg !1480
  %conv = zext i1 %cmp10 to i8, !dbg !1479
  store i8 %conv, i8* %retval, align 1, !dbg !1481
  br label %return, !dbg !1481

return:                                           ; preds = %if.end, %if.then
  %12 = load i8, i8* %retval, align 1, !dbg !1482
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String8endsWithERKS_, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %13 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %13, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %14 = load i32, i32* %i, align 4
  %15 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i32 %14
  %16 = load i8, i8* %arrayidx13, align 1
  %17 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  store i8 %16, i8* %arrayidx2, align 1
  %18 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %18
  %19 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %19 to i32
  %xor = xor i32 %conv4, 133
  %conv45 = trunc i32 %xor to i8
  %20 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %20
  store i8 %conv45, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %21 = load i32, i32* %i, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %23 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %24 = phi i8* [ %23, %dec_end ]
  indirectbr i8* %23, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %12, !dbg !1482
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6String6charAtEj(%class.String* %this, i32 %loc) #0 align 2 !dbg !1483 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %loc.addr = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i32 %loc, i32* %loc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %loc.addr, metadata !1486, metadata !DIExpression()), !dbg !1487
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %loc.addr, align 4, !dbg !1488
  %call = call arm_aapcscc zeroext i8 @_ZNK6StringixEj(%class.String* %this1, i32 %0), !dbg !1489
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String6charAtEj, %entry.RetBlock), i8** %ptr, align 4
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
  ret i8 %call, !dbg !1490
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZNK6StringixEj(%class.String* %this, i32 %index) #0 align 2 !dbg !1491 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8, align 1
  %this.addr = alloca %class.String*, align 4
  %index.addr = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1492, metadata !DIExpression()), !dbg !1493
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1494, metadata !DIExpression()), !dbg !1495
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %index.addr, align 4, !dbg !1496
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1498
  %1 = load i32, i32* %len, align 4, !dbg !1498
  %cmp = icmp uge i32 %0, %1, !dbg !1499
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1500

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1501
  %2 = load i8*, i8** %buffer, align 4, !dbg !1501
  %tobool = icmp ne i8* %2, null, !dbg !1501
  br i1 %tobool, label %if.end, label %if.then, !dbg !1502

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, i8* %retval, align 1, !dbg !1503
  br label %return, !dbg !1503

if.end:                                           ; preds = %lor.lhs.false
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1504
  %3 = load i8*, i8** %buffer2, align 4, !dbg !1504
  %4 = load i32, i32* %index.addr, align 4, !dbg !1505
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 %4, !dbg !1504
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1504
  store i8 %5, i8* %retval, align 1, !dbg !1506
  br label %return, !dbg !1506

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !1507
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6StringixEj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %7, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i32 %8
  %10 = load i8, i8* %arrayidx13, align 1
  %11 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %11
  store i8 %10, i8* %arrayidx2, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %13 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %14 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %15 = load i32, i32* %i, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %17 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %18 = phi i8* [ %17, %dec_end ]
  indirectbr i8* %17, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8 %6, !dbg !1507
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String9setCharAtEjc(%class.String* %this, i32 %loc, i8 zeroext %c) #0 align 2 !dbg !1508 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %loc.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1509, metadata !DIExpression()), !dbg !1510
  store i32 %loc, i32* %loc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %loc.addr, metadata !1511, metadata !DIExpression()), !dbg !1512
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !1513, metadata !DIExpression()), !dbg !1514
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %loc.addr, align 4, !dbg !1515
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1517
  %1 = load i32, i32* %len, align 4, !dbg !1517
  %cmp = icmp ult i32 %0, %1, !dbg !1518
  br i1 %cmp, label %if.then, label %if.end, !dbg !1519

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !1520
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1521
  %3 = load i8*, i8** %buffer, align 4, !dbg !1521
  %4 = load i32, i32* %loc.addr, align 4, !dbg !1522
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 %4, !dbg !1521
  store i8 %2, i8* %arrayidx, align 1, !dbg !1523
  br label %if.end, !dbg !1521

if.end:                                           ; preds = %if.then, %entry
  br label %dec_start

dec_start:                                        ; preds = %if.end
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String9setCharAtEjc, %if.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %6 = load i32, i32* %i, align 4
  %7 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %7, i32 %6
  %8 = load i8, i8* %arrayidx13, align 1
  %9 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %9
  store i8 %8, i8* %arrayidx2, align 1
  %10 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %10
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %12 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %13 = load i32, i32* %i, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %15 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %16 = phi i8* [ %15, %dec_end ]
  indirectbr i8* %15, [label %if.end.RetBlock]

if.end.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !1524
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(1) i8* @_ZN6StringixEj(%class.String* %this, i32 %index) #0 align 2 !dbg !2 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i8*, align 4
  %this.addr = alloca %class.String*, align 4
  %index.addr = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1527, metadata !DIExpression()), !dbg !1528
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %index.addr, align 4, !dbg !1529
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1531
  %1 = load i32, i32* %len, align 4, !dbg !1531
  %cmp = icmp uge i32 %0, %1, !dbg !1532
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1533

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1534
  %2 = load i8*, i8** %buffer, align 4, !dbg !1534
  %tobool = icmp ne i8* %2, null, !dbg !1534
  br i1 %tobool, label %if.end, label %if.then, !dbg !1535

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, i8* @_ZZN6StringixEjE19dummy_writable_char, align 1, !dbg !1536
  store i8* @_ZZN6StringixEjE19dummy_writable_char, i8** %retval, align 4, !dbg !1538
  br label %return, !dbg !1538

if.end:                                           ; preds = %lor.lhs.false
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1539
  %3 = load i8*, i8** %buffer2, align 4, !dbg !1539
  %4 = load i32, i32* %index.addr, align 4, !dbg !1540
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 %4, !dbg !1539
  store i8* %arrayidx, i8** %retval, align 4, !dbg !1541
  br label %return, !dbg !1541

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 4, !dbg !1542
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6StringixEj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %7 = load i32, i32* %i, align 4
  %8 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %8, i32 %7
  %9 = load i8, i8* %arrayidx13, align 1
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
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  store i8 %conv4, i8* %arrayidx5, align 1
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
  indirectbr i8* %16, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i8* %5, !dbg !1542
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZNK6String8getBytesEPhjj(%class.String* %this, i8* %buf, i32 %bufsize, i32 %index) #0 align 2 !dbg !1543 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %buf.addr = alloca i8*, align 4
  %bufsize.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1544, metadata !DIExpression()), !dbg !1545
  store i8* %buf, i8** %buf.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1546, metadata !DIExpression()), !dbg !1547
  store i32 %bufsize, i32* %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bufsize.addr, metadata !1548, metadata !DIExpression()), !dbg !1549
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1550, metadata !DIExpression()), !dbg !1551
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %bufsize.addr, align 4, !dbg !1552
  %tobool = icmp ne i32 %0, 0, !dbg !1552
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1554

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 4, !dbg !1555
  %tobool2 = icmp ne i8* %1, null, !dbg !1555
  br i1 %tobool2, label %if.end, label %if.then, !dbg !1556

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !1557

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %index.addr, align 4, !dbg !1558
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1560
  %3 = load i32, i32* %len, align 4, !dbg !1560
  %cmp = icmp uge i32 %2, %3, !dbg !1561
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1562

if.then3:                                         ; preds = %if.end
  %4 = load i8*, i8** %buf.addr, align 4, !dbg !1563
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 0, !dbg !1563
  store i8 0, i8* %arrayidx, align 1, !dbg !1565
  br label %return, !dbg !1566

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %n, metadata !1567, metadata !DIExpression()), !dbg !1568
  %5 = load i32, i32* %bufsize.addr, align 4, !dbg !1569
  %sub = sub i32 %5, 1, !dbg !1570
  store i32 %sub, i32* %n, align 4, !dbg !1568
  %6 = load i32, i32* %n, align 4, !dbg !1571
  %len5 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1573
  %7 = load i32, i32* %len5, align 4, !dbg !1573
  %8 = load i32, i32* %index.addr, align 4, !dbg !1574
  %sub6 = sub i32 %7, %8, !dbg !1575
  %cmp7 = icmp ugt i32 %6, %sub6, !dbg !1576
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !1577

if.then8:                                         ; preds = %if.end4
  %len9 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1578
  %9 = load i32, i32* %len9, align 4, !dbg !1578
  %10 = load i32, i32* %index.addr, align 4, !dbg !1579
  %sub10 = sub i32 %9, %10, !dbg !1580
  store i32 %sub10, i32* %n, align 4, !dbg !1581
  br label %if.end11, !dbg !1582

if.end11:                                         ; preds = %if.then8, %if.end4
  %11 = load i8*, i8** %buf.addr, align 4, !dbg !1583
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1584
  %12 = load i8*, i8** %buffer, align 4, !dbg !1584
  %13 = load i32, i32* %index.addr, align 4, !dbg !1585
  %add.ptr = getelementptr inbounds i8, i8* %12, i32 %13, !dbg !1586
  %14 = load i32, i32* %n, align 4, !dbg !1587
  %call = call arm_aapcscc i8* @strncpy(i8* %11, i8* %add.ptr, i32 %14), !dbg !1588
  %15 = load i8*, i8** %buf.addr, align 4, !dbg !1589
  %16 = load i32, i32* %n, align 4, !dbg !1590
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i32 %16, !dbg !1589
  store i8 0, i8* %arrayidx12, align 1, !dbg !1591
  br label %return, !dbg !1592

return:                                           ; preds = %if.end11, %if.then3, %if.then
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String8getBytesEPhjj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %17 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %17, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %18 = load i32, i32* %i, align 4
  %19 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i32 %18
  %20 = load i8, i8* %arrayidx13, align 1
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
  ret void, !dbg !1592
}

declare dso_local arm_aapcscc i8* @strncpy(i8*, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String7indexOfEc(%class.String* %this, i8 zeroext %c) #0 align 2 !dbg !1593 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %c.addr = alloca i8, align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1594, metadata !DIExpression()), !dbg !1595
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !1596, metadata !DIExpression()), !dbg !1597
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i8, i8* %c.addr, align 1, !dbg !1598
  %call = call arm_aapcscc i32 @_ZNK6String7indexOfEcj(%class.String* %this1, i8 zeroext %0, i32 0), !dbg !1599
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String7indexOfEc, %entry.RetBlock), i8** %ptr, align 4
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
  ret i32 %call, !dbg !1600
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String7indexOfEcj(%class.String* %this, i8 zeroext %ch, i32 %fromIndex) #0 align 2 !dbg !1601 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %ch.addr = alloca i8, align 1
  %fromIndex.addr = alloca i32, align 4
  %temp = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1602, metadata !DIExpression()), !dbg !1603
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ch.addr, metadata !1604, metadata !DIExpression()), !dbg !1605
  store i32 %fromIndex, i32* %fromIndex.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fromIndex.addr, metadata !1606, metadata !DIExpression()), !dbg !1607
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %fromIndex.addr, align 4, !dbg !1608
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1610
  %1 = load i32, i32* %len, align 4, !dbg !1610
  %cmp = icmp uge i32 %0, %1, !dbg !1611
  br i1 %cmp, label %if.then, label %if.end, !dbg !1612

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1613
  br label %return, !dbg !1613

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %temp, metadata !1614, metadata !DIExpression()), !dbg !1615
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1616
  %2 = load i8*, i8** %buffer, align 4, !dbg !1616
  %3 = load i32, i32* %fromIndex.addr, align 4, !dbg !1617
  %add.ptr = getelementptr inbounds i8, i8* %2, i32 %3, !dbg !1618
  %4 = load i8, i8* %ch.addr, align 1, !dbg !1619
  %conv = zext i8 %4 to i32, !dbg !1619
  %call = call arm_aapcscc i8* @strchr(i8* %add.ptr, i32 %conv), !dbg !1620
  store i8* %call, i8** %temp, align 4, !dbg !1615
  %5 = load i8*, i8** %temp, align 4, !dbg !1621
  %cmp2 = icmp eq i8* %5, null, !dbg !1623
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1624

if.then3:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !1625
  br label %return, !dbg !1625

if.end4:                                          ; preds = %if.end
  %6 = load i8*, i8** %temp, align 4, !dbg !1626
  %buffer5 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1627
  %7 = load i8*, i8** %buffer5, align 4, !dbg !1627
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i32, !dbg !1628
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i32, !dbg !1628
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1628
  store i32 %sub.ptr.sub, i32* %retval, align 4, !dbg !1629
  br label %return, !dbg !1629

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !1630
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String7indexOfEcj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %9 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %9, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %10 = load i32, i32* %i, align 4
  %11 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %11, i32 %10
  %12 = load i8, i8* %arrayidx1, align 1
  %13 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  store i8 %12, i8* %arrayidx2, align 1
  %14 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  %15 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %15 to i32
  %xor = xor i32 %conv2, 133
  %conv4 = trunc i32 %xor to i8
  %16 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %16
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %17 = load i32, i32* %i, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %19 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %20 = phi i8* [ %19, %dec_end ]
  indirectbr i8* %19, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %8, !dbg !1630
}

declare dso_local arm_aapcscc i8* @strchr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String7indexOfERKS_(%class.String* %this, %class.String* dereferenceable(12) %s2) #0 align 2 !dbg !1631 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1632, metadata !DIExpression()), !dbg !1633
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1634, metadata !DIExpression()), !dbg !1635
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1636
  %call = call arm_aapcscc i32 @_ZNK6String7indexOfERKS_j(%class.String* %this1, %class.String* dereferenceable(12) %0, i32 0), !dbg !1637
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String7indexOfERKS_, %entry.RetBlock), i8** %ptr, align 4
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
  ret i32 %call, !dbg !1638
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String7indexOfERKS_j(%class.String* %this, %class.String* dereferenceable(12) %s2, i32 %fromIndex) #0 align 2 !dbg !1639 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  %fromIndex.addr = alloca i32, align 4
  %found = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1640, metadata !DIExpression()), !dbg !1641
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1642, metadata !DIExpression()), !dbg !1643
  store i32 %fromIndex, i32* %fromIndex.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fromIndex.addr, metadata !1644, metadata !DIExpression()), !dbg !1645
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %fromIndex.addr, align 4, !dbg !1646
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1648
  %1 = load i32, i32* %len, align 4, !dbg !1648
  %cmp = icmp uge i32 %0, %1, !dbg !1649
  br i1 %cmp, label %if.then, label %if.end, !dbg !1650

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1651
  br label %return, !dbg !1651

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %found, metadata !1652, metadata !DIExpression()), !dbg !1653
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1654
  %2 = load i8*, i8** %buffer, align 4, !dbg !1654
  %3 = load i32, i32* %fromIndex.addr, align 4, !dbg !1655
  %add.ptr = getelementptr inbounds i8, i8* %2, i32 %3, !dbg !1656
  %4 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1657
  %buffer2 = getelementptr inbounds %class.String, %class.String* %4, i32 0, i32 0, !dbg !1658
  %5 = load i8*, i8** %buffer2, align 4, !dbg !1658
  %call = call arm_aapcscc i8* @strstr(i8* %add.ptr, i8* %5), !dbg !1659
  store i8* %call, i8** %found, align 4, !dbg !1653
  %6 = load i8*, i8** %found, align 4, !dbg !1660
  %cmp3 = icmp eq i8* %6, null, !dbg !1662
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1663

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !1664
  br label %return, !dbg !1664

if.end5:                                          ; preds = %if.end
  %7 = load i8*, i8** %found, align 4, !dbg !1665
  %buffer6 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1666
  %8 = load i8*, i8** %buffer6, align 4, !dbg !1666
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i32, !dbg !1667
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i32, !dbg !1667
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1667
  store i32 %sub.ptr.sub, i32* %retval, align 4, !dbg !1668
  br label %return, !dbg !1668

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1669
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String7indexOfERKS_j, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %10 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %10, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %11 = load i32, i32* %i, align 4
  %12 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %12, i32 %11
  %13 = load i8, i8* %arrayidx1, align 1
  %14 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %13, i8* %arrayidx2, align 1
  %15 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  %16 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %16 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %17 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %18 = load i32, i32* %i, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %20 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %21 = phi i8* [ %20, %dec_end ]
  indirectbr i8* %20, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %9, !dbg !1669
}

declare dso_local arm_aapcscc i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String11lastIndexOfEc(%class.String* %this, i8 zeroext %theChar) #0 align 2 !dbg !1670 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %theChar.addr = alloca i8, align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1671, metadata !DIExpression()), !dbg !1672
  store i8 %theChar, i8* %theChar.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %theChar.addr, metadata !1673, metadata !DIExpression()), !dbg !1674
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i8, i8* %theChar.addr, align 1, !dbg !1675
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1676
  %1 = load i32, i32* %len, align 4, !dbg !1676
  %sub = sub i32 %1, 1, !dbg !1677
  %call = call arm_aapcscc i32 @_ZNK6String11lastIndexOfEcj(%class.String* %this1, i8 zeroext %0, i32 %sub), !dbg !1678
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String11lastIndexOfEc, %entry.RetBlock), i8** %ptr, align 4
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
  ret i32 %call, !dbg !1679
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String11lastIndexOfEcj(%class.String* %this, i8 zeroext %ch, i32 %fromIndex) #0 align 2 !dbg !1680 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %ch.addr = alloca i8, align 1
  %fromIndex.addr = alloca i32, align 4
  %tempchar = alloca i8, align 1
  %temp = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ch.addr, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i32 %fromIndex, i32* %fromIndex.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fromIndex.addr, metadata !1685, metadata !DIExpression()), !dbg !1686
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %fromIndex.addr, align 4, !dbg !1687
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1689
  %1 = load i32, i32* %len, align 4, !dbg !1689
  %cmp = icmp uge i32 %0, %1, !dbg !1690
  br i1 %cmp, label %if.then, label %if.end, !dbg !1691

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1692
  br label %return, !dbg !1692

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %tempchar, metadata !1693, metadata !DIExpression()), !dbg !1694
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1695
  %2 = load i8*, i8** %buffer, align 4, !dbg !1695
  %3 = load i32, i32* %fromIndex.addr, align 4, !dbg !1696
  %add = add i32 %3, 1, !dbg !1697
  %arrayidx = getelementptr inbounds i8, i8* %2, i32 %add, !dbg !1695
  %4 = load i8, i8* %arrayidx, align 1, !dbg !1695
  store i8 %4, i8* %tempchar, align 1, !dbg !1694
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1698
  %5 = load i8*, i8** %buffer2, align 4, !dbg !1698
  %6 = load i32, i32* %fromIndex.addr, align 4, !dbg !1699
  %add3 = add i32 %6, 1, !dbg !1700
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i32 %add3, !dbg !1698
  store i8 0, i8* %arrayidx4, align 1, !dbg !1701
  call void @llvm.dbg.declare(metadata i8** %temp, metadata !1702, metadata !DIExpression()), !dbg !1703
  %buffer5 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1704
  %7 = load i8*, i8** %buffer5, align 4, !dbg !1704
  %8 = load i8, i8* %ch.addr, align 1, !dbg !1705
  %conv = zext i8 %8 to i32, !dbg !1705
  %call = call arm_aapcscc i8* @strrchr(i8* %7, i32 %conv), !dbg !1706
  store i8* %call, i8** %temp, align 4, !dbg !1703
  %9 = load i8, i8* %tempchar, align 1, !dbg !1707
  %buffer6 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1708
  %10 = load i8*, i8** %buffer6, align 4, !dbg !1708
  %11 = load i32, i32* %fromIndex.addr, align 4, !dbg !1709
  %add7 = add i32 %11, 1, !dbg !1710
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i32 %add7, !dbg !1708
  store i8 %9, i8* %arrayidx8, align 1, !dbg !1711
  %12 = load i8*, i8** %temp, align 4, !dbg !1712
  %cmp9 = icmp eq i8* %12, null, !dbg !1714
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1715

if.then10:                                        ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !1716
  br label %return, !dbg !1716

if.end11:                                         ; preds = %if.end
  %13 = load i8*, i8** %temp, align 4, !dbg !1717
  %buffer12 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1718
  %14 = load i8*, i8** %buffer12, align 4, !dbg !1718
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i32, !dbg !1719
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i32, !dbg !1719
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1719
  store i32 %sub.ptr.sub, i32* %retval, align 4, !dbg !1720
  br label %return, !dbg !1720

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !1721
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String11lastIndexOfEcj, %return.RetBlock), i8** %ptr, align 4
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
  %conv4 = zext i8 %22 to i32
  %xor = xor i32 %conv4, 133
  %conv45 = trunc i32 %xor to i8
  %23 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %23
  store i8 %conv45, i8* %arrayidx5, align 1
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
  ret i32 %15, !dbg !1721
}

declare dso_local arm_aapcscc i8* @strrchr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String11lastIndexOfERKS_(%class.String* %this, %class.String* dereferenceable(12) %s2) #0 align 2 !dbg !1722 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1723, metadata !DIExpression()), !dbg !1724
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1725, metadata !DIExpression()), !dbg !1726
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1727
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1728
  %1 = load i32, i32* %len, align 4, !dbg !1728
  %2 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1729
  %len2 = getelementptr inbounds %class.String, %class.String* %2, i32 0, i32 2, !dbg !1730
  %3 = load i32, i32* %len2, align 4, !dbg !1730
  %sub = sub i32 %1, %3, !dbg !1731
  %call = call arm_aapcscc i32 @_ZNK6String11lastIndexOfERKS_j(%class.String* %this1, %class.String* dereferenceable(12) %0, i32 %sub), !dbg !1732
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String11lastIndexOfERKS_, %entry.RetBlock), i8** %ptr, align 4
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
  %conv = zext i8 %10 to i32
  %xor = xor i32 %conv, 133
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
  ret i32 %call, !dbg !1733
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String11lastIndexOfERKS_j(%class.String* %this, %class.String* dereferenceable(12) %s2, i32 %fromIndex) #0 align 2 !dbg !1734 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %s2.addr = alloca %class.String*, align 4
  %fromIndex.addr = alloca i32, align 4
  %found = alloca i32, align 4
  %p = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1735, metadata !DIExpression()), !dbg !1736
  store %class.String* %s2, %class.String** %s2.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %s2.addr, metadata !1737, metadata !DIExpression()), !dbg !1738
  store i32 %fromIndex, i32* %fromIndex.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fromIndex.addr, metadata !1739, metadata !DIExpression()), !dbg !1740
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1741
  %len = getelementptr inbounds %class.String, %class.String* %0, i32 0, i32 2, !dbg !1743
  %1 = load i32, i32* %len, align 4, !dbg !1743
  %cmp = icmp eq i32 %1, 0, !dbg !1744
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1745

lor.lhs.false:                                    ; preds = %entry
  %len2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1746
  %2 = load i32, i32* %len2, align 4, !dbg !1746
  %cmp3 = icmp eq i32 %2, 0, !dbg !1747
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !1748

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %3 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1749
  %len5 = getelementptr inbounds %class.String, %class.String* %3, i32 0, i32 2, !dbg !1750
  %4 = load i32, i32* %len5, align 4, !dbg !1750
  %len6 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1751
  %5 = load i32, i32* %len6, align 4, !dbg !1751
  %cmp7 = icmp ugt i32 %4, %5, !dbg !1752
  br i1 %cmp7, label %if.then, label %if.end, !dbg !1753

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !1754
  br label %return, !dbg !1754

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load i32, i32* %fromIndex.addr, align 4, !dbg !1755
  %len8 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1757
  %7 = load i32, i32* %len8, align 4, !dbg !1757
  %cmp9 = icmp uge i32 %6, %7, !dbg !1758
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1759

if.then10:                                        ; preds = %if.end
  %len11 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1760
  %8 = load i32, i32* %len11, align 4, !dbg !1760
  %sub = sub i32 %8, 1, !dbg !1761
  store i32 %sub, i32* %fromIndex.addr, align 4, !dbg !1762
  br label %if.end12, !dbg !1763

if.end12:                                         ; preds = %if.then10, %if.end
  call void @llvm.dbg.declare(metadata i32* %found, metadata !1764, metadata !DIExpression()), !dbg !1765
  store i32 -1, i32* %found, align 4, !dbg !1765
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1766, metadata !DIExpression()), !dbg !1768
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1769
  %9 = load i8*, i8** %buffer, align 4, !dbg !1769
  store i8* %9, i8** %p, align 4, !dbg !1768
  br label %for.cond, !dbg !1770

for.cond:                                         ; preds = %for.inc, %if.end12
  %10 = load i8*, i8** %p, align 4, !dbg !1771
  %buffer13 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1773
  %11 = load i8*, i8** %buffer13, align 4, !dbg !1773
  %12 = load i32, i32* %fromIndex.addr, align 4, !dbg !1774
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 %12, !dbg !1775
  %cmp14 = icmp ule i8* %10, %add.ptr, !dbg !1776
  br i1 %cmp14, label %for.body, label %for.end, !dbg !1777

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %p, align 4, !dbg !1778
  %14 = load %class.String*, %class.String** %s2.addr, align 4, !dbg !1780
  %buffer15 = getelementptr inbounds %class.String, %class.String* %14, i32 0, i32 0, !dbg !1781
  %15 = load i8*, i8** %buffer15, align 4, !dbg !1781
  %call = call arm_aapcscc i8* @strstr(i8* %13, i8* %15), !dbg !1782
  store i8* %call, i8** %p, align 4, !dbg !1783
  %16 = load i8*, i8** %p, align 4, !dbg !1784
  %tobool = icmp ne i8* %16, null, !dbg !1784
  br i1 %tobool, label %if.end17, label %if.then16, !dbg !1786

if.then16:                                        ; preds = %for.body
  br label %for.end, !dbg !1787

if.end17:                                         ; preds = %for.body
  %17 = load i8*, i8** %p, align 4, !dbg !1788
  %buffer18 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1790
  %18 = load i8*, i8** %buffer18, align 4, !dbg !1790
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i32, !dbg !1791
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i32, !dbg !1791
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1791
  %19 = load i32, i32* %fromIndex.addr, align 4, !dbg !1792
  %cmp19 = icmp ule i32 %sub.ptr.sub, %19, !dbg !1793
  br i1 %cmp19, label %if.then20, label %if.end25, !dbg !1794

if.then20:                                        ; preds = %if.end17
  %20 = load i8*, i8** %p, align 4, !dbg !1795
  %buffer21 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1796
  %21 = load i8*, i8** %buffer21, align 4, !dbg !1796
  %sub.ptr.lhs.cast22 = ptrtoint i8* %20 to i32, !dbg !1797
  %sub.ptr.rhs.cast23 = ptrtoint i8* %21 to i32, !dbg !1797
  %sub.ptr.sub24 = sub i32 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23, !dbg !1797
  store i32 %sub.ptr.sub24, i32* %found, align 4, !dbg !1798
  br label %if.end25, !dbg !1799

if.end25:                                         ; preds = %if.then20, %if.end17
  br label %for.inc, !dbg !1800

for.inc:                                          ; preds = %if.end25
  %22 = load i8*, i8** %p, align 4, !dbg !1801
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1, !dbg !1801
  store i8* %incdec.ptr, i8** %p, align 4, !dbg !1801
  br label %for.cond, !dbg !1802, !llvm.loop !1803

for.end:                                          ; preds = %if.then16, %for.cond
  %23 = load i32, i32* %found, align 4, !dbg !1805
  store i32 %23, i32* %retval, align 4, !dbg !1806
  br label %return, !dbg !1806

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !1807
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String11lastIndexOfERKS_j, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %25 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %25, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %26 = load i32, i32* %i, align 4
  %27 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %27, i32 %26
  %28 = load i8, i8* %arrayidx1, align 1
  %29 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %29
  store i8 %28, i8* %arrayidx2, align 1
  %30 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %30
  %31 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %31 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %32 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %32
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %33 = load i32, i32* %i, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %35 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %36 = phi i8* [ %35, %dec_end ]
  indirectbr i8* %35, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %24, !dbg !1807
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZNK6String9substringEjj(%class.String* noalias sret %agg.result, %class.String* %this, i32 %left, i32 %right) #0 align 2 !dbg !1808 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %result.ptr = alloca i8*, align 4
  %this.addr = alloca %class.String*, align 4
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %temp10 = alloca i8, align 1
  %0 = bitcast %class.String* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1809, metadata !DIExpression()), !dbg !1810
  store i32 %left, i32* %left.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %left.addr, metadata !1811, metadata !DIExpression()), !dbg !1812
  store i32 %right, i32* %right.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %right.addr, metadata !1813, metadata !DIExpression()), !dbg !1814
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %1 = load i32, i32* %left.addr, align 4, !dbg !1815
  %2 = load i32, i32* %right.addr, align 4, !dbg !1817
  %cmp = icmp ugt i32 %1, %2, !dbg !1818
  br i1 %cmp, label %if.then, label %if.end, !dbg !1819

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !1820, metadata !DIExpression()), !dbg !1822
  %3 = load i32, i32* %right.addr, align 4, !dbg !1823
  store i32 %3, i32* %temp, align 4, !dbg !1822
  %4 = load i32, i32* %left.addr, align 4, !dbg !1824
  store i32 %4, i32* %right.addr, align 4, !dbg !1825
  %5 = load i32, i32* %temp, align 4, !dbg !1826
  store i32 %5, i32* %left.addr, align 4, !dbg !1827
  br label %if.end, !dbg !1828

if.end:                                           ; preds = %if.then, %entry
  store i1 false, i1* %nrvo, align 1, !dbg !1829
  call void @llvm.dbg.declare(metadata i8** %result.ptr, metadata !1830, metadata !DIExpression(DW_OP_deref)), !dbg !1831
  %call = call arm_aapcscc %class.String* @_ZN6StringC1EPKc(%class.String* %agg.result, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)), !dbg !1831
  %6 = load i32, i32* %left.addr, align 4, !dbg !1832
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1834
  %7 = load i32, i32* %len, align 4, !dbg !1834
  %cmp2 = icmp uge i32 %6, %7, !dbg !1835
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1836

if.then3:                                         ; preds = %if.end
  store i1 true, i1* %nrvo, align 1, !dbg !1837
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1837

if.end4:                                          ; preds = %if.end
  %8 = load i32, i32* %right.addr, align 4, !dbg !1838
  %len5 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1840
  %9 = load i32, i32* %len5, align 4, !dbg !1840
  %cmp6 = icmp ugt i32 %8, %9, !dbg !1841
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1842

if.then7:                                         ; preds = %if.end4
  %len8 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1843
  %10 = load i32, i32* %len8, align 4, !dbg !1843
  store i32 %10, i32* %right.addr, align 4, !dbg !1844
  br label %if.end9, !dbg !1845

if.end9:                                          ; preds = %if.then7, %if.end4
  call void @llvm.dbg.declare(metadata i8* %temp10, metadata !1846, metadata !DIExpression()), !dbg !1847
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1848
  %11 = load i8*, i8** %buffer, align 4, !dbg !1848
  %12 = load i32, i32* %right.addr, align 4, !dbg !1849
  %arrayidx = getelementptr inbounds i8, i8* %11, i32 %12, !dbg !1848
  %13 = load i8, i8* %arrayidx, align 1, !dbg !1848
  store i8 %13, i8* %temp10, align 1, !dbg !1847
  %buffer11 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1850
  %14 = load i8*, i8** %buffer11, align 4, !dbg !1850
  %15 = load i32, i32* %right.addr, align 4, !dbg !1851
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i32 %15, !dbg !1850
  store i8 0, i8* %arrayidx12, align 1, !dbg !1852
  %buffer13 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1853
  %16 = load i8*, i8** %buffer13, align 4, !dbg !1853
  %17 = load i32, i32* %left.addr, align 4, !dbg !1854
  %add.ptr = getelementptr inbounds i8, i8* %16, i32 %17, !dbg !1855
  %call14 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringaSEPKc(%class.String* %agg.result, i8* %add.ptr), !dbg !1856
  %18 = load i8, i8* %temp10, align 1, !dbg !1857
  %buffer15 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1858
  %19 = load i8*, i8** %buffer15, align 4, !dbg !1858
  %20 = load i32, i32* %right.addr, align 4, !dbg !1859
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i32 %20, !dbg !1858
  store i8 %18, i8* %arrayidx16, align 1, !dbg !1860
  store i1 true, i1* %nrvo, align 1, !dbg !1861
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1861

cleanup:                                          ; preds = %if.end9, %if.then3
  %nrvo.val = load i1, i1* %nrvo, align 1, !dbg !1862
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused, !dbg !1862

nrvo.unused:                                      ; preds = %cleanup
  %call17 = call arm_aapcscc %class.String* @_ZN6StringD1Ev(%class.String* %agg.result) #6, !dbg !1862
  br label %nrvo.skipdtor, !dbg !1862

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %cleanup
  br label %dec_start

dec_start:                                        ; preds = %nrvo.skipdtor
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String9substringEjj, %nrvo.skipdtor.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %21 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %21, 12
  br i1 %cmp3, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %22 = load i32, i32* %i, align 4
  %23 = load i8*, i8** %ptr, align 4
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i32 %22
  %24 = load i8, i8* %arrayidx14, align 1
  %25 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %25
  store i8 %24, i8* %arrayidx2, align 1
  %26 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %26
  %27 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %27 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %28 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %28
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %29 = load i32, i32* %i, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %31 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %32 = phi i8* [ %31, %dec_end ]
  indirectbr i8* %31, [label %nrvo.skipdtor.RetBlock]

nrvo.skipdtor.RetBlock:                           ; preds = %dec_jmp
  ret void, !dbg !1862
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String7replaceEcc(%class.String* %this, i8 zeroext %find, i8 zeroext %replace) #0 align 2 !dbg !1863 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %find.addr = alloca i8, align 1
  %replace.addr = alloca i8, align 1
  %p = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1864, metadata !DIExpression()), !dbg !1865
  store i8 %find, i8* %find.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %find.addr, metadata !1866, metadata !DIExpression()), !dbg !1867
  store i8 %replace, i8* %replace.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %replace.addr, metadata !1868, metadata !DIExpression()), !dbg !1869
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1870
  %0 = load i8*, i8** %buffer, align 4, !dbg !1870
  %tobool = icmp ne i8* %0, null, !dbg !1870
  br i1 %tobool, label %if.end, label %if.then, !dbg !1872

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !1873

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1874, metadata !DIExpression()), !dbg !1876
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1877
  %1 = load i8*, i8** %buffer2, align 4, !dbg !1877
  store i8* %1, i8** %p, align 4, !dbg !1876
  br label %for.cond, !dbg !1878

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %p, align 4, !dbg !1879
  %3 = load i8, i8* %2, align 1, !dbg !1881
  %tobool3 = icmp ne i8 %3, 0, !dbg !1881
  br i1 %tobool3, label %for.body, label %for.end, !dbg !1882

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 4, !dbg !1883
  %5 = load i8, i8* %4, align 1, !dbg !1886
  %conv = zext i8 %5 to i32, !dbg !1886
  %6 = load i8, i8* %find.addr, align 1, !dbg !1887
  %conv4 = zext i8 %6 to i32, !dbg !1887
  %cmp = icmp eq i32 %conv, %conv4, !dbg !1888
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1889

if.then5:                                         ; preds = %for.body
  %7 = load i8, i8* %replace.addr, align 1, !dbg !1890
  %8 = load i8*, i8** %p, align 4, !dbg !1891
  store i8 %7, i8* %8, align 1, !dbg !1892
  br label %if.end6, !dbg !1893

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !1894

for.inc:                                          ; preds = %if.end6
  %9 = load i8*, i8** %p, align 4, !dbg !1895
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1, !dbg !1895
  store i8* %incdec.ptr, i8** %p, align 4, !dbg !1895
  br label %for.cond, !dbg !1896, !llvm.loop !1897

for.end:                                          ; preds = %for.cond, %if.then
  br label %dec_start

dec_start:                                        ; preds = %for.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String7replaceEcc, %for.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %10 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %10, 12
  br i1 %cmp1, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %11 = load i32, i32* %i, align 4
  %12 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %12, i32 %11
  %13 = load i8, i8* %arrayidx1, align 1
  %14 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %14
  store i8 %13, i8* %arrayidx2, align 1
  %15 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  %16 = load i8, i8* %arrayidx3, align 1
  %conv2 = zext i8 %16 to i32
  %xor = xor i32 %conv2, 133
  %conv43 = trunc i32 %xor to i8
  %17 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %17
  store i8 %conv43, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %18 = load i32, i32* %i, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %20 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %21 = phi i8* [ %20, %dec_end ]
  indirectbr i8* %20, [label %for.end.RetBlock]

for.end.RetBlock:                                 ; preds = %dec_jmp
  ret void, !dbg !1899
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String7replaceERKS_S1_(%class.String* %this, %class.String* dereferenceable(12) %find, %class.String* dereferenceable(12) %replace) #0 align 2 !dbg !1900 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %find.addr = alloca %class.String*, align 4
  %replace.addr = alloca %class.String*, align 4
  %diff = alloca i32, align 4
  %readFrom = alloca i8*, align 4
  %foundAt = alloca i8*, align 4
  %writeTo = alloca i8*, align 4
  %n = alloca i32, align 4
  %size = alloca i32, align 4
  %index = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !1901, metadata !DIExpression()), !dbg !1902
  store %class.String* %find, %class.String** %find.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %find.addr, metadata !1903, metadata !DIExpression()), !dbg !1904
  store %class.String* %replace, %class.String** %replace.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %replace.addr, metadata !1905, metadata !DIExpression()), !dbg !1906
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1907
  %0 = load i32, i32* %len, align 4, !dbg !1907
  %cmp = icmp eq i32 %0, 0, !dbg !1909
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1910

lor.lhs.false:                                    ; preds = %entry
  %1 = load %class.String*, %class.String** %find.addr, align 4, !dbg !1911
  %len2 = getelementptr inbounds %class.String, %class.String* %1, i32 0, i32 2, !dbg !1912
  %2 = load i32, i32* %len2, align 4, !dbg !1912
  %cmp3 = icmp eq i32 %2, 0, !dbg !1913
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1914

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end78, !dbg !1915

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %diff, metadata !1916, metadata !DIExpression()), !dbg !1917
  %3 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !1918
  %len4 = getelementptr inbounds %class.String, %class.String* %3, i32 0, i32 2, !dbg !1919
  %4 = load i32, i32* %len4, align 4, !dbg !1919
  %5 = load %class.String*, %class.String** %find.addr, align 4, !dbg !1920
  %len5 = getelementptr inbounds %class.String, %class.String* %5, i32 0, i32 2, !dbg !1921
  %6 = load i32, i32* %len5, align 4, !dbg !1921
  %sub = sub i32 %4, %6, !dbg !1922
  store i32 %sub, i32* %diff, align 4, !dbg !1917
  call void @llvm.dbg.declare(metadata i8** %readFrom, metadata !1923, metadata !DIExpression()), !dbg !1924
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1925
  %7 = load i8*, i8** %buffer, align 4, !dbg !1925
  store i8* %7, i8** %readFrom, align 4, !dbg !1924
  call void @llvm.dbg.declare(metadata i8** %foundAt, metadata !1926, metadata !DIExpression()), !dbg !1927
  %8 = load i32, i32* %diff, align 4, !dbg !1928
  %cmp6 = icmp eq i32 %8, 0, !dbg !1930
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !1931

if.then7:                                         ; preds = %if.end
  br label %while.cond, !dbg !1932

while.cond:                                       ; preds = %while.body, %if.then7
  %9 = load i8*, i8** %readFrom, align 4, !dbg !1934
  %10 = load %class.String*, %class.String** %find.addr, align 4, !dbg !1935
  %buffer8 = getelementptr inbounds %class.String, %class.String* %10, i32 0, i32 0, !dbg !1936
  %11 = load i8*, i8** %buffer8, align 4, !dbg !1936
  %call = call arm_aapcscc i8* @strstr(i8* %9, i8* %11), !dbg !1937
  store i8* %call, i8** %foundAt, align 4, !dbg !1938
  %cmp9 = icmp ne i8* %call, null, !dbg !1939
  br i1 %cmp9, label %while.body, label %while.end, !dbg !1932

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %foundAt, align 4, !dbg !1940
  %13 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !1942
  %buffer10 = getelementptr inbounds %class.String, %class.String* %13, i32 0, i32 0, !dbg !1943
  %14 = load i8*, i8** %buffer10, align 4, !dbg !1943
  %15 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !1944
  %len11 = getelementptr inbounds %class.String, %class.String* %15, i32 0, i32 2, !dbg !1945
  %16 = load i32, i32* %len11, align 4, !dbg !1945
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %12, i8* align 1 %14, i32 %16, i1 false), !dbg !1946
  %17 = load i8*, i8** %foundAt, align 4, !dbg !1947
  %18 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !1948
  %len12 = getelementptr inbounds %class.String, %class.String* %18, i32 0, i32 2, !dbg !1949
  %19 = load i32, i32* %len12, align 4, !dbg !1949
  %add.ptr = getelementptr inbounds i8, i8* %17, i32 %19, !dbg !1950
  store i8* %add.ptr, i8** %readFrom, align 4, !dbg !1951
  br label %while.cond, !dbg !1932, !llvm.loop !1952

while.end:                                        ; preds = %while.cond
  br label %if.end78, !dbg !1954

if.else:                                          ; preds = %if.end
  %20 = load i32, i32* %diff, align 4, !dbg !1955
  %cmp13 = icmp slt i32 %20, 0, !dbg !1957
  br i1 %cmp13, label %if.then14, label %if.else31, !dbg !1958

if.then14:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i8** %writeTo, metadata !1959, metadata !DIExpression()), !dbg !1961
  %buffer15 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !1962
  %21 = load i8*, i8** %buffer15, align 4, !dbg !1962
  store i8* %21, i8** %writeTo, align 4, !dbg !1961
  br label %while.cond16, !dbg !1963

while.cond16:                                     ; preds = %while.body20, %if.then14
  %22 = load i8*, i8** %readFrom, align 4, !dbg !1964
  %23 = load %class.String*, %class.String** %find.addr, align 4, !dbg !1965
  %buffer17 = getelementptr inbounds %class.String, %class.String* %23, i32 0, i32 0, !dbg !1966
  %24 = load i8*, i8** %buffer17, align 4, !dbg !1966
  %call18 = call arm_aapcscc i8* @strstr(i8* %22, i8* %24), !dbg !1967
  store i8* %call18, i8** %foundAt, align 4, !dbg !1968
  %cmp19 = icmp ne i8* %call18, null, !dbg !1969
  br i1 %cmp19, label %while.body20, label %while.end29, !dbg !1963

while.body20:                                     ; preds = %while.cond16
  call void @llvm.dbg.declare(metadata i32* %n, metadata !1970, metadata !DIExpression()), !dbg !1972
  %25 = load i8*, i8** %foundAt, align 4, !dbg !1973
  %26 = load i8*, i8** %readFrom, align 4, !dbg !1974
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i32, !dbg !1975
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i32, !dbg !1975
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1975
  store i32 %sub.ptr.sub, i32* %n, align 4, !dbg !1972
  %27 = load i8*, i8** %writeTo, align 4, !dbg !1976
  %28 = load i8*, i8** %readFrom, align 4, !dbg !1977
  %29 = load i32, i32* %n, align 4, !dbg !1978
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %27, i8* align 1 %28, i32 %29, i1 false), !dbg !1979
  %30 = load i32, i32* %n, align 4, !dbg !1980
  %31 = load i8*, i8** %writeTo, align 4, !dbg !1981
  %add.ptr21 = getelementptr inbounds i8, i8* %31, i32 %30, !dbg !1981
  store i8* %add.ptr21, i8** %writeTo, align 4, !dbg !1981
  %32 = load i8*, i8** %writeTo, align 4, !dbg !1982
  %33 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !1983
  %buffer22 = getelementptr inbounds %class.String, %class.String* %33, i32 0, i32 0, !dbg !1984
  %34 = load i8*, i8** %buffer22, align 4, !dbg !1984
  %35 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !1985
  %len23 = getelementptr inbounds %class.String, %class.String* %35, i32 0, i32 2, !dbg !1986
  %36 = load i32, i32* %len23, align 4, !dbg !1986
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %32, i8* align 1 %34, i32 %36, i1 false), !dbg !1987
  %37 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !1988
  %len24 = getelementptr inbounds %class.String, %class.String* %37, i32 0, i32 2, !dbg !1989
  %38 = load i32, i32* %len24, align 4, !dbg !1989
  %39 = load i8*, i8** %writeTo, align 4, !dbg !1990
  %add.ptr25 = getelementptr inbounds i8, i8* %39, i32 %38, !dbg !1990
  store i8* %add.ptr25, i8** %writeTo, align 4, !dbg !1990
  %40 = load i8*, i8** %foundAt, align 4, !dbg !1991
  %41 = load %class.String*, %class.String** %find.addr, align 4, !dbg !1992
  %len26 = getelementptr inbounds %class.String, %class.String* %41, i32 0, i32 2, !dbg !1993
  %42 = load i32, i32* %len26, align 4, !dbg !1993
  %add.ptr27 = getelementptr inbounds i8, i8* %40, i32 %42, !dbg !1994
  store i8* %add.ptr27, i8** %readFrom, align 4, !dbg !1995
  %43 = load i32, i32* %diff, align 4, !dbg !1996
  %len28 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !1997
  %44 = load i32, i32* %len28, align 4, !dbg !1998
  %add = add i32 %44, %43, !dbg !1998
  store i32 %add, i32* %len28, align 4, !dbg !1998
  br label %while.cond16, !dbg !1963, !llvm.loop !1999

while.end29:                                      ; preds = %while.cond16
  %45 = load i8*, i8** %writeTo, align 4, !dbg !2001
  %46 = load i8*, i8** %readFrom, align 4, !dbg !2002
  %call30 = call arm_aapcscc i8* @strcpy(i8* %45, i8* %46), !dbg !2003
  br label %if.end77, !dbg !2004

if.else31:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i32* %size, metadata !2005, metadata !DIExpression()), !dbg !2007
  %len32 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2008
  %47 = load i32, i32* %len32, align 4, !dbg !2008
  store i32 %47, i32* %size, align 4, !dbg !2007
  br label %while.cond33, !dbg !2009

while.cond33:                                     ; preds = %while.body37, %if.else31
  %48 = load i8*, i8** %readFrom, align 4, !dbg !2010
  %49 = load %class.String*, %class.String** %find.addr, align 4, !dbg !2011
  %buffer34 = getelementptr inbounds %class.String, %class.String* %49, i32 0, i32 0, !dbg !2012
  %50 = load i8*, i8** %buffer34, align 4, !dbg !2012
  %call35 = call arm_aapcscc i8* @strstr(i8* %48, i8* %50), !dbg !2013
  store i8* %call35, i8** %foundAt, align 4, !dbg !2014
  %cmp36 = icmp ne i8* %call35, null, !dbg !2015
  br i1 %cmp36, label %while.body37, label %while.end41, !dbg !2009

while.body37:                                     ; preds = %while.cond33
  %51 = load i8*, i8** %foundAt, align 4, !dbg !2016
  %52 = load %class.String*, %class.String** %find.addr, align 4, !dbg !2018
  %len38 = getelementptr inbounds %class.String, %class.String* %52, i32 0, i32 2, !dbg !2019
  %53 = load i32, i32* %len38, align 4, !dbg !2019
  %add.ptr39 = getelementptr inbounds i8, i8* %51, i32 %53, !dbg !2020
  store i8* %add.ptr39, i8** %readFrom, align 4, !dbg !2021
  %54 = load i32, i32* %diff, align 4, !dbg !2022
  %55 = load i32, i32* %size, align 4, !dbg !2023
  %add40 = add i32 %55, %54, !dbg !2023
  store i32 %add40, i32* %size, align 4, !dbg !2023
  br label %while.cond33, !dbg !2009, !llvm.loop !2024

while.end41:                                      ; preds = %while.cond33
  %56 = load i32, i32* %size, align 4, !dbg !2026
  %len42 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2028
  %57 = load i32, i32* %len42, align 4, !dbg !2028
  %cmp43 = icmp eq i32 %56, %57, !dbg !2029
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !2030

if.then44:                                        ; preds = %while.end41
  br label %if.end78, !dbg !2031

if.end45:                                         ; preds = %while.end41
  %58 = load i32, i32* %size, align 4, !dbg !2032
  %capacity = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 1, !dbg !2034
  %59 = load i32, i32* %capacity, align 4, !dbg !2034
  %cmp46 = icmp ugt i32 %58, %59, !dbg !2035
  br i1 %cmp46, label %land.lhs.true, label %if.end49, !dbg !2036

land.lhs.true:                                    ; preds = %if.end45
  %60 = load i32, i32* %size, align 4, !dbg !2037
  %call47 = call arm_aapcscc zeroext i8 @_ZN6String12changeBufferEj(%class.String* %this1, i32 %60), !dbg !2038
  %tobool = icmp ne i8 %call47, 0, !dbg !2038
  br i1 %tobool, label %if.end49, label %if.then48, !dbg !2039

if.then48:                                        ; preds = %land.lhs.true
  br label %if.end78, !dbg !2040

if.end49:                                         ; preds = %land.lhs.true, %if.end45
  call void @llvm.dbg.declare(metadata i32* %index, metadata !2041, metadata !DIExpression()), !dbg !2042
  %len50 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2043
  %61 = load i32, i32* %len50, align 4, !dbg !2043
  %sub51 = sub i32 %61, 1, !dbg !2044
  store i32 %sub51, i32* %index, align 4, !dbg !2042
  br label %while.cond52, !dbg !2045

while.cond52:                                     ; preds = %while.body56, %if.end49
  %62 = load i32, i32* %index, align 4, !dbg !2046
  %cmp53 = icmp sge i32 %62, 0, !dbg !2047
  br i1 %cmp53, label %land.rhs, label %land.end, !dbg !2048

land.rhs:                                         ; preds = %while.cond52
  %63 = load %class.String*, %class.String** %find.addr, align 4, !dbg !2049
  %64 = load i32, i32* %index, align 4, !dbg !2050
  %call54 = call arm_aapcscc i32 @_ZNK6String11lastIndexOfERKS_j(%class.String* %this1, %class.String* dereferenceable(12) %63, i32 %64), !dbg !2051
  store i32 %call54, i32* %index, align 4, !dbg !2052
  %cmp55 = icmp sge i32 %call54, 0, !dbg !2053
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond52
  %65 = phi i1 [ false, %while.cond52 ], [ %cmp55, %land.rhs ], !dbg !2054
  br i1 %65, label %while.body56, label %while.end76, !dbg !2045

while.body56:                                     ; preds = %land.end
  %buffer57 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2055
  %66 = load i8*, i8** %buffer57, align 4, !dbg !2055
  %67 = load i32, i32* %index, align 4, !dbg !2057
  %add.ptr58 = getelementptr inbounds i8, i8* %66, i32 %67, !dbg !2058
  %68 = load %class.String*, %class.String** %find.addr, align 4, !dbg !2059
  %len59 = getelementptr inbounds %class.String, %class.String* %68, i32 0, i32 2, !dbg !2060
  %69 = load i32, i32* %len59, align 4, !dbg !2060
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr58, i32 %69, !dbg !2061
  store i8* %add.ptr60, i8** %readFrom, align 4, !dbg !2062
  %70 = load i8*, i8** %readFrom, align 4, !dbg !2063
  %71 = load i32, i32* %diff, align 4, !dbg !2064
  %add.ptr61 = getelementptr inbounds i8, i8* %70, i32 %71, !dbg !2065
  %72 = load i8*, i8** %readFrom, align 4, !dbg !2066
  %len62 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2067
  %73 = load i32, i32* %len62, align 4, !dbg !2067
  %74 = load i8*, i8** %readFrom, align 4, !dbg !2068
  %buffer63 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2069
  %75 = load i8*, i8** %buffer63, align 4, !dbg !2069
  %sub.ptr.lhs.cast64 = ptrtoint i8* %74 to i32, !dbg !2070
  %sub.ptr.rhs.cast65 = ptrtoint i8* %75 to i32, !dbg !2070
  %sub.ptr.sub66 = sub i32 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65, !dbg !2070
  %sub67 = sub i32 %73, %sub.ptr.sub66, !dbg !2071
  call void @llvm.memmove.p0i8.p0i8.i32(i8* align 1 %add.ptr61, i8* align 1 %72, i32 %sub67, i1 false), !dbg !2072
  %76 = load i32, i32* %diff, align 4, !dbg !2073
  %len68 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2074
  %77 = load i32, i32* %len68, align 4, !dbg !2075
  %add69 = add i32 %77, %76, !dbg !2075
  store i32 %add69, i32* %len68, align 4, !dbg !2075
  %buffer70 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2076
  %78 = load i8*, i8** %buffer70, align 4, !dbg !2076
  %len71 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2077
  %79 = load i32, i32* %len71, align 4, !dbg !2077
  %arrayidx = getelementptr inbounds i8, i8* %78, i32 %79, !dbg !2076
  store i8 0, i8* %arrayidx, align 1, !dbg !2078
  %buffer72 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2079
  %80 = load i8*, i8** %buffer72, align 4, !dbg !2079
  %81 = load i32, i32* %index, align 4, !dbg !2080
  %add.ptr73 = getelementptr inbounds i8, i8* %80, i32 %81, !dbg !2081
  %82 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !2082
  %buffer74 = getelementptr inbounds %class.String, %class.String* %82, i32 0, i32 0, !dbg !2083
  %83 = load i8*, i8** %buffer74, align 4, !dbg !2083
  %84 = load %class.String*, %class.String** %replace.addr, align 4, !dbg !2084
  %len75 = getelementptr inbounds %class.String, %class.String* %84, i32 0, i32 2, !dbg !2085
  %85 = load i32, i32* %len75, align 4, !dbg !2085
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr73, i8* align 1 %83, i32 %85, i1 false), !dbg !2086
  %86 = load i32, i32* %index, align 4, !dbg !2087
  %dec = add nsw i32 %86, -1, !dbg !2087
  store i32 %dec, i32* %index, align 4, !dbg !2087
  br label %while.cond52, !dbg !2045, !llvm.loop !2088

while.end76:                                      ; preds = %land.end
  br label %if.end77

if.end77:                                         ; preds = %while.end76, %while.end29
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then48, %if.then44, %while.end, %if.then
  br label %dec_start

dec_start:                                        ; preds = %if.end78
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String7replaceERKS_S1_, %if.end78.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %87 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %87, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %88 = load i32, i32* %i, align 4
  %89 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %89, i32 %88
  %90 = load i8, i8* %arrayidx13, align 1
  %91 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %91
  store i8 %90, i8* %arrayidx2, align 1
  %92 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %92
  %93 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %93 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %94 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %94
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %95 = load i32, i32* %i, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %97 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %98 = phi i8* [ %97, %dec_end ]
  indirectbr i8* %97, [label %if.end78.RetBlock]

if.end78.RetBlock:                                ; preds = %dec_jmp
  ret void, !dbg !2090
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i1 immarg) #5

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String6removeEj(%class.String* %this, i32 %index) #0 align 2 !dbg !2091 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %index.addr = alloca i32, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2092, metadata !DIExpression()), !dbg !2093
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2094, metadata !DIExpression()), !dbg !2095
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %index.addr, align 4, !dbg !2096
  call arm_aapcscc void @_ZN6String6removeEjj(%class.String* %this1, i32 %0, i32 -1), !dbg !2097
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6removeEj, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !2098
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String6removeEjj(%class.String* %this, i32 %index, i32 %count) #0 align 2 !dbg !2099 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %index.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %writeTo = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2100, metadata !DIExpression()), !dbg !2101
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2102, metadata !DIExpression()), !dbg !2103
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !2104, metadata !DIExpression()), !dbg !2105
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i32, i32* %index.addr, align 4, !dbg !2106
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2108
  %1 = load i32, i32* %len, align 4, !dbg !2108
  %cmp = icmp uge i32 %0, %1, !dbg !2109
  br i1 %cmp, label %if.then, label %if.end, !dbg !2110

if.then:                                          ; preds = %entry
  br label %return, !dbg !2111

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %count.addr, align 4, !dbg !2113
  %cmp2 = icmp ule i32 %2, 0, !dbg !2115
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2116

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !2117

if.end4:                                          ; preds = %if.end
  %3 = load i32, i32* %count.addr, align 4, !dbg !2119
  %len5 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2121
  %4 = load i32, i32* %len5, align 4, !dbg !2121
  %5 = load i32, i32* %index.addr, align 4, !dbg !2122
  %sub = sub i32 %4, %5, !dbg !2123
  %cmp6 = icmp ugt i32 %3, %sub, !dbg !2124
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !2125

if.then7:                                         ; preds = %if.end4
  %len8 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2126
  %6 = load i32, i32* %len8, align 4, !dbg !2126
  %7 = load i32, i32* %index.addr, align 4, !dbg !2128
  %sub9 = sub i32 %6, %7, !dbg !2129
  store i32 %sub9, i32* %count.addr, align 4, !dbg !2130
  br label %if.end10, !dbg !2131

if.end10:                                         ; preds = %if.then7, %if.end4
  call void @llvm.dbg.declare(metadata i8** %writeTo, metadata !2132, metadata !DIExpression()), !dbg !2133
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2134
  %8 = load i8*, i8** %buffer, align 4, !dbg !2134
  %9 = load i32, i32* %index.addr, align 4, !dbg !2135
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 %9, !dbg !2136
  store i8* %add.ptr, i8** %writeTo, align 4, !dbg !2133
  %len11 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2137
  %10 = load i32, i32* %len11, align 4, !dbg !2137
  %11 = load i32, i32* %count.addr, align 4, !dbg !2138
  %sub12 = sub i32 %10, %11, !dbg !2139
  %len13 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2140
  store i32 %sub12, i32* %len13, align 4, !dbg !2141
  %12 = load i8*, i8** %writeTo, align 4, !dbg !2142
  %buffer14 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2143
  %13 = load i8*, i8** %buffer14, align 4, !dbg !2143
  %14 = load i32, i32* %index.addr, align 4, !dbg !2144
  %add.ptr15 = getelementptr inbounds i8, i8* %13, i32 %14, !dbg !2145
  %15 = load i32, i32* %count.addr, align 4, !dbg !2146
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr15, i32 %15, !dbg !2147
  %len17 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2148
  %16 = load i32, i32* %len17, align 4, !dbg !2148
  %17 = load i32, i32* %index.addr, align 4, !dbg !2149
  %sub18 = sub i32 %16, %17, !dbg !2150
  %call = call arm_aapcscc i8* @strncpy(i8* %12, i8* %add.ptr16, i32 %sub18), !dbg !2151
  %buffer19 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2152
  %18 = load i8*, i8** %buffer19, align 4, !dbg !2152
  %len20 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2153
  %19 = load i32, i32* %len20, align 4, !dbg !2153
  %arrayidx = getelementptr inbounds i8, i8* %18, i32 %19, !dbg !2152
  store i8 0, i8* %arrayidx, align 1, !dbg !2154
  br label %return, !dbg !2155

return:                                           ; preds = %if.end10, %if.then3, %if.then
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String6removeEjj, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %20 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %20, 12
  br i1 %cmp3, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %21 = load i32, i32* %i, align 4
  %22 = load i8*, i8** %ptr, align 4
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i32 %21
  %23 = load i8, i8* %arrayidx14, align 1
  %24 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %24
  store i8 %23, i8* %arrayidx2, align 1
  %25 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %25
  %26 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %26 to i32
  %xor = xor i32 %conv, 133
  %conv4 = trunc i32 %xor to i8
  %27 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %27
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %28 = load i32, i32* %i, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %30 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %31 = phi i8* [ %30, %dec_end ]
  indirectbr i8* %30, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !2155
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String11toLowerCaseEv(%class.String* %this) #0 align 2 !dbg !2156 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %p = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2157, metadata !DIExpression()), !dbg !2158
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2159
  %0 = load i8*, i8** %buffer, align 4, !dbg !2159
  %tobool = icmp ne i8* %0, null, !dbg !2159
  br i1 %tobool, label %if.end, label %if.then, !dbg !2161

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !2162

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2163, metadata !DIExpression()), !dbg !2165
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2166
  %1 = load i8*, i8** %buffer2, align 4, !dbg !2166
  store i8* %1, i8** %p, align 4, !dbg !2165
  br label %for.cond, !dbg !2167

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %p, align 4, !dbg !2168
  %3 = load i8, i8* %2, align 1, !dbg !2170
  %tobool3 = icmp ne i8 %3, 0, !dbg !2170
  br i1 %tobool3, label %for.body, label %for.end, !dbg !2171

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 4, !dbg !2172
  %5 = load i8, i8* %4, align 1, !dbg !2174
  %conv = zext i8 %5 to i32, !dbg !2174
  %call = call arm_aapcscc i32 @tolower(i32 %conv) #7, !dbg !2175
  %conv4 = trunc i32 %call to i8, !dbg !2175
  %6 = load i8*, i8** %p, align 4, !dbg !2176
  store i8 %conv4, i8* %6, align 1, !dbg !2177
  br label %for.inc, !dbg !2178

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %p, align 4, !dbg !2179
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2179
  store i8* %incdec.ptr, i8** %p, align 4, !dbg !2179
  br label %for.cond, !dbg !2180, !llvm.loop !2181

for.end:                                          ; preds = %for.cond, %if.then
  br label %dec_start

dec_start:                                        ; preds = %for.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String11toLowerCaseEv, %for.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %9 = load i32, i32* %i, align 4
  %10 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i32 %9
  %11 = load i8, i8* %arrayidx1, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  store i8 %11, i8* %arrayidx2, align 1
  %13 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  %14 = load i8, i8* %arrayidx3, align 1
  %conv1 = zext i8 %14 to i32
  %xor = xor i32 %conv1, 133
  %conv42 = trunc i32 %xor to i8
  %15 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  store i8 %conv42, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %16 = load i32, i32* %i, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %18 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %19 = phi i8* [ %18, %dec_end ]
  indirectbr i8* %18, [label %for.end.RetBlock]

for.end.RetBlock:                                 ; preds = %dec_jmp
  ret void, !dbg !2183
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String11toUpperCaseEv(%class.String* %this) #0 align 2 !dbg !2184 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %p = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2187
  %0 = load i8*, i8** %buffer, align 4, !dbg !2187
  %tobool = icmp ne i8* %0, null, !dbg !2187
  br i1 %tobool, label %if.end, label %if.then, !dbg !2189

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !2190

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2191, metadata !DIExpression()), !dbg !2193
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2194
  %1 = load i8*, i8** %buffer2, align 4, !dbg !2194
  store i8* %1, i8** %p, align 4, !dbg !2193
  br label %for.cond, !dbg !2195

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %p, align 4, !dbg !2196
  %3 = load i8, i8* %2, align 1, !dbg !2198
  %tobool3 = icmp ne i8 %3, 0, !dbg !2198
  br i1 %tobool3, label %for.body, label %for.end, !dbg !2199

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 4, !dbg !2200
  %5 = load i8, i8* %4, align 1, !dbg !2202
  %conv = zext i8 %5 to i32, !dbg !2202
  %call = call arm_aapcscc i32 @toupper(i32 %conv) #7, !dbg !2203
  %conv4 = trunc i32 %call to i8, !dbg !2203
  %6 = load i8*, i8** %p, align 4, !dbg !2204
  store i8 %conv4, i8* %6, align 1, !dbg !2205
  br label %for.inc, !dbg !2206

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %p, align 4, !dbg !2207
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2207
  store i8* %incdec.ptr, i8** %p, align 4, !dbg !2207
  br label %for.cond, !dbg !2208, !llvm.loop !2209

for.end:                                          ; preds = %for.cond, %if.then
  br label %dec_start

dec_start:                                        ; preds = %for.end
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String11toUpperCaseEv, %for.end.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 12
  br i1 %cmp, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %9 = load i32, i32* %i, align 4
  %10 = load i8*, i8** %ptr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i32 %9
  %11 = load i8, i8* %arrayidx1, align 1
  %12 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %12
  store i8 %11, i8* %arrayidx2, align 1
  %13 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %13
  %14 = load i8, i8* %arrayidx3, align 1
  %conv1 = zext i8 %14 to i32
  %xor = xor i32 %conv1, 133
  %conv42 = trunc i32 %xor to i8
  %15 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %15
  store i8 %conv42, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %16 = load i32, i32* %i, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %18 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %19 = phi i8* [ %18, %dec_end ]
  indirectbr i8* %18, [label %for.end.RetBlock]

for.end.RetBlock:                                 ; preds = %dec_jmp
  ret void, !dbg !2211
}

; Function Attrs: nounwind readonly
declare dso_local arm_aapcscc i32 @toupper(i32) #4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6String4trimEv(%class.String* %this) #0 align 2 !dbg !2212 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  %begin = alloca i8*, align 4
  %end = alloca i8*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2213, metadata !DIExpression()), !dbg !2214
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2215
  %0 = load i8*, i8** %buffer, align 4, !dbg !2215
  %tobool = icmp ne i8* %0, null, !dbg !2215
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2217

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2218
  %1 = load i32, i32* %len, align 4, !dbg !2218
  %cmp = icmp eq i32 %1, 0, !dbg !2219
  br i1 %cmp, label %if.then, label %if.end, !dbg !2220

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !2221

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %begin, metadata !2222, metadata !DIExpression()), !dbg !2223
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2224
  %2 = load i8*, i8** %buffer2, align 4, !dbg !2224
  store i8* %2, i8** %begin, align 4, !dbg !2223
  br label %while.cond, !dbg !2225

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i8*, i8** %begin, align 4, !dbg !2226
  %4 = load i8, i8* %3, align 1, !dbg !2227
  %conv = zext i8 %4 to i32, !dbg !2227
  %call = call arm_aapcscc i32 @isspace(i32 %conv) #7, !dbg !2228
  %tobool3 = icmp ne i32 %call, 0, !dbg !2228
  br i1 %tobool3, label %while.body, label %while.end, !dbg !2225

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %begin, align 4, !dbg !2229
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1, !dbg !2229
  store i8* %incdec.ptr, i8** %begin, align 4, !dbg !2229
  br label %while.cond, !dbg !2225, !llvm.loop !2230

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %end, metadata !2231, metadata !DIExpression()), !dbg !2232
  %buffer4 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2233
  %6 = load i8*, i8** %buffer4, align 4, !dbg !2233
  %len5 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2234
  %7 = load i32, i32* %len5, align 4, !dbg !2234
  %add.ptr = getelementptr inbounds i8, i8* %6, i32 %7, !dbg !2235
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i32 -1, !dbg !2236
  store i8* %add.ptr6, i8** %end, align 4, !dbg !2232
  br label %while.cond7, !dbg !2237

while.cond7:                                      ; preds = %while.body12, %while.end
  %8 = load i8*, i8** %end, align 4, !dbg !2238
  %9 = load i8, i8* %8, align 1, !dbg !2239
  %conv8 = zext i8 %9 to i32, !dbg !2239
  %call9 = call arm_aapcscc i32 @isspace(i32 %conv8) #7, !dbg !2240
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2240
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !2241

land.rhs:                                         ; preds = %while.cond7
  %10 = load i8*, i8** %end, align 4, !dbg !2242
  %11 = load i8*, i8** %begin, align 4, !dbg !2243
  %cmp11 = icmp uge i8* %10, %11, !dbg !2244
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond7
  %12 = phi i1 [ false, %while.cond7 ], [ %cmp11, %land.rhs ], !dbg !2214
  br i1 %12, label %while.body12, label %while.end14, !dbg !2237

while.body12:                                     ; preds = %land.end
  %13 = load i8*, i8** %end, align 4, !dbg !2245
  %incdec.ptr13 = getelementptr inbounds i8, i8* %13, i32 -1, !dbg !2245
  store i8* %incdec.ptr13, i8** %end, align 4, !dbg !2245
  br label %while.cond7, !dbg !2237, !llvm.loop !2246

while.end14:                                      ; preds = %land.end
  %14 = load i8*, i8** %end, align 4, !dbg !2247
  %add.ptr15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !2248
  %15 = load i8*, i8** %begin, align 4, !dbg !2249
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr15 to i32, !dbg !2250
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i32, !dbg !2250
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2250
  %len16 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2251
  store i32 %sub.ptr.sub, i32* %len16, align 4, !dbg !2252
  %16 = load i8*, i8** %begin, align 4, !dbg !2253
  %buffer17 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2255
  %17 = load i8*, i8** %buffer17, align 4, !dbg !2255
  %cmp18 = icmp ugt i8* %16, %17, !dbg !2256
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !2257

if.then19:                                        ; preds = %while.end14
  %buffer20 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2258
  %18 = load i8*, i8** %buffer20, align 4, !dbg !2258
  %19 = load i8*, i8** %begin, align 4, !dbg !2259
  %len21 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2260
  %20 = load i32, i32* %len21, align 4, !dbg !2260
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %18, i8* align 1 %19, i32 %20, i1 false), !dbg !2261
  br label %if.end22, !dbg !2261

if.end22:                                         ; preds = %if.then19, %while.end14
  %buffer23 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2262
  %21 = load i8*, i8** %buffer23, align 4, !dbg !2262
  %len24 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 2, !dbg !2263
  %22 = load i32, i32* %len24, align 4, !dbg !2263
  %arrayidx = getelementptr inbounds i8, i8* %21, i32 %22, !dbg !2262
  store i8 0, i8* %arrayidx, align 1, !dbg !2264
  br label %return, !dbg !2265

return:                                           ; preds = %if.end22, %if.then
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN6String4trimEv, %return.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %23 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %23, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %24 = load i32, i32* %i, align 4
  %25 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %25, i32 %24
  %26 = load i8, i8* %arrayidx13, align 1
  %27 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %27
  store i8 %26, i8* %arrayidx2, align 1
  %28 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %28
  %29 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %29 to i32
  %xor = xor i32 %conv4, 133
  %conv45 = trunc i32 %xor to i8
  %30 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %30
  store i8 %conv45, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %31 = load i32, i32* %i, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %33 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %34 = phi i8* [ %33, %dec_end ]
  indirectbr i8* %33, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret void, !dbg !2265
}

; Function Attrs: nounwind readonly
declare dso_local arm_aapcscc i32 @isspace(i32) #4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZNK6String5toIntEv(%class.String* %this) #0 align 2 !dbg !2266 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2267, metadata !DIExpression()), !dbg !2268
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2269
  %0 = load i8*, i8** %buffer, align 4, !dbg !2269
  %tobool = icmp ne i8* %0, null, !dbg !2269
  br i1 %tobool, label %if.then, label %if.end, !dbg !2271

if.then:                                          ; preds = %entry
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2272
  %1 = load i8*, i8** %buffer2, align 4, !dbg !2272
  %call = call arm_aapcscc i32 @atol(i8* %1), !dbg !2273
  store i32 %call, i32* %retval, align 4, !dbg !2274
  br label %return, !dbg !2274

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2275
  br label %return, !dbg !2275

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !2276
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String5toIntEv, %return.RetBlock), i8** %ptr, align 4
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
  indirectbr i8* %13, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret i32 %2, !dbg !2276
}

declare dso_local arm_aapcscc i32 @atol(i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc float @_ZNK6String7toFloatEv(%class.String* %this) #0 align 2 !dbg !2277 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2278, metadata !DIExpression()), !dbg !2279
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %call = call arm_aapcscc double @_ZNK6String8toDoubleEv(%class.String* %this1), !dbg !2280
  %conv = fptrunc double %call to float, !dbg !2280
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String7toFloatEv, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %6 to i32
  %xor = xor i32 %conv1, 133
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
  ret float %conv, !dbg !2281
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc double @_ZNK6String8toDoubleEv(%class.String* %this) #0 align 2 !dbg !2282 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca double, align 8
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2283, metadata !DIExpression()), !dbg !2284
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %buffer = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2285
  %0 = load i8*, i8** %buffer, align 4, !dbg !2285
  %tobool = icmp ne i8* %0, null, !dbg !2285
  br i1 %tobool, label %if.then, label %if.end, !dbg !2287

if.then:                                          ; preds = %entry
  %buffer2 = getelementptr inbounds %class.String, %class.String* %this1, i32 0, i32 0, !dbg !2288
  %1 = load i8*, i8** %buffer2, align 4, !dbg !2288
  %call = call arm_aapcscc double @atof(i8* %1), !dbg !2289
  store double %call, double* %retval, align 8, !dbg !2290
  br label %return, !dbg !2290

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval, align 8, !dbg !2291
  br label %return, !dbg !2291

return:                                           ; preds = %if.end, %if.then
  %2 = load double, double* %retval, align 8, !dbg !2292
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String8toDoubleEv, %return.RetBlock), i8** %ptr, align 4
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
  indirectbr i8* %13, [label %return.RetBlock]

return.RetBlock:                                  ; preds = %dec_jmp
  ret double %2, !dbg !2292
}

declare dso_local arm_aapcscc double @atof(i8*) #2

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc void @_ZNK6String14StringIfHelperEv(%class.String* %this) #0 comdat align 2 !dbg !2293 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.String*, align 4
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !2294, metadata !DIExpression()), !dbg !2295
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZNK6String14StringIfHelperEv, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !2296
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!303}
!llvm.module.flags = !{!308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummy_writable_char", scope: !2, file: !3, line: 525, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !4, file: !3, line: 523, type: !225, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !224, retainedNodes: !305)
!3 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.cpp", directory: "/home/aaa")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !5, line: 45, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !6, identifier: "_ZTS6String")
!5 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.h", directory: "/home/aaa")
!6 = !{!7, !10, !12, !13, !18, !24, !28, !34, !38, !82, !85, !88, !91, !94, !97, !100, !103, !106, !109, !112, !115, !119, !122, !125, !128, !131, !134, !137, !140, !143, !146, !147, !150, !153, !156, !159, !162, !163, !164, !167, !170, !173, !176, !179, !182, !185, !188, !189, !194, !197, !200, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !216, !217, !220, !223, !224, !228, !232, !235, !238, !241, !242, !243, !244, !247, !250, !251, !254, !255, !256, !257, !258, !261, !264, !267, !270, !273, !276, !277, !278, !279, !282, !285, !288, !289, !290, !291, !294, !297, !300}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4, file: !5, line: 196, baseType: !8, size: 32, flags: DIFlagProtected)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !4, file: !5, line: 197, baseType: !11, size: 32, offset: 32, flags: DIFlagProtected)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4, file: !5, line: 198, baseType: !11, size: 32, offset: 64, flags: DIFlagProtected)
!13 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !4, file: !5, line: 51, type: !14, scopeLine: 51, flags: DIFlagPrototyped, spFlags: 0)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!18 = !DISubprogram(name: "String", scope: !4, file: !5, line: 59, type: !19, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!24 = !DISubprogram(name: "String", scope: !4, file: !5, line: 60, type: !25, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !21, !27}
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 32)
!28 = !DISubprogram(name: "String", scope: !4, file: !5, line: 61, type: !29, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !21, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !5, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!34 = !DISubprogram(name: "String", scope: !4, file: !5, line: 63, type: !35, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !21, !37}
!37 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !4, size: 32)
!38 = !DISubprogram(name: "String", scope: !4, file: !5, line: 64, type: !39, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !21, !41}
!41 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !42, size: 32)
!42 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "StringSumHelper", file: !5, line: 213, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !43, identifier: "_ZTS15StringSumHelper")
!43 = !{!44, !45, !49, !52, !55, !59, !63, !66, !70, !74, !78}
!44 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !42, baseType: !4, flags: DIFlagPublic, extraData: i32 0)
!45 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 216, type: !46, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !27}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!49 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 217, type: !50, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !48, !22}
!52 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 218, type: !53, scopeLine: 218, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !48, !9}
!55 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 219, type: !56, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !48, !58}
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 220, type: !60, scopeLine: 220, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !48, !62}
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 221, type: !64, scopeLine: 221, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !48, !11}
!66 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 222, type: !67, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !48, !69}
!69 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!70 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 223, type: !71, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !48, !73}
!73 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 224, type: !75, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !48, !77}
!77 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!78 = !DISubprogram(name: "StringSumHelper", scope: !42, file: !5, line: 225, type: !79, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !48, !81}
!81 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!82 = !DISubprogram(name: "String", scope: !4, file: !5, line: 66, type: !83, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !21, !9}
!85 = !DISubprogram(name: "String", scope: !4, file: !5, line: 67, type: !86, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !21, !58, !58}
!88 = !DISubprogram(name: "String", scope: !4, file: !5, line: 68, type: !89, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !21, !62, !58}
!91 = !DISubprogram(name: "String", scope: !4, file: !5, line: 69, type: !92, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !21, !11, !58}
!94 = !DISubprogram(name: "String", scope: !4, file: !5, line: 70, type: !95, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !21, !69, !58}
!97 = !DISubprogram(name: "String", scope: !4, file: !5, line: 71, type: !98, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !21, !73, !58}
!100 = !DISubprogram(name: "String", scope: !4, file: !5, line: 72, type: !101, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !21, !77, !58}
!103 = !DISubprogram(name: "String", scope: !4, file: !5, line: 73, type: !104, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !21, !81, !58}
!106 = !DISubprogram(name: "~String", scope: !4, file: !5, line: 74, type: !107, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !21}
!109 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !4, file: !5, line: 80, type: !110, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{!58, !21, !11}
!112 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !4, file: !5, line: 81, type: !113, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!11, !16}
!115 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !4, file: !5, line: 86, type: !116, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !21, !27}
!118 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 32)
!119 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !4, file: !5, line: 87, type: !120, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!118, !21, !22}
!122 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !4, file: !5, line: 88, type: !123, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{!118, !21, !31}
!125 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEOS_", scope: !4, file: !5, line: 90, type: !126, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{!118, !21, !37}
!128 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEO15StringSumHelper", scope: !4, file: !5, line: 91, type: !129, scopeLine: 91, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!129 = !DISubroutineType(types: !130)
!130 = !{!118, !21, !41}
!131 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !4, file: !5, line: 99, type: !132, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!58, !21, !27}
!134 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !4, file: !5, line: 100, type: !135, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!58, !21, !22}
!137 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !4, file: !5, line: 101, type: !138, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!138 = !DISubroutineType(types: !139)
!139 = !{!58, !21, !9}
!140 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !4, file: !5, line: 102, type: !141, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{!58, !21, !58}
!143 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !4, file: !5, line: 103, type: !144, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{!58, !21, !62}
!146 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !4, file: !5, line: 104, type: !110, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!147 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !4, file: !5, line: 105, type: !148, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!58, !21, !69}
!150 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !4, file: !5, line: 106, type: !151, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{!58, !21, !73}
!153 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !4, file: !5, line: 107, type: !154, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!58, !21, !77}
!156 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !4, file: !5, line: 108, type: !157, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!157 = !DISubroutineType(types: !158)
!158 = !{!58, !21, !81}
!159 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !4, file: !5, line: 109, type: !160, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!58, !21, !31}
!162 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !4, file: !5, line: 113, type: !116, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!163 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !4, file: !5, line: 114, type: !120, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!164 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !4, file: !5, line: 115, type: !165, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!118, !21, !9}
!167 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !4, file: !5, line: 116, type: !168, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!168 = !DISubroutineType(types: !169)
!169 = !{!118, !21, !58}
!170 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !4, file: !5, line: 117, type: !171, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!118, !21, !62}
!173 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !4, file: !5, line: 118, type: !174, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!118, !21, !11}
!176 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !4, file: !5, line: 119, type: !177, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!118, !21, !69}
!179 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !4, file: !5, line: 120, type: !180, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!118, !21, !73}
!182 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !4, file: !5, line: 121, type: !183, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!118, !21, !77}
!185 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !4, file: !5, line: 122, type: !186, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{!118, !21, !81}
!188 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !4, file: !5, line: 123, type: !123, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!189 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !4, file: !5, line: 138, type: !190, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !16}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !4, file: !5, line: 50, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !14, size: 64, extraData: !4)
!194 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !4, file: !5, line: 139, type: !195, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{!62, !16, !27}
!197 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !4, file: !5, line: 140, type: !198, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!58, !16, !27}
!200 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !4, file: !5, line: 141, type: !201, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!58, !16, !22}
!203 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !4, file: !5, line: 142, type: !198, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!204 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !4, file: !5, line: 143, type: !201, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!205 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !4, file: !5, line: 144, type: !198, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!206 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !4, file: !5, line: 145, type: !201, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!207 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !4, file: !5, line: 146, type: !198, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!208 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !4, file: !5, line: 147, type: !198, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!209 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !4, file: !5, line: 148, type: !198, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!210 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !4, file: !5, line: 149, type: !198, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!211 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !4, file: !5, line: 150, type: !198, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!212 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !4, file: !5, line: 151, type: !198, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!213 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !4, file: !5, line: 152, type: !214, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{!58, !16, !27, !11}
!216 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !4, file: !5, line: 153, type: !198, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!217 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !4, file: !5, line: 156, type: !218, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!9, !16, !11}
!220 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !4, file: !5, line: 157, type: !221, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !21, !11, !9}
!223 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !4, file: !5, line: 158, type: !218, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!224 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !4, file: !5, line: 159, type: !225, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !21, !11}
!227 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 32)
!228 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !4, file: !5, line: 160, type: !229, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !16, !231, !11, !11}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!232 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !4, file: !5, line: 161, type: !233, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !16, !8, !11, !11}
!235 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !4, file: !5, line: 163, type: !236, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!236 = !DISubroutineType(types: !237)
!237 = !{!22, !16}
!238 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !4, file: !5, line: 164, type: !239, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!8, !21}
!241 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !4, file: !5, line: 165, type: !239, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!242 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !4, file: !5, line: 166, type: !236, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!243 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !4, file: !5, line: 167, type: !236, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!244 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !4, file: !5, line: 170, type: !245, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!62, !16, !9}
!247 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !4, file: !5, line: 171, type: !248, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!62, !16, !9, !11}
!250 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !4, file: !5, line: 172, type: !195, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!251 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !4, file: !5, line: 173, type: !252, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!62, !16, !27, !11}
!254 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !4, file: !5, line: 174, type: !245, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!255 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !4, file: !5, line: 175, type: !248, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!256 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !4, file: !5, line: 176, type: !195, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!257 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !4, file: !5, line: 177, type: !252, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!258 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !4, file: !5, line: 178, type: !259, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{!4, !16, !11}
!261 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !4, file: !5, line: 179, type: !262, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!4, !16, !11, !11}
!264 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !4, file: !5, line: 182, type: !265, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !21, !9, !9}
!267 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !4, file: !5, line: 183, type: !268, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !21, !27, !27}
!270 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !4, file: !5, line: 184, type: !271, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !21, !11}
!273 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !4, file: !5, line: 185, type: !274, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !21, !11, !11}
!276 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !4, file: !5, line: 186, type: !107, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!277 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !4, file: !5, line: 187, type: !107, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!278 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !4, file: !5, line: 188, type: !107, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!279 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !4, file: !5, line: 191, type: !280, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!69, !16}
!282 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !4, file: !5, line: 192, type: !283, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{!77, !16}
!285 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !4, file: !5, line: 193, type: !286, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!81, !16}
!288 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !4, file: !5, line: 200, type: !107, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!289 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !4, file: !5, line: 201, type: !107, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!290 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !4, file: !5, line: 202, type: !110, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!291 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !4, file: !5, line: 203, type: !292, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!58, !21, !22, !11}
!294 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !4, file: !5, line: 206, type: !295, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!295 = !DISubroutineType(types: !296)
!296 = !{!118, !21, !22, !11}
!297 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !4, file: !5, line: 207, type: !298, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!118, !21, !31, !11}
!300 = !DISubprogram(name: "move", linkageName: "_ZN6String4moveERS_", scope: !4, file: !5, line: 209, type: !301, scopeLine: 209, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !21, !118}
!303 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !304, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !305, retainedTypes: !306, globals: !307, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.cpp", directory: "/home/aaa/llvm-arduino-due")
!305 = !{}
!306 = !{!8, !22, !231, !11, !77}
!307 = !{!0}
!308 = !{i32 7, !"Dwarf Version", i32 4}
!309 = !{i32 2, !"Debug Info Version", i32 3}
!310 = !{i32 1, !"wchar_size", i32 4}
!311 = !{i32 1, !"min_enum_size", i32 1}
!312 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!313 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2EPKc", scope: !4, file: !3, line: 30, type: !19, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !18, retainedNodes: !305)
!314 = !DILocalVariable(name: "this", arg: 1, scope: !313, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!316 = !DILocation(line: 0, scope: !313)
!317 = !DILocalVariable(name: "cstr", arg: 2, scope: !313, file: !3, line: 30, type: !22)
!318 = !DILocation(line: 30, column: 28, scope: !313)
!319 = !DILocation(line: 32, column: 2, scope: !320)
!320 = distinct !DILexicalBlock(scope: !313, file: !3, line: 31, column: 1)
!321 = !DILocation(line: 33, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !3, line: 33, column: 6)
!323 = !DILocation(line: 33, column: 6, scope: !320)
!324 = !DILocation(line: 33, column: 17, scope: !322)
!325 = !DILocation(line: 33, column: 30, scope: !322)
!326 = !DILocation(line: 33, column: 23, scope: !322)
!327 = !DILocation(line: 33, column: 12, scope: !322)
!328 = !DILocation(line: 34, column: 1, scope: !313)
!329 = distinct !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !4, file: !3, line: 133, type: !107, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !288, retainedNodes: !305)
!330 = !DILocalVariable(name: "this", arg: 1, scope: !329, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!331 = !DILocation(line: 0, scope: !329)
!332 = !DILocation(line: 135, column: 2, scope: !329)
!333 = !DILocation(line: 135, column: 9, scope: !329)
!334 = !DILocation(line: 136, column: 2, scope: !329)
!335 = !DILocation(line: 136, column: 11, scope: !329)
!336 = !DILocation(line: 137, column: 2, scope: !329)
!337 = !DILocation(line: 137, column: 6, scope: !329)
!338 = !DILocation(line: 138, column: 1, scope: !329)
!339 = distinct !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !4, file: !3, line: 172, type: !295, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !294, retainedNodes: !305)
!340 = !DILocalVariable(name: "this", arg: 1, scope: !339, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!341 = !DILocation(line: 0, scope: !339)
!342 = !DILocalVariable(name: "cstr", arg: 2, scope: !339, file: !3, line: 172, type: !22)
!343 = !DILocation(line: 172, column: 35, scope: !339)
!344 = !DILocalVariable(name: "length", arg: 3, scope: !339, file: !3, line: 172, type: !11)
!345 = !DILocation(line: 172, column: 54, scope: !339)
!346 = !DILocation(line: 174, column: 15, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !3, line: 174, column: 6)
!348 = !DILocation(line: 174, column: 7, scope: !347)
!349 = !DILocation(line: 174, column: 6, scope: !339)
!350 = !DILocation(line: 175, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !3, line: 174, column: 24)
!352 = !DILocation(line: 176, column: 3, scope: !351)
!353 = !DILocation(line: 178, column: 8, scope: !339)
!354 = !DILocation(line: 178, column: 2, scope: !339)
!355 = !DILocation(line: 178, column: 6, scope: !339)
!356 = !DILocation(line: 179, column: 9, scope: !339)
!357 = !DILocation(line: 179, column: 17, scope: !339)
!358 = !DILocation(line: 179, column: 2, scope: !339)
!359 = !DILocation(line: 180, column: 2, scope: !339)
!360 = !DILocation(line: 181, column: 1, scope: !339)
!361 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2ERKS_", scope: !4, file: !3, line: 36, type: !25, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !24, retainedNodes: !305)
!362 = !DILocalVariable(name: "this", arg: 1, scope: !361, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!363 = !DILocation(line: 0, scope: !361)
!364 = !DILocalVariable(name: "value", arg: 2, scope: !361, file: !3, line: 36, type: !27)
!365 = !DILocation(line: 36, column: 30, scope: !361)
!366 = !DILocation(line: 38, column: 2, scope: !367)
!367 = distinct !DILexicalBlock(scope: !361, file: !3, line: 37, column: 1)
!368 = !DILocation(line: 39, column: 10, scope: !367)
!369 = !DILocation(line: 39, column: 8, scope: !367)
!370 = !DILocation(line: 40, column: 1, scope: !361)
!371 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !4, file: !3, line: 216, type: !116, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !115, retainedNodes: !305)
!372 = !DILocalVariable(name: "this", arg: 1, scope: !371, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!373 = !DILocation(line: 0, scope: !371)
!374 = !DILocalVariable(name: "rhs", arg: 2, scope: !371, file: !3, line: 216, type: !27)
!375 = !DILocation(line: 216, column: 44, scope: !371)
!376 = !DILocation(line: 218, column: 15, scope: !377)
!377 = distinct !DILexicalBlock(scope: !371, file: !3, line: 218, column: 6)
!378 = !DILocation(line: 218, column: 11, scope: !377)
!379 = !DILocation(line: 218, column: 6, scope: !371)
!380 = !DILocation(line: 218, column: 20, scope: !377)
!381 = !DILocation(line: 220, column: 6, scope: !382)
!382 = distinct !DILexicalBlock(scope: !371, file: !3, line: 220, column: 6)
!383 = !DILocation(line: 220, column: 10, scope: !382)
!384 = !DILocation(line: 220, column: 6, scope: !371)
!385 = !DILocation(line: 220, column: 23, scope: !382)
!386 = !DILocation(line: 220, column: 27, scope: !382)
!387 = !DILocation(line: 220, column: 35, scope: !382)
!388 = !DILocation(line: 220, column: 39, scope: !382)
!389 = !DILocation(line: 220, column: 18, scope: !382)
!390 = !DILocation(line: 221, column: 7, scope: !382)
!391 = !DILocation(line: 223, column: 2, scope: !371)
!392 = !DILocation(line: 224, column: 1, scope: !371)
!393 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2EPK19__FlashStringHelper", scope: !4, file: !3, line: 42, type: !29, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !28, retainedNodes: !305)
!394 = !DILocalVariable(name: "this", arg: 1, scope: !393, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!395 = !DILocation(line: 0, scope: !393)
!396 = !DILocalVariable(name: "pstr", arg: 2, scope: !393, file: !3, line: 42, type: !31)
!397 = !DILocation(line: 42, column: 43, scope: !393)
!398 = !DILocation(line: 44, column: 2, scope: !399)
!399 = distinct !DILexicalBlock(scope: !393, file: !3, line: 43, column: 1)
!400 = !DILocation(line: 45, column: 10, scope: !399)
!401 = !DILocation(line: 45, column: 8, scope: !399)
!402 = !DILocation(line: 46, column: 1, scope: !393)
!403 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !4, file: !3, line: 248, type: !123, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !122, retainedNodes: !305)
!404 = !DILocalVariable(name: "this", arg: 1, scope: !403, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!405 = !DILocation(line: 0, scope: !403)
!406 = !DILocalVariable(name: "pstr", arg: 2, scope: !403, file: !3, line: 248, type: !31)
!407 = !DILocation(line: 248, column: 57, scope: !403)
!408 = !DILocation(line: 250, column: 6, scope: !409)
!409 = distinct !DILexicalBlock(scope: !403, file: !3, line: 250, column: 6)
!410 = !DILocation(line: 250, column: 6, scope: !403)
!411 = !DILocation(line: 250, column: 17, scope: !409)
!412 = !DILocation(line: 250, column: 23, scope: !409)
!413 = !DILocation(line: 250, column: 12, scope: !409)
!414 = !DILocation(line: 251, column: 7, scope: !409)
!415 = !DILocation(line: 253, column: 2, scope: !403)
!416 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2EOS_", scope: !4, file: !3, line: 49, type: !35, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !34, retainedNodes: !305)
!417 = !DILocalVariable(name: "this", arg: 1, scope: !416, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!418 = !DILocation(line: 0, scope: !416)
!419 = !DILocalVariable(name: "rval", arg: 2, scope: !416, file: !3, line: 49, type: !37)
!420 = !DILocation(line: 49, column: 25, scope: !416)
!421 = !DILocation(line: 51, column: 2, scope: !422)
!422 = distinct !DILexicalBlock(scope: !416, file: !3, line: 50, column: 1)
!423 = !DILocation(line: 52, column: 7, scope: !422)
!424 = !DILocation(line: 52, column: 2, scope: !422)
!425 = !DILocation(line: 53, column: 1, scope: !416)
!426 = distinct !DISubprogram(name: "move", linkageName: "_ZN6String4moveERS_", scope: !4, file: !3, line: 195, type: !301, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !300, retainedNodes: !305)
!427 = !DILocalVariable(name: "this", arg: 1, scope: !426, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!428 = !DILocation(line: 0, scope: !426)
!429 = !DILocalVariable(name: "rhs", arg: 2, scope: !426, file: !3, line: 195, type: !118)
!430 = !DILocation(line: 195, column: 27, scope: !426)
!431 = !DILocation(line: 197, column: 6, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !3, line: 197, column: 6)
!433 = !DILocation(line: 197, column: 6, scope: !426)
!434 = !DILocation(line: 198, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 198, column: 7)
!436 = distinct !DILexicalBlock(scope: !432, file: !3, line: 197, column: 14)
!437 = !DILocation(line: 198, column: 11, scope: !435)
!438 = !DILocation(line: 198, column: 14, scope: !435)
!439 = !DILocation(line: 198, column: 26, scope: !435)
!440 = !DILocation(line: 198, column: 30, scope: !435)
!441 = !DILocation(line: 198, column: 23, scope: !435)
!442 = !DILocation(line: 198, column: 7, scope: !436)
!443 = !DILocation(line: 199, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !435, file: !3, line: 198, column: 35)
!445 = !DILocation(line: 199, column: 19, scope: !444)
!446 = !DILocation(line: 199, column: 23, scope: !444)
!447 = !DILocation(line: 199, column: 4, scope: !444)
!448 = !DILocation(line: 200, column: 10, scope: !444)
!449 = !DILocation(line: 200, column: 14, scope: !444)
!450 = !DILocation(line: 200, column: 4, scope: !444)
!451 = !DILocation(line: 200, column: 8, scope: !444)
!452 = !DILocation(line: 201, column: 4, scope: !444)
!453 = !DILocation(line: 201, column: 8, scope: !444)
!454 = !DILocation(line: 201, column: 12, scope: !444)
!455 = !DILocation(line: 202, column: 4, scope: !444)
!456 = !DILocation(line: 204, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !435, file: !3, line: 203, column: 10)
!458 = !DILocation(line: 204, column: 4, scope: !457)
!459 = !DILocation(line: 206, column: 2, scope: !436)
!460 = !DILocation(line: 207, column: 11, scope: !426)
!461 = !DILocation(line: 207, column: 15, scope: !426)
!462 = !DILocation(line: 207, column: 2, scope: !426)
!463 = !DILocation(line: 207, column: 9, scope: !426)
!464 = !DILocation(line: 208, column: 13, scope: !426)
!465 = !DILocation(line: 208, column: 17, scope: !426)
!466 = !DILocation(line: 208, column: 2, scope: !426)
!467 = !DILocation(line: 208, column: 11, scope: !426)
!468 = !DILocation(line: 209, column: 8, scope: !426)
!469 = !DILocation(line: 209, column: 12, scope: !426)
!470 = !DILocation(line: 209, column: 2, scope: !426)
!471 = !DILocation(line: 209, column: 6, scope: !426)
!472 = !DILocation(line: 210, column: 2, scope: !426)
!473 = !DILocation(line: 210, column: 6, scope: !426)
!474 = !DILocation(line: 210, column: 13, scope: !426)
!475 = !DILocation(line: 211, column: 2, scope: !426)
!476 = !DILocation(line: 211, column: 6, scope: !426)
!477 = !DILocation(line: 211, column: 15, scope: !426)
!478 = !DILocation(line: 212, column: 2, scope: !426)
!479 = !DILocation(line: 212, column: 6, scope: !426)
!480 = !DILocation(line: 212, column: 10, scope: !426)
!481 = !DILocation(line: 213, column: 1, scope: !426)
!482 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2EO15StringSumHelper", scope: !4, file: !3, line: 54, type: !39, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !38, retainedNodes: !305)
!483 = !DILocalVariable(name: "this", arg: 1, scope: !482, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!484 = !DILocation(line: 0, scope: !482)
!485 = !DILocalVariable(name: "rval", arg: 2, scope: !482, file: !3, line: 54, type: !41)
!486 = !DILocation(line: 54, column: 34, scope: !482)
!487 = !DILocation(line: 56, column: 2, scope: !488)
!488 = distinct !DILexicalBlock(scope: !482, file: !3, line: 55, column: 1)
!489 = !DILocation(line: 57, column: 7, scope: !488)
!490 = !DILocation(line: 57, column: 2, scope: !488)
!491 = !DILocation(line: 58, column: 1, scope: !482)
!492 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Ec", scope: !4, file: !3, line: 61, type: !83, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !82, retainedNodes: !305)
!493 = !DILocalVariable(name: "this", arg: 1, scope: !492, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!494 = !DILocation(line: 0, scope: !492)
!495 = !DILocalVariable(name: "c", arg: 2, scope: !492, file: !3, line: 61, type: !9)
!496 = !DILocation(line: 61, column: 21, scope: !492)
!497 = !DILocation(line: 63, column: 2, scope: !498)
!498 = distinct !DILexicalBlock(scope: !492, file: !3, line: 62, column: 1)
!499 = !DILocalVariable(name: "buf", scope: !498, file: !3, line: 64, type: !500)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 2)
!503 = !DILocation(line: 64, column: 7, scope: !498)
!504 = !DILocation(line: 65, column: 11, scope: !498)
!505 = !DILocation(line: 65, column: 2, scope: !498)
!506 = !DILocation(line: 65, column: 9, scope: !498)
!507 = !DILocation(line: 66, column: 2, scope: !498)
!508 = !DILocation(line: 66, column: 9, scope: !498)
!509 = !DILocation(line: 67, column: 10, scope: !498)
!510 = !DILocation(line: 67, column: 8, scope: !498)
!511 = !DILocation(line: 68, column: 1, scope: !492)
!512 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !4, file: !3, line: 240, type: !120, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !119, retainedNodes: !305)
!513 = !DILocalVariable(name: "this", arg: 1, scope: !512, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!514 = !DILocation(line: 0, scope: !512)
!515 = !DILocalVariable(name: "cstr", arg: 2, scope: !512, file: !3, line: 240, type: !22)
!516 = !DILocation(line: 240, column: 42, scope: !512)
!517 = !DILocation(line: 242, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !512, file: !3, line: 242, column: 6)
!519 = !DILocation(line: 242, column: 6, scope: !512)
!520 = !DILocation(line: 242, column: 17, scope: !518)
!521 = !DILocation(line: 242, column: 30, scope: !518)
!522 = !DILocation(line: 242, column: 23, scope: !518)
!523 = !DILocation(line: 242, column: 12, scope: !518)
!524 = !DILocation(line: 243, column: 7, scope: !518)
!525 = !DILocation(line: 245, column: 2, scope: !512)
!526 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Ehh", scope: !4, file: !3, line: 70, type: !86, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !85, retainedNodes: !305)
!527 = !DILocalVariable(name: "this", arg: 1, scope: !526, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!528 = !DILocation(line: 0, scope: !526)
!529 = !DILocalVariable(name: "value", arg: 2, scope: !526, file: !3, line: 70, type: !58)
!530 = !DILocation(line: 70, column: 30, scope: !526)
!531 = !DILocalVariable(name: "base", arg: 3, scope: !526, file: !3, line: 70, type: !58)
!532 = !DILocation(line: 70, column: 51, scope: !526)
!533 = !DILocation(line: 72, column: 2, scope: !534)
!534 = distinct !DILexicalBlock(scope: !526, file: !3, line: 71, column: 1)
!535 = !DILocalVariable(name: "buf", scope: !534, file: !3, line: 73, type: !536)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 72, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 9)
!539 = !DILocation(line: 73, column: 7, scope: !534)
!540 = !DILocation(line: 74, column: 7, scope: !534)
!541 = !DILocation(line: 74, column: 14, scope: !534)
!542 = !DILocation(line: 74, column: 19, scope: !534)
!543 = !DILocation(line: 74, column: 2, scope: !534)
!544 = !DILocation(line: 75, column: 10, scope: !534)
!545 = !DILocation(line: 75, column: 8, scope: !534)
!546 = !DILocation(line: 76, column: 1, scope: !526)
!547 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Eih", scope: !4, file: !3, line: 78, type: !89, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !88, retainedNodes: !305)
!548 = !DILocalVariable(name: "this", arg: 1, scope: !547, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!549 = !DILocation(line: 0, scope: !547)
!550 = !DILocalVariable(name: "value", arg: 2, scope: !547, file: !3, line: 78, type: !62)
!551 = !DILocation(line: 78, column: 20, scope: !547)
!552 = !DILocalVariable(name: "base", arg: 3, scope: !547, file: !3, line: 78, type: !58)
!553 = !DILocation(line: 78, column: 41, scope: !547)
!554 = !DILocation(line: 80, column: 2, scope: !555)
!555 = distinct !DILexicalBlock(scope: !547, file: !3, line: 79, column: 1)
!556 = !DILocalVariable(name: "buf", scope: !555, file: !3, line: 81, type: !557)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 272, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 34)
!560 = !DILocation(line: 81, column: 7, scope: !555)
!561 = !DILocation(line: 82, column: 7, scope: !555)
!562 = !DILocation(line: 82, column: 14, scope: !555)
!563 = !DILocation(line: 82, column: 19, scope: !555)
!564 = !DILocation(line: 82, column: 2, scope: !555)
!565 = !DILocation(line: 83, column: 10, scope: !555)
!566 = !DILocation(line: 83, column: 8, scope: !555)
!567 = !DILocation(line: 84, column: 1, scope: !547)
!568 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Ejh", scope: !4, file: !3, line: 86, type: !92, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !91, retainedNodes: !305)
!569 = !DILocalVariable(name: "this", arg: 1, scope: !568, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!570 = !DILocation(line: 0, scope: !568)
!571 = !DILocalVariable(name: "value", arg: 2, scope: !568, file: !3, line: 86, type: !11)
!572 = !DILocation(line: 86, column: 29, scope: !568)
!573 = !DILocalVariable(name: "base", arg: 3, scope: !568, file: !3, line: 86, type: !58)
!574 = !DILocation(line: 86, column: 50, scope: !568)
!575 = !DILocation(line: 88, column: 2, scope: !576)
!576 = distinct !DILexicalBlock(scope: !568, file: !3, line: 87, column: 1)
!577 = !DILocalVariable(name: "buf", scope: !576, file: !3, line: 89, type: !578)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 264, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 33)
!581 = !DILocation(line: 89, column: 7, scope: !576)
!582 = !DILocation(line: 90, column: 7, scope: !576)
!583 = !DILocation(line: 90, column: 14, scope: !576)
!584 = !DILocation(line: 90, column: 19, scope: !576)
!585 = !DILocation(line: 90, column: 2, scope: !576)
!586 = !DILocation(line: 91, column: 10, scope: !576)
!587 = !DILocation(line: 91, column: 8, scope: !576)
!588 = !DILocation(line: 92, column: 1, scope: !568)
!589 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Elh", scope: !4, file: !3, line: 94, type: !95, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !94, retainedNodes: !305)
!590 = !DILocalVariable(name: "this", arg: 1, scope: !589, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!591 = !DILocation(line: 0, scope: !589)
!592 = !DILocalVariable(name: "value", arg: 2, scope: !589, file: !3, line: 94, type: !69)
!593 = !DILocation(line: 94, column: 21, scope: !589)
!594 = !DILocalVariable(name: "base", arg: 3, scope: !589, file: !3, line: 94, type: !58)
!595 = !DILocation(line: 94, column: 42, scope: !589)
!596 = !DILocation(line: 96, column: 2, scope: !597)
!597 = distinct !DILexicalBlock(scope: !589, file: !3, line: 95, column: 1)
!598 = !DILocalVariable(name: "buf", scope: !597, file: !3, line: 97, type: !557)
!599 = !DILocation(line: 97, column: 7, scope: !597)
!600 = !DILocation(line: 98, column: 7, scope: !597)
!601 = !DILocation(line: 98, column: 14, scope: !597)
!602 = !DILocation(line: 98, column: 19, scope: !597)
!603 = !DILocation(line: 98, column: 2, scope: !597)
!604 = !DILocation(line: 99, column: 10, scope: !597)
!605 = !DILocation(line: 99, column: 8, scope: !597)
!606 = !DILocation(line: 100, column: 1, scope: !589)
!607 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Emh", scope: !4, file: !3, line: 102, type: !98, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !97, retainedNodes: !305)
!608 = !DILocalVariable(name: "this", arg: 1, scope: !607, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!609 = !DILocation(line: 0, scope: !607)
!610 = !DILocalVariable(name: "value", arg: 2, scope: !607, file: !3, line: 102, type: !73)
!611 = !DILocation(line: 102, column: 30, scope: !607)
!612 = !DILocalVariable(name: "base", arg: 3, scope: !607, file: !3, line: 102, type: !58)
!613 = !DILocation(line: 102, column: 51, scope: !607)
!614 = !DILocation(line: 104, column: 2, scope: !615)
!615 = distinct !DILexicalBlock(scope: !607, file: !3, line: 103, column: 1)
!616 = !DILocalVariable(name: "buf", scope: !615, file: !3, line: 105, type: !578)
!617 = !DILocation(line: 105, column: 7, scope: !615)
!618 = !DILocation(line: 106, column: 8, scope: !615)
!619 = !DILocation(line: 106, column: 15, scope: !615)
!620 = !DILocation(line: 106, column: 20, scope: !615)
!621 = !DILocation(line: 106, column: 2, scope: !615)
!622 = !DILocation(line: 107, column: 10, scope: !615)
!623 = !DILocation(line: 107, column: 8, scope: !615)
!624 = !DILocation(line: 108, column: 1, scope: !607)
!625 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Efh", scope: !4, file: !3, line: 110, type: !101, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !100, retainedNodes: !305)
!626 = !DILocalVariable(name: "this", arg: 1, scope: !625, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!627 = !DILocation(line: 0, scope: !625)
!628 = !DILocalVariable(name: "value", arg: 2, scope: !625, file: !3, line: 110, type: !77)
!629 = !DILocation(line: 110, column: 22, scope: !625)
!630 = !DILocalVariable(name: "decimalPlaces", arg: 3, scope: !625, file: !3, line: 110, type: !58)
!631 = !DILocation(line: 110, column: 43, scope: !625)
!632 = !DILocation(line: 112, column: 2, scope: !633)
!633 = distinct !DILexicalBlock(scope: !625, file: !3, line: 111, column: 1)
!634 = !DILocalVariable(name: "buf", scope: !633, file: !3, line: 113, type: !578)
!635 = !DILocation(line: 113, column: 7, scope: !633)
!636 = !DILocation(line: 114, column: 18, scope: !633)
!637 = !DILocation(line: 114, column: 26, scope: !633)
!638 = !DILocation(line: 114, column: 40, scope: !633)
!639 = !DILocation(line: 114, column: 25, scope: !633)
!640 = !DILocation(line: 114, column: 46, scope: !633)
!641 = !DILocation(line: 114, column: 61, scope: !633)
!642 = !DILocation(line: 114, column: 10, scope: !633)
!643 = !DILocation(line: 114, column: 8, scope: !633)
!644 = !DILocation(line: 115, column: 1, scope: !625)
!645 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Edh", scope: !4, file: !3, line: 117, type: !104, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !103, retainedNodes: !305)
!646 = !DILocalVariable(name: "this", arg: 1, scope: !645, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!647 = !DILocation(line: 0, scope: !645)
!648 = !DILocalVariable(name: "value", arg: 2, scope: !645, file: !3, line: 117, type: !81)
!649 = !DILocation(line: 117, column: 23, scope: !645)
!650 = !DILocalVariable(name: "decimalPlaces", arg: 3, scope: !645, file: !3, line: 117, type: !58)
!651 = !DILocation(line: 117, column: 44, scope: !645)
!652 = !DILocation(line: 119, column: 2, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !3, line: 118, column: 1)
!654 = !DILocalVariable(name: "buf", scope: !653, file: !3, line: 120, type: !578)
!655 = !DILocation(line: 120, column: 7, scope: !653)
!656 = !DILocation(line: 121, column: 18, scope: !653)
!657 = !DILocation(line: 121, column: 26, scope: !653)
!658 = !DILocation(line: 121, column: 40, scope: !653)
!659 = !DILocation(line: 121, column: 25, scope: !653)
!660 = !DILocation(line: 121, column: 46, scope: !653)
!661 = !DILocation(line: 121, column: 61, scope: !653)
!662 = !DILocation(line: 121, column: 10, scope: !653)
!663 = !DILocation(line: 121, column: 8, scope: !653)
!664 = !DILocation(line: 122, column: 1, scope: !645)
!665 = distinct !DISubprogram(name: "~String", linkageName: "_ZN6StringD2Ev", scope: !4, file: !3, line: 124, type: !107, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !106, retainedNodes: !305)
!666 = !DILocalVariable(name: "this", arg: 1, scope: !665, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!667 = !DILocation(line: 0, scope: !665)
!668 = !DILocation(line: 126, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !3, line: 125, column: 1)
!670 = !DILocation(line: 126, column: 2, scope: !669)
!671 = !DILocation(line: 127, column: 1, scope: !665)
!672 = distinct !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !4, file: !3, line: 140, type: !107, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !289, retainedNodes: !305)
!673 = !DILocalVariable(name: "this", arg: 1, scope: !672, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!674 = !DILocation(line: 0, scope: !672)
!675 = !DILocation(line: 142, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !3, line: 142, column: 6)
!677 = !DILocation(line: 142, column: 6, scope: !672)
!678 = !DILocation(line: 142, column: 19, scope: !676)
!679 = !DILocation(line: 142, column: 14, scope: !676)
!680 = !DILocation(line: 143, column: 2, scope: !672)
!681 = !DILocation(line: 143, column: 9, scope: !672)
!682 = !DILocation(line: 144, column: 13, scope: !672)
!683 = !DILocation(line: 144, column: 17, scope: !672)
!684 = !DILocation(line: 144, column: 2, scope: !672)
!685 = !DILocation(line: 144, column: 11, scope: !672)
!686 = !DILocation(line: 145, column: 1, scope: !672)
!687 = distinct !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !4, file: !3, line: 147, type: !110, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !109, retainedNodes: !305)
!688 = !DILocalVariable(name: "this", arg: 1, scope: !687, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!689 = !DILocation(line: 0, scope: !687)
!690 = !DILocalVariable(name: "size", arg: 2, scope: !687, file: !3, line: 147, type: !11)
!691 = !DILocation(line: 147, column: 44, scope: !687)
!692 = !DILocation(line: 149, column: 6, scope: !693)
!693 = distinct !DILexicalBlock(scope: !687, file: !3, line: 149, column: 6)
!694 = !DILocation(line: 149, column: 13, scope: !693)
!695 = !DILocation(line: 149, column: 16, scope: !693)
!696 = !DILocation(line: 149, column: 28, scope: !693)
!697 = !DILocation(line: 149, column: 25, scope: !693)
!698 = !DILocation(line: 149, column: 6, scope: !687)
!699 = !DILocation(line: 149, column: 34, scope: !693)
!700 = !DILocation(line: 150, column: 19, scope: !701)
!701 = distinct !DILexicalBlock(scope: !687, file: !3, line: 150, column: 6)
!702 = !DILocation(line: 150, column: 6, scope: !701)
!703 = !DILocation(line: 150, column: 6, scope: !687)
!704 = !DILocation(line: 151, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 151, column: 7)
!706 = distinct !DILexicalBlock(scope: !701, file: !3, line: 150, column: 26)
!707 = !DILocation(line: 151, column: 11, scope: !705)
!708 = !DILocation(line: 151, column: 7, scope: !706)
!709 = !DILocation(line: 151, column: 17, scope: !705)
!710 = !DILocation(line: 151, column: 27, scope: !705)
!711 = !DILocation(line: 152, column: 3, scope: !706)
!712 = !DILocation(line: 154, column: 2, scope: !687)
!713 = !DILocation(line: 155, column: 1, scope: !687)
!714 = distinct !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !4, file: !3, line: 157, type: !110, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !290, retainedNodes: !305)
!715 = !DILocalVariable(name: "this", arg: 1, scope: !714, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!716 = !DILocation(line: 0, scope: !714)
!717 = !DILocalVariable(name: "maxStrLen", arg: 2, scope: !714, file: !3, line: 157, type: !11)
!718 = !DILocation(line: 157, column: 49, scope: !714)
!719 = !DILocalVariable(name: "newbuffer", scope: !714, file: !3, line: 159, type: !8)
!720 = !DILocation(line: 159, column: 8, scope: !714)
!721 = !DILocation(line: 159, column: 36, scope: !714)
!722 = !DILocation(line: 159, column: 44, scope: !714)
!723 = !DILocation(line: 159, column: 54, scope: !714)
!724 = !DILocation(line: 159, column: 28, scope: !714)
!725 = !DILocation(line: 160, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !714, file: !3, line: 160, column: 6)
!727 = !DILocation(line: 160, column: 6, scope: !714)
!728 = !DILocation(line: 161, column: 12, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !3, line: 160, column: 17)
!730 = !DILocation(line: 161, column: 3, scope: !729)
!731 = !DILocation(line: 161, column: 10, scope: !729)
!732 = !DILocation(line: 162, column: 14, scope: !729)
!733 = !DILocation(line: 162, column: 3, scope: !729)
!734 = !DILocation(line: 162, column: 12, scope: !729)
!735 = !DILocation(line: 163, column: 3, scope: !729)
!736 = !DILocation(line: 165, column: 2, scope: !714)
!737 = !DILocation(line: 166, column: 1, scope: !714)
!738 = distinct !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !4, file: !3, line: 183, type: !298, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !297, retainedNodes: !305)
!739 = !DILocalVariable(name: "this", arg: 1, scope: !738, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!740 = !DILocation(line: 0, scope: !738)
!741 = !DILocalVariable(name: "pstr", arg: 2, scope: !738, file: !3, line: 183, type: !31)
!742 = !DILocation(line: 183, column: 50, scope: !738)
!743 = !DILocalVariable(name: "length", arg: 3, scope: !738, file: !3, line: 183, type: !11)
!744 = !DILocation(line: 183, column: 69, scope: !738)
!745 = !DILocation(line: 185, column: 15, scope: !746)
!746 = distinct !DILexicalBlock(scope: !738, file: !3, line: 185, column: 6)
!747 = !DILocation(line: 185, column: 7, scope: !746)
!748 = !DILocation(line: 185, column: 6, scope: !738)
!749 = !DILocation(line: 186, column: 3, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !3, line: 185, column: 24)
!751 = !DILocation(line: 187, column: 3, scope: !750)
!752 = !DILocation(line: 189, column: 8, scope: !738)
!753 = !DILocation(line: 189, column: 2, scope: !738)
!754 = !DILocation(line: 189, column: 6, scope: !738)
!755 = !DILocation(line: 190, column: 2, scope: !738)
!756 = !DILocation(line: 191, column: 2, scope: !738)
!757 = !DILocation(line: 192, column: 1, scope: !738)
!758 = distinct !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !4, file: !5, line: 138, type: !190, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !189, retainedNodes: !305)
!759 = !DILocalVariable(name: "this", arg: 1, scope: !758, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!761 = !DILocation(line: 0, scope: !758)
!762 = !DILocation(line: 138, column: 47, scope: !758)
!763 = !DILocation(line: 138, column: 40, scope: !758)
!764 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEOS_", scope: !4, file: !3, line: 227, type: !126, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !125, retainedNodes: !305)
!765 = !DILocalVariable(name: "this", arg: 1, scope: !764, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!766 = !DILocation(line: 0, scope: !764)
!767 = !DILocalVariable(name: "rval", arg: 2, scope: !764, file: !3, line: 227, type: !37)
!768 = !DILocation(line: 227, column: 39, scope: !764)
!769 = !DILocation(line: 229, column: 15, scope: !770)
!770 = distinct !DILexicalBlock(scope: !764, file: !3, line: 229, column: 6)
!771 = !DILocation(line: 229, column: 11, scope: !770)
!772 = !DILocation(line: 229, column: 6, scope: !764)
!773 = !DILocation(line: 229, column: 26, scope: !770)
!774 = !DILocation(line: 229, column: 21, scope: !770)
!775 = !DILocation(line: 230, column: 2, scope: !764)
!776 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEO15StringSumHelper", scope: !4, file: !3, line: 233, type: !129, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !128, retainedNodes: !305)
!777 = !DILocalVariable(name: "this", arg: 1, scope: !776, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!778 = !DILocation(line: 0, scope: !776)
!779 = !DILocalVariable(name: "rval", arg: 2, scope: !776, file: !3, line: 233, type: !41)
!780 = !DILocation(line: 233, column: 48, scope: !776)
!781 = !DILocation(line: 235, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !776, file: !3, line: 235, column: 6)
!783 = !DILocation(line: 235, column: 14, scope: !782)
!784 = !DILocation(line: 235, column: 11, scope: !782)
!785 = !DILocation(line: 235, column: 6, scope: !776)
!786 = !DILocation(line: 235, column: 26, scope: !782)
!787 = !DILocation(line: 235, column: 21, scope: !782)
!788 = !DILocation(line: 236, column: 2, scope: !776)
!789 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !4, file: !3, line: 260, type: !132, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !131, retainedNodes: !305)
!790 = !DILocalVariable(name: "this", arg: 1, scope: !789, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!791 = !DILocation(line: 0, scope: !789)
!792 = !DILocalVariable(name: "s", arg: 2, scope: !789, file: !3, line: 260, type: !27)
!793 = !DILocation(line: 260, column: 44, scope: !789)
!794 = !DILocation(line: 262, column: 16, scope: !789)
!795 = !DILocation(line: 262, column: 18, scope: !789)
!796 = !DILocation(line: 262, column: 26, scope: !789)
!797 = !DILocation(line: 262, column: 28, scope: !789)
!798 = !DILocation(line: 262, column: 9, scope: !789)
!799 = !DILocation(line: 262, column: 2, scope: !789)
!800 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !4, file: !3, line: 265, type: !292, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !291, retainedNodes: !305)
!801 = !DILocalVariable(name: "this", arg: 1, scope: !800, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!802 = !DILocation(line: 0, scope: !800)
!803 = !DILocalVariable(name: "cstr", arg: 2, scope: !800, file: !3, line: 265, type: !22)
!804 = !DILocation(line: 265, column: 42, scope: !800)
!805 = !DILocalVariable(name: "length", arg: 3, scope: !800, file: !3, line: 265, type: !11)
!806 = !DILocation(line: 265, column: 61, scope: !800)
!807 = !DILocalVariable(name: "newlen", scope: !800, file: !3, line: 267, type: !11)
!808 = !DILocation(line: 267, column: 15, scope: !800)
!809 = !DILocation(line: 267, column: 24, scope: !800)
!810 = !DILocation(line: 267, column: 30, scope: !800)
!811 = !DILocation(line: 267, column: 28, scope: !800)
!812 = !DILocation(line: 268, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !800, file: !3, line: 268, column: 6)
!814 = !DILocation(line: 268, column: 6, scope: !800)
!815 = !DILocation(line: 268, column: 13, scope: !813)
!816 = !DILocation(line: 269, column: 6, scope: !817)
!817 = distinct !DILexicalBlock(scope: !800, file: !3, line: 269, column: 6)
!818 = !DILocation(line: 269, column: 13, scope: !817)
!819 = !DILocation(line: 269, column: 6, scope: !800)
!820 = !DILocation(line: 269, column: 19, scope: !817)
!821 = !DILocation(line: 270, column: 15, scope: !822)
!822 = distinct !DILexicalBlock(scope: !800, file: !3, line: 270, column: 6)
!823 = !DILocation(line: 270, column: 7, scope: !822)
!824 = !DILocation(line: 270, column: 6, scope: !800)
!825 = !DILocation(line: 270, column: 24, scope: !822)
!826 = !DILocation(line: 271, column: 9, scope: !800)
!827 = !DILocation(line: 271, column: 18, scope: !800)
!828 = !DILocation(line: 271, column: 16, scope: !800)
!829 = !DILocation(line: 271, column: 23, scope: !800)
!830 = !DILocation(line: 271, column: 2, scope: !800)
!831 = !DILocation(line: 272, column: 8, scope: !800)
!832 = !DILocation(line: 272, column: 2, scope: !800)
!833 = !DILocation(line: 272, column: 6, scope: !800)
!834 = !DILocation(line: 273, column: 2, scope: !800)
!835 = !DILocation(line: 274, column: 1, scope: !800)
!836 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !4, file: !3, line: 276, type: !135, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !134, retainedNodes: !305)
!837 = !DILocalVariable(name: "this", arg: 1, scope: !836, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!838 = !DILocation(line: 0, scope: !836)
!839 = !DILocalVariable(name: "cstr", arg: 2, scope: !836, file: !3, line: 276, type: !22)
!840 = !DILocation(line: 276, column: 42, scope: !836)
!841 = !DILocation(line: 278, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !836, file: !3, line: 278, column: 6)
!843 = !DILocation(line: 278, column: 6, scope: !836)
!844 = !DILocation(line: 278, column: 13, scope: !842)
!845 = !DILocation(line: 279, column: 16, scope: !836)
!846 = !DILocation(line: 279, column: 29, scope: !836)
!847 = !DILocation(line: 279, column: 22, scope: !836)
!848 = !DILocation(line: 279, column: 9, scope: !836)
!849 = !DILocation(line: 279, column: 2, scope: !836)
!850 = !DILocation(line: 280, column: 1, scope: !836)
!851 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !4, file: !3, line: 282, type: !138, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !137, retainedNodes: !305)
!852 = !DILocalVariable(name: "this", arg: 1, scope: !851, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!853 = !DILocation(line: 0, scope: !851)
!854 = !DILocalVariable(name: "c", arg: 2, scope: !851, file: !3, line: 282, type: !9)
!855 = !DILocation(line: 282, column: 35, scope: !851)
!856 = !DILocalVariable(name: "buf", scope: !851, file: !3, line: 284, type: !500)
!857 = !DILocation(line: 284, column: 7, scope: !851)
!858 = !DILocation(line: 285, column: 11, scope: !851)
!859 = !DILocation(line: 285, column: 2, scope: !851)
!860 = !DILocation(line: 285, column: 9, scope: !851)
!861 = !DILocation(line: 286, column: 2, scope: !851)
!862 = !DILocation(line: 286, column: 9, scope: !851)
!863 = !DILocation(line: 287, column: 16, scope: !851)
!864 = !DILocation(line: 287, column: 9, scope: !851)
!865 = !DILocation(line: 287, column: 2, scope: !851)
!866 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !4, file: !3, line: 290, type: !141, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !140, retainedNodes: !305)
!867 = !DILocalVariable(name: "this", arg: 1, scope: !866, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!868 = !DILocation(line: 0, scope: !866)
!869 = !DILocalVariable(name: "num", arg: 2, scope: !866, file: !3, line: 290, type: !58)
!870 = !DILocation(line: 290, column: 44, scope: !866)
!871 = !DILocalVariable(name: "buf", scope: !866, file: !3, line: 292, type: !872)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 4)
!875 = !DILocation(line: 292, column: 7, scope: !866)
!876 = !DILocation(line: 293, column: 7, scope: !866)
!877 = !DILocation(line: 293, column: 12, scope: !866)
!878 = !DILocation(line: 293, column: 2, scope: !866)
!879 = !DILocation(line: 294, column: 16, scope: !866)
!880 = !DILocation(line: 294, column: 28, scope: !866)
!881 = !DILocation(line: 294, column: 21, scope: !866)
!882 = !DILocation(line: 294, column: 9, scope: !866)
!883 = !DILocation(line: 294, column: 2, scope: !866)
!884 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !4, file: !3, line: 297, type: !144, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !143, retainedNodes: !305)
!885 = !DILocalVariable(name: "this", arg: 1, scope: !884, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!886 = !DILocation(line: 0, scope: !884)
!887 = !DILocalVariable(name: "num", arg: 2, scope: !884, file: !3, line: 297, type: !62)
!888 = !DILocation(line: 297, column: 34, scope: !884)
!889 = !DILocalVariable(name: "buf", scope: !884, file: !3, line: 299, type: !890)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 112, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 14)
!893 = !DILocation(line: 299, column: 7, scope: !884)
!894 = !DILocation(line: 300, column: 7, scope: !884)
!895 = !DILocation(line: 300, column: 12, scope: !884)
!896 = !DILocation(line: 300, column: 2, scope: !884)
!897 = !DILocation(line: 301, column: 16, scope: !884)
!898 = !DILocation(line: 301, column: 28, scope: !884)
!899 = !DILocation(line: 301, column: 21, scope: !884)
!900 = !DILocation(line: 301, column: 9, scope: !884)
!901 = !DILocation(line: 301, column: 2, scope: !884)
!902 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !4, file: !3, line: 304, type: !110, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !146, retainedNodes: !305)
!903 = !DILocalVariable(name: "this", arg: 1, scope: !902, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!904 = !DILocation(line: 0, scope: !902)
!905 = !DILocalVariable(name: "num", arg: 2, scope: !902, file: !3, line: 304, type: !11)
!906 = !DILocation(line: 304, column: 43, scope: !902)
!907 = !DILocalVariable(name: "buf", scope: !902, file: !3, line: 306, type: !908)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 104, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 13)
!911 = !DILocation(line: 306, column: 7, scope: !902)
!912 = !DILocation(line: 307, column: 7, scope: !902)
!913 = !DILocation(line: 307, column: 12, scope: !902)
!914 = !DILocation(line: 307, column: 2, scope: !902)
!915 = !DILocation(line: 308, column: 16, scope: !902)
!916 = !DILocation(line: 308, column: 28, scope: !902)
!917 = !DILocation(line: 308, column: 21, scope: !902)
!918 = !DILocation(line: 308, column: 9, scope: !902)
!919 = !DILocation(line: 308, column: 2, scope: !902)
!920 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !4, file: !3, line: 311, type: !148, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !147, retainedNodes: !305)
!921 = !DILocalVariable(name: "this", arg: 1, scope: !920, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!922 = !DILocation(line: 0, scope: !920)
!923 = !DILocalVariable(name: "num", arg: 2, scope: !920, file: !3, line: 311, type: !69)
!924 = !DILocation(line: 311, column: 35, scope: !920)
!925 = !DILocalVariable(name: "buf", scope: !920, file: !3, line: 313, type: !890)
!926 = !DILocation(line: 313, column: 7, scope: !920)
!927 = !DILocation(line: 314, column: 7, scope: !920)
!928 = !DILocation(line: 314, column: 12, scope: !920)
!929 = !DILocation(line: 314, column: 2, scope: !920)
!930 = !DILocation(line: 315, column: 16, scope: !920)
!931 = !DILocation(line: 315, column: 28, scope: !920)
!932 = !DILocation(line: 315, column: 21, scope: !920)
!933 = !DILocation(line: 315, column: 9, scope: !920)
!934 = !DILocation(line: 315, column: 2, scope: !920)
!935 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !4, file: !3, line: 318, type: !151, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !150, retainedNodes: !305)
!936 = !DILocalVariable(name: "this", arg: 1, scope: !935, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!937 = !DILocation(line: 0, scope: !935)
!938 = !DILocalVariable(name: "num", arg: 2, scope: !935, file: !3, line: 318, type: !73)
!939 = !DILocation(line: 318, column: 44, scope: !935)
!940 = !DILocalVariable(name: "buf", scope: !935, file: !3, line: 320, type: !908)
!941 = !DILocation(line: 320, column: 7, scope: !935)
!942 = !DILocation(line: 321, column: 8, scope: !935)
!943 = !DILocation(line: 321, column: 13, scope: !935)
!944 = !DILocation(line: 321, column: 2, scope: !935)
!945 = !DILocation(line: 322, column: 16, scope: !935)
!946 = !DILocation(line: 322, column: 28, scope: !935)
!947 = !DILocation(line: 322, column: 21, scope: !935)
!948 = !DILocation(line: 322, column: 9, scope: !935)
!949 = !DILocation(line: 322, column: 2, scope: !935)
!950 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !4, file: !3, line: 325, type: !154, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !153, retainedNodes: !305)
!951 = !DILocalVariable(name: "this", arg: 1, scope: !950, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!952 = !DILocation(line: 0, scope: !950)
!953 = !DILocalVariable(name: "num", arg: 2, scope: !950, file: !3, line: 325, type: !77)
!954 = !DILocation(line: 325, column: 36, scope: !950)
!955 = !DILocalVariable(name: "buf", scope: !950, file: !3, line: 327, type: !956)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 20)
!959 = !DILocation(line: 327, column: 7, scope: !950)
!960 = !DILocalVariable(name: "string", scope: !950, file: !3, line: 328, type: !8)
!961 = !DILocation(line: 328, column: 8, scope: !950)
!962 = !DILocation(line: 328, column: 25, scope: !950)
!963 = !DILocation(line: 328, column: 36, scope: !950)
!964 = !DILocation(line: 328, column: 17, scope: !950)
!965 = !DILocation(line: 329, column: 16, scope: !950)
!966 = !DILocation(line: 329, column: 31, scope: !950)
!967 = !DILocation(line: 329, column: 24, scope: !950)
!968 = !DILocation(line: 329, column: 9, scope: !950)
!969 = !DILocation(line: 329, column: 2, scope: !950)
!970 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !4, file: !3, line: 332, type: !157, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !156, retainedNodes: !305)
!971 = !DILocalVariable(name: "this", arg: 1, scope: !970, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!972 = !DILocation(line: 0, scope: !970)
!973 = !DILocalVariable(name: "num", arg: 2, scope: !970, file: !3, line: 332, type: !81)
!974 = !DILocation(line: 332, column: 37, scope: !970)
!975 = !DILocalVariable(name: "buf", scope: !970, file: !3, line: 334, type: !956)
!976 = !DILocation(line: 334, column: 7, scope: !970)
!977 = !DILocalVariable(name: "string", scope: !970, file: !3, line: 335, type: !8)
!978 = !DILocation(line: 335, column: 8, scope: !970)
!979 = !DILocation(line: 335, column: 25, scope: !970)
!980 = !DILocation(line: 335, column: 36, scope: !970)
!981 = !DILocation(line: 335, column: 17, scope: !970)
!982 = !DILocation(line: 336, column: 16, scope: !970)
!983 = !DILocation(line: 336, column: 31, scope: !970)
!984 = !DILocation(line: 336, column: 24, scope: !970)
!985 = !DILocation(line: 336, column: 9, scope: !970)
!986 = !DILocation(line: 336, column: 2, scope: !970)
!987 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !4, file: !3, line: 339, type: !160, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !159, retainedNodes: !305)
!988 = !DILocalVariable(name: "this", arg: 1, scope: !987, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!989 = !DILocation(line: 0, scope: !987)
!990 = !DILocalVariable(name: "str", arg: 2, scope: !987, file: !3, line: 339, type: !31)
!991 = !DILocation(line: 339, column: 58, scope: !987)
!992 = !DILocation(line: 341, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !987, file: !3, line: 341, column: 6)
!994 = !DILocation(line: 341, column: 6, scope: !987)
!995 = !DILocation(line: 341, column: 12, scope: !993)
!996 = !DILocalVariable(name: "length", scope: !987, file: !3, line: 342, type: !62)
!997 = !DILocation(line: 342, column: 6, scope: !987)
!998 = !DILocation(line: 342, column: 15, scope: !987)
!999 = !DILocation(line: 343, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !987, file: !3, line: 343, column: 6)
!1001 = !DILocation(line: 343, column: 13, scope: !1000)
!1002 = !DILocation(line: 343, column: 6, scope: !987)
!1003 = !DILocation(line: 343, column: 19, scope: !1000)
!1004 = !DILocalVariable(name: "newlen", scope: !987, file: !3, line: 344, type: !11)
!1005 = !DILocation(line: 344, column: 15, scope: !987)
!1006 = !DILocation(line: 344, column: 24, scope: !987)
!1007 = !DILocation(line: 344, column: 30, scope: !987)
!1008 = !DILocation(line: 344, column: 28, scope: !987)
!1009 = !DILocation(line: 345, column: 15, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !987, file: !3, line: 345, column: 6)
!1011 = !DILocation(line: 345, column: 7, scope: !1010)
!1012 = !DILocation(line: 345, column: 6, scope: !987)
!1013 = !DILocation(line: 345, column: 24, scope: !1010)
!1014 = !DILocation(line: 346, column: 2, scope: !987)
!1015 = !DILocation(line: 347, column: 8, scope: !987)
!1016 = !DILocation(line: 347, column: 2, scope: !987)
!1017 = !DILocation(line: 347, column: 6, scope: !987)
!1018 = !DILocation(line: 348, column: 2, scope: !987)
!1019 = !DILocation(line: 349, column: 1, scope: !987)
!1020 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperRK6String", scope: !3, file: !3, line: 355, type: !1021, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!1023, !1024, !27}
!1023 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !42, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1025, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1026 = !DILocalVariable(name: "lhs", arg: 1, scope: !1020, file: !3, line: 355, type: !1024)
!1027 = !DILocation(line: 355, column: 54, scope: !1020)
!1028 = !DILocalVariable(name: "rhs", arg: 2, scope: !1020, file: !3, line: 355, type: !27)
!1029 = !DILocation(line: 355, column: 73, scope: !1020)
!1030 = !DILocalVariable(name: "a", scope: !1020, file: !3, line: 357, type: !1023)
!1031 = !DILocation(line: 357, column: 19, scope: !1020)
!1032 = !DILocation(line: 357, column: 52, scope: !1020)
!1033 = !DILocation(line: 358, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 358, column: 6)
!1035 = !DILocation(line: 358, column: 16, scope: !1034)
!1036 = !DILocation(line: 358, column: 20, scope: !1034)
!1037 = !DILocation(line: 358, column: 28, scope: !1034)
!1038 = !DILocation(line: 358, column: 32, scope: !1034)
!1039 = !DILocation(line: 358, column: 9, scope: !1034)
!1040 = !DILocation(line: 358, column: 6, scope: !1020)
!1041 = !DILocation(line: 358, column: 38, scope: !1034)
!1042 = !DILocation(line: 358, column: 40, scope: !1034)
!1043 = !DILocation(line: 359, column: 9, scope: !1020)
!1044 = !DILocation(line: 359, column: 2, scope: !1020)
!1045 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperPKc", scope: !3, file: !3, line: 362, type: !1046, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!1023, !1024, !22}
!1048 = !DILocalVariable(name: "lhs", arg: 1, scope: !1045, file: !3, line: 362, type: !1024)
!1049 = !DILocation(line: 362, column: 54, scope: !1045)
!1050 = !DILocalVariable(name: "cstr", arg: 2, scope: !1045, file: !3, line: 362, type: !22)
!1051 = !DILocation(line: 362, column: 71, scope: !1045)
!1052 = !DILocalVariable(name: "a", scope: !1045, file: !3, line: 364, type: !1023)
!1053 = !DILocation(line: 364, column: 19, scope: !1045)
!1054 = !DILocation(line: 364, column: 52, scope: !1045)
!1055 = !DILocation(line: 365, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 365, column: 6)
!1057 = !DILocation(line: 365, column: 12, scope: !1056)
!1058 = !DILocation(line: 365, column: 16, scope: !1056)
!1059 = !DILocation(line: 365, column: 25, scope: !1056)
!1060 = !DILocation(line: 365, column: 38, scope: !1056)
!1061 = !DILocation(line: 365, column: 31, scope: !1056)
!1062 = !DILocation(line: 365, column: 18, scope: !1056)
!1063 = !DILocation(line: 365, column: 6, scope: !1045)
!1064 = !DILocation(line: 365, column: 46, scope: !1056)
!1065 = !DILocation(line: 365, column: 48, scope: !1056)
!1066 = !DILocation(line: 366, column: 9, scope: !1045)
!1067 = !DILocation(line: 366, column: 2, scope: !1045)
!1068 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperc", scope: !3, file: !3, line: 369, type: !1069, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1023, !1024, !9}
!1071 = !DILocalVariable(name: "lhs", arg: 1, scope: !1068, file: !3, line: 369, type: !1024)
!1072 = !DILocation(line: 369, column: 54, scope: !1068)
!1073 = !DILocalVariable(name: "c", arg: 2, scope: !1068, file: !3, line: 369, type: !9)
!1074 = !DILocation(line: 369, column: 64, scope: !1068)
!1075 = !DILocalVariable(name: "a", scope: !1068, file: !3, line: 371, type: !1023)
!1076 = !DILocation(line: 371, column: 19, scope: !1068)
!1077 = !DILocation(line: 371, column: 52, scope: !1068)
!1078 = !DILocation(line: 372, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 372, column: 6)
!1080 = !DILocation(line: 372, column: 16, scope: !1079)
!1081 = !DILocation(line: 372, column: 9, scope: !1079)
!1082 = !DILocation(line: 372, column: 6, scope: !1068)
!1083 = !DILocation(line: 372, column: 20, scope: !1079)
!1084 = !DILocation(line: 372, column: 22, scope: !1079)
!1085 = !DILocation(line: 373, column: 9, scope: !1068)
!1086 = !DILocation(line: 373, column: 2, scope: !1068)
!1087 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperh", scope: !3, file: !3, line: 376, type: !1088, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1023, !1024, !58}
!1090 = !DILocalVariable(name: "lhs", arg: 1, scope: !1087, file: !3, line: 376, type: !1024)
!1091 = !DILocation(line: 376, column: 54, scope: !1087)
!1092 = !DILocalVariable(name: "num", arg: 2, scope: !1087, file: !3, line: 376, type: !58)
!1093 = !DILocation(line: 376, column: 73, scope: !1087)
!1094 = !DILocalVariable(name: "a", scope: !1087, file: !3, line: 378, type: !1023)
!1095 = !DILocation(line: 378, column: 19, scope: !1087)
!1096 = !DILocation(line: 378, column: 52, scope: !1087)
!1097 = !DILocation(line: 379, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 379, column: 6)
!1099 = !DILocation(line: 379, column: 16, scope: !1098)
!1100 = !DILocation(line: 379, column: 9, scope: !1098)
!1101 = !DILocation(line: 379, column: 6, scope: !1087)
!1102 = !DILocation(line: 379, column: 22, scope: !1098)
!1103 = !DILocation(line: 379, column: 24, scope: !1098)
!1104 = !DILocation(line: 380, column: 9, scope: !1087)
!1105 = !DILocation(line: 380, column: 2, scope: !1087)
!1106 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperi", scope: !3, file: !3, line: 383, type: !1107, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1023, !1024, !62}
!1109 = !DILocalVariable(name: "lhs", arg: 1, scope: !1106, file: !3, line: 383, type: !1024)
!1110 = !DILocation(line: 383, column: 54, scope: !1106)
!1111 = !DILocalVariable(name: "num", arg: 2, scope: !1106, file: !3, line: 383, type: !62)
!1112 = !DILocation(line: 383, column: 63, scope: !1106)
!1113 = !DILocalVariable(name: "a", scope: !1106, file: !3, line: 385, type: !1023)
!1114 = !DILocation(line: 385, column: 19, scope: !1106)
!1115 = !DILocation(line: 385, column: 52, scope: !1106)
!1116 = !DILocation(line: 386, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 386, column: 6)
!1118 = !DILocation(line: 386, column: 16, scope: !1117)
!1119 = !DILocation(line: 386, column: 9, scope: !1117)
!1120 = !DILocation(line: 386, column: 6, scope: !1106)
!1121 = !DILocation(line: 386, column: 22, scope: !1117)
!1122 = !DILocation(line: 386, column: 24, scope: !1117)
!1123 = !DILocation(line: 387, column: 9, scope: !1106)
!1124 = !DILocation(line: 387, column: 2, scope: !1106)
!1125 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperj", scope: !3, file: !3, line: 390, type: !1126, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1023, !1024, !11}
!1128 = !DILocalVariable(name: "lhs", arg: 1, scope: !1125, file: !3, line: 390, type: !1024)
!1129 = !DILocation(line: 390, column: 54, scope: !1125)
!1130 = !DILocalVariable(name: "num", arg: 2, scope: !1125, file: !3, line: 390, type: !11)
!1131 = !DILocation(line: 390, column: 72, scope: !1125)
!1132 = !DILocalVariable(name: "a", scope: !1125, file: !3, line: 392, type: !1023)
!1133 = !DILocation(line: 392, column: 19, scope: !1125)
!1134 = !DILocation(line: 392, column: 52, scope: !1125)
!1135 = !DILocation(line: 393, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 393, column: 6)
!1137 = !DILocation(line: 393, column: 16, scope: !1136)
!1138 = !DILocation(line: 393, column: 9, scope: !1136)
!1139 = !DILocation(line: 393, column: 6, scope: !1125)
!1140 = !DILocation(line: 393, column: 22, scope: !1136)
!1141 = !DILocation(line: 393, column: 24, scope: !1136)
!1142 = !DILocation(line: 394, column: 9, scope: !1125)
!1143 = !DILocation(line: 394, column: 2, scope: !1125)
!1144 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperl", scope: !3, file: !3, line: 397, type: !1145, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1023, !1024, !69}
!1147 = !DILocalVariable(name: "lhs", arg: 1, scope: !1144, file: !3, line: 397, type: !1024)
!1148 = !DILocation(line: 397, column: 54, scope: !1144)
!1149 = !DILocalVariable(name: "num", arg: 2, scope: !1144, file: !3, line: 397, type: !69)
!1150 = !DILocation(line: 397, column: 64, scope: !1144)
!1151 = !DILocalVariable(name: "a", scope: !1144, file: !3, line: 399, type: !1023)
!1152 = !DILocation(line: 399, column: 19, scope: !1144)
!1153 = !DILocation(line: 399, column: 52, scope: !1144)
!1154 = !DILocation(line: 400, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 400, column: 6)
!1156 = !DILocation(line: 400, column: 16, scope: !1155)
!1157 = !DILocation(line: 400, column: 9, scope: !1155)
!1158 = !DILocation(line: 400, column: 6, scope: !1144)
!1159 = !DILocation(line: 400, column: 22, scope: !1155)
!1160 = !DILocation(line: 400, column: 24, scope: !1155)
!1161 = !DILocation(line: 401, column: 9, scope: !1144)
!1162 = !DILocation(line: 401, column: 2, scope: !1144)
!1163 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperm", scope: !3, file: !3, line: 404, type: !1164, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1023, !1024, !73}
!1166 = !DILocalVariable(name: "lhs", arg: 1, scope: !1163, file: !3, line: 404, type: !1024)
!1167 = !DILocation(line: 404, column: 54, scope: !1163)
!1168 = !DILocalVariable(name: "num", arg: 2, scope: !1163, file: !3, line: 404, type: !73)
!1169 = !DILocation(line: 404, column: 73, scope: !1163)
!1170 = !DILocalVariable(name: "a", scope: !1163, file: !3, line: 406, type: !1023)
!1171 = !DILocation(line: 406, column: 19, scope: !1163)
!1172 = !DILocation(line: 406, column: 52, scope: !1163)
!1173 = !DILocation(line: 407, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 407, column: 6)
!1175 = !DILocation(line: 407, column: 16, scope: !1174)
!1176 = !DILocation(line: 407, column: 9, scope: !1174)
!1177 = !DILocation(line: 407, column: 6, scope: !1163)
!1178 = !DILocation(line: 407, column: 22, scope: !1174)
!1179 = !DILocation(line: 407, column: 24, scope: !1174)
!1180 = !DILocation(line: 408, column: 9, scope: !1163)
!1181 = !DILocation(line: 408, column: 2, scope: !1163)
!1182 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperf", scope: !3, file: !3, line: 411, type: !1183, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!1023, !1024, !77}
!1185 = !DILocalVariable(name: "lhs", arg: 1, scope: !1182, file: !3, line: 411, type: !1024)
!1186 = !DILocation(line: 411, column: 54, scope: !1182)
!1187 = !DILocalVariable(name: "num", arg: 2, scope: !1182, file: !3, line: 411, type: !77)
!1188 = !DILocation(line: 411, column: 65, scope: !1182)
!1189 = !DILocalVariable(name: "a", scope: !1182, file: !3, line: 413, type: !1023)
!1190 = !DILocation(line: 413, column: 19, scope: !1182)
!1191 = !DILocation(line: 413, column: 52, scope: !1182)
!1192 = !DILocation(line: 414, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 414, column: 6)
!1194 = !DILocation(line: 414, column: 16, scope: !1193)
!1195 = !DILocation(line: 414, column: 9, scope: !1193)
!1196 = !DILocation(line: 414, column: 6, scope: !1182)
!1197 = !DILocation(line: 414, column: 22, scope: !1193)
!1198 = !DILocation(line: 414, column: 24, scope: !1193)
!1199 = !DILocation(line: 415, column: 9, scope: !1182)
!1200 = !DILocation(line: 415, column: 2, scope: !1182)
!1201 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperd", scope: !3, file: !3, line: 418, type: !1202, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!1023, !1024, !81}
!1204 = !DILocalVariable(name: "lhs", arg: 1, scope: !1201, file: !3, line: 418, type: !1024)
!1205 = !DILocation(line: 418, column: 54, scope: !1201)
!1206 = !DILocalVariable(name: "num", arg: 2, scope: !1201, file: !3, line: 418, type: !81)
!1207 = !DILocation(line: 418, column: 66, scope: !1201)
!1208 = !DILocalVariable(name: "a", scope: !1201, file: !3, line: 420, type: !1023)
!1209 = !DILocation(line: 420, column: 19, scope: !1201)
!1210 = !DILocation(line: 420, column: 52, scope: !1201)
!1211 = !DILocation(line: 421, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 421, column: 6)
!1213 = !DILocation(line: 421, column: 16, scope: !1212)
!1214 = !DILocation(line: 421, column: 9, scope: !1212)
!1215 = !DILocation(line: 421, column: 6, scope: !1201)
!1216 = !DILocation(line: 421, column: 22, scope: !1212)
!1217 = !DILocation(line: 421, column: 24, scope: !1212)
!1218 = !DILocation(line: 422, column: 9, scope: !1201)
!1219 = !DILocation(line: 422, column: 2, scope: !1201)
!1220 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperPK19__FlashStringHelper", scope: !3, file: !3, line: 425, type: !1221, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !305)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!1023, !1024, !31}
!1223 = !DILocalVariable(name: "lhs", arg: 1, scope: !1220, file: !3, line: 425, type: !1024)
!1224 = !DILocation(line: 425, column: 54, scope: !1220)
!1225 = !DILocalVariable(name: "rhs", arg: 2, scope: !1220, file: !3, line: 425, type: !31)
!1226 = !DILocation(line: 425, column: 86, scope: !1220)
!1227 = !DILocalVariable(name: "a", scope: !1220, file: !3, line: 427, type: !1023)
!1228 = !DILocation(line: 427, column: 19, scope: !1220)
!1229 = !DILocation(line: 427, column: 52, scope: !1220)
!1230 = !DILocation(line: 428, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 428, column: 6)
!1232 = !DILocation(line: 428, column: 16, scope: !1231)
!1233 = !DILocation(line: 428, column: 9, scope: !1231)
!1234 = !DILocation(line: 428, column: 6, scope: !1220)
!1235 = !DILocation(line: 428, column: 22, scope: !1231)
!1236 = !DILocation(line: 428, column: 24, scope: !1231)
!1237 = !DILocation(line: 429, column: 9, scope: !1220)
!1238 = !DILocation(line: 429, column: 2, scope: !1220)
!1239 = distinct !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !4, file: !3, line: 436, type: !195, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !194, retainedNodes: !305)
!1240 = !DILocalVariable(name: "this", arg: 1, scope: !1239, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1241 = !DILocation(line: 0, scope: !1239)
!1242 = !DILocalVariable(name: "s", arg: 2, scope: !1239, file: !3, line: 436, type: !27)
!1243 = !DILocation(line: 436, column: 37, scope: !1239)
!1244 = !DILocation(line: 438, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 438, column: 6)
!1246 = !DILocation(line: 438, column: 14, scope: !1245)
!1247 = !DILocation(line: 438, column: 18, scope: !1245)
!1248 = !DILocation(line: 438, column: 20, scope: !1245)
!1249 = !DILocation(line: 438, column: 6, scope: !1239)
!1250 = !DILocation(line: 439, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 439, column: 7)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 438, column: 28)
!1253 = !DILocation(line: 439, column: 9, scope: !1251)
!1254 = !DILocation(line: 439, column: 16, scope: !1251)
!1255 = !DILocation(line: 439, column: 19, scope: !1251)
!1256 = !DILocation(line: 439, column: 21, scope: !1251)
!1257 = !DILocation(line: 439, column: 25, scope: !1251)
!1258 = !DILocation(line: 439, column: 7, scope: !1252)
!1259 = !DILocation(line: 439, column: 59, scope: !1251)
!1260 = !DILocation(line: 439, column: 61, scope: !1251)
!1261 = !DILocation(line: 439, column: 41, scope: !1251)
!1262 = !DILocation(line: 439, column: 39, scope: !1251)
!1263 = !DILocation(line: 439, column: 30, scope: !1251)
!1264 = !DILocation(line: 440, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 440, column: 7)
!1266 = !DILocation(line: 440, column: 14, scope: !1265)
!1267 = !DILocation(line: 440, column: 17, scope: !1265)
!1268 = !DILocation(line: 440, column: 21, scope: !1265)
!1269 = !DILocation(line: 440, column: 7, scope: !1252)
!1270 = !DILocation(line: 440, column: 51, scope: !1265)
!1271 = !DILocation(line: 440, column: 33, scope: !1265)
!1272 = !DILocation(line: 440, column: 26, scope: !1265)
!1273 = !DILocation(line: 441, column: 3, scope: !1252)
!1274 = !DILocation(line: 443, column: 16, scope: !1239)
!1275 = !DILocation(line: 443, column: 24, scope: !1239)
!1276 = !DILocation(line: 443, column: 26, scope: !1239)
!1277 = !DILocation(line: 443, column: 9, scope: !1239)
!1278 = !DILocation(line: 443, column: 2, scope: !1239)
!1279 = !DILocation(line: 444, column: 1, scope: !1239)
!1280 = distinct !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !4, file: !3, line: 446, type: !198, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !197, retainedNodes: !305)
!1281 = !DILocalVariable(name: "this", arg: 1, scope: !1280, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1282 = !DILocation(line: 0, scope: !1280)
!1283 = !DILocalVariable(name: "s2", arg: 2, scope: !1280, file: !3, line: 446, type: !27)
!1284 = !DILocation(line: 446, column: 44, scope: !1280)
!1285 = !DILocation(line: 448, column: 10, scope: !1280)
!1286 = !DILocation(line: 448, column: 17, scope: !1280)
!1287 = !DILocation(line: 448, column: 20, scope: !1280)
!1288 = !DILocation(line: 448, column: 14, scope: !1280)
!1289 = !DILocation(line: 448, column: 24, scope: !1280)
!1290 = !DILocation(line: 448, column: 37, scope: !1280)
!1291 = !DILocation(line: 448, column: 27, scope: !1280)
!1292 = !DILocation(line: 448, column: 41, scope: !1280)
!1293 = !DILocation(line: 448, column: 9, scope: !1280)
!1294 = !DILocation(line: 448, column: 2, scope: !1280)
!1295 = distinct !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !4, file: !3, line: 451, type: !201, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !200, retainedNodes: !305)
!1296 = !DILocalVariable(name: "this", arg: 1, scope: !1295, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1297 = !DILocation(line: 0, scope: !1295)
!1298 = !DILocalVariable(name: "cstr", arg: 2, scope: !1295, file: !3, line: 451, type: !22)
!1299 = !DILocation(line: 451, column: 42, scope: !1295)
!1300 = !DILocation(line: 453, column: 6, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 453, column: 6)
!1302 = !DILocation(line: 453, column: 10, scope: !1301)
!1303 = !DILocation(line: 453, column: 6, scope: !1295)
!1304 = !DILocation(line: 453, column: 24, scope: !1301)
!1305 = !DILocation(line: 453, column: 29, scope: !1301)
!1306 = !DILocation(line: 453, column: 37, scope: !1301)
!1307 = !DILocation(line: 453, column: 41, scope: !1301)
!1308 = !DILocation(line: 453, column: 40, scope: !1301)
!1309 = !DILocation(line: 453, column: 46, scope: !1301)
!1310 = !DILocation(line: 453, column: 23, scope: !1301)
!1311 = !DILocation(line: 453, column: 16, scope: !1301)
!1312 = !DILocation(line: 454, column: 6, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 454, column: 6)
!1314 = !DILocation(line: 454, column: 11, scope: !1313)
!1315 = !DILocation(line: 454, column: 6, scope: !1295)
!1316 = !DILocation(line: 454, column: 27, scope: !1313)
!1317 = !DILocation(line: 454, column: 37, scope: !1313)
!1318 = !DILocation(line: 454, column: 20, scope: !1313)
!1319 = !DILocation(line: 455, column: 16, scope: !1295)
!1320 = !DILocation(line: 455, column: 24, scope: !1295)
!1321 = !DILocation(line: 455, column: 9, scope: !1295)
!1322 = !DILocation(line: 455, column: 30, scope: !1295)
!1323 = !DILocation(line: 455, column: 2, scope: !1295)
!1324 = !DILocation(line: 456, column: 1, scope: !1295)
!1325 = distinct !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !4, file: !3, line: 458, type: !198, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !207, retainedNodes: !305)
!1326 = !DILocalVariable(name: "this", arg: 1, scope: !1325, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1327 = !DILocation(line: 0, scope: !1325)
!1328 = !DILocalVariable(name: "rhs", arg: 2, scope: !1325, file: !3, line: 458, type: !27)
!1329 = !DILocation(line: 458, column: 47, scope: !1325)
!1330 = !DILocation(line: 460, column: 19, scope: !1325)
!1331 = !DILocation(line: 460, column: 9, scope: !1325)
!1332 = !DILocation(line: 460, column: 24, scope: !1325)
!1333 = !DILocation(line: 460, column: 2, scope: !1325)
!1334 = distinct !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !4, file: !3, line: 463, type: !198, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !208, retainedNodes: !305)
!1335 = !DILocalVariable(name: "this", arg: 1, scope: !1334, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1336 = !DILocation(line: 0, scope: !1334)
!1337 = !DILocalVariable(name: "rhs", arg: 2, scope: !1334, file: !3, line: 463, type: !27)
!1338 = !DILocation(line: 463, column: 47, scope: !1334)
!1339 = !DILocation(line: 465, column: 19, scope: !1334)
!1340 = !DILocation(line: 465, column: 9, scope: !1334)
!1341 = !DILocation(line: 465, column: 24, scope: !1334)
!1342 = !DILocation(line: 465, column: 2, scope: !1334)
!1343 = distinct !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !4, file: !3, line: 468, type: !198, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !209, retainedNodes: !305)
!1344 = !DILocalVariable(name: "this", arg: 1, scope: !1343, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1345 = !DILocation(line: 0, scope: !1343)
!1346 = !DILocalVariable(name: "rhs", arg: 2, scope: !1343, file: !3, line: 468, type: !27)
!1347 = !DILocation(line: 468, column: 48, scope: !1343)
!1348 = !DILocation(line: 470, column: 19, scope: !1343)
!1349 = !DILocation(line: 470, column: 9, scope: !1343)
!1350 = !DILocation(line: 470, column: 24, scope: !1343)
!1351 = !DILocation(line: 470, column: 2, scope: !1343)
!1352 = distinct !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !4, file: !3, line: 473, type: !198, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !210, retainedNodes: !305)
!1353 = !DILocalVariable(name: "this", arg: 1, scope: !1352, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1354 = !DILocation(line: 0, scope: !1352)
!1355 = !DILocalVariable(name: "rhs", arg: 2, scope: !1352, file: !3, line: 473, type: !27)
!1356 = !DILocation(line: 473, column: 48, scope: !1352)
!1357 = !DILocation(line: 475, column: 19, scope: !1352)
!1358 = !DILocation(line: 475, column: 9, scope: !1352)
!1359 = !DILocation(line: 475, column: 24, scope: !1352)
!1360 = !DILocation(line: 475, column: 2, scope: !1352)
!1361 = distinct !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !4, file: !3, line: 478, type: !198, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !211, retainedNodes: !305)
!1362 = !DILocalVariable(name: "this", arg: 1, scope: !1361, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1363 = !DILocation(line: 0, scope: !1361)
!1364 = !DILocalVariable(name: "s2", arg: 2, scope: !1361, file: !3, line: 478, type: !27)
!1365 = !DILocation(line: 478, column: 55, scope: !1361)
!1366 = !DILocation(line: 480, column: 15, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 480, column: 6)
!1368 = !DILocation(line: 480, column: 11, scope: !1367)
!1369 = !DILocation(line: 480, column: 6, scope: !1361)
!1370 = !DILocation(line: 480, column: 19, scope: !1367)
!1371 = !DILocation(line: 481, column: 6, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 481, column: 6)
!1373 = !DILocation(line: 481, column: 13, scope: !1372)
!1374 = !DILocation(line: 481, column: 16, scope: !1372)
!1375 = !DILocation(line: 481, column: 10, scope: !1372)
!1376 = !DILocation(line: 481, column: 6, scope: !1361)
!1377 = !DILocation(line: 481, column: 21, scope: !1372)
!1378 = !DILocation(line: 482, column: 6, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 482, column: 6)
!1380 = !DILocation(line: 482, column: 10, scope: !1379)
!1381 = !DILocation(line: 482, column: 6, scope: !1361)
!1382 = !DILocation(line: 482, column: 16, scope: !1379)
!1383 = !DILocalVariable(name: "p1", scope: !1361, file: !3, line: 483, type: !22)
!1384 = !DILocation(line: 483, column: 14, scope: !1361)
!1385 = !DILocation(line: 483, column: 19, scope: !1361)
!1386 = !DILocalVariable(name: "p2", scope: !1361, file: !3, line: 484, type: !22)
!1387 = !DILocation(line: 484, column: 14, scope: !1361)
!1388 = !DILocation(line: 484, column: 19, scope: !1361)
!1389 = !DILocation(line: 484, column: 22, scope: !1361)
!1390 = !DILocation(line: 485, column: 2, scope: !1361)
!1391 = !DILocation(line: 485, column: 10, scope: !1361)
!1392 = !DILocation(line: 485, column: 9, scope: !1361)
!1393 = !DILocation(line: 486, column: 18, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 486, column: 7)
!1395 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 485, column: 14)
!1396 = !DILocation(line: 486, column: 15, scope: !1394)
!1397 = !DILocation(line: 486, column: 7, scope: !1394)
!1398 = !DILocation(line: 486, column: 36, scope: !1394)
!1399 = !DILocation(line: 486, column: 33, scope: !1394)
!1400 = !DILocation(line: 486, column: 25, scope: !1394)
!1401 = !DILocation(line: 486, column: 22, scope: !1394)
!1402 = !DILocation(line: 486, column: 7, scope: !1395)
!1403 = !DILocation(line: 486, column: 41, scope: !1394)
!1404 = distinct !{!1404, !1390, !1405}
!1405 = !DILocation(line: 487, column: 2, scope: !1361)
!1406 = !DILocation(line: 488, column: 2, scope: !1361)
!1407 = !DILocation(line: 489, column: 1, scope: !1361)
!1408 = distinct !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !4, file: !3, line: 491, type: !198, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !212, retainedNodes: !305)
!1409 = !DILocalVariable(name: "this", arg: 1, scope: !1408, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1410 = !DILocation(line: 0, scope: !1408)
!1411 = !DILocalVariable(name: "s2", arg: 2, scope: !1408, file: !3, line: 491, type: !27)
!1412 = !DILocation(line: 491, column: 49, scope: !1408)
!1413 = !DILocation(line: 493, column: 6, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 493, column: 6)
!1415 = !DILocation(line: 493, column: 12, scope: !1414)
!1416 = !DILocation(line: 493, column: 15, scope: !1414)
!1417 = !DILocation(line: 493, column: 10, scope: !1414)
!1418 = !DILocation(line: 493, column: 6, scope: !1408)
!1419 = !DILocation(line: 493, column: 20, scope: !1414)
!1420 = !DILocation(line: 494, column: 20, scope: !1408)
!1421 = !DILocation(line: 494, column: 9, scope: !1408)
!1422 = !DILocation(line: 494, column: 2, scope: !1408)
!1423 = !DILocation(line: 495, column: 1, scope: !1408)
!1424 = distinct !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !4, file: !3, line: 497, type: !214, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !213, retainedNodes: !305)
!1425 = !DILocalVariable(name: "this", arg: 1, scope: !1424, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1426 = !DILocation(line: 0, scope: !1424)
!1427 = !DILocalVariable(name: "s2", arg: 2, scope: !1424, file: !3, line: 497, type: !27)
!1428 = !DILocation(line: 497, column: 49, scope: !1424)
!1429 = !DILocalVariable(name: "offset", arg: 3, scope: !1424, file: !3, line: 497, type: !11)
!1430 = !DILocation(line: 497, column: 66, scope: !1424)
!1431 = !DILocation(line: 499, column: 6, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 499, column: 6)
!1433 = !DILocation(line: 499, column: 15, scope: !1432)
!1434 = !DILocation(line: 499, column: 21, scope: !1432)
!1435 = !DILocation(line: 499, column: 24, scope: !1432)
!1436 = !DILocation(line: 499, column: 19, scope: !1432)
!1437 = !DILocation(line: 499, column: 13, scope: !1432)
!1438 = !DILocation(line: 499, column: 28, scope: !1432)
!1439 = !DILocation(line: 499, column: 32, scope: !1432)
!1440 = !DILocation(line: 499, column: 39, scope: !1432)
!1441 = !DILocation(line: 499, column: 43, scope: !1432)
!1442 = !DILocation(line: 499, column: 46, scope: !1432)
!1443 = !DILocation(line: 499, column: 6, scope: !1424)
!1444 = !DILocation(line: 499, column: 54, scope: !1432)
!1445 = !DILocation(line: 500, column: 19, scope: !1424)
!1446 = !DILocation(line: 500, column: 26, scope: !1424)
!1447 = !DILocation(line: 500, column: 35, scope: !1424)
!1448 = !DILocation(line: 500, column: 38, scope: !1424)
!1449 = !DILocation(line: 500, column: 46, scope: !1424)
!1450 = !DILocation(line: 500, column: 49, scope: !1424)
!1451 = !DILocation(line: 500, column: 9, scope: !1424)
!1452 = !DILocation(line: 500, column: 55, scope: !1424)
!1453 = !DILocation(line: 500, column: 2, scope: !1424)
!1454 = !DILocation(line: 501, column: 1, scope: !1424)
!1455 = distinct !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !4, file: !3, line: 503, type: !198, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !216, retainedNodes: !305)
!1456 = !DILocalVariable(name: "this", arg: 1, scope: !1455, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1457 = !DILocation(line: 0, scope: !1455)
!1458 = !DILocalVariable(name: "s2", arg: 2, scope: !1455, file: !3, line: 503, type: !27)
!1459 = !DILocation(line: 503, column: 47, scope: !1455)
!1460 = !DILocation(line: 505, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 505, column: 7)
!1462 = !DILocation(line: 505, column: 13, scope: !1461)
!1463 = !DILocation(line: 505, column: 16, scope: !1461)
!1464 = !DILocation(line: 505, column: 11, scope: !1461)
!1465 = !DILocation(line: 505, column: 20, scope: !1461)
!1466 = !DILocation(line: 505, column: 24, scope: !1461)
!1467 = !DILocation(line: 505, column: 31, scope: !1461)
!1468 = !DILocation(line: 505, column: 35, scope: !1461)
!1469 = !DILocation(line: 505, column: 38, scope: !1461)
!1470 = !DILocation(line: 505, column: 7, scope: !1455)
!1471 = !DILocation(line: 505, column: 46, scope: !1461)
!1472 = !DILocation(line: 506, column: 17, scope: !1455)
!1473 = !DILocation(line: 506, column: 24, scope: !1455)
!1474 = !DILocation(line: 506, column: 30, scope: !1455)
!1475 = !DILocation(line: 506, column: 33, scope: !1455)
!1476 = !DILocation(line: 506, column: 28, scope: !1455)
!1477 = !DILocation(line: 506, column: 39, scope: !1455)
!1478 = !DILocation(line: 506, column: 42, scope: !1455)
!1479 = !DILocation(line: 506, column: 9, scope: !1455)
!1480 = !DILocation(line: 506, column: 50, scope: !1455)
!1481 = !DILocation(line: 506, column: 2, scope: !1455)
!1482 = !DILocation(line: 507, column: 1, scope: !1455)
!1483 = distinct !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !4, file: !3, line: 513, type: !218, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !217, retainedNodes: !305)
!1484 = !DILocalVariable(name: "this", arg: 1, scope: !1483, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1485 = !DILocation(line: 0, scope: !1483)
!1486 = !DILocalVariable(name: "loc", arg: 2, scope: !1483, file: !3, line: 513, type: !11)
!1487 = !DILocation(line: 513, column: 34, scope: !1483)
!1488 = !DILocation(line: 515, column: 20, scope: !1483)
!1489 = !DILocation(line: 515, column: 9, scope: !1483)
!1490 = !DILocation(line: 515, column: 2, scope: !1483)
!1491 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !4, file: !3, line: 533, type: !218, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !223, retainedNodes: !305)
!1492 = !DILocalVariable(name: "this", arg: 1, scope: !1491, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1493 = !DILocation(line: 0, scope: !1491)
!1494 = !DILocalVariable(name: "index", arg: 2, scope: !1491, file: !3, line: 533, type: !11)
!1495 = !DILocation(line: 533, column: 39, scope: !1491)
!1496 = !DILocation(line: 535, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 535, column: 6)
!1498 = !DILocation(line: 535, column: 15, scope: !1497)
!1499 = !DILocation(line: 535, column: 12, scope: !1497)
!1500 = !DILocation(line: 535, column: 19, scope: !1497)
!1501 = !DILocation(line: 535, column: 23, scope: !1497)
!1502 = !DILocation(line: 535, column: 6, scope: !1491)
!1503 = !DILocation(line: 535, column: 31, scope: !1497)
!1504 = !DILocation(line: 536, column: 9, scope: !1491)
!1505 = !DILocation(line: 536, column: 16, scope: !1491)
!1506 = !DILocation(line: 536, column: 2, scope: !1491)
!1507 = !DILocation(line: 537, column: 1, scope: !1491)
!1508 = distinct !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !4, file: !3, line: 518, type: !221, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !220, retainedNodes: !305)
!1509 = !DILocalVariable(name: "this", arg: 1, scope: !1508, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!1510 = !DILocation(line: 0, scope: !1508)
!1511 = !DILocalVariable(name: "loc", arg: 2, scope: !1508, file: !3, line: 518, type: !11)
!1512 = !DILocation(line: 518, column: 37, scope: !1508)
!1513 = !DILocalVariable(name: "c", arg: 3, scope: !1508, file: !3, line: 518, type: !9)
!1514 = !DILocation(line: 518, column: 47, scope: !1508)
!1515 = !DILocation(line: 520, column: 6, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 520, column: 6)
!1517 = !DILocation(line: 520, column: 12, scope: !1516)
!1518 = !DILocation(line: 520, column: 10, scope: !1516)
!1519 = !DILocation(line: 520, column: 6, scope: !1508)
!1520 = !DILocation(line: 520, column: 31, scope: !1516)
!1521 = !DILocation(line: 520, column: 17, scope: !1516)
!1522 = !DILocation(line: 520, column: 24, scope: !1516)
!1523 = !DILocation(line: 520, column: 29, scope: !1516)
!1524 = !DILocation(line: 521, column: 1, scope: !1508)
!1525 = !DILocalVariable(name: "this", arg: 1, scope: !2, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!1526 = !DILocation(line: 0, scope: !2)
!1527 = !DILocalVariable(name: "index", arg: 2, scope: !2, file: !3, line: 523, type: !11)
!1528 = !DILocation(line: 523, column: 40, scope: !2)
!1529 = !DILocation(line: 526, column: 6, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !2, file: !3, line: 526, column: 6)
!1531 = !DILocation(line: 526, column: 15, scope: !1530)
!1532 = !DILocation(line: 526, column: 12, scope: !1530)
!1533 = !DILocation(line: 526, column: 19, scope: !1530)
!1534 = !DILocation(line: 526, column: 23, scope: !1530)
!1535 = !DILocation(line: 526, column: 6, scope: !2)
!1536 = !DILocation(line: 527, column: 23, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 526, column: 31)
!1538 = !DILocation(line: 528, column: 3, scope: !1537)
!1539 = !DILocation(line: 530, column: 9, scope: !2)
!1540 = !DILocation(line: 530, column: 16, scope: !2)
!1541 = !DILocation(line: 530, column: 2, scope: !2)
!1542 = !DILocation(line: 531, column: 1, scope: !2)
!1543 = distinct !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !4, file: !3, line: 539, type: !229, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !228, retainedNodes: !305)
!1544 = !DILocalVariable(name: "this", arg: 1, scope: !1543, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1545 = !DILocation(line: 0, scope: !1543)
!1546 = !DILocalVariable(name: "buf", arg: 2, scope: !1543, file: !3, line: 539, type: !231)
!1547 = !DILocation(line: 539, column: 38, scope: !1543)
!1548 = !DILocalVariable(name: "bufsize", arg: 3, scope: !1543, file: !3, line: 539, type: !11)
!1549 = !DILocation(line: 539, column: 56, scope: !1543)
!1550 = !DILocalVariable(name: "index", arg: 4, scope: !1543, file: !3, line: 539, type: !11)
!1551 = !DILocation(line: 539, column: 78, scope: !1543)
!1552 = !DILocation(line: 541, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 541, column: 6)
!1554 = !DILocation(line: 541, column: 15, scope: !1553)
!1555 = !DILocation(line: 541, column: 19, scope: !1553)
!1556 = !DILocation(line: 541, column: 6, scope: !1543)
!1557 = !DILocation(line: 541, column: 24, scope: !1553)
!1558 = !DILocation(line: 542, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 542, column: 6)
!1560 = !DILocation(line: 542, column: 15, scope: !1559)
!1561 = !DILocation(line: 542, column: 12, scope: !1559)
!1562 = !DILocation(line: 542, column: 6, scope: !1543)
!1563 = !DILocation(line: 543, column: 3, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 542, column: 20)
!1565 = !DILocation(line: 543, column: 10, scope: !1564)
!1566 = !DILocation(line: 544, column: 3, scope: !1564)
!1567 = !DILocalVariable(name: "n", scope: !1543, file: !3, line: 546, type: !11)
!1568 = !DILocation(line: 546, column: 15, scope: !1543)
!1569 = !DILocation(line: 546, column: 19, scope: !1543)
!1570 = !DILocation(line: 546, column: 27, scope: !1543)
!1571 = !DILocation(line: 547, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 547, column: 6)
!1573 = !DILocation(line: 547, column: 10, scope: !1572)
!1574 = !DILocation(line: 547, column: 16, scope: !1572)
!1575 = !DILocation(line: 547, column: 14, scope: !1572)
!1576 = !DILocation(line: 547, column: 8, scope: !1572)
!1577 = !DILocation(line: 547, column: 6, scope: !1543)
!1578 = !DILocation(line: 547, column: 27, scope: !1572)
!1579 = !DILocation(line: 547, column: 33, scope: !1572)
!1580 = !DILocation(line: 547, column: 31, scope: !1572)
!1581 = !DILocation(line: 547, column: 25, scope: !1572)
!1582 = !DILocation(line: 547, column: 23, scope: !1572)
!1583 = !DILocation(line: 548, column: 18, scope: !1543)
!1584 = !DILocation(line: 548, column: 23, scope: !1543)
!1585 = !DILocation(line: 548, column: 32, scope: !1543)
!1586 = !DILocation(line: 548, column: 30, scope: !1543)
!1587 = !DILocation(line: 548, column: 39, scope: !1543)
!1588 = !DILocation(line: 548, column: 2, scope: !1543)
!1589 = !DILocation(line: 549, column: 2, scope: !1543)
!1590 = !DILocation(line: 549, column: 6, scope: !1543)
!1591 = !DILocation(line: 549, column: 9, scope: !1543)
!1592 = !DILocation(line: 550, column: 1, scope: !1543)
!1593 = distinct !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !4, file: !3, line: 556, type: !245, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !244, retainedNodes: !305)
!1594 = !DILocalVariable(name: "this", arg: 1, scope: !1593, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1595 = !DILocation(line: 0, scope: !1593)
!1596 = !DILocalVariable(name: "c", arg: 2, scope: !1593, file: !3, line: 556, type: !9)
!1597 = !DILocation(line: 556, column: 26, scope: !1593)
!1598 = !DILocation(line: 558, column: 17, scope: !1593)
!1599 = !DILocation(line: 558, column: 9, scope: !1593)
!1600 = !DILocation(line: 558, column: 2, scope: !1593)
!1601 = distinct !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !4, file: !3, line: 561, type: !248, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !247, retainedNodes: !305)
!1602 = !DILocalVariable(name: "this", arg: 1, scope: !1601, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1603 = !DILocation(line: 0, scope: !1601)
!1604 = !DILocalVariable(name: "ch", arg: 2, scope: !1601, file: !3, line: 561, type: !9)
!1605 = !DILocation(line: 561, column: 27, scope: !1601)
!1606 = !DILocalVariable(name: "fromIndex", arg: 3, scope: !1601, file: !3, line: 561, type: !11)
!1607 = !DILocation(line: 561, column: 44, scope: !1601)
!1608 = !DILocation(line: 563, column: 6, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 563, column: 6)
!1610 = !DILocation(line: 563, column: 19, scope: !1609)
!1611 = !DILocation(line: 563, column: 16, scope: !1609)
!1612 = !DILocation(line: 563, column: 6, scope: !1601)
!1613 = !DILocation(line: 563, column: 24, scope: !1609)
!1614 = !DILocalVariable(name: "temp", scope: !1601, file: !3, line: 564, type: !22)
!1615 = !DILocation(line: 564, column: 14, scope: !1601)
!1616 = !DILocation(line: 564, column: 28, scope: !1601)
!1617 = !DILocation(line: 564, column: 37, scope: !1601)
!1618 = !DILocation(line: 564, column: 35, scope: !1601)
!1619 = !DILocation(line: 564, column: 48, scope: !1601)
!1620 = !DILocation(line: 564, column: 21, scope: !1601)
!1621 = !DILocation(line: 565, column: 6, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 565, column: 6)
!1623 = !DILocation(line: 565, column: 11, scope: !1622)
!1624 = !DILocation(line: 565, column: 6, scope: !1601)
!1625 = !DILocation(line: 565, column: 20, scope: !1622)
!1626 = !DILocation(line: 566, column: 9, scope: !1601)
!1627 = !DILocation(line: 566, column: 16, scope: !1601)
!1628 = !DILocation(line: 566, column: 14, scope: !1601)
!1629 = !DILocation(line: 566, column: 2, scope: !1601)
!1630 = !DILocation(line: 567, column: 1, scope: !1601)
!1631 = distinct !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !4, file: !3, line: 569, type: !195, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !250, retainedNodes: !305)
!1632 = !DILocalVariable(name: "this", arg: 1, scope: !1631, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1633 = !DILocation(line: 0, scope: !1631)
!1634 = !DILocalVariable(name: "s2", arg: 2, scope: !1631, file: !3, line: 569, type: !27)
!1635 = !DILocation(line: 569, column: 35, scope: !1631)
!1636 = !DILocation(line: 571, column: 17, scope: !1631)
!1637 = !DILocation(line: 571, column: 9, scope: !1631)
!1638 = !DILocation(line: 571, column: 2, scope: !1631)
!1639 = distinct !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !4, file: !3, line: 574, type: !252, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !251, retainedNodes: !305)
!1640 = !DILocalVariable(name: "this", arg: 1, scope: !1639, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1641 = !DILocation(line: 0, scope: !1639)
!1642 = !DILocalVariable(name: "s2", arg: 2, scope: !1639, file: !3, line: 574, type: !27)
!1643 = !DILocation(line: 574, column: 35, scope: !1639)
!1644 = !DILocalVariable(name: "fromIndex", arg: 3, scope: !1639, file: !3, line: 574, type: !11)
!1645 = !DILocation(line: 574, column: 52, scope: !1639)
!1646 = !DILocation(line: 576, column: 6, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 576, column: 6)
!1648 = !DILocation(line: 576, column: 19, scope: !1647)
!1649 = !DILocation(line: 576, column: 16, scope: !1647)
!1650 = !DILocation(line: 576, column: 6, scope: !1639)
!1651 = !DILocation(line: 576, column: 24, scope: !1647)
!1652 = !DILocalVariable(name: "found", scope: !1639, file: !3, line: 577, type: !22)
!1653 = !DILocation(line: 577, column: 14, scope: !1639)
!1654 = !DILocation(line: 577, column: 29, scope: !1639)
!1655 = !DILocation(line: 577, column: 38, scope: !1639)
!1656 = !DILocation(line: 577, column: 36, scope: !1639)
!1657 = !DILocation(line: 577, column: 49, scope: !1639)
!1658 = !DILocation(line: 577, column: 52, scope: !1639)
!1659 = !DILocation(line: 577, column: 22, scope: !1639)
!1660 = !DILocation(line: 578, column: 6, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 578, column: 6)
!1662 = !DILocation(line: 578, column: 12, scope: !1661)
!1663 = !DILocation(line: 578, column: 6, scope: !1639)
!1664 = !DILocation(line: 578, column: 21, scope: !1661)
!1665 = !DILocation(line: 579, column: 9, scope: !1639)
!1666 = !DILocation(line: 579, column: 17, scope: !1639)
!1667 = !DILocation(line: 579, column: 15, scope: !1639)
!1668 = !DILocation(line: 579, column: 2, scope: !1639)
!1669 = !DILocation(line: 580, column: 1, scope: !1639)
!1670 = distinct !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !4, file: !3, line: 582, type: !245, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !254, retainedNodes: !305)
!1671 = !DILocalVariable(name: "this", arg: 1, scope: !1670, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1672 = !DILocation(line: 0, scope: !1670)
!1673 = !DILocalVariable(name: "theChar", arg: 2, scope: !1670, file: !3, line: 582, type: !9)
!1674 = !DILocation(line: 582, column: 31, scope: !1670)
!1675 = !DILocation(line: 584, column: 21, scope: !1670)
!1676 = !DILocation(line: 584, column: 30, scope: !1670)
!1677 = !DILocation(line: 584, column: 34, scope: !1670)
!1678 = !DILocation(line: 584, column: 9, scope: !1670)
!1679 = !DILocation(line: 584, column: 2, scope: !1670)
!1680 = distinct !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !4, file: !3, line: 587, type: !248, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !255, retainedNodes: !305)
!1681 = !DILocalVariable(name: "this", arg: 1, scope: !1680, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1682 = !DILocation(line: 0, scope: !1680)
!1683 = !DILocalVariable(name: "ch", arg: 2, scope: !1680, file: !3, line: 587, type: !9)
!1684 = !DILocation(line: 587, column: 30, scope: !1680)
!1685 = !DILocalVariable(name: "fromIndex", arg: 3, scope: !1680, file: !3, line: 587, type: !11)
!1686 = !DILocation(line: 587, column: 47, scope: !1680)
!1687 = !DILocation(line: 589, column: 6, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 589, column: 6)
!1689 = !DILocation(line: 589, column: 19, scope: !1688)
!1690 = !DILocation(line: 589, column: 16, scope: !1688)
!1691 = !DILocation(line: 589, column: 6, scope: !1680)
!1692 = !DILocation(line: 589, column: 24, scope: !1688)
!1693 = !DILocalVariable(name: "tempchar", scope: !1680, file: !3, line: 590, type: !9)
!1694 = !DILocation(line: 590, column: 7, scope: !1680)
!1695 = !DILocation(line: 590, column: 18, scope: !1680)
!1696 = !DILocation(line: 590, column: 25, scope: !1680)
!1697 = !DILocation(line: 590, column: 35, scope: !1680)
!1698 = !DILocation(line: 591, column: 2, scope: !1680)
!1699 = !DILocation(line: 591, column: 9, scope: !1680)
!1700 = !DILocation(line: 591, column: 19, scope: !1680)
!1701 = !DILocation(line: 591, column: 24, scope: !1680)
!1702 = !DILocalVariable(name: "temp", scope: !1680, file: !3, line: 592, type: !8)
!1703 = !DILocation(line: 592, column: 8, scope: !1680)
!1704 = !DILocation(line: 592, column: 24, scope: !1680)
!1705 = !DILocation(line: 592, column: 32, scope: !1680)
!1706 = !DILocation(line: 592, column: 15, scope: !1680)
!1707 = !DILocation(line: 593, column: 26, scope: !1680)
!1708 = !DILocation(line: 593, column: 2, scope: !1680)
!1709 = !DILocation(line: 593, column: 9, scope: !1680)
!1710 = !DILocation(line: 593, column: 19, scope: !1680)
!1711 = !DILocation(line: 593, column: 24, scope: !1680)
!1712 = !DILocation(line: 594, column: 6, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 594, column: 6)
!1714 = !DILocation(line: 594, column: 11, scope: !1713)
!1715 = !DILocation(line: 594, column: 6, scope: !1680)
!1716 = !DILocation(line: 594, column: 20, scope: !1713)
!1717 = !DILocation(line: 595, column: 9, scope: !1680)
!1718 = !DILocation(line: 595, column: 16, scope: !1680)
!1719 = !DILocation(line: 595, column: 14, scope: !1680)
!1720 = !DILocation(line: 595, column: 2, scope: !1680)
!1721 = !DILocation(line: 596, column: 1, scope: !1680)
!1722 = distinct !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !4, file: !3, line: 598, type: !195, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !256, retainedNodes: !305)
!1723 = !DILocalVariable(name: "this", arg: 1, scope: !1722, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1724 = !DILocation(line: 0, scope: !1722)
!1725 = !DILocalVariable(name: "s2", arg: 2, scope: !1722, file: !3, line: 598, type: !27)
!1726 = !DILocation(line: 598, column: 39, scope: !1722)
!1727 = !DILocation(line: 600, column: 21, scope: !1722)
!1728 = !DILocation(line: 600, column: 25, scope: !1722)
!1729 = !DILocation(line: 600, column: 31, scope: !1722)
!1730 = !DILocation(line: 600, column: 34, scope: !1722)
!1731 = !DILocation(line: 600, column: 29, scope: !1722)
!1732 = !DILocation(line: 600, column: 9, scope: !1722)
!1733 = !DILocation(line: 600, column: 2, scope: !1722)
!1734 = distinct !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !4, file: !3, line: 603, type: !252, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !257, retainedNodes: !305)
!1735 = !DILocalVariable(name: "this", arg: 1, scope: !1734, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1736 = !DILocation(line: 0, scope: !1734)
!1737 = !DILocalVariable(name: "s2", arg: 2, scope: !1734, file: !3, line: 603, type: !27)
!1738 = !DILocation(line: 603, column: 39, scope: !1734)
!1739 = !DILocalVariable(name: "fromIndex", arg: 3, scope: !1734, file: !3, line: 603, type: !11)
!1740 = !DILocation(line: 603, column: 56, scope: !1734)
!1741 = !DILocation(line: 605, column: 8, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 605, column: 8)
!1743 = !DILocation(line: 605, column: 11, scope: !1742)
!1744 = !DILocation(line: 605, column: 15, scope: !1742)
!1745 = !DILocation(line: 605, column: 20, scope: !1742)
!1746 = !DILocation(line: 605, column: 23, scope: !1742)
!1747 = !DILocation(line: 605, column: 27, scope: !1742)
!1748 = !DILocation(line: 605, column: 32, scope: !1742)
!1749 = !DILocation(line: 605, column: 35, scope: !1742)
!1750 = !DILocation(line: 605, column: 38, scope: !1742)
!1751 = !DILocation(line: 605, column: 44, scope: !1742)
!1752 = !DILocation(line: 605, column: 42, scope: !1742)
!1753 = !DILocation(line: 605, column: 8, scope: !1734)
!1754 = !DILocation(line: 605, column: 49, scope: !1742)
!1755 = !DILocation(line: 606, column: 6, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 606, column: 6)
!1757 = !DILocation(line: 606, column: 19, scope: !1756)
!1758 = !DILocation(line: 606, column: 16, scope: !1756)
!1759 = !DILocation(line: 606, column: 6, scope: !1734)
!1760 = !DILocation(line: 606, column: 36, scope: !1756)
!1761 = !DILocation(line: 606, column: 40, scope: !1756)
!1762 = !DILocation(line: 606, column: 34, scope: !1756)
!1763 = !DILocation(line: 606, column: 24, scope: !1756)
!1764 = !DILocalVariable(name: "found", scope: !1734, file: !3, line: 607, type: !62)
!1765 = !DILocation(line: 607, column: 6, scope: !1734)
!1766 = !DILocalVariable(name: "p", scope: !1767, file: !3, line: 608, type: !8)
!1767 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 608, column: 2)
!1768 = !DILocation(line: 608, column: 13, scope: !1767)
!1769 = !DILocation(line: 608, column: 17, scope: !1767)
!1770 = !DILocation(line: 608, column: 7, scope: !1767)
!1771 = !DILocation(line: 608, column: 25, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 608, column: 2)
!1773 = !DILocation(line: 608, column: 30, scope: !1772)
!1774 = !DILocation(line: 608, column: 39, scope: !1772)
!1775 = !DILocation(line: 608, column: 37, scope: !1772)
!1776 = !DILocation(line: 608, column: 27, scope: !1772)
!1777 = !DILocation(line: 608, column: 2, scope: !1767)
!1778 = !DILocation(line: 609, column: 14, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 608, column: 55)
!1780 = !DILocation(line: 609, column: 17, scope: !1779)
!1781 = !DILocation(line: 609, column: 20, scope: !1779)
!1782 = !DILocation(line: 609, column: 7, scope: !1779)
!1783 = !DILocation(line: 609, column: 5, scope: !1779)
!1784 = !DILocation(line: 610, column: 8, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 610, column: 7)
!1786 = !DILocation(line: 610, column: 7, scope: !1779)
!1787 = !DILocation(line: 610, column: 11, scope: !1785)
!1788 = !DILocation(line: 611, column: 22, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 611, column: 7)
!1790 = !DILocation(line: 611, column: 26, scope: !1789)
!1791 = !DILocation(line: 611, column: 24, scope: !1789)
!1792 = !DILocation(line: 611, column: 37, scope: !1789)
!1793 = !DILocation(line: 611, column: 34, scope: !1789)
!1794 = !DILocation(line: 611, column: 7, scope: !1779)
!1795 = !DILocation(line: 611, column: 56, scope: !1789)
!1796 = !DILocation(line: 611, column: 60, scope: !1789)
!1797 = !DILocation(line: 611, column: 58, scope: !1789)
!1798 = !DILocation(line: 611, column: 54, scope: !1789)
!1799 = !DILocation(line: 611, column: 48, scope: !1789)
!1800 = !DILocation(line: 612, column: 2, scope: !1779)
!1801 = !DILocation(line: 608, column: 51, scope: !1772)
!1802 = !DILocation(line: 608, column: 2, scope: !1772)
!1803 = distinct !{!1803, !1777, !1804}
!1804 = !DILocation(line: 612, column: 2, scope: !1767)
!1805 = !DILocation(line: 613, column: 9, scope: !1734)
!1806 = !DILocation(line: 613, column: 2, scope: !1734)
!1807 = !DILocation(line: 614, column: 1, scope: !1734)
!1808 = distinct !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !4, file: !3, line: 616, type: !262, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !261, retainedNodes: !305)
!1809 = !DILocalVariable(name: "this", arg: 1, scope: !1808, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!1810 = !DILocation(line: 0, scope: !1808)
!1811 = !DILocalVariable(name: "left", arg: 2, scope: !1808, file: !3, line: 616, type: !11)
!1812 = !DILocation(line: 616, column: 39, scope: !1808)
!1813 = !DILocalVariable(name: "right", arg: 3, scope: !1808, file: !3, line: 616, type: !11)
!1814 = !DILocation(line: 616, column: 58, scope: !1808)
!1815 = !DILocation(line: 618, column: 6, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 618, column: 6)
!1817 = !DILocation(line: 618, column: 13, scope: !1816)
!1818 = !DILocation(line: 618, column: 11, scope: !1816)
!1819 = !DILocation(line: 618, column: 6, scope: !1808)
!1820 = !DILocalVariable(name: "temp", scope: !1821, file: !3, line: 619, type: !11)
!1821 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 618, column: 20)
!1822 = !DILocation(line: 619, column: 16, scope: !1821)
!1823 = !DILocation(line: 619, column: 23, scope: !1821)
!1824 = !DILocation(line: 620, column: 11, scope: !1821)
!1825 = !DILocation(line: 620, column: 9, scope: !1821)
!1826 = !DILocation(line: 621, column: 10, scope: !1821)
!1827 = !DILocation(line: 621, column: 8, scope: !1821)
!1828 = !DILocation(line: 622, column: 2, scope: !1821)
!1829 = !DILocation(line: 623, column: 2, scope: !1808)
!1830 = !DILocalVariable(name: "out", scope: !1808, file: !3, line: 623, type: !4)
!1831 = !DILocation(line: 623, column: 9, scope: !1808)
!1832 = !DILocation(line: 624, column: 6, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 624, column: 6)
!1834 = !DILocation(line: 624, column: 14, scope: !1833)
!1835 = !DILocation(line: 624, column: 11, scope: !1833)
!1836 = !DILocation(line: 624, column: 6, scope: !1808)
!1837 = !DILocation(line: 624, column: 19, scope: !1833)
!1838 = !DILocation(line: 625, column: 6, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 625, column: 6)
!1840 = !DILocation(line: 625, column: 14, scope: !1839)
!1841 = !DILocation(line: 625, column: 12, scope: !1839)
!1842 = !DILocation(line: 625, column: 6, scope: !1808)
!1843 = !DILocation(line: 625, column: 27, scope: !1839)
!1844 = !DILocation(line: 625, column: 25, scope: !1839)
!1845 = !DILocation(line: 625, column: 19, scope: !1839)
!1846 = !DILocalVariable(name: "temp", scope: !1808, file: !3, line: 626, type: !9)
!1847 = !DILocation(line: 626, column: 7, scope: !1808)
!1848 = !DILocation(line: 626, column: 14, scope: !1808)
!1849 = !DILocation(line: 626, column: 21, scope: !1808)
!1850 = !DILocation(line: 627, column: 2, scope: !1808)
!1851 = !DILocation(line: 627, column: 9, scope: !1808)
!1852 = !DILocation(line: 627, column: 16, scope: !1808)
!1853 = !DILocation(line: 628, column: 8, scope: !1808)
!1854 = !DILocation(line: 628, column: 17, scope: !1808)
!1855 = !DILocation(line: 628, column: 15, scope: !1808)
!1856 = !DILocation(line: 628, column: 6, scope: !1808)
!1857 = !DILocation(line: 629, column: 18, scope: !1808)
!1858 = !DILocation(line: 629, column: 2, scope: !1808)
!1859 = !DILocation(line: 629, column: 9, scope: !1808)
!1860 = !DILocation(line: 629, column: 16, scope: !1808)
!1861 = !DILocation(line: 630, column: 2, scope: !1808)
!1862 = !DILocation(line: 631, column: 1, scope: !1808)
!1863 = distinct !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !4, file: !3, line: 637, type: !265, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !264, retainedNodes: !305)
!1864 = !DILocalVariable(name: "this", arg: 1, scope: !1863, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!1865 = !DILocation(line: 0, scope: !1863)
!1866 = !DILocalVariable(name: "find", arg: 2, scope: !1863, file: !3, line: 637, type: !9)
!1867 = !DILocation(line: 637, column: 27, scope: !1863)
!1868 = !DILocalVariable(name: "replace", arg: 3, scope: !1863, file: !3, line: 637, type: !9)
!1869 = !DILocation(line: 637, column: 38, scope: !1863)
!1870 = !DILocation(line: 639, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 639, column: 6)
!1872 = !DILocation(line: 639, column: 6, scope: !1863)
!1873 = !DILocation(line: 639, column: 15, scope: !1871)
!1874 = !DILocalVariable(name: "p", scope: !1875, file: !3, line: 640, type: !8)
!1875 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 640, column: 2)
!1876 = !DILocation(line: 640, column: 13, scope: !1875)
!1877 = !DILocation(line: 640, column: 17, scope: !1875)
!1878 = !DILocation(line: 640, column: 7, scope: !1875)
!1879 = !DILocation(line: 640, column: 26, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 640, column: 2)
!1881 = !DILocation(line: 640, column: 25, scope: !1880)
!1882 = !DILocation(line: 640, column: 2, scope: !1875)
!1883 = !DILocation(line: 641, column: 8, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 641, column: 7)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 640, column: 34)
!1886 = !DILocation(line: 641, column: 7, scope: !1884)
!1887 = !DILocation(line: 641, column: 13, scope: !1884)
!1888 = !DILocation(line: 641, column: 10, scope: !1884)
!1889 = !DILocation(line: 641, column: 7, scope: !1885)
!1890 = !DILocation(line: 641, column: 24, scope: !1884)
!1891 = !DILocation(line: 641, column: 20, scope: !1884)
!1892 = !DILocation(line: 641, column: 22, scope: !1884)
!1893 = !DILocation(line: 641, column: 19, scope: !1884)
!1894 = !DILocation(line: 642, column: 2, scope: !1885)
!1895 = !DILocation(line: 640, column: 30, scope: !1880)
!1896 = !DILocation(line: 640, column: 2, scope: !1880)
!1897 = distinct !{!1897, !1882, !1898}
!1898 = !DILocation(line: 642, column: 2, scope: !1875)
!1899 = !DILocation(line: 643, column: 1, scope: !1863)
!1900 = distinct !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !4, file: !3, line: 645, type: !268, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !267, retainedNodes: !305)
!1901 = !DILocalVariable(name: "this", arg: 1, scope: !1900, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!1902 = !DILocation(line: 0, scope: !1900)
!1903 = !DILocalVariable(name: "find", arg: 2, scope: !1900, file: !3, line: 645, type: !27)
!1904 = !DILocation(line: 645, column: 36, scope: !1900)
!1905 = !DILocalVariable(name: "replace", arg: 3, scope: !1900, file: !3, line: 645, type: !27)
!1906 = !DILocation(line: 645, column: 56, scope: !1900)
!1907 = !DILocation(line: 647, column: 6, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 647, column: 6)
!1909 = !DILocation(line: 647, column: 10, scope: !1908)
!1910 = !DILocation(line: 647, column: 15, scope: !1908)
!1911 = !DILocation(line: 647, column: 18, scope: !1908)
!1912 = !DILocation(line: 647, column: 23, scope: !1908)
!1913 = !DILocation(line: 647, column: 27, scope: !1908)
!1914 = !DILocation(line: 647, column: 6, scope: !1900)
!1915 = !DILocation(line: 647, column: 33, scope: !1908)
!1916 = !DILocalVariable(name: "diff", scope: !1900, file: !3, line: 648, type: !62)
!1917 = !DILocation(line: 648, column: 6, scope: !1900)
!1918 = !DILocation(line: 648, column: 13, scope: !1900)
!1919 = !DILocation(line: 648, column: 21, scope: !1900)
!1920 = !DILocation(line: 648, column: 27, scope: !1900)
!1921 = !DILocation(line: 648, column: 32, scope: !1900)
!1922 = !DILocation(line: 648, column: 25, scope: !1900)
!1923 = !DILocalVariable(name: "readFrom", scope: !1900, file: !3, line: 649, type: !8)
!1924 = !DILocation(line: 649, column: 8, scope: !1900)
!1925 = !DILocation(line: 649, column: 19, scope: !1900)
!1926 = !DILocalVariable(name: "foundAt", scope: !1900, file: !3, line: 650, type: !8)
!1927 = !DILocation(line: 650, column: 8, scope: !1900)
!1928 = !DILocation(line: 651, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 651, column: 6)
!1930 = !DILocation(line: 651, column: 11, scope: !1929)
!1931 = !DILocation(line: 651, column: 6, scope: !1900)
!1932 = !DILocation(line: 652, column: 3, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 651, column: 17)
!1934 = !DILocation(line: 652, column: 28, scope: !1933)
!1935 = !DILocation(line: 652, column: 38, scope: !1933)
!1936 = !DILocation(line: 652, column: 43, scope: !1933)
!1937 = !DILocation(line: 652, column: 21, scope: !1933)
!1938 = !DILocation(line: 652, column: 19, scope: !1933)
!1939 = !DILocation(line: 652, column: 52, scope: !1933)
!1940 = !DILocation(line: 653, column: 11, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 652, column: 61)
!1942 = !DILocation(line: 653, column: 20, scope: !1941)
!1943 = !DILocation(line: 653, column: 28, scope: !1941)
!1944 = !DILocation(line: 653, column: 36, scope: !1941)
!1945 = !DILocation(line: 653, column: 44, scope: !1941)
!1946 = !DILocation(line: 653, column: 4, scope: !1941)
!1947 = !DILocation(line: 654, column: 15, scope: !1941)
!1948 = !DILocation(line: 654, column: 25, scope: !1941)
!1949 = !DILocation(line: 654, column: 33, scope: !1941)
!1950 = !DILocation(line: 654, column: 23, scope: !1941)
!1951 = !DILocation(line: 654, column: 13, scope: !1941)
!1952 = distinct !{!1952, !1932, !1953}
!1953 = !DILocation(line: 655, column: 3, scope: !1933)
!1954 = !DILocation(line: 656, column: 2, scope: !1933)
!1955 = !DILocation(line: 656, column: 13, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 656, column: 13)
!1957 = !DILocation(line: 656, column: 18, scope: !1956)
!1958 = !DILocation(line: 656, column: 13, scope: !1929)
!1959 = !DILocalVariable(name: "writeTo", scope: !1960, file: !3, line: 657, type: !8)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 656, column: 23)
!1961 = !DILocation(line: 657, column: 9, scope: !1960)
!1962 = !DILocation(line: 657, column: 19, scope: !1960)
!1963 = !DILocation(line: 658, column: 3, scope: !1960)
!1964 = !DILocation(line: 658, column: 28, scope: !1960)
!1965 = !DILocation(line: 658, column: 38, scope: !1960)
!1966 = !DILocation(line: 658, column: 43, scope: !1960)
!1967 = !DILocation(line: 658, column: 21, scope: !1960)
!1968 = !DILocation(line: 658, column: 19, scope: !1960)
!1969 = !DILocation(line: 658, column: 52, scope: !1960)
!1970 = !DILocalVariable(name: "n", scope: !1971, file: !3, line: 659, type: !11)
!1971 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 658, column: 61)
!1972 = !DILocation(line: 659, column: 17, scope: !1971)
!1973 = !DILocation(line: 659, column: 21, scope: !1971)
!1974 = !DILocation(line: 659, column: 31, scope: !1971)
!1975 = !DILocation(line: 659, column: 29, scope: !1971)
!1976 = !DILocation(line: 660, column: 11, scope: !1971)
!1977 = !DILocation(line: 660, column: 20, scope: !1971)
!1978 = !DILocation(line: 660, column: 30, scope: !1971)
!1979 = !DILocation(line: 660, column: 4, scope: !1971)
!1980 = !DILocation(line: 661, column: 15, scope: !1971)
!1981 = !DILocation(line: 661, column: 12, scope: !1971)
!1982 = !DILocation(line: 662, column: 11, scope: !1971)
!1983 = !DILocation(line: 662, column: 20, scope: !1971)
!1984 = !DILocation(line: 662, column: 28, scope: !1971)
!1985 = !DILocation(line: 662, column: 36, scope: !1971)
!1986 = !DILocation(line: 662, column: 44, scope: !1971)
!1987 = !DILocation(line: 662, column: 4, scope: !1971)
!1988 = !DILocation(line: 663, column: 15, scope: !1971)
!1989 = !DILocation(line: 663, column: 23, scope: !1971)
!1990 = !DILocation(line: 663, column: 12, scope: !1971)
!1991 = !DILocation(line: 664, column: 15, scope: !1971)
!1992 = !DILocation(line: 664, column: 25, scope: !1971)
!1993 = !DILocation(line: 664, column: 30, scope: !1971)
!1994 = !DILocation(line: 664, column: 23, scope: !1971)
!1995 = !DILocation(line: 664, column: 13, scope: !1971)
!1996 = !DILocation(line: 665, column: 11, scope: !1971)
!1997 = !DILocation(line: 665, column: 4, scope: !1971)
!1998 = !DILocation(line: 665, column: 8, scope: !1971)
!1999 = distinct !{!1999, !1963, !2000}
!2000 = !DILocation(line: 666, column: 3, scope: !1960)
!2001 = !DILocation(line: 667, column: 10, scope: !1960)
!2002 = !DILocation(line: 667, column: 19, scope: !1960)
!2003 = !DILocation(line: 667, column: 3, scope: !1960)
!2004 = !DILocation(line: 668, column: 2, scope: !1960)
!2005 = !DILocalVariable(name: "size", scope: !2006, file: !3, line: 669, type: !11)
!2006 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 668, column: 9)
!2007 = !DILocation(line: 669, column: 16, scope: !2006)
!2008 = !DILocation(line: 669, column: 23, scope: !2006)
!2009 = !DILocation(line: 670, column: 3, scope: !2006)
!2010 = !DILocation(line: 670, column: 28, scope: !2006)
!2011 = !DILocation(line: 670, column: 38, scope: !2006)
!2012 = !DILocation(line: 670, column: 43, scope: !2006)
!2013 = !DILocation(line: 670, column: 21, scope: !2006)
!2014 = !DILocation(line: 670, column: 19, scope: !2006)
!2015 = !DILocation(line: 670, column: 52, scope: !2006)
!2016 = !DILocation(line: 671, column: 15, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 670, column: 61)
!2018 = !DILocation(line: 671, column: 25, scope: !2017)
!2019 = !DILocation(line: 671, column: 30, scope: !2017)
!2020 = !DILocation(line: 671, column: 23, scope: !2017)
!2021 = !DILocation(line: 671, column: 13, scope: !2017)
!2022 = !DILocation(line: 672, column: 12, scope: !2017)
!2023 = !DILocation(line: 672, column: 9, scope: !2017)
!2024 = distinct !{!2024, !2009, !2025}
!2025 = !DILocation(line: 673, column: 3, scope: !2006)
!2026 = !DILocation(line: 674, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 674, column: 7)
!2028 = !DILocation(line: 674, column: 15, scope: !2027)
!2029 = !DILocation(line: 674, column: 12, scope: !2027)
!2030 = !DILocation(line: 674, column: 7, scope: !2006)
!2031 = !DILocation(line: 674, column: 20, scope: !2027)
!2032 = !DILocation(line: 675, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 675, column: 7)
!2034 = !DILocation(line: 675, column: 14, scope: !2033)
!2035 = !DILocation(line: 675, column: 12, scope: !2033)
!2036 = !DILocation(line: 675, column: 23, scope: !2033)
!2037 = !DILocation(line: 675, column: 40, scope: !2033)
!2038 = !DILocation(line: 675, column: 27, scope: !2033)
!2039 = !DILocation(line: 675, column: 7, scope: !2006)
!2040 = !DILocation(line: 675, column: 47, scope: !2033)
!2041 = !DILocalVariable(name: "index", scope: !2006, file: !3, line: 676, type: !62)
!2042 = !DILocation(line: 676, column: 7, scope: !2006)
!2043 = !DILocation(line: 676, column: 15, scope: !2006)
!2044 = !DILocation(line: 676, column: 19, scope: !2006)
!2045 = !DILocation(line: 677, column: 3, scope: !2006)
!2046 = !DILocation(line: 677, column: 10, scope: !2006)
!2047 = !DILocation(line: 677, column: 16, scope: !2006)
!2048 = !DILocation(line: 677, column: 21, scope: !2006)
!2049 = !DILocation(line: 677, column: 45, scope: !2006)
!2050 = !DILocation(line: 677, column: 51, scope: !2006)
!2051 = !DILocation(line: 677, column: 33, scope: !2006)
!2052 = !DILocation(line: 677, column: 31, scope: !2006)
!2053 = !DILocation(line: 677, column: 59, scope: !2006)
!2054 = !DILocation(line: 0, scope: !2006)
!2055 = !DILocation(line: 678, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 677, column: 65)
!2057 = !DILocation(line: 678, column: 24, scope: !2056)
!2058 = !DILocation(line: 678, column: 22, scope: !2056)
!2059 = !DILocation(line: 678, column: 32, scope: !2056)
!2060 = !DILocation(line: 678, column: 37, scope: !2056)
!2061 = !DILocation(line: 678, column: 30, scope: !2056)
!2062 = !DILocation(line: 678, column: 13, scope: !2056)
!2063 = !DILocation(line: 679, column: 12, scope: !2056)
!2064 = !DILocation(line: 679, column: 23, scope: !2056)
!2065 = !DILocation(line: 679, column: 21, scope: !2056)
!2066 = !DILocation(line: 679, column: 29, scope: !2056)
!2067 = !DILocation(line: 679, column: 39, scope: !2056)
!2068 = !DILocation(line: 679, column: 46, scope: !2056)
!2069 = !DILocation(line: 679, column: 57, scope: !2056)
!2070 = !DILocation(line: 679, column: 55, scope: !2056)
!2071 = !DILocation(line: 679, column: 43, scope: !2056)
!2072 = !DILocation(line: 679, column: 4, scope: !2056)
!2073 = !DILocation(line: 680, column: 11, scope: !2056)
!2074 = !DILocation(line: 680, column: 4, scope: !2056)
!2075 = !DILocation(line: 680, column: 8, scope: !2056)
!2076 = !DILocation(line: 681, column: 4, scope: !2056)
!2077 = !DILocation(line: 681, column: 11, scope: !2056)
!2078 = !DILocation(line: 681, column: 16, scope: !2056)
!2079 = !DILocation(line: 682, column: 11, scope: !2056)
!2080 = !DILocation(line: 682, column: 20, scope: !2056)
!2081 = !DILocation(line: 682, column: 18, scope: !2056)
!2082 = !DILocation(line: 682, column: 27, scope: !2056)
!2083 = !DILocation(line: 682, column: 35, scope: !2056)
!2084 = !DILocation(line: 682, column: 43, scope: !2056)
!2085 = !DILocation(line: 682, column: 51, scope: !2056)
!2086 = !DILocation(line: 682, column: 4, scope: !2056)
!2087 = !DILocation(line: 683, column: 9, scope: !2056)
!2088 = distinct !{!2088, !2045, !2089}
!2089 = !DILocation(line: 684, column: 3, scope: !2006)
!2090 = !DILocation(line: 686, column: 1, scope: !1900)
!2091 = distinct !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !4, file: !3, line: 688, type: !271, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !270, retainedNodes: !305)
!2092 = !DILocalVariable(name: "this", arg: 1, scope: !2091, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!2093 = !DILocation(line: 0, scope: !2091)
!2094 = !DILocalVariable(name: "index", arg: 2, scope: !2091, file: !3, line: 688, type: !11)
!2095 = !DILocation(line: 688, column: 34, scope: !2091)
!2096 = !DILocation(line: 692, column: 9, scope: !2091)
!2097 = !DILocation(line: 692, column: 2, scope: !2091)
!2098 = !DILocation(line: 693, column: 1, scope: !2091)
!2099 = distinct !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !4, file: !3, line: 695, type: !274, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !273, retainedNodes: !305)
!2100 = !DILocalVariable(name: "this", arg: 1, scope: !2099, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!2101 = !DILocation(line: 0, scope: !2099)
!2102 = !DILocalVariable(name: "index", arg: 2, scope: !2099, file: !3, line: 695, type: !11)
!2103 = !DILocation(line: 695, column: 34, scope: !2099)
!2104 = !DILocalVariable(name: "count", arg: 3, scope: !2099, file: !3, line: 695, type: !11)
!2105 = !DILocation(line: 695, column: 54, scope: !2099)
!2106 = !DILocation(line: 696, column: 6, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 696, column: 6)
!2108 = !DILocation(line: 696, column: 15, scope: !2107)
!2109 = !DILocation(line: 696, column: 12, scope: !2107)
!2110 = !DILocation(line: 696, column: 6, scope: !2099)
!2111 = !DILocation(line: 696, column: 22, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 696, column: 20)
!2113 = !DILocation(line: 697, column: 6, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 697, column: 6)
!2115 = !DILocation(line: 697, column: 12, scope: !2114)
!2116 = !DILocation(line: 697, column: 6, scope: !2099)
!2117 = !DILocation(line: 697, column: 20, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 697, column: 18)
!2119 = !DILocation(line: 698, column: 6, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 698, column: 6)
!2121 = !DILocation(line: 698, column: 14, scope: !2120)
!2122 = !DILocation(line: 698, column: 20, scope: !2120)
!2123 = !DILocation(line: 698, column: 18, scope: !2120)
!2124 = !DILocation(line: 698, column: 12, scope: !2120)
!2125 = !DILocation(line: 698, column: 6, scope: !2099)
!2126 = !DILocation(line: 698, column: 37, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 698, column: 27)
!2128 = !DILocation(line: 698, column: 43, scope: !2127)
!2129 = !DILocation(line: 698, column: 41, scope: !2127)
!2130 = !DILocation(line: 698, column: 35, scope: !2127)
!2131 = !DILocation(line: 698, column: 50, scope: !2127)
!2132 = !DILocalVariable(name: "writeTo", scope: !2099, file: !3, line: 699, type: !8)
!2133 = !DILocation(line: 699, column: 8, scope: !2099)
!2134 = !DILocation(line: 699, column: 18, scope: !2099)
!2135 = !DILocation(line: 699, column: 27, scope: !2099)
!2136 = !DILocation(line: 699, column: 25, scope: !2099)
!2137 = !DILocation(line: 700, column: 8, scope: !2099)
!2138 = !DILocation(line: 700, column: 14, scope: !2099)
!2139 = !DILocation(line: 700, column: 12, scope: !2099)
!2140 = !DILocation(line: 700, column: 2, scope: !2099)
!2141 = !DILocation(line: 700, column: 6, scope: !2099)
!2142 = !DILocation(line: 701, column: 10, scope: !2099)
!2143 = !DILocation(line: 701, column: 19, scope: !2099)
!2144 = !DILocation(line: 701, column: 28, scope: !2099)
!2145 = !DILocation(line: 701, column: 26, scope: !2099)
!2146 = !DILocation(line: 701, column: 36, scope: !2099)
!2147 = !DILocation(line: 701, column: 34, scope: !2099)
!2148 = !DILocation(line: 701, column: 42, scope: !2099)
!2149 = !DILocation(line: 701, column: 48, scope: !2099)
!2150 = !DILocation(line: 701, column: 46, scope: !2099)
!2151 = !DILocation(line: 701, column: 2, scope: !2099)
!2152 = !DILocation(line: 702, column: 2, scope: !2099)
!2153 = !DILocation(line: 702, column: 9, scope: !2099)
!2154 = !DILocation(line: 702, column: 14, scope: !2099)
!2155 = !DILocation(line: 703, column: 1, scope: !2099)
!2156 = distinct !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !4, file: !3, line: 705, type: !107, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !276, retainedNodes: !305)
!2157 = !DILocalVariable(name: "this", arg: 1, scope: !2156, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!2158 = !DILocation(line: 0, scope: !2156)
!2159 = !DILocation(line: 707, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 707, column: 6)
!2161 = !DILocation(line: 707, column: 6, scope: !2156)
!2162 = !DILocation(line: 707, column: 15, scope: !2160)
!2163 = !DILocalVariable(name: "p", scope: !2164, file: !3, line: 708, type: !8)
!2164 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 708, column: 2)
!2165 = !DILocation(line: 708, column: 13, scope: !2164)
!2166 = !DILocation(line: 708, column: 17, scope: !2164)
!2167 = !DILocation(line: 708, column: 7, scope: !2164)
!2168 = !DILocation(line: 708, column: 26, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 708, column: 2)
!2170 = !DILocation(line: 708, column: 25, scope: !2169)
!2171 = !DILocation(line: 708, column: 2, scope: !2164)
!2172 = !DILocation(line: 709, column: 17, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 708, column: 34)
!2174 = !DILocation(line: 709, column: 16, scope: !2173)
!2175 = !DILocation(line: 709, column: 8, scope: !2173)
!2176 = !DILocation(line: 709, column: 4, scope: !2173)
!2177 = !DILocation(line: 709, column: 6, scope: !2173)
!2178 = !DILocation(line: 710, column: 2, scope: !2173)
!2179 = !DILocation(line: 708, column: 30, scope: !2169)
!2180 = !DILocation(line: 708, column: 2, scope: !2169)
!2181 = distinct !{!2181, !2171, !2182}
!2182 = !DILocation(line: 710, column: 2, scope: !2164)
!2183 = !DILocation(line: 711, column: 1, scope: !2156)
!2184 = distinct !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !4, file: !3, line: 713, type: !107, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !277, retainedNodes: !305)
!2185 = !DILocalVariable(name: "this", arg: 1, scope: !2184, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!2186 = !DILocation(line: 0, scope: !2184)
!2187 = !DILocation(line: 715, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 715, column: 6)
!2189 = !DILocation(line: 715, column: 6, scope: !2184)
!2190 = !DILocation(line: 715, column: 15, scope: !2188)
!2191 = !DILocalVariable(name: "p", scope: !2192, file: !3, line: 716, type: !8)
!2192 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 716, column: 2)
!2193 = !DILocation(line: 716, column: 13, scope: !2192)
!2194 = !DILocation(line: 716, column: 17, scope: !2192)
!2195 = !DILocation(line: 716, column: 7, scope: !2192)
!2196 = !DILocation(line: 716, column: 26, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 716, column: 2)
!2198 = !DILocation(line: 716, column: 25, scope: !2197)
!2199 = !DILocation(line: 716, column: 2, scope: !2192)
!2200 = !DILocation(line: 717, column: 17, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 716, column: 34)
!2202 = !DILocation(line: 717, column: 16, scope: !2201)
!2203 = !DILocation(line: 717, column: 8, scope: !2201)
!2204 = !DILocation(line: 717, column: 4, scope: !2201)
!2205 = !DILocation(line: 717, column: 6, scope: !2201)
!2206 = !DILocation(line: 718, column: 2, scope: !2201)
!2207 = !DILocation(line: 716, column: 30, scope: !2197)
!2208 = !DILocation(line: 716, column: 2, scope: !2197)
!2209 = distinct !{!2209, !2199, !2210}
!2210 = !DILocation(line: 718, column: 2, scope: !2192)
!2211 = !DILocation(line: 719, column: 1, scope: !2184)
!2212 = distinct !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !4, file: !3, line: 721, type: !107, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !278, retainedNodes: !305)
!2213 = !DILocalVariable(name: "this", arg: 1, scope: !2212, type: !315, flags: DIFlagArtificial | DIFlagObjectPointer)
!2214 = !DILocation(line: 0, scope: !2212)
!2215 = !DILocation(line: 723, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 723, column: 6)
!2217 = !DILocation(line: 723, column: 14, scope: !2216)
!2218 = !DILocation(line: 723, column: 17, scope: !2216)
!2219 = !DILocation(line: 723, column: 21, scope: !2216)
!2220 = !DILocation(line: 723, column: 6, scope: !2212)
!2221 = !DILocation(line: 723, column: 27, scope: !2216)
!2222 = !DILocalVariable(name: "begin", scope: !2212, file: !3, line: 724, type: !8)
!2223 = !DILocation(line: 724, column: 8, scope: !2212)
!2224 = !DILocation(line: 724, column: 16, scope: !2212)
!2225 = !DILocation(line: 725, column: 2, scope: !2212)
!2226 = !DILocation(line: 725, column: 18, scope: !2212)
!2227 = !DILocation(line: 725, column: 17, scope: !2212)
!2228 = !DILocation(line: 725, column: 9, scope: !2212)
!2229 = !DILocation(line: 725, column: 31, scope: !2212)
!2230 = distinct !{!2230, !2225, !2229}
!2231 = !DILocalVariable(name: "end", scope: !2212, file: !3, line: 726, type: !8)
!2232 = !DILocation(line: 726, column: 8, scope: !2212)
!2233 = !DILocation(line: 726, column: 14, scope: !2212)
!2234 = !DILocation(line: 726, column: 23, scope: !2212)
!2235 = !DILocation(line: 726, column: 21, scope: !2212)
!2236 = !DILocation(line: 726, column: 27, scope: !2212)
!2237 = !DILocation(line: 727, column: 2, scope: !2212)
!2238 = !DILocation(line: 727, column: 18, scope: !2212)
!2239 = !DILocation(line: 727, column: 17, scope: !2212)
!2240 = !DILocation(line: 727, column: 9, scope: !2212)
!2241 = !DILocation(line: 727, column: 23, scope: !2212)
!2242 = !DILocation(line: 727, column: 26, scope: !2212)
!2243 = !DILocation(line: 727, column: 33, scope: !2212)
!2244 = !DILocation(line: 727, column: 30, scope: !2212)
!2245 = !DILocation(line: 727, column: 43, scope: !2212)
!2246 = distinct !{!2246, !2237, !2245}
!2247 = !DILocation(line: 728, column: 8, scope: !2212)
!2248 = !DILocation(line: 728, column: 12, scope: !2212)
!2249 = !DILocation(line: 728, column: 18, scope: !2212)
!2250 = !DILocation(line: 728, column: 16, scope: !2212)
!2251 = !DILocation(line: 728, column: 2, scope: !2212)
!2252 = !DILocation(line: 728, column: 6, scope: !2212)
!2253 = !DILocation(line: 729, column: 6, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 729, column: 6)
!2255 = !DILocation(line: 729, column: 14, scope: !2254)
!2256 = !DILocation(line: 729, column: 12, scope: !2254)
!2257 = !DILocation(line: 729, column: 6, scope: !2212)
!2258 = !DILocation(line: 729, column: 29, scope: !2254)
!2259 = !DILocation(line: 729, column: 37, scope: !2254)
!2260 = !DILocation(line: 729, column: 44, scope: !2254)
!2261 = !DILocation(line: 729, column: 22, scope: !2254)
!2262 = !DILocation(line: 730, column: 2, scope: !2212)
!2263 = !DILocation(line: 730, column: 9, scope: !2212)
!2264 = !DILocation(line: 730, column: 14, scope: !2212)
!2265 = !DILocation(line: 731, column: 1, scope: !2212)
!2266 = distinct !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !4, file: !3, line: 737, type: !280, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !279, retainedNodes: !305)
!2267 = !DILocalVariable(name: "this", arg: 1, scope: !2266, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!2268 = !DILocation(line: 0, scope: !2266)
!2269 = !DILocation(line: 739, column: 6, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 739, column: 6)
!2271 = !DILocation(line: 739, column: 6, scope: !2266)
!2272 = !DILocation(line: 739, column: 26, scope: !2270)
!2273 = !DILocation(line: 739, column: 21, scope: !2270)
!2274 = !DILocation(line: 739, column: 14, scope: !2270)
!2275 = !DILocation(line: 740, column: 2, scope: !2266)
!2276 = !DILocation(line: 741, column: 1, scope: !2266)
!2277 = distinct !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !4, file: !3, line: 743, type: !283, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !282, retainedNodes: !305)
!2278 = !DILocalVariable(name: "this", arg: 1, scope: !2277, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!2279 = !DILocation(line: 0, scope: !2277)
!2280 = !DILocation(line: 745, column: 15, scope: !2277)
!2281 = !DILocation(line: 745, column: 2, scope: !2277)
!2282 = distinct !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !4, file: !3, line: 748, type: !286, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !285, retainedNodes: !305)
!2283 = !DILocalVariable(name: "this", arg: 1, scope: !2282, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!2284 = !DILocation(line: 0, scope: !2282)
!2285 = !DILocation(line: 750, column: 6, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 750, column: 6)
!2287 = !DILocation(line: 750, column: 6, scope: !2282)
!2288 = !DILocation(line: 750, column: 26, scope: !2286)
!2289 = !DILocation(line: 750, column: 21, scope: !2286)
!2290 = !DILocation(line: 750, column: 14, scope: !2286)
!2291 = !DILocation(line: 751, column: 2, scope: !2282)
!2292 = !DILocation(line: 752, column: 1, scope: !2282)
!2293 = distinct !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !4, file: !5, line: 51, type: !14, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, declaration: !13, retainedNodes: !305)
!2294 = !DILocalVariable(name: "this", arg: 1, scope: !2293, type: !760, flags: DIFlagArtificial | DIFlagObjectPointer)
!2295 = !DILocation(line: 0, scope: !2293)
!2296 = !DILocation(line: 51, column: 31, scope: !2293)

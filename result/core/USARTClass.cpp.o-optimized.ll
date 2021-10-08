; ModuleID = '/home/aaa/llvm-arduino-due/build/core/USARTClass.cpp.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USARTClass.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.USARTClass = type { %class.UARTClass, %struct.Usart* }
%class.UARTClass = type { %class.HardwareSerial, %class.RingBuffer*, %class.RingBuffer*, %struct.Uart*, i8, i32 }
%class.HardwareSerial = type { %class.Stream }
%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i32 }
%struct.Uart = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [55 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Usart = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, [1 x i32], i32, i32, i32, i32, [34 x i32], i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%class.RingBuffer = type { [128 x i8], i32, i32 }

$_ZN14HardwareSerial5beginEm = comdat any

$_ZN9UARTClasscvbEv = comdat any

$_ZTV10USARTClass = comdat any

@_ZTV10USARTClass = linkonce_odr dso_local unnamed_addr constant { [11 x i8*] } { [11 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%class.UARTClass*, i8)* @_ZN9UARTClass5writeEh to i8*), i8* bitcast (i32 (%class.Print*, i8*, i32)* @_ZN5Print5writeEPKhj to i8*), i8* bitcast (i32 (%class.UARTClass*)* @_ZN9UARTClass9availableEv to i8*), i8* bitcast (i32 (%class.UARTClass*)* @_ZN9UARTClass4readEv to i8*), i8* bitcast (i32 (%class.UARTClass*)* @_ZN9UARTClass4peekEv to i8*), i8* bitcast (void (%class.UARTClass*)* @_ZN9UARTClass5flushEv to i8*), i8* bitcast (void (%class.HardwareSerial*, i32)* @_ZN14HardwareSerial5beginEm to i8*), i8* bitcast (void (%class.UARTClass*)* @_ZN9UARTClass3endEv to i8*), i8* bitcast (i1 (%class.UARTClass*)* @_ZN9UARTClasscvbEv to i8*)] }, comdat, align 4

@_ZN10USARTClassC1EP5Usart4IRQnjP10RingBufferS4_ = dso_local unnamed_addr alias %class.USARTClass* (%class.USARTClass*, %struct.Usart*, i8, i32, %class.RingBuffer*, %class.RingBuffer*), %class.USARTClass* (%class.USARTClass*, %struct.Usart*, i8, i32, %class.RingBuffer*, %class.RingBuffer*)* @_ZN10USARTClassC2EP5Usart4IRQnjP10RingBufferS4_

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.USARTClass* @_ZN10USARTClassC2EP5Usart4IRQnjP10RingBufferS4_(%class.USARTClass* returned %this, %struct.Usart* %pUsart, i8 signext %dwIrq, i32 %dwId, %class.RingBuffer* %pRx_buffer, %class.RingBuffer* %pTx_buffer) unnamed_addr #0 align 2 !dbg !150 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.USARTClass*, align 4
  %pUsart.addr = alloca %struct.Usart*, align 4
  %dwIrq.addr = alloca i8, align 1
  %dwId.addr = alloca i32, align 4
  %pRx_buffer.addr = alloca %class.RingBuffer*, align 4
  %pTx_buffer.addr = alloca %class.RingBuffer*, align 4
  store %class.USARTClass* %this, %class.USARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USARTClass** %this.addr, metadata !153, metadata !DIExpression()), !dbg !155
  store %struct.Usart* %pUsart, %struct.Usart** %pUsart.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.Usart** %pUsart.addr, metadata !156, metadata !DIExpression()), !dbg !157
  store i8 %dwIrq, i8* %dwIrq.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %dwIrq.addr, metadata !158, metadata !DIExpression()), !dbg !159
  store i32 %dwId, i32* %dwId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwId.addr, metadata !160, metadata !DIExpression()), !dbg !161
  store %class.RingBuffer* %pRx_buffer, %class.RingBuffer** %pRx_buffer.addr, align 4
  call void @llvm.dbg.declare(metadata %class.RingBuffer** %pRx_buffer.addr, metadata !162, metadata !DIExpression()), !dbg !163
  store %class.RingBuffer* %pTx_buffer, %class.RingBuffer** %pTx_buffer.addr, align 4
  call void @llvm.dbg.declare(metadata %class.RingBuffer** %pTx_buffer.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %this1 = load %class.USARTClass*, %class.USARTClass** %this.addr, align 4
  %0 = bitcast %class.USARTClass* %this1 to %class.UARTClass*, !dbg !166
  %1 = load %struct.Usart*, %struct.Usart** %pUsart.addr, align 4, !dbg !167
  %2 = bitcast %struct.Usart* %1 to %struct.Uart*, !dbg !168
  %3 = load i8, i8* %dwIrq.addr, align 1, !dbg !169
  %4 = load i32, i32* %dwId.addr, align 4, !dbg !170
  %5 = load %class.RingBuffer*, %class.RingBuffer** %pRx_buffer.addr, align 4, !dbg !171
  %6 = load %class.RingBuffer*, %class.RingBuffer** %pTx_buffer.addr, align 4, !dbg !172
  %call = call arm_aapcscc %class.UARTClass* @_ZN9UARTClassC2EP4Uart4IRQnjP10RingBufferS4_(%class.UARTClass* %0, %struct.Uart* %2, i8 signext %3, i32 %4, %class.RingBuffer* %5, %class.RingBuffer* %6), !dbg !173
  %7 = bitcast %class.USARTClass* %this1 to i32 (...)***, !dbg !166
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [11 x i8*] }, { [11 x i8*] }* @_ZTV10USARTClass, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 4, !dbg !166
  %8 = load %struct.Usart*, %struct.Usart** %pUsart.addr, align 4, !dbg !174
  %_pUsart = getelementptr inbounds %class.USARTClass, %class.USARTClass* %this1, i32 0, i32 1, !dbg !176
  store %struct.Usart* %8, %struct.Usart** %_pUsart, align 4, !dbg !177
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USARTClassC2EP5Usart4IRQnjP10RingBufferS4_, %entry.RetBlock), i8** %ptr, align 4
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
  indirectbr i8* %19, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret %class.USARTClass* %this1, !dbg !178
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local arm_aapcscc %class.UARTClass* @_ZN9UARTClassC2EP4Uart4IRQnjP10RingBufferS4_(%class.UARTClass* returned, %struct.Uart*, i8 signext, i32, %class.RingBuffer*, %class.RingBuffer*) unnamed_addr #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN10USARTClass5beginEj(%class.USARTClass* %this, i32 %dwBaudRate) #0 align 2 !dbg !179 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.USARTClass*, align 4
  %dwBaudRate.addr = alloca i32, align 4
  store %class.USARTClass* %this, %class.USARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USARTClass** %this.addr, metadata !180, metadata !DIExpression()), !dbg !181
  store i32 %dwBaudRate, i32* %dwBaudRate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwBaudRate.addr, metadata !182, metadata !DIExpression()), !dbg !183
  %this1 = load %class.USARTClass*, %class.USARTClass** %this.addr, align 4
  %0 = load i32, i32* %dwBaudRate.addr, align 4, !dbg !184
  call arm_aapcscc void @_ZN10USARTClass5beginEjN9UARTClass9UARTModesE(%class.USARTClass* %this1, i32 %0, i16 zeroext 2240), !dbg !185
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USARTClass5beginEj, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN10USARTClass5beginEjN9UARTClass9UARTModesE(%class.USARTClass* %this, i32 %dwBaudRate, i16 zeroext %config) #0 align 2 !dbg !187 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.USARTClass*, align 4
  %dwBaudRate.addr = alloca i32, align 4
  %config.addr = alloca i16, align 2
  %modeReg = alloca i32, align 4
  store %class.USARTClass* %this, %class.USARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USARTClass** %this.addr, metadata !188, metadata !DIExpression()), !dbg !189
  store i32 %dwBaudRate, i32* %dwBaudRate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwBaudRate.addr, metadata !190, metadata !DIExpression()), !dbg !191
  store i16 %config, i16* %config.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %config.addr, metadata !192, metadata !DIExpression()), !dbg !193
  %this1 = load %class.USARTClass*, %class.USARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %modeReg, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = load i16, i16* %config.addr, align 2, !dbg !196
  %conv = zext i16 %0 to i32, !dbg !196
  store i32 %conv, i32* %modeReg, align 4, !dbg !195
  %1 = load i32, i32* %modeReg, align 4, !dbg !197
  store i32 %1, i32* %modeReg, align 4, !dbg !197
  %2 = bitcast %class.USARTClass* %this1 to %class.UARTClass*, !dbg !198
  %3 = load i32, i32* %dwBaudRate.addr, align 4, !dbg !199
  %4 = load i32, i32* %modeReg, align 4, !dbg !200
  call arm_aapcscc void @_ZN9UARTClass4initEjj(%class.UARTClass* %2, i32 %3, i32 %4), !dbg !198
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USARTClass5beginEjN9UARTClass9UARTModesE, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %11 to i32
  %xor = xor i32 %conv1, 133
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
  indirectbr i8* %15, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret void, !dbg !201
}

declare dso_local arm_aapcscc void @_ZN9UARTClass4initEjj(%class.UARTClass*, i32, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN10USARTClass5beginEjNS_10USARTModesE(%class.USARTClass* %this, i32 %dwBaudRate, i16 zeroext %config) #0 align 2 !dbg !202 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.USARTClass*, align 4
  %dwBaudRate.addr = alloca i32, align 4
  %config.addr = alloca i16, align 2
  %modeReg = alloca i32, align 4
  store %class.USARTClass* %this, %class.USARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.USARTClass** %this.addr, metadata !203, metadata !DIExpression()), !dbg !204
  store i32 %dwBaudRate, i32* %dwBaudRate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwBaudRate.addr, metadata !205, metadata !DIExpression()), !dbg !206
  store i16 %config, i16* %config.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %config.addr, metadata !207, metadata !DIExpression()), !dbg !208
  %this1 = load %class.USARTClass*, %class.USARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %modeReg, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load i16, i16* %config.addr, align 2, !dbg !211
  %conv = zext i16 %0 to i32, !dbg !211
  store i32 %conv, i32* %modeReg, align 4, !dbg !210
  %1 = load i32, i32* %modeReg, align 4, !dbg !212
  store i32 %1, i32* %modeReg, align 4, !dbg !212
  %2 = bitcast %class.USARTClass* %this1 to %class.UARTClass*, !dbg !213
  %3 = load i32, i32* %dwBaudRate.addr, align 4, !dbg !214
  %4 = load i32, i32* %modeReg, align 4, !dbg !215
  call arm_aapcscc void @_ZN9UARTClass4initEjj(%class.UARTClass* %2, i32 %3, i32 %4), !dbg !213
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN10USARTClass5beginEjNS_10USARTModesE, %entry.RetBlock), i8** %ptr, align 4
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
  %conv1 = zext i8 %11 to i32
  %xor = xor i32 %conv1, 133
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
  indirectbr i8* %15, [label %entry.RetBlock]

entry.RetBlock:                                   ; preds = %dec_jmp
  ret void, !dbg !216
}

declare dso_local arm_aapcscc i32 @_ZN9UARTClass5writeEh(%class.UARTClass*, i8 zeroext) unnamed_addr #2

declare dso_local arm_aapcscc i32 @_ZN5Print5writeEPKhj(%class.Print*, i8*, i32) unnamed_addr #2

declare dso_local arm_aapcscc i32 @_ZN9UARTClass9availableEv(%class.UARTClass*) unnamed_addr #2

declare dso_local arm_aapcscc i32 @_ZN9UARTClass4readEv(%class.UARTClass*) unnamed_addr #2

declare dso_local arm_aapcscc i32 @_ZN9UARTClass4peekEv(%class.UARTClass*) unnamed_addr #2

declare dso_local arm_aapcscc void @_ZN9UARTClass5flushEv(%class.UARTClass*) unnamed_addr #2

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc void @_ZN14HardwareSerial5beginEm(%class.HardwareSerial* %this, i32 %0) unnamed_addr #0 comdat align 2 !dbg !217 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.HardwareSerial*, align 4
  %.addr = alloca i32, align 4
  store %class.HardwareSerial* %this, %class.HardwareSerial** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.HardwareSerial** %this.addr, metadata !225, metadata !DIExpression()), !dbg !227
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !228, metadata !DIExpression()), !dbg !229
  %this1 = load %class.HardwareSerial*, %class.HardwareSerial** %this.addr, align 4
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN14HardwareSerial5beginEm, %entry.RetBlock), i8** %ptr, align 4
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
  ret void, !dbg !230
}

declare dso_local arm_aapcscc void @_ZN9UARTClass3endEv(%class.UARTClass*) unnamed_addr #2

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc zeroext i1 @_ZN9UARTClasscvbEv(%class.UARTClass* %this) unnamed_addr #0 comdat align 2 !dbg !231 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %this.addr = alloca %class.UARTClass*, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !237, metadata !DIExpression()), !dbg !239
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  br label %dec_start

dec_start:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx, i8** %ptr2, align 4
  store i8* blockaddress(@_ZN9UARTClasscvbEv, %entry.RetBlock), i8** %ptr, align 4
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
  ret i1 true, !dbg !240
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USARTClass.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{!3, !57, !67}
!3 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !4, line: 64, baseType: !5, size: 8, elements: !6, identifier: "_ZTS4IRQn")
!4 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!5 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!7 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!8 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!9 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!10 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!11 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!12 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!13 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!14 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!15 = !DIEnumerator(name: "SUPC_IRQn", value: 0)
!16 = !DIEnumerator(name: "RSTC_IRQn", value: 1)
!17 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!18 = !DIEnumerator(name: "RTT_IRQn", value: 3)
!19 = !DIEnumerator(name: "WDT_IRQn", value: 4)
!20 = !DIEnumerator(name: "PMC_IRQn", value: 5)
!21 = !DIEnumerator(name: "EFC0_IRQn", value: 6)
!22 = !DIEnumerator(name: "EFC1_IRQn", value: 7)
!23 = !DIEnumerator(name: "UART_IRQn", value: 8)
!24 = !DIEnumerator(name: "SMC_IRQn", value: 9)
!25 = !DIEnumerator(name: "PIOA_IRQn", value: 11)
!26 = !DIEnumerator(name: "PIOB_IRQn", value: 12)
!27 = !DIEnumerator(name: "PIOC_IRQn", value: 13)
!28 = !DIEnumerator(name: "PIOD_IRQn", value: 14)
!29 = !DIEnumerator(name: "USART0_IRQn", value: 17)
!30 = !DIEnumerator(name: "USART1_IRQn", value: 18)
!31 = !DIEnumerator(name: "USART2_IRQn", value: 19)
!32 = !DIEnumerator(name: "USART3_IRQn", value: 20)
!33 = !DIEnumerator(name: "HSMCI_IRQn", value: 21)
!34 = !DIEnumerator(name: "TWI0_IRQn", value: 22)
!35 = !DIEnumerator(name: "TWI1_IRQn", value: 23)
!36 = !DIEnumerator(name: "SPI0_IRQn", value: 24)
!37 = !DIEnumerator(name: "SSC_IRQn", value: 26)
!38 = !DIEnumerator(name: "TC0_IRQn", value: 27)
!39 = !DIEnumerator(name: "TC1_IRQn", value: 28)
!40 = !DIEnumerator(name: "TC2_IRQn", value: 29)
!41 = !DIEnumerator(name: "TC3_IRQn", value: 30)
!42 = !DIEnumerator(name: "TC4_IRQn", value: 31)
!43 = !DIEnumerator(name: "TC5_IRQn", value: 32)
!44 = !DIEnumerator(name: "TC6_IRQn", value: 33)
!45 = !DIEnumerator(name: "TC7_IRQn", value: 34)
!46 = !DIEnumerator(name: "TC8_IRQn", value: 35)
!47 = !DIEnumerator(name: "PWM_IRQn", value: 36)
!48 = !DIEnumerator(name: "ADC_IRQn", value: 37)
!49 = !DIEnumerator(name: "DACC_IRQn", value: 38)
!50 = !DIEnumerator(name: "DMAC_IRQn", value: 39)
!51 = !DIEnumerator(name: "UOTGHS_IRQn", value: 40)
!52 = !DIEnumerator(name: "TRNG_IRQn", value: 41)
!53 = !DIEnumerator(name: "EMAC_IRQn", value: 42)
!54 = !DIEnumerator(name: "CAN0_IRQn", value: 43)
!55 = !DIEnumerator(name: "CAN1_IRQn", value: 44)
!56 = !DIEnumerator(name: "PERIPH_COUNT_IRQn", value: 45)
!57 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "UARTModes", scope: !59, file: !58, line: 38, baseType: !60, size: 16, elements: !61, identifier: "_ZTSN9UARTClass9UARTModesE")
!58 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/UARTClass.h", directory: "/home/aaa")
!59 = !DICompositeType(tag: DW_TAG_class_type, name: "UARTClass", file: !58, line: 35, flags: DIFlagFwdDecl)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "Mode_8N1", value: 2240, isUnsigned: true)
!63 = !DIEnumerator(name: "Mode_8E1", value: 192, isUnsigned: true)
!64 = !DIEnumerator(name: "Mode_8O1", value: 704, isUnsigned: true)
!65 = !DIEnumerator(name: "Mode_8M1", value: 1728, isUnsigned: true)
!66 = !DIEnumerator(name: "Mode_8S1", value: 1216, isUnsigned: true)
!67 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "USARTModes", scope: !69, file: !68, line: 70, baseType: !60, size: 16, elements: !104, identifier: "_ZTSN10USARTClass10USARTModesE")
!68 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USARTClass.h", directory: "/home/aaa")
!69 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "USARTClass", file: !68, line: 66, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !70, vtableHolder: !102, identifier: "_ZTS10USARTClass")
!70 = !{!71, !72, !77, !90, !94, !98}
!71 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !69, baseType: !59, flags: DIFlagPublic, extraData: i32 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_pUsart", scope: !69, file: !68, line: 115, baseType: !73, size: 32, offset: 288, flags: DIFlagProtected)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "Usart", file: !75, line: 75, baseType: !76)
!75 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_usart.h", directory: "/home/aaa")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 41, flags: DIFlagFwdDecl, identifier: "_ZTS5Usart")
!77 = !DISubprogram(name: "USARTClass", scope: !69, file: !68, line: 108, type: !78, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !73, !81, !82, !87, !87}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !4, line: 120, baseType: !3)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !83, line: 66, baseType: !84)
!83 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !85, line: 56, baseType: !86)
!85 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RingBuffer", file: !89, line: 30, flags: DIFlagFwdDecl, identifier: "_ZTS10RingBuffer")
!89 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/RingBuffer.h", directory: "/home/aaa")
!90 = !DISubprogram(name: "begin", linkageName: "_ZN10USARTClass5beginEj", scope: !69, file: !68, line: 110, type: !91, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !80, !93}
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!94 = !DISubprogram(name: "begin", linkageName: "_ZN10USARTClass5beginEjNS_10USARTModesE", scope: !69, file: !68, line: 111, type: !95, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !80, !93, !97}
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!98 = !DISubprogram(name: "begin", linkageName: "_ZN10USARTClass5beginEjN9UARTClass9UARTModesE", scope: !69, file: !68, line: 112, type: !99, scopeLine: 112, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !80, !93, !101}
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!102 = !DICompositeType(tag: DW_TAG_class_type, name: "Print", file: !103, line: 34, flags: DIFlagFwdDecl)
!103 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.h", directory: "/home/aaa")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!105 = !DIEnumerator(name: "Mode_5N1", value: 2048, isUnsigned: true)
!106 = !DIEnumerator(name: "Mode_6N1", value: 2112, isUnsigned: true)
!107 = !DIEnumerator(name: "Mode_7N1", value: 2176, isUnsigned: true)
!108 = !DIEnumerator(name: "Mode_5N2", value: 10240, isUnsigned: true)
!109 = !DIEnumerator(name: "Mode_6N2", value: 10304, isUnsigned: true)
!110 = !DIEnumerator(name: "Mode_7N2", value: 10368, isUnsigned: true)
!111 = !DIEnumerator(name: "Mode_8N2", value: 10432, isUnsigned: true)
!112 = !DIEnumerator(name: "Mode_5E1", value: 0, isUnsigned: true)
!113 = !DIEnumerator(name: "Mode_6E1", value: 64, isUnsigned: true)
!114 = !DIEnumerator(name: "Mode_7E1", value: 128, isUnsigned: true)
!115 = !DIEnumerator(name: "Mode_5E2", value: 8192, isUnsigned: true)
!116 = !DIEnumerator(name: "Mode_6E2", value: 8256, isUnsigned: true)
!117 = !DIEnumerator(name: "Mode_7E2", value: 8320, isUnsigned: true)
!118 = !DIEnumerator(name: "Mode_8E2", value: 8384, isUnsigned: true)
!119 = !DIEnumerator(name: "Mode_5O1", value: 512, isUnsigned: true)
!120 = !DIEnumerator(name: "Mode_6O1", value: 576, isUnsigned: true)
!121 = !DIEnumerator(name: "Mode_7O1", value: 640, isUnsigned: true)
!122 = !DIEnumerator(name: "Mode_5O2", value: 8704, isUnsigned: true)
!123 = !DIEnumerator(name: "Mode_6O2", value: 8768, isUnsigned: true)
!124 = !DIEnumerator(name: "Mode_7O2", value: 8832, isUnsigned: true)
!125 = !DIEnumerator(name: "Mode_8O2", value: 8896, isUnsigned: true)
!126 = !DIEnumerator(name: "Mode_5M1", value: 1536, isUnsigned: true)
!127 = !DIEnumerator(name: "Mode_6M1", value: 1600, isUnsigned: true)
!128 = !DIEnumerator(name: "Mode_7M1", value: 1664, isUnsigned: true)
!129 = !DIEnumerator(name: "Mode_5M2", value: 9728, isUnsigned: true)
!130 = !DIEnumerator(name: "Mode_6M2", value: 9792, isUnsigned: true)
!131 = !DIEnumerator(name: "Mode_7M2", value: 9856, isUnsigned: true)
!132 = !DIEnumerator(name: "Mode_8M2", value: 9920, isUnsigned: true)
!133 = !DIEnumerator(name: "Mode_5S1", value: 1024, isUnsigned: true)
!134 = !DIEnumerator(name: "Mode_6S1", value: 1088, isUnsigned: true)
!135 = !DIEnumerator(name: "Mode_7S1", value: 1152, isUnsigned: true)
!136 = !DIEnumerator(name: "Mode_5S2", value: 9216, isUnsigned: true)
!137 = !DIEnumerator(name: "Mode_6S2", value: 9280, isUnsigned: true)
!138 = !DIEnumerator(name: "Mode_7S2", value: 9344, isUnsigned: true)
!139 = !DIEnumerator(name: "Mode_8S2", value: 9408, isUnsigned: true)
!140 = !{!141, !82}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uart", file: !143, line: 62, baseType: !144)
!143 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_uart.h", directory: "/home/aaa")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 41, flags: DIFlagFwdDecl, identifier: "_ZTS4Uart")
!145 = !{i32 7, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"wchar_size", i32 4}
!148 = !{i32 1, !"min_enum_size", i32 1}
!149 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!150 = distinct !DISubprogram(name: "USARTClass", linkageName: "_ZN10USARTClassC2EP5Usart4IRQnjP10RingBufferS4_", scope: !69, file: !151, line: 26, type: !78, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !77, retainedNodes: !152)
!151 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USARTClass.cpp", directory: "/home/aaa")
!152 = !{}
!153 = !DILocalVariable(name: "this", arg: 1, scope: !150, type: !154, flags: DIFlagArtificial | DIFlagObjectPointer)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!155 = !DILocation(line: 0, scope: !150)
!156 = !DILocalVariable(name: "pUsart", arg: 2, scope: !150, file: !151, line: 26, type: !73)
!157 = !DILocation(line: 26, column: 32, scope: !150)
!158 = !DILocalVariable(name: "dwIrq", arg: 3, scope: !150, file: !151, line: 26, type: !81)
!159 = !DILocation(line: 26, column: 50, scope: !150)
!160 = !DILocalVariable(name: "dwId", arg: 4, scope: !150, file: !151, line: 26, type: !82)
!161 = !DILocation(line: 26, column: 66, scope: !150)
!162 = !DILocalVariable(name: "pRx_buffer", arg: 5, scope: !150, file: !151, line: 26, type: !87)
!163 = !DILocation(line: 26, column: 84, scope: !150)
!164 = !DILocalVariable(name: "pTx_buffer", arg: 6, scope: !150, file: !151, line: 26, type: !87)
!165 = !DILocation(line: 26, column: 108, scope: !150)
!166 = !DILocation(line: 28, column: 1, scope: !150)
!167 = !DILocation(line: 27, column: 22, scope: !150)
!168 = !DILocation(line: 27, column: 15, scope: !150)
!169 = !DILocation(line: 27, column: 30, scope: !150)
!170 = !DILocation(line: 27, column: 37, scope: !150)
!171 = !DILocation(line: 27, column: 43, scope: !150)
!172 = !DILocation(line: 27, column: 55, scope: !150)
!173 = !DILocation(line: 27, column: 5, scope: !150)
!174 = !DILocation(line: 30, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !150, file: !151, line: 28, column: 1)
!176 = !DILocation(line: 30, column: 3, scope: !175)
!177 = !DILocation(line: 30, column: 10, scope: !175)
!178 = !DILocation(line: 31, column: 1, scope: !150)
!179 = distinct !DISubprogram(name: "begin", linkageName: "_ZN10USARTClass5beginEj", scope: !69, file: !151, line: 35, type: !91, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !90, retainedNodes: !152)
!180 = !DILocalVariable(name: "this", arg: 1, scope: !179, type: !154, flags: DIFlagArtificial | DIFlagObjectPointer)
!181 = !DILocation(line: 0, scope: !179)
!182 = !DILocalVariable(name: "dwBaudRate", arg: 2, scope: !179, file: !151, line: 35, type: !93)
!183 = !DILocation(line: 35, column: 39, scope: !179)
!184 = !DILocation(line: 37, column: 9, scope: !179)
!185 = !DILocation(line: 37, column: 3, scope: !179)
!186 = !DILocation(line: 38, column: 1, scope: !179)
!187 = distinct !DISubprogram(name: "begin", linkageName: "_ZN10USARTClass5beginEjN9UARTClass9UARTModesE", scope: !69, file: !151, line: 40, type: !99, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !98, retainedNodes: !152)
!188 = !DILocalVariable(name: "this", arg: 1, scope: !187, type: !154, flags: DIFlagArtificial | DIFlagObjectPointer)
!189 = !DILocation(line: 0, scope: !187)
!190 = !DILocalVariable(name: "dwBaudRate", arg: 2, scope: !187, file: !151, line: 40, type: !93)
!191 = !DILocation(line: 40, column: 39, scope: !187)
!192 = !DILocalVariable(name: "config", arg: 3, scope: !187, file: !151, line: 40, type: !101)
!193 = !DILocation(line: 40, column: 67, scope: !187)
!194 = !DILocalVariable(name: "modeReg", scope: !187, file: !151, line: 42, type: !82)
!195 = !DILocation(line: 42, column: 12, scope: !187)
!196 = !DILocation(line: 42, column: 44, scope: !187)
!197 = !DILocation(line: 43, column: 11, scope: !187)
!198 = !DILocation(line: 44, column: 3, scope: !187)
!199 = !DILocation(line: 44, column: 8, scope: !187)
!200 = !DILocation(line: 44, column: 20, scope: !187)
!201 = !DILocation(line: 45, column: 1, scope: !187)
!202 = distinct !DISubprogram(name: "begin", linkageName: "_ZN10USARTClass5beginEjNS_10USARTModesE", scope: !69, file: !151, line: 47, type: !95, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !94, retainedNodes: !152)
!203 = !DILocalVariable(name: "this", arg: 1, scope: !202, type: !154, flags: DIFlagArtificial | DIFlagObjectPointer)
!204 = !DILocation(line: 0, scope: !202)
!205 = !DILocalVariable(name: "dwBaudRate", arg: 2, scope: !202, file: !151, line: 47, type: !93)
!206 = !DILocation(line: 47, column: 39, scope: !202)
!207 = !DILocalVariable(name: "config", arg: 3, scope: !202, file: !151, line: 47, type: !97)
!208 = !DILocation(line: 47, column: 68, scope: !202)
!209 = !DILocalVariable(name: "modeReg", scope: !202, file: !151, line: 49, type: !82)
!210 = !DILocation(line: 49, column: 12, scope: !202)
!211 = !DILocation(line: 49, column: 44, scope: !202)
!212 = !DILocation(line: 50, column: 11, scope: !202)
!213 = !DILocation(line: 51, column: 3, scope: !202)
!214 = !DILocation(line: 51, column: 8, scope: !202)
!215 = !DILocation(line: 51, column: 20, scope: !202)
!216 = !DILocation(line: 52, column: 1, scope: !202)
!217 = distinct !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEm", scope: !219, file: !218, line: 29, type: !220, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !224, retainedNodes: !152)
!218 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/HardwareSerial.h", directory: "/home/aaa")
!219 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "HardwareSerial", file: !218, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS14HardwareSerial")
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222, !223}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!223 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!224 = !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEm", scope: !219, file: !218, line: 29, type: !220, scopeLine: 29, containingType: !219, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!225 = !DILocalVariable(name: "this", arg: 1, scope: !217, type: !226, flags: DIFlagArtificial | DIFlagObjectPointer)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!227 = !DILocation(line: 0, scope: !217)
!228 = !DILocalVariable(arg: 2, scope: !217, file: !218, line: 29, type: !223)
!229 = !DILocation(line: 29, column: 37, scope: !217)
!230 = !DILocation(line: 29, column: 41, scope: !217)
!231 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZN9UARTClasscvbEv", scope: !59, file: !58, line: 63, type: !232, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !236, retainedNodes: !152)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !235}
!234 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!236 = !DISubprogram(name: "operator bool", linkageName: "_ZN9UARTClasscvbEv", scope: !59, file: !58, line: 63, type: !232, scopeLine: 63, containingType: !59, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!237 = !DILocalVariable(name: "this", arg: 1, scope: !231, type: !238, flags: DIFlagArtificial | DIFlagObjectPointer)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!239 = !DILocation(line: 0, scope: !231)
!240 = !DILocation(line: 63, column: 23, scope: !231)

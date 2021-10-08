; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/UARTClass.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/UARTClass.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.UARTClass = type { %class.HardwareSerial, %class.RingBuffer*, %class.RingBuffer*, %struct.Uart*, i8, i32 }
%class.HardwareSerial = type { %class.Stream }
%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i32 }
%struct.Uart = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [55 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%class.RingBuffer = type { [128 x i8], i32, i32 }
%struct.NVIC_Type = type { [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [56 x i32], [240 x i8], [644 x i32], i32 }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [4 x i32], [5 x i32], [5 x i32], i32 }

$_ZN14HardwareSerialC2Ev = comdat any

$_ZN14HardwareSerial5beginEm = comdat any

$_ZN9UARTClasscvbEv = comdat any

$_ZN6StreamC2Ev = comdat any

$_ZN14HardwareSerial3endEv = comdat any

$_ZN5PrintC2Ev = comdat any

$_ZTV14HardwareSerial = comdat any

$_ZTV6Stream = comdat any

@_ZTV9UARTClass = dso_local unnamed_addr constant { [11 x i8*] } { [11 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%class.UARTClass*, i8)* @_ZN9UARTClass5writeEh to i8*), i8* bitcast (i32 (%class.Print*, i8*, i32)* @_ZN5Print5writeEPKhj to i8*), i8* bitcast (i32 (%class.UARTClass*)* @_ZN9UARTClass9availableEv to i8*), i8* bitcast (i32 (%class.UARTClass*)* @_ZN9UARTClass4readEv to i8*), i8* bitcast (i32 (%class.UARTClass*)* @_ZN9UARTClass4peekEv to i8*), i8* bitcast (void (%class.UARTClass*)* @_ZN9UARTClass5flushEv to i8*), i8* bitcast (void (%class.HardwareSerial*, i32)* @_ZN14HardwareSerial5beginEm to i8*), i8* bitcast (void (%class.UARTClass*)* @_ZN9UARTClass3endEv to i8*), i8* bitcast (i1 (%class.UARTClass*)* @_ZN9UARTClasscvbEv to i8*)] }, align 4
@SystemCoreClock = external dso_local global i32, align 4
@_ZTV14HardwareSerial = linkonce_odr dso_local unnamed_addr constant { [11 x i8*] } { [11 x i8*] [i8* null, i8* null, i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i32 (%class.Print*, i8*, i32)* @_ZN5Print5writeEPKhj to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%class.HardwareSerial*, i32)* @_ZN14HardwareSerial5beginEm to i8*), i8* bitcast (void (%class.HardwareSerial*)* @_ZN14HardwareSerial3endEv to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 4
@_ZTV6Stream = linkonce_odr dso_local unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* null, i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i32 (%class.Print*, i8*, i32)* @_ZN5Print5writeEPKhj to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 4
@_ZTV5Print = external dso_local unnamed_addr constant { [4 x i8*] }, align 4

@_ZN9UARTClassC1EP4Uart4IRQnjP10RingBufferS4_ = dso_local unnamed_addr alias %class.UARTClass* (%class.UARTClass*, %struct.Uart*, i8, i32, %class.RingBuffer*, %class.RingBuffer*), %class.UARTClass* (%class.UARTClass*, %struct.Uart*, i8, i32, %class.RingBuffer*, %class.RingBuffer*)* @_ZN9UARTClassC2EP4Uart4IRQnjP10RingBufferS4_

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.UARTClass* @_ZN9UARTClassC2EP4Uart4IRQnjP10RingBufferS4_(%class.UARTClass* returned %this, %struct.Uart* %pUart, i8 signext %dwIrq, i32 %dwId, %class.RingBuffer* %pRx_buffer, %class.RingBuffer* %pTx_buffer) unnamed_addr #0 align 2 !dbg !637 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  %pUart.addr = alloca %struct.Uart*, align 4
  %dwIrq.addr = alloca i8, align 1
  %dwId.addr = alloca i32, align 4
  %pRx_buffer.addr = alloca %class.RingBuffer*, align 4
  %pTx_buffer.addr = alloca %class.RingBuffer*, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !640, metadata !DIExpression()), !dbg !642
  store %struct.Uart* %pUart, %struct.Uart** %pUart.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.Uart** %pUart.addr, metadata !643, metadata !DIExpression()), !dbg !644
  store i8 %dwIrq, i8* %dwIrq.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %dwIrq.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i32 %dwId, i32* %dwId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwId.addr, metadata !647, metadata !DIExpression()), !dbg !648
  store %class.RingBuffer* %pRx_buffer, %class.RingBuffer** %pRx_buffer.addr, align 4
  call void @llvm.dbg.declare(metadata %class.RingBuffer** %pRx_buffer.addr, metadata !649, metadata !DIExpression()), !dbg !650
  store %class.RingBuffer* %pTx_buffer, %class.RingBuffer** %pTx_buffer.addr, align 4
  call void @llvm.dbg.declare(metadata %class.RingBuffer** %pTx_buffer.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %0 = bitcast %class.UARTClass* %this1 to %class.HardwareSerial*, !dbg !653
  %call = call arm_aapcscc %class.HardwareSerial* @_ZN14HardwareSerialC2Ev(%class.HardwareSerial* %0), !dbg !654
  %1 = bitcast %class.UARTClass* %this1 to i32 (...)***, !dbg !653
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [11 x i8*] }, { [11 x i8*] }* @_ZTV9UARTClass, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !653
  %2 = load %class.RingBuffer*, %class.RingBuffer** %pRx_buffer.addr, align 4, !dbg !655
  %_rx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !657
  store %class.RingBuffer* %2, %class.RingBuffer** %_rx_buffer, align 4, !dbg !658
  %3 = load %class.RingBuffer*, %class.RingBuffer** %pTx_buffer.addr, align 4, !dbg !659
  %_tx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !660
  store %class.RingBuffer* %3, %class.RingBuffer** %_tx_buffer, align 4, !dbg !661
  %4 = load %struct.Uart*, %struct.Uart** %pUart.addr, align 4, !dbg !662
  %_pUart = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !663
  store %struct.Uart* %4, %struct.Uart** %_pUart, align 4, !dbg !664
  %5 = load i8, i8* %dwIrq.addr, align 1, !dbg !665
  %_dwIrq = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 4, !dbg !666
  store i8 %5, i8* %_dwIrq, align 4, !dbg !667
  %6 = load i32, i32* %dwId.addr, align 4, !dbg !668
  %_dwId = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 5, !dbg !669
  store i32 %6, i32* %_dwId, align 4, !dbg !670
  ret %class.UARTClass* %this1, !dbg !671
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.HardwareSerial* @_ZN14HardwareSerialC2Ev(%class.HardwareSerial* returned %this) unnamed_addr #0 comdat align 2 !dbg !672 {
entry:
  %this.addr = alloca %class.HardwareSerial*, align 4
  store %class.HardwareSerial* %this, %class.HardwareSerial** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.HardwareSerial** %this.addr, metadata !674, metadata !DIExpression()), !dbg !676
  %this1 = load %class.HardwareSerial*, %class.HardwareSerial** %this.addr, align 4
  %0 = bitcast %class.HardwareSerial* %this1 to %class.Stream*, !dbg !677
  %call = call arm_aapcscc %class.Stream* @_ZN6StreamC2Ev(%class.Stream* %0), !dbg !677
  %1 = bitcast %class.HardwareSerial* %this1 to i32 (...)***, !dbg !677
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [11 x i8*] }, { [11 x i8*] }* @_ZTV14HardwareSerial, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !677
  ret %class.HardwareSerial* %this1, !dbg !677
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN9UARTClass5beginEj(%class.UARTClass* %this, i32 %dwBaudRate) #0 align 2 !dbg !678 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  %dwBaudRate.addr = alloca i32, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !679, metadata !DIExpression()), !dbg !680
  store i32 %dwBaudRate, i32* %dwBaudRate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwBaudRate.addr, metadata !681, metadata !DIExpression()), !dbg !682
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %0 = load i32, i32* %dwBaudRate.addr, align 4, !dbg !683
  call arm_aapcscc void @_ZN9UARTClass5beginEjNS_9UARTModesE(%class.UARTClass* %this1, i32 %0, i16 zeroext 2240), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN9UARTClass5beginEjNS_9UARTModesE(%class.UARTClass* %this, i32 %dwBaudRate, i16 zeroext %config) #0 align 2 !dbg !686 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  %dwBaudRate.addr = alloca i32, align 4
  %config.addr = alloca i16, align 2
  %modeReg = alloca i32, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !687, metadata !DIExpression()), !dbg !688
  store i32 %dwBaudRate, i32* %dwBaudRate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwBaudRate.addr, metadata !689, metadata !DIExpression()), !dbg !690
  store i16 %config, i16* %config.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %config.addr, metadata !691, metadata !DIExpression()), !dbg !692
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %modeReg, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load i16, i16* %config.addr, align 2, !dbg !695
  %conv = zext i16 %0 to i32, !dbg !695
  %and = and i32 %conv, 3584, !dbg !696
  store i32 %and, i32* %modeReg, align 4, !dbg !694
  %1 = load i32, i32* %dwBaudRate.addr, align 4, !dbg !697
  %2 = load i32, i32* %modeReg, align 4, !dbg !698
  call arm_aapcscc void @_ZN9UARTClass4initEjj(%class.UARTClass* %this1, i32 %1, i32 %2), !dbg !699
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN9UARTClass4initEjj(%class.UARTClass* %this, i32 %dwBaudRate, i32 %modeReg) #0 align 2 !dbg !701 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  %dwBaudRate.addr = alloca i32, align 4
  %modeReg.addr = alloca i32, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !702, metadata !DIExpression()), !dbg !703
  store i32 %dwBaudRate, i32* %dwBaudRate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dwBaudRate.addr, metadata !704, metadata !DIExpression()), !dbg !705
  store i32 %modeReg, i32* %modeReg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %modeReg.addr, metadata !706, metadata !DIExpression()), !dbg !707
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %_dwId = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 5, !dbg !708
  %0 = load i32, i32* %_dwId, align 4, !dbg !708
  %call = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 %0), !dbg !709
  %_pUart = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !710
  %1 = load %struct.Uart*, %struct.Uart** %_pUart, align 4, !dbg !710
  %UART_PTCR = getelementptr inbounds %struct.Uart, %struct.Uart* %1, i32 0, i32 18, !dbg !711
  store volatile i32 514, i32* %UART_PTCR, align 4, !dbg !712
  %_pUart2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !713
  %2 = load %struct.Uart*, %struct.Uart** %_pUart2, align 4, !dbg !713
  %UART_CR = getelementptr inbounds %struct.Uart, %struct.Uart* %2, i32 0, i32 0, !dbg !714
  store volatile i32 172, i32* %UART_CR, align 4, !dbg !715
  %3 = load i32, i32* %modeReg.addr, align 4, !dbg !716
  %_pUart3 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !717
  %4 = load %struct.Uart*, %struct.Uart** %_pUart3, align 4, !dbg !717
  %UART_MR = getelementptr inbounds %struct.Uart, %struct.Uart* %4, i32 0, i32 1, !dbg !718
  store volatile i32 %3, i32* %UART_MR, align 4, !dbg !719
  %5 = load i32, i32* @SystemCoreClock, align 4, !dbg !720
  %6 = load i32, i32* %dwBaudRate.addr, align 4, !dbg !721
  %div = udiv i32 %5, %6, !dbg !722
  %shr = lshr i32 %div, 4, !dbg !723
  %_pUart4 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !724
  %7 = load %struct.Uart*, %struct.Uart** %_pUart4, align 4, !dbg !724
  %UART_BRGR = getelementptr inbounds %struct.Uart, %struct.Uart* %7, i32 0, i32 8, !dbg !725
  store volatile i32 %shr, i32* %UART_BRGR, align 4, !dbg !726
  %_pUart5 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !727
  %8 = load %struct.Uart*, %struct.Uart** %_pUart5, align 4, !dbg !727
  %UART_IDR = getelementptr inbounds %struct.Uart, %struct.Uart* %8, i32 0, i32 3, !dbg !728
  store volatile i32 -1, i32* %UART_IDR, align 4, !dbg !729
  %_pUart6 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !730
  %9 = load %struct.Uart*, %struct.Uart** %_pUart6, align 4, !dbg !730
  %UART_IER = getelementptr inbounds %struct.Uart, %struct.Uart* %9, i32 0, i32 2, !dbg !731
  store volatile i32 97, i32* %UART_IER, align 4, !dbg !732
  %_dwIrq = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 4, !dbg !733
  %10 = load i8, i8* %_dwIrq, align 4, !dbg !733
  call arm_aapcscc void @_ZL14NVIC_EnableIRQ4IRQn(i8 signext %10), !dbg !734
  %_rx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !735
  %11 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer, align 4, !dbg !735
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %11, i32 0, i32 2, !dbg !736
  store volatile i32 0, i32* %_iTail, align 4, !dbg !737
  %12 = load volatile i32, i32* %_iTail, align 4, !dbg !737
  %_rx_buffer7 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !738
  %13 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer7, align 4, !dbg !738
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %13, i32 0, i32 1, !dbg !739
  store volatile i32 %12, i32* %_iHead, align 4, !dbg !740
  %_tx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !741
  %14 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer, align 4, !dbg !741
  %_iTail8 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %14, i32 0, i32 2, !dbg !742
  store volatile i32 0, i32* %_iTail8, align 4, !dbg !743
  %15 = load volatile i32, i32* %_iTail8, align 4, !dbg !743
  %_tx_buffer9 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !744
  %16 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer9, align 4, !dbg !744
  %_iHead10 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %16, i32 0, i32 1, !dbg !745
  store volatile i32 %15, i32* %_iHead10, align 4, !dbg !746
  %_pUart11 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !747
  %17 = load %struct.Uart*, %struct.Uart** %_pUart11, align 4, !dbg !747
  %UART_CR12 = getelementptr inbounds %struct.Uart, %struct.Uart* %17, i32 0, i32 0, !dbg !748
  store volatile i32 80, i32* %UART_CR12, align 4, !dbg !749
  ret void, !dbg !750
}

declare dso_local arm_aapcscc i32 @pmc_enable_periph_clk(i32) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @_ZL14NVIC_EnableIRQ4IRQn(i8 signext %IRQn) #0 !dbg !751 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !754, metadata !DIExpression()), !dbg !755
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !756
  %conv = sext i8 %0 to i32, !dbg !757
  %and = and i32 %conv, 31, !dbg !758
  %shl = shl i32 1, %and, !dbg !759
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !760
  %conv1 = sext i8 %1 to i32, !dbg !761
  %shr = lshr i32 %conv1, 5, !dbg !762
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 0), i32 0, i32 %shr, !dbg !763
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !764
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN9UARTClass3endEv(%class.UARTClass* %this) unnamed_addr #0 align 2 !dbg !766 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !767, metadata !DIExpression()), !dbg !768
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %_rx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !769
  %0 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer, align 4, !dbg !769
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %0, i32 0, i32 2, !dbg !770
  %1 = load volatile i32, i32* %_iTail, align 4, !dbg !770
  %_rx_buffer2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !771
  %2 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer2, align 4, !dbg !771
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %2, i32 0, i32 1, !dbg !772
  store volatile i32 %1, i32* %_iHead, align 4, !dbg !773
  %3 = bitcast %class.UARTClass* %this1 to void (%class.UARTClass*)***, !dbg !774
  %vtable = load void (%class.UARTClass*)**, void (%class.UARTClass*)*** %3, align 4, !dbg !774
  %vfn = getelementptr inbounds void (%class.UARTClass*)*, void (%class.UARTClass*)** %vtable, i64 5, !dbg !774
  %4 = load void (%class.UARTClass*)*, void (%class.UARTClass*)** %vfn, align 4, !dbg !774
  call arm_aapcscc void %4(%class.UARTClass* %this1), !dbg !774
  %_dwIrq = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 4, !dbg !775
  %5 = load i8, i8* %_dwIrq, align 4, !dbg !775
  call arm_aapcscc void @_ZL15NVIC_DisableIRQ4IRQn(i8 signext %5), !dbg !776
  %_dwId = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 5, !dbg !777
  %6 = load i32, i32* %_dwId, align 4, !dbg !777
  %call = call arm_aapcscc i32 @pmc_disable_periph_clk(i32 %6), !dbg !778
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @_ZL15NVIC_DisableIRQ4IRQn(i8 signext %IRQn) #0 !dbg !780 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !781, metadata !DIExpression()), !dbg !782
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !783
  %conv = sext i8 %0 to i32, !dbg !784
  %and = and i32 %conv, 31, !dbg !785
  %shl = shl i32 1, %and, !dbg !786
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !787
  %conv1 = sext i8 %1 to i32, !dbg !788
  %shr = lshr i32 %conv1, 5, !dbg !789
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 2), i32 0, i32 %shr, !dbg !790
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !791
  ret void, !dbg !792
}

declare dso_local arm_aapcscc i32 @pmc_disable_periph_clk(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN9UARTClass20setInterruptPriorityEj(%class.UARTClass* %this, i32 %priority) #0 align 2 !dbg !793 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  %priority.addr = alloca i32, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !794, metadata !DIExpression()), !dbg !795
  store i32 %priority, i32* %priority.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %priority.addr, metadata !796, metadata !DIExpression()), !dbg !797
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %_dwIrq = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 4, !dbg !798
  %0 = load i8, i8* %_dwIrq, align 4, !dbg !798
  %1 = load i32, i32* %priority.addr, align 4, !dbg !799
  %and = and i32 %1, 15, !dbg !800
  call arm_aapcscc void @_ZL16NVIC_SetPriority4IRQnj(i8 signext %0, i32 %and), !dbg !801
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @_ZL16NVIC_SetPriority4IRQnj(i8 signext %IRQn, i32 %priority) #0 !dbg !803 {
entry:
  %IRQn.addr = alloca i8, align 1
  %priority.addr = alloca i32, align 4
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store i32 %priority, i32* %priority.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %priority.addr, metadata !808, metadata !DIExpression()), !dbg !809
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !810
  %conv = sext i8 %0 to i32, !dbg !810
  %cmp = icmp slt i32 %conv, 0, !dbg !812
  br i1 %cmp, label %if.then, label %if.else, !dbg !813

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %priority.addr, align 4, !dbg !814
  %shl = shl i32 %1, 4, !dbg !816
  %and = and i32 %shl, 255, !dbg !817
  %conv1 = trunc i32 %and to i8, !dbg !818
  %2 = load i8, i8* %IRQn.addr, align 1, !dbg !819
  %conv2 = sext i8 %2 to i32, !dbg !820
  %and3 = and i32 %conv2, 15, !dbg !821
  %sub = sub i32 %and3, 4, !dbg !822
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 6), i32 0, i32 %sub, !dbg !823
  store volatile i8 %conv1, i8* %arrayidx, align 1, !dbg !824
  br label %if.end, !dbg !825

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %priority.addr, align 4, !dbg !826
  %shl4 = shl i32 %3, 4, !dbg !828
  %and5 = and i32 %shl4, 255, !dbg !829
  %conv6 = trunc i32 %and5 to i8, !dbg !830
  %4 = load i8, i8* %IRQn.addr, align 1, !dbg !831
  %conv7 = sext i8 %4 to i32, !dbg !832
  %arrayidx8 = getelementptr inbounds [240 x i8], [240 x i8]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 10), i32 0, i32 %conv7, !dbg !833
  store volatile i8 %conv6, i8* %arrayidx8, align 1, !dbg !834
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !835
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN9UARTClass20getInterruptPriorityEv(%class.UARTClass* %this) #0 align 2 !dbg !836 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !837, metadata !DIExpression()), !dbg !838
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %_dwIrq = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 4, !dbg !839
  %0 = load i8, i8* %_dwIrq, align 4, !dbg !839
  %call = call arm_aapcscc i32 @_ZL16NVIC_GetPriority4IRQn(i8 signext %0), !dbg !840
  ret i32 %call, !dbg !841
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc i32 @_ZL16NVIC_GetPriority4IRQn(i8 signext %IRQn) #0 !dbg !842 {
entry:
  %retval = alloca i32, align 4
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !845, metadata !DIExpression()), !dbg !846
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !847
  %conv = sext i8 %0 to i32, !dbg !847
  %cmp = icmp slt i32 %conv, 0, !dbg !849
  br i1 %cmp, label %if.then, label %if.else, !dbg !850

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !851
  %conv1 = sext i8 %1 to i32, !dbg !853
  %and = and i32 %conv1, 15, !dbg !854
  %sub = sub i32 %and, 4, !dbg !855
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 6), i32 0, i32 %sub, !dbg !856
  %2 = load volatile i8, i8* %arrayidx, align 1, !dbg !856
  %conv2 = zext i8 %2 to i32, !dbg !856
  %shr = ashr i32 %conv2, 4, !dbg !857
  store i32 %shr, i32* %retval, align 4, !dbg !858
  br label %return, !dbg !858

if.else:                                          ; preds = %entry
  %3 = load i8, i8* %IRQn.addr, align 1, !dbg !859
  %conv3 = sext i8 %3 to i32, !dbg !861
  %arrayidx4 = getelementptr inbounds [240 x i8], [240 x i8]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 10), i32 0, i32 %conv3, !dbg !862
  %4 = load volatile i8, i8* %arrayidx4, align 1, !dbg !862
  %conv5 = zext i8 %4 to i32, !dbg !862
  %shr6 = ashr i32 %conv5, 4, !dbg !863
  store i32 %shr6, i32* %retval, align 4, !dbg !864
  br label %return, !dbg !864

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !865
  ret i32 %5, !dbg !865
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN9UARTClass9availableEv(%class.UARTClass* %this) unnamed_addr #0 align 2 !dbg !866 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !867, metadata !DIExpression()), !dbg !868
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %_rx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !869
  %0 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer, align 4, !dbg !869
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %0, i32 0, i32 1, !dbg !870
  %1 = load volatile i32, i32* %_iHead, align 4, !dbg !870
  %add = add nsw i32 128, %1, !dbg !871
  %_rx_buffer2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !872
  %2 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer2, align 4, !dbg !872
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %2, i32 0, i32 2, !dbg !873
  %3 = load volatile i32, i32* %_iTail, align 4, !dbg !873
  %sub = sub nsw i32 %add, %3, !dbg !874
  %rem = urem i32 %sub, 128, !dbg !875
  ret i32 %rem, !dbg !876
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN9UARTClass17availableForWriteEv(%class.UARTClass* %this) #0 align 2 !dbg !877 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.UARTClass*, align 4
  %head = alloca i32, align 4
  %tail = alloca i32, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !878, metadata !DIExpression()), !dbg !879
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %head, metadata !880, metadata !DIExpression()), !dbg !881
  %_tx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !882
  %0 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer, align 4, !dbg !882
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %0, i32 0, i32 1, !dbg !883
  %1 = load volatile i32, i32* %_iHead, align 4, !dbg !883
  store i32 %1, i32* %head, align 4, !dbg !881
  call void @llvm.dbg.declare(metadata i32* %tail, metadata !884, metadata !DIExpression()), !dbg !885
  %_tx_buffer2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !886
  %2 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer2, align 4, !dbg !886
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %2, i32 0, i32 2, !dbg !887
  %3 = load volatile i32, i32* %_iTail, align 4, !dbg !887
  store i32 %3, i32* %tail, align 4, !dbg !885
  %4 = load i32, i32* %head, align 4, !dbg !888
  %5 = load i32, i32* %tail, align 4, !dbg !890
  %cmp = icmp sge i32 %4, %5, !dbg !891
  br i1 %cmp, label %if.then, label %if.end, !dbg !892

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %head, align 4, !dbg !893
  %sub = sub nsw i32 127, %6, !dbg !894
  %7 = load i32, i32* %tail, align 4, !dbg !895
  %add = add nsw i32 %sub, %7, !dbg !896
  store i32 %add, i32* %retval, align 4, !dbg !897
  br label %return, !dbg !897

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %tail, align 4, !dbg !898
  %9 = load i32, i32* %head, align 4, !dbg !899
  %sub3 = sub nsw i32 %8, %9, !dbg !900
  %sub4 = sub nsw i32 %sub3, 1, !dbg !901
  store i32 %sub4, i32* %retval, align 4, !dbg !902
  br label %return, !dbg !902

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !903
  ret i32 %10, !dbg !903
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN9UARTClass4peekEv(%class.UARTClass* %this) unnamed_addr #0 align 2 !dbg !904 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.UARTClass*, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !905, metadata !DIExpression()), !dbg !906
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %_rx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !907
  %0 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer, align 4, !dbg !907
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %0, i32 0, i32 1, !dbg !909
  %1 = load volatile i32, i32* %_iHead, align 4, !dbg !909
  %_rx_buffer2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !910
  %2 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer2, align 4, !dbg !910
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %2, i32 0, i32 2, !dbg !911
  %3 = load volatile i32, i32* %_iTail, align 4, !dbg !911
  %cmp = icmp eq i32 %1, %3, !dbg !912
  br i1 %cmp, label %if.then, label %if.end, !dbg !913

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !914
  br label %return, !dbg !914

if.end:                                           ; preds = %entry
  %_rx_buffer3 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !915
  %4 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer3, align 4, !dbg !915
  %_aucBuffer = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %4, i32 0, i32 0, !dbg !916
  %_rx_buffer4 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !917
  %5 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer4, align 4, !dbg !917
  %_iTail5 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %5, i32 0, i32 2, !dbg !918
  %6 = load volatile i32, i32* %_iTail5, align 4, !dbg !918
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %_aucBuffer, i32 0, i32 %6, !dbg !915
  %7 = load volatile i8, i8* %arrayidx, align 1, !dbg !915
  %conv = zext i8 %7 to i32, !dbg !915
  store i32 %conv, i32* %retval, align 4, !dbg !919
  br label %return, !dbg !919

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !920
  ret i32 %8, !dbg !920
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN9UARTClass4readEv(%class.UARTClass* %this) unnamed_addr #0 align 2 !dbg !921 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.UARTClass*, align 4
  %uc = alloca i8, align 1
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !922, metadata !DIExpression()), !dbg !923
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %_rx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !924
  %0 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer, align 4, !dbg !924
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %0, i32 0, i32 1, !dbg !926
  %1 = load volatile i32, i32* %_iHead, align 4, !dbg !926
  %_rx_buffer2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !927
  %2 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer2, align 4, !dbg !927
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %2, i32 0, i32 2, !dbg !928
  %3 = load volatile i32, i32* %_iTail, align 4, !dbg !928
  %cmp = icmp eq i32 %1, %3, !dbg !929
  br i1 %cmp, label %if.then, label %if.end, !dbg !930

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !931
  br label %return, !dbg !931

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %uc, metadata !932, metadata !DIExpression()), !dbg !933
  %_rx_buffer3 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !934
  %4 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer3, align 4, !dbg !934
  %_aucBuffer = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %4, i32 0, i32 0, !dbg !935
  %_rx_buffer4 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !936
  %5 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer4, align 4, !dbg !936
  %_iTail5 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %5, i32 0, i32 2, !dbg !937
  %6 = load volatile i32, i32* %_iTail5, align 4, !dbg !937
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %_aucBuffer, i32 0, i32 %6, !dbg !934
  %7 = load volatile i8, i8* %arrayidx, align 1, !dbg !934
  store i8 %7, i8* %uc, align 1, !dbg !933
  %_rx_buffer6 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !938
  %8 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer6, align 4, !dbg !938
  %_iTail7 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %8, i32 0, i32 2, !dbg !939
  %9 = load volatile i32, i32* %_iTail7, align 4, !dbg !939
  %add = add nsw i32 %9, 1, !dbg !940
  %rem = urem i32 %add, 128, !dbg !941
  %_rx_buffer8 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !942
  %10 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer8, align 4, !dbg !942
  %_iTail9 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %10, i32 0, i32 2, !dbg !943
  store volatile i32 %rem, i32* %_iTail9, align 4, !dbg !944
  %11 = load i8, i8* %uc, align 1, !dbg !945
  %conv = zext i8 %11 to i32, !dbg !945
  store i32 %conv, i32* %retval, align 4, !dbg !946
  br label %return, !dbg !946

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !947
  ret i32 %12, !dbg !947
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN9UARTClass5flushEv(%class.UARTClass* %this) unnamed_addr #0 align 2 !dbg !948 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !949, metadata !DIExpression()), !dbg !950
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  br label %while.cond, !dbg !951

while.cond:                                       ; preds = %while.body, %entry
  %_tx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !952
  %0 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer, align 4, !dbg !952
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %0, i32 0, i32 1, !dbg !953
  %1 = load volatile i32, i32* %_iHead, align 4, !dbg !953
  %_tx_buffer2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !954
  %2 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer2, align 4, !dbg !954
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %2, i32 0, i32 2, !dbg !955
  %3 = load volatile i32, i32* %_iTail, align 4, !dbg !955
  %cmp = icmp ne i32 %1, %3, !dbg !956
  br i1 %cmp, label %while.body, label %while.end, !dbg !951

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !951, !llvm.loop !957

while.end:                                        ; preds = %while.cond
  br label %while.cond3, !dbg !959

while.cond3:                                      ; preds = %while.body5, %while.end
  %_pUart = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !960
  %4 = load %struct.Uart*, %struct.Uart** %_pUart, align 4, !dbg !960
  %UART_SR = getelementptr inbounds %struct.Uart, %struct.Uart* %4, i32 0, i32 5, !dbg !961
  %5 = load volatile i32, i32* %UART_SR, align 4, !dbg !961
  %and = and i32 %5, 512, !dbg !962
  %cmp4 = icmp ne i32 %and, 512, !dbg !963
  br i1 %cmp4, label %while.body5, label %while.end6, !dbg !959

while.body5:                                      ; preds = %while.cond3
  br label %while.cond3, !dbg !959, !llvm.loop !964

while.end6:                                       ; preds = %while.cond3
  ret void, !dbg !966
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN9UARTClass5writeEh(%class.UARTClass* %this, i8 zeroext %uc_data) unnamed_addr #0 align 2 !dbg !967 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  %uc_data.addr = alloca i8, align 1
  %nextWrite = alloca i32, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !968, metadata !DIExpression()), !dbg !969
  store i8 %uc_data, i8* %uc_data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %uc_data.addr, metadata !970, metadata !DIExpression()), !dbg !971
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  %_pUart = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !972
  %0 = load %struct.Uart*, %struct.Uart** %_pUart, align 4, !dbg !972
  %UART_SR = getelementptr inbounds %struct.Uart, %struct.Uart* %0, i32 0, i32 5, !dbg !974
  %1 = load volatile i32, i32* %UART_SR, align 4, !dbg !974
  %and = and i32 %1, 2, !dbg !975
  %cmp = icmp ne i32 %and, 2, !dbg !976
  %conv = zext i1 %cmp to i32, !dbg !977
  %_tx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !978
  %2 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer, align 4, !dbg !978
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %2, i32 0, i32 2, !dbg !979
  %3 = load volatile i32, i32* %_iTail, align 4, !dbg !979
  %_tx_buffer2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !980
  %4 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer2, align 4, !dbg !980
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %4, i32 0, i32 1, !dbg !981
  %5 = load volatile i32, i32* %_iHead, align 4, !dbg !981
  %cmp3 = icmp ne i32 %3, %5, !dbg !982
  %conv4 = zext i1 %cmp3 to i32, !dbg !983
  %or = or i32 %conv, %conv4, !dbg !984
  %tobool = icmp ne i32 %or, 0, !dbg !977
  br i1 %tobool, label %if.then, label %if.else, !dbg !985

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %nextWrite, metadata !986, metadata !DIExpression()), !dbg !988
  %_tx_buffer5 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !989
  %6 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer5, align 4, !dbg !989
  %_iHead6 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %6, i32 0, i32 1, !dbg !990
  %7 = load volatile i32, i32* %_iHead6, align 4, !dbg !990
  %add = add nsw i32 %7, 1, !dbg !991
  %rem = srem i32 %add, 128, !dbg !992
  store i32 %rem, i32* %nextWrite, align 4, !dbg !988
  br label %while.cond, !dbg !993

while.cond:                                       ; preds = %while.body, %if.then
  %_tx_buffer7 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !994
  %8 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer7, align 4, !dbg !994
  %_iTail8 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %8, i32 0, i32 2, !dbg !995
  %9 = load volatile i32, i32* %_iTail8, align 4, !dbg !995
  %10 = load i32, i32* %nextWrite, align 4, !dbg !996
  %cmp9 = icmp eq i32 %9, %10, !dbg !997
  br i1 %cmp9, label %while.body, label %while.end, !dbg !993

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !993, !llvm.loop !998

while.end:                                        ; preds = %while.cond
  %11 = load i8, i8* %uc_data.addr, align 1, !dbg !1000
  %_tx_buffer10 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1001
  %12 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer10, align 4, !dbg !1001
  %_aucBuffer = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %12, i32 0, i32 0, !dbg !1002
  %_tx_buffer11 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1003
  %13 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer11, align 4, !dbg !1003
  %_iHead12 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %13, i32 0, i32 1, !dbg !1004
  %14 = load volatile i32, i32* %_iHead12, align 4, !dbg !1004
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %_aucBuffer, i32 0, i32 %14, !dbg !1001
  store volatile i8 %11, i8* %arrayidx, align 1, !dbg !1005
  %15 = load i32, i32* %nextWrite, align 4, !dbg !1006
  %_tx_buffer13 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1007
  %16 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer13, align 4, !dbg !1007
  %_iHead14 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %16, i32 0, i32 1, !dbg !1008
  store volatile i32 %15, i32* %_iHead14, align 4, !dbg !1009
  %_pUart15 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !1010
  %17 = load %struct.Uart*, %struct.Uart** %_pUart15, align 4, !dbg !1010
  %UART_IER = getelementptr inbounds %struct.Uart, %struct.Uart* %17, i32 0, i32 2, !dbg !1011
  store volatile i32 2, i32* %UART_IER, align 4, !dbg !1012
  br label %if.end, !dbg !1013

if.else:                                          ; preds = %entry
  %18 = load i8, i8* %uc_data.addr, align 1, !dbg !1014
  %conv16 = zext i8 %18 to i32, !dbg !1014
  %_pUart17 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !1016
  %19 = load %struct.Uart*, %struct.Uart** %_pUart17, align 4, !dbg !1016
  %UART_THR = getelementptr inbounds %struct.Uart, %struct.Uart* %19, i32 0, i32 7, !dbg !1017
  store volatile i32 %conv16, i32* %UART_THR, align 4, !dbg !1018
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret i32 1, !dbg !1019
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN9UARTClass10IrqHandlerEv(%class.UARTClass* %this) #0 align 2 !dbg !1020 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  %status = alloca i32, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !1021, metadata !DIExpression()), !dbg !1022
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1023, metadata !DIExpression()), !dbg !1024
  %_pUart = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !1025
  %0 = load %struct.Uart*, %struct.Uart** %_pUart, align 4, !dbg !1025
  %UART_SR = getelementptr inbounds %struct.Uart, %struct.Uart* %0, i32 0, i32 5, !dbg !1026
  %1 = load volatile i32, i32* %UART_SR, align 4, !dbg !1026
  store i32 %1, i32* %status, align 4, !dbg !1024
  %2 = load i32, i32* %status, align 4, !dbg !1027
  %and = and i32 %2, 1, !dbg !1029
  %cmp = icmp eq i32 %and, 1, !dbg !1030
  br i1 %cmp, label %if.then, label %if.end, !dbg !1031

if.then:                                          ; preds = %entry
  %_rx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 1, !dbg !1032
  %3 = load %class.RingBuffer*, %class.RingBuffer** %_rx_buffer, align 4, !dbg !1032
  %_pUart2 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !1033
  %4 = load %struct.Uart*, %struct.Uart** %_pUart2, align 4, !dbg !1033
  %UART_RHR = getelementptr inbounds %struct.Uart, %struct.Uart* %4, i32 0, i32 6, !dbg !1034
  %5 = load volatile i32, i32* %UART_RHR, align 4, !dbg !1034
  %conv = trunc i32 %5 to i8, !dbg !1033
  call arm_aapcscc void @_ZN10RingBuffer10store_charEh(%class.RingBuffer* %3, i8 zeroext %conv), !dbg !1035
  br label %if.end, !dbg !1032

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %status, align 4, !dbg !1036
  %and3 = and i32 %6, 2, !dbg !1038
  %cmp4 = icmp eq i32 %and3, 2, !dbg !1039
  br i1 %cmp4, label %if.then5, label %if.end20, !dbg !1040

if.then5:                                         ; preds = %if.end
  %_tx_buffer = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1041
  %7 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer, align 4, !dbg !1041
  %_iTail = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %7, i32 0, i32 2, !dbg !1044
  %8 = load volatile i32, i32* %_iTail, align 4, !dbg !1044
  %_tx_buffer6 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1045
  %9 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer6, align 4, !dbg !1045
  %_iHead = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %9, i32 0, i32 1, !dbg !1046
  %10 = load volatile i32, i32* %_iHead, align 4, !dbg !1046
  %cmp7 = icmp ne i32 %8, %10, !dbg !1047
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1048

if.then8:                                         ; preds = %if.then5
  %_tx_buffer9 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1049
  %11 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer9, align 4, !dbg !1049
  %_aucBuffer = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %11, i32 0, i32 0, !dbg !1051
  %_tx_buffer10 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1052
  %12 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer10, align 4, !dbg !1052
  %_iTail11 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %12, i32 0, i32 2, !dbg !1053
  %13 = load volatile i32, i32* %_iTail11, align 4, !dbg !1053
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %_aucBuffer, i32 0, i32 %13, !dbg !1049
  %14 = load volatile i8, i8* %arrayidx, align 1, !dbg !1049
  %conv12 = zext i8 %14 to i32, !dbg !1049
  %_pUart13 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !1054
  %15 = load %struct.Uart*, %struct.Uart** %_pUart13, align 4, !dbg !1054
  %UART_THR = getelementptr inbounds %struct.Uart, %struct.Uart* %15, i32 0, i32 7, !dbg !1055
  store volatile i32 %conv12, i32* %UART_THR, align 4, !dbg !1056
  %_tx_buffer14 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1057
  %16 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer14, align 4, !dbg !1057
  %_iTail15 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %16, i32 0, i32 2, !dbg !1058
  %17 = load volatile i32, i32* %_iTail15, align 4, !dbg !1058
  %add = add nsw i32 %17, 1, !dbg !1059
  %rem = urem i32 %add, 128, !dbg !1060
  %_tx_buffer16 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 2, !dbg !1061
  %18 = load %class.RingBuffer*, %class.RingBuffer** %_tx_buffer16, align 4, !dbg !1061
  %_iTail17 = getelementptr inbounds %class.RingBuffer, %class.RingBuffer* %18, i32 0, i32 2, !dbg !1062
  store volatile i32 %rem, i32* %_iTail17, align 4, !dbg !1063
  br label %if.end19, !dbg !1064

if.else:                                          ; preds = %if.then5
  %_pUart18 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !1065
  %19 = load %struct.Uart*, %struct.Uart** %_pUart18, align 4, !dbg !1065
  %UART_IDR = getelementptr inbounds %struct.Uart, %struct.Uart* %19, i32 0, i32 3, !dbg !1067
  store volatile i32 2, i32* %UART_IDR, align 4, !dbg !1068
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then8
  br label %if.end20, !dbg !1069

if.end20:                                         ; preds = %if.end19, %if.end
  %20 = load i32, i32* %status, align 4, !dbg !1070
  %and21 = and i32 %20, 32, !dbg !1072
  %cmp22 = icmp eq i32 %and21, 32, !dbg !1073
  br i1 %cmp22, label %if.then25, label %lor.lhs.false, !dbg !1074

lor.lhs.false:                                    ; preds = %if.end20
  %21 = load i32, i32* %status, align 4, !dbg !1075
  %and23 = and i32 %21, 64, !dbg !1076
  %cmp24 = icmp eq i32 %and23, 64, !dbg !1077
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !1078

if.then25:                                        ; preds = %lor.lhs.false, %if.end20
  %_pUart26 = getelementptr inbounds %class.UARTClass, %class.UARTClass* %this1, i32 0, i32 3, !dbg !1079
  %22 = load %struct.Uart*, %struct.Uart** %_pUart26, align 4, !dbg !1079
  %UART_CR = getelementptr inbounds %struct.Uart, %struct.Uart* %22, i32 0, i32 0, !dbg !1081
  %23 = load volatile i32, i32* %UART_CR, align 4, !dbg !1082
  %or = or i32 %23, 256, !dbg !1082
  store volatile i32 %or, i32* %UART_CR, align 4, !dbg !1082
  br label %if.end27, !dbg !1083

if.end27:                                         ; preds = %if.then25, %lor.lhs.false
  ret void, !dbg !1084
}

declare dso_local arm_aapcscc void @_ZN10RingBuffer10store_charEh(%class.RingBuffer*, i8 zeroext) #2

declare dso_local arm_aapcscc i32 @_ZN5Print5writeEPKhj(%class.Print*, i8*, i32) unnamed_addr #2

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc void @_ZN14HardwareSerial5beginEm(%class.HardwareSerial* %this, i32 %0) unnamed_addr #0 comdat align 2 !dbg !1085 {
entry:
  %this.addr = alloca %class.HardwareSerial*, align 4
  %.addr = alloca i32, align 4
  store %class.HardwareSerial* %this, %class.HardwareSerial** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.HardwareSerial** %this.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !1088, metadata !DIExpression()), !dbg !1089
  %this1 = load %class.HardwareSerial*, %class.HardwareSerial** %this.addr, align 4
  ret void, !dbg !1090
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc zeroext i1 @_ZN9UARTClasscvbEv(%class.UARTClass* %this) unnamed_addr #0 comdat align 2 !dbg !1091 {
entry:
  %this.addr = alloca %class.UARTClass*, align 4
  store %class.UARTClass* %this, %class.UARTClass** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.UARTClass** %this.addr, metadata !1092, metadata !DIExpression()), !dbg !1093
  %this1 = load %class.UARTClass*, %class.UARTClass** %this.addr, align 4
  ret i1 true, !dbg !1094
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.Stream* @_ZN6StreamC2Ev(%class.Stream* returned %this) unnamed_addr #0 comdat align 2 !dbg !1095 {
entry:
  %this.addr = alloca %class.Stream*, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !1096, metadata !DIExpression()), !dbg !1098
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  %0 = bitcast %class.Stream* %this1 to %class.Print*, !dbg !1099
  %call = call arm_aapcscc %class.Print* @_ZN5PrintC2Ev(%class.Print* %0), !dbg !1100
  %1 = bitcast %class.Stream* %this1 to i32 (...)***, !dbg !1099
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV6Stream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !1099
  %_timeout = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 1, !dbg !1101
  store i32 1000, i32* %_timeout, align 4, !dbg !1103
  ret %class.Stream* %this1, !dbg !1104
}

declare dso_local arm_aapcscc void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc void @_ZN14HardwareSerial3endEv(%class.HardwareSerial* %this) unnamed_addr #0 comdat align 2 !dbg !1105 {
entry:
  %this.addr = alloca %class.HardwareSerial*, align 4
  store %class.HardwareSerial* %this, %class.HardwareSerial** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.HardwareSerial** %this.addr, metadata !1106, metadata !DIExpression()), !dbg !1107
  %this1 = load %class.HardwareSerial*, %class.HardwareSerial** %this.addr, align 4
  ret void, !dbg !1108
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.Print* @_ZN5PrintC2Ev(%class.Print* returned %this) unnamed_addr #0 comdat align 2 !dbg !1109 {
entry:
  %this.addr = alloca %class.Print*, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !1114, metadata !DIExpression()), !dbg !1116
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = bitcast %class.Print* %this1 to i32 (...)***, !dbg !1117
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV5Print, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 4, !dbg !1117
  %write_error = getelementptr inbounds %class.Print, %class.Print* %this1, i32 0, i32 1, !dbg !1118
  store i32 0, i32* %write_error, align 4, !dbg !1118
  ret %class.Print* %this1, !dbg !1119
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!632, !633, !634, !635}
!llvm.ident = !{!636}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !560, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/UARTClass.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{!3, !57, !84}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !4, line: 64, baseType: !5, size: 8, elements: !6, identifier: "_ZTS4IRQn")
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
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "UARTModes", scope: !59, file: !58, line: 38, baseType: !553, size: 16, elements: !554, identifier: "_ZTSN9UARTClass9UARTModesE")
!58 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/UARTClass.h", directory: "/home/aaa")
!59 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "UARTClass", file: !58, line: 35, size: 288, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !60, vtableHolder: !70)
!60 = !{!61, !455, !475, !476, !511, !513, !514, !518, !522, !526, !529, !532, !533, !534, !535, !536, !540, !543, !546, !547, !550}
!61 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !59, baseType: !62, flags: DIFlagPublic, extraData: i32 0)
!62 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "HardwareSerial", file: !63, line: 26, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !64, vtableHolder: !70, identifier: "_ZTS14HardwareSerial")
!63 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/HardwareSerial.h", directory: "/home/aaa")
!64 = !{!65, !436, !440, !443, !446, !447, !448, !449, !452}
!65 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !62, baseType: !66, flags: DIFlagPublic, extraData: i32 0)
!66 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Stream", file: !67, line: 49, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !68, vtableHolder: !70, identifier: "_ZTS6Stream")
!67 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Stream.h", directory: "/home/aaa")
!68 = !{!69, !72, !74, !75, !80, !81, !91, !92, !93, !94, !97, !98, !101, !104, !109, !117, !123, !126, !129, !132, !135, !138, !141, !145, !149, !152, !155, !158, !161, !422, !425, !428, !431}
!69 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !66, baseType: !70, flags: DIFlagPublic, extraData: i32 0)
!70 = !DICompositeType(tag: DW_TAG_class_type, name: "Print", file: !71, line: 34, flags: DIFlagFwdDecl)
!71 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.h", directory: "/home/aaa")
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_timeout", scope: !66, file: !67, line: 52, baseType: !73, size: 32, offset: 64, flags: DIFlagProtected)
!73 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_startMillis", scope: !66, file: !67, line: 53, baseType: !73, size: 32, offset: 96, flags: DIFlagProtected)
!75 = !DISubprogram(name: "timedRead", linkageName: "_ZN6Stream9timedReadEv", scope: !66, file: !67, line: 54, type: !76, scopeLine: 54, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !79}
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!80 = !DISubprogram(name: "timedPeek", linkageName: "_ZN6Stream9timedPeekEv", scope: !66, file: !67, line: 55, type: !76, scopeLine: 55, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!81 = !DISubprogram(name: "peekNextDigit", linkageName: "_ZN6Stream13peekNextDigitE13LookaheadModeb", scope: !66, file: !67, line: 56, type: !82, scopeLine: 56, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!82 = !DISubroutineType(types: !83)
!83 = !{!78, !79, !84, !90}
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "LookaheadMode", file: !67, line: 41, baseType: !85, size: 8, elements: !86, identifier: "_ZTS13LookaheadMode")
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "SKIP_ALL", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "SKIP_NONE", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "SKIP_WHITESPACE", value: 2, isUnsigned: true)
!90 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!91 = !DISubprogram(name: "available", linkageName: "_ZN6Stream9availableEv", scope: !66, file: !67, line: 59, type: !76, scopeLine: 59, containingType: !66, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!92 = !DISubprogram(name: "read", linkageName: "_ZN6Stream4readEv", scope: !66, file: !67, line: 60, type: !76, scopeLine: 60, containingType: !66, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!93 = !DISubprogram(name: "peek", linkageName: "_ZN6Stream4peekEv", scope: !66, file: !67, line: 61, type: !76, scopeLine: 61, containingType: !66, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!94 = !DISubprogram(name: "flush", linkageName: "_ZN6Stream5flushEv", scope: !66, file: !67, line: 62, type: !95, scopeLine: 62, containingType: !66, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !79}
!97 = !DISubprogram(name: "Stream", scope: !66, file: !67, line: 64, type: !95, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!98 = !DISubprogram(name: "setTimeout", linkageName: "_ZN6Stream10setTimeoutEm", scope: !66, file: !67, line: 68, type: !99, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !79, !73}
!101 = !DISubprogram(name: "getTimeout", linkageName: "_ZN6Stream10getTimeoutEv", scope: !66, file: !67, line: 69, type: !102, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!102 = !DISubroutineType(types: !103)
!103 = !{!73, !79}
!104 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPc", scope: !66, file: !67, line: 71, type: !105, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{!90, !79, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPh", scope: !66, file: !67, line: 72, type: !110, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{!90, !79, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !114, line: 42, baseType: !115)
!114 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !116, line: 28, baseType: !85)
!116 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!117 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPcj", scope: !66, file: !67, line: 75, type: !118, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{!90, !79, !107, !120}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !122)
!121 = !DIFile(filename: "JJS_Project1/src/build/lib/clang/10.0.1/include/stddef.h", directory: "/home/aaa")
!122 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!123 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPhj", scope: !66, file: !67, line: 76, type: !124, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!90, !79, !112, !120}
!126 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEc", scope: !66, file: !67, line: 79, type: !127, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!90, !79, !108}
!129 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcS0_", scope: !66, file: !67, line: 81, type: !130, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!130 = !DISubroutineType(types: !131)
!131 = !{!90, !79, !107, !107}
!132 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPhPc", scope: !66, file: !67, line: 82, type: !133, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!133 = !DISubroutineType(types: !134)
!134 = !{!90, !79, !112, !107}
!135 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcjS0_j", scope: !66, file: !67, line: 84, type: !136, scopeLine: 84, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!90, !79, !107, !120, !107, !120}
!138 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPhjPcj", scope: !66, file: !67, line: 85, type: !139, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!90, !79, !112, !120, !107, !120}
!141 = !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntE13LookaheadModec", scope: !66, file: !67, line: 87, type: !142, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !79, !84, !108}
!144 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!145 = !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatE13LookaheadModec", scope: !66, file: !67, line: 94, type: !146, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !79, !84, !108}
!148 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!149 = !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPcj", scope: !66, file: !67, line: 97, type: !150, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!120, !79, !107, !120}
!152 = !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPhj", scope: !66, file: !67, line: 98, type: !153, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!120, !79, !112, !120}
!155 = !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPcj", scope: !66, file: !67, line: 102, type: !156, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{!120, !79, !108, !107, !120}
!158 = !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPhj", scope: !66, file: !67, line: 103, type: !159, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!120, !79, !108, !112, !120}
!161 = !DISubprogram(name: "readString", linkageName: "_ZN6Stream10readStringEv", scope: !66, file: !67, line: 108, type: !162, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !79}
!164 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !165, line: 45, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !166, identifier: "_ZTS6String")
!165 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.h", directory: "/home/aaa")
!166 = !{!167, !168, !169, !170, !175, !181, !185, !191, !195, !200, !203, !206, !209, !212, !215, !218, !221, !225, !228, !231, !234, !238, !241, !244, !247, !250, !253, !256, !259, !262, !265, !266, !269, !272, !275, !278, !281, !282, !283, !286, !289, !292, !295, !298, !301, !304, !307, !308, !313, !316, !319, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !335, !336, !339, !342, !343, !347, !351, !354, !357, !360, !361, !362, !363, !366, !369, !370, !373, !374, !375, !376, !377, !380, !383, !386, !389, !392, !395, !396, !397, !398, !401, !404, !407, !408, !409, !410, !413, !416, !419}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !164, file: !165, line: 196, baseType: !107, size: 32, flags: DIFlagProtected)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !164, file: !165, line: 197, baseType: !122, size: 32, offset: 32, flags: DIFlagProtected)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !164, file: !165, line: 198, baseType: !122, size: 32, offset: 64, flags: DIFlagProtected)
!170 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !164, file: !165, line: 51, type: !171, scopeLine: 51, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!175 = !DISubprogram(name: "String", scope: !164, file: !165, line: 59, type: !176, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178, !179}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!181 = !DISubprogram(name: "String", scope: !164, file: !165, line: 60, type: !182, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !178, !184}
!184 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !174, size: 32)
!185 = !DISubprogram(name: "String", scope: !164, file: !165, line: 61, type: !186, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !178, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !165, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!191 = !DISubprogram(name: "String", scope: !164, file: !165, line: 63, type: !192, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !178, !194}
!194 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !164, size: 32)
!195 = !DISubprogram(name: "String", scope: !164, file: !165, line: 64, type: !196, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !178, !198}
!198 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !199, size: 32)
!199 = !DICompositeType(tag: DW_TAG_class_type, name: "StringSumHelper", file: !165, line: 213, flags: DIFlagFwdDecl, identifier: "_ZTS15StringSumHelper")
!200 = !DISubprogram(name: "String", scope: !164, file: !165, line: 66, type: !201, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !178, !108}
!203 = !DISubprogram(name: "String", scope: !164, file: !165, line: 67, type: !204, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !178, !85, !85}
!206 = !DISubprogram(name: "String", scope: !164, file: !165, line: 68, type: !207, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !178, !78, !85}
!209 = !DISubprogram(name: "String", scope: !164, file: !165, line: 69, type: !210, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !178, !122, !85}
!212 = !DISubprogram(name: "String", scope: !164, file: !165, line: 70, type: !213, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !178, !144, !85}
!215 = !DISubprogram(name: "String", scope: !164, file: !165, line: 71, type: !216, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !178, !73, !85}
!218 = !DISubprogram(name: "String", scope: !164, file: !165, line: 72, type: !219, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !178, !148, !85}
!221 = !DISubprogram(name: "String", scope: !164, file: !165, line: 73, type: !222, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !178, !224, !85}
!224 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!225 = !DISubprogram(name: "~String", scope: !164, file: !165, line: 74, type: !226, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !178}
!228 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !164, file: !165, line: 80, type: !229, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{!85, !178, !122}
!231 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !164, file: !165, line: 81, type: !232, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!232 = !DISubroutineType(types: !233)
!233 = !{!122, !173}
!234 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !164, file: !165, line: 86, type: !235, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !178, !184}
!237 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !164, size: 32)
!238 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !164, file: !165, line: 87, type: !239, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!237, !178, !179}
!241 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !164, file: !165, line: 88, type: !242, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!242 = !DISubroutineType(types: !243)
!243 = !{!237, !178, !188}
!244 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEOS_", scope: !164, file: !165, line: 90, type: !245, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!237, !178, !194}
!247 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEO15StringSumHelper", scope: !164, file: !165, line: 91, type: !248, scopeLine: 91, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!237, !178, !198}
!250 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !164, file: !165, line: 99, type: !251, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!85, !178, !184}
!253 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !164, file: !165, line: 100, type: !254, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!254 = !DISubroutineType(types: !255)
!255 = !{!85, !178, !179}
!256 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !164, file: !165, line: 101, type: !257, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!85, !178, !108}
!259 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !164, file: !165, line: 102, type: !260, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{!85, !178, !85}
!262 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !164, file: !165, line: 103, type: !263, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!85, !178, !78}
!265 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !164, file: !165, line: 104, type: !229, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!266 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !164, file: !165, line: 105, type: !267, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!267 = !DISubroutineType(types: !268)
!268 = !{!85, !178, !144}
!269 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !164, file: !165, line: 106, type: !270, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{!85, !178, !73}
!272 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !164, file: !165, line: 107, type: !273, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{!85, !178, !148}
!275 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !164, file: !165, line: 108, type: !276, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!85, !178, !224}
!278 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !164, file: !165, line: 109, type: !279, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!279 = !DISubroutineType(types: !280)
!280 = !{!85, !178, !188}
!281 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !164, file: !165, line: 113, type: !235, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!282 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !164, file: !165, line: 114, type: !239, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!283 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !164, file: !165, line: 115, type: !284, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!237, !178, !108}
!286 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !164, file: !165, line: 116, type: !287, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!287 = !DISubroutineType(types: !288)
!288 = !{!237, !178, !85}
!289 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !164, file: !165, line: 117, type: !290, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!237, !178, !78}
!292 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !164, file: !165, line: 118, type: !293, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!237, !178, !122}
!295 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !164, file: !165, line: 119, type: !296, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!237, !178, !144}
!298 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !164, file: !165, line: 120, type: !299, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{!237, !178, !73}
!301 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !164, file: !165, line: 121, type: !302, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!302 = !DISubroutineType(types: !303)
!303 = !{!237, !178, !148}
!304 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !164, file: !165, line: 122, type: !305, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!305 = !DISubroutineType(types: !306)
!306 = !{!237, !178, !224}
!307 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !164, file: !165, line: 123, type: !242, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!308 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !164, file: !165, line: 138, type: !309, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !173}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !164, file: !165, line: 50, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !171, size: 64, extraData: !164)
!313 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !164, file: !165, line: 139, type: !314, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!314 = !DISubroutineType(types: !315)
!315 = !{!78, !173, !184}
!316 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !164, file: !165, line: 140, type: !317, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!317 = !DISubroutineType(types: !318)
!318 = !{!85, !173, !184}
!319 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !164, file: !165, line: 141, type: !320, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!320 = !DISubroutineType(types: !321)
!321 = !{!85, !173, !179}
!322 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !164, file: !165, line: 142, type: !317, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!323 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !164, file: !165, line: 143, type: !320, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!324 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !164, file: !165, line: 144, type: !317, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!325 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !164, file: !165, line: 145, type: !320, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!326 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !164, file: !165, line: 146, type: !317, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!327 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !164, file: !165, line: 147, type: !317, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!328 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !164, file: !165, line: 148, type: !317, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!329 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !164, file: !165, line: 149, type: !317, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !164, file: !165, line: 150, type: !317, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !164, file: !165, line: 151, type: !317, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!332 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !164, file: !165, line: 152, type: !333, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!333 = !DISubroutineType(types: !334)
!334 = !{!85, !173, !184, !122}
!335 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !164, file: !165, line: 153, type: !317, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!336 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !164, file: !165, line: 156, type: !337, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!337 = !DISubroutineType(types: !338)
!338 = !{!108, !173, !122}
!339 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !164, file: !165, line: 157, type: !340, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !178, !122, !108}
!342 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !164, file: !165, line: 158, type: !337, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!343 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !164, file: !165, line: 159, type: !344, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !178, !122}
!346 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !108, size: 32)
!347 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !164, file: !165, line: 160, type: !348, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !173, !350, !122, !122}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!351 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !164, file: !165, line: 161, type: !352, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !173, !107, !122, !122}
!354 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !164, file: !165, line: 163, type: !355, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!355 = !DISubroutineType(types: !356)
!356 = !{!179, !173}
!357 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !164, file: !165, line: 164, type: !358, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!107, !178}
!360 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !164, file: !165, line: 165, type: !358, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!361 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !164, file: !165, line: 166, type: !355, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!362 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !164, file: !165, line: 167, type: !355, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!363 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !164, file: !165, line: 170, type: !364, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!364 = !DISubroutineType(types: !365)
!365 = !{!78, !173, !108}
!366 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !164, file: !165, line: 171, type: !367, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!78, !173, !108, !122}
!369 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !164, file: !165, line: 172, type: !314, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!370 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !164, file: !165, line: 173, type: !371, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{!78, !173, !184, !122}
!373 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !164, file: !165, line: 174, type: !364, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!374 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !164, file: !165, line: 175, type: !367, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!375 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !164, file: !165, line: 176, type: !314, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!376 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !164, file: !165, line: 177, type: !371, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!377 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !164, file: !165, line: 178, type: !378, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!378 = !DISubroutineType(types: !379)
!379 = !{!164, !173, !122}
!380 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !164, file: !165, line: 179, type: !381, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{!164, !173, !122, !122}
!383 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !164, file: !165, line: 182, type: !384, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !178, !108, !108}
!386 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !164, file: !165, line: 183, type: !387, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !178, !184, !184}
!389 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !164, file: !165, line: 184, type: !390, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !178, !122}
!392 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !164, file: !165, line: 185, type: !393, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !178, !122, !122}
!395 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !164, file: !165, line: 186, type: !226, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!396 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !164, file: !165, line: 187, type: !226, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!397 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !164, file: !165, line: 188, type: !226, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!398 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !164, file: !165, line: 191, type: !399, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!144, !173}
!401 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !164, file: !165, line: 192, type: !402, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!402 = !DISubroutineType(types: !403)
!403 = !{!148, !173}
!404 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !164, file: !165, line: 193, type: !405, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!405 = !DISubroutineType(types: !406)
!406 = !{!224, !173}
!407 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !164, file: !165, line: 200, type: !226, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!408 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !164, file: !165, line: 201, type: !226, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!409 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !164, file: !165, line: 202, type: !229, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!410 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !164, file: !165, line: 203, type: !411, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!85, !178, !179, !122}
!413 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !164, file: !165, line: 206, type: !414, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!414 = !DISubroutineType(types: !415)
!415 = !{!237, !178, !179, !122}
!416 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !164, file: !165, line: 207, type: !417, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!417 = !DISubroutineType(types: !418)
!418 = !{!237, !178, !188, !122}
!419 = !DISubprogram(name: "move", linkageName: "_ZN6String4moveERS_", scope: !164, file: !165, line: 209, type: !420, scopeLine: 209, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !178, !237}
!422 = !DISubprogram(name: "readStringUntil", linkageName: "_ZN6Stream15readStringUntilEc", scope: !66, file: !67, line: 109, type: !423, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{!164, !79, !108}
!425 = !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntEc", scope: !66, file: !67, line: 112, type: !426, scopeLine: 112, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{!144, !79, !108}
!428 = !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatEc", scope: !66, file: !67, line: 113, type: !429, scopeLine: 113, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!148, !79, !108}
!431 = !DISubprogram(name: "findMulti", linkageName: "_ZN6Stream9findMultiEPNS_11MultiTargetEi", scope: !66, file: !67, line: 126, type: !432, scopeLine: 126, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{!78, !79, !434, !78}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 32)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "MultiTarget", scope: !66, file: !67, line: 118, flags: DIFlagFwdDecl, identifier: "_ZTSN6Stream11MultiTargetE")
!436 = !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEm", scope: !62, file: !63, line: 29, type: !437, scopeLine: 29, containingType: !62, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439, !73}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!440 = !DISubprogram(name: "end", linkageName: "_ZN14HardwareSerial3endEv", scope: !62, file: !63, line: 30, type: !441, scopeLine: 30, containingType: !62, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !439}
!443 = !DISubprogram(name: "available", linkageName: "_ZN14HardwareSerial9availableEv", scope: !62, file: !63, line: 31, type: !444, scopeLine: 31, containingType: !62, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!444 = !DISubroutineType(types: !445)
!445 = !{!78, !439}
!446 = !DISubprogram(name: "peek", linkageName: "_ZN14HardwareSerial4peekEv", scope: !62, file: !63, line: 32, type: !444, scopeLine: 32, containingType: !62, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!447 = !DISubprogram(name: "read", linkageName: "_ZN14HardwareSerial4readEv", scope: !62, file: !63, line: 33, type: !444, scopeLine: 33, containingType: !62, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!448 = !DISubprogram(name: "flush", linkageName: "_ZN14HardwareSerial5flushEv", scope: !62, file: !63, line: 34, type: !441, scopeLine: 34, containingType: !62, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!449 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEh", scope: !62, file: !63, line: 35, type: !450, scopeLine: 35, containingType: !62, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!450 = !DISubroutineType(types: !451)
!451 = !{!120, !439, !113}
!452 = !DISubprogram(name: "operator bool", linkageName: "_ZN14HardwareSerialcvbEv", scope: !62, file: !63, line: 37, type: !453, scopeLine: 37, containingType: !62, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!453 = !DISubroutineType(types: !454)
!454 = !{!90, !439}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_buffer", scope: !59, file: !58, line: 68, baseType: !456, size: 32, offset: 128, flags: DIFlagProtected)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RingBuffer", file: !458, line: 30, size: 1088, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !459, identifier: "_ZTS10RingBuffer")
!458 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/RingBuffer.h", directory: "/home/aaa")
!459 = !{!460, !465, !467, !468, !472}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_aucBuffer", scope: !457, file: !458, line: 33, baseType: !461, size: 1024, flags: DIFlagPublic)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 1024, elements: !463)
!462 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!463 = !{!464}
!464 = !DISubrange(count: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_iHead", scope: !457, file: !458, line: 34, baseType: !466, size: 32, offset: 1024, flags: DIFlagPublic)
!466 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_iTail", scope: !457, file: !458, line: 35, baseType: !466, size: 32, offset: 1056, flags: DIFlagPublic)
!468 = !DISubprogram(name: "RingBuffer", scope: !457, file: !458, line: 38, type: !469, scopeLine: 38, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!472 = !DISubprogram(name: "store_char", linkageName: "_ZN10RingBuffer10store_charEh", scope: !457, file: !458, line: 39, type: !473, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !471, !113}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_buffer", scope: !59, file: !58, line: 69, baseType: !456, size: 32, offset: 160, flags: DIFlagProtected)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_pUart", scope: !59, file: !58, line: 71, baseType: !477, size: 32, offset: 192, flags: DIFlagProtected)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uart", file: !479, line: 62, baseType: !480)
!479 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_uart.h", directory: "/home/aaa")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 41, size: 2368, flags: DIFlagTypePassByValue, elements: !481, identifier: "_ZTS4Uart")
!481 = !{!482, !487, !489, !490, !491, !493, !494, !495, !496, !497, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "UART_CR", scope: !480, file: !479, line: 42, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !4, line: 53, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 66, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !116, line: 56, baseType: !122)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "UART_MR", scope: !480, file: !479, line: 43, baseType: !488, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !4, line: 54, baseType: !484)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "UART_IER", scope: !480, file: !479, line: 44, baseType: !483, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "UART_IDR", scope: !480, file: !479, line: 45, baseType: !483, size: 32, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "UART_IMR", scope: !480, file: !479, line: 46, baseType: !492, size: 32, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !4, line: 51, baseType: !484)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "UART_SR", scope: !480, file: !479, line: 47, baseType: !492, size: 32, offset: 160)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RHR", scope: !480, file: !479, line: 48, baseType: !492, size: 32, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "UART_THR", scope: !480, file: !479, line: 49, baseType: !483, size: 32, offset: 224)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "UART_BRGR", scope: !480, file: !479, line: 50, baseType: !488, size: 32, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !480, file: !479, line: 51, baseType: !498, size: 1760, offset: 288)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 1760, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 55)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RPR", scope: !480, file: !479, line: 52, baseType: !488, size: 32, offset: 2048)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RCR", scope: !480, file: !479, line: 53, baseType: !488, size: 32, offset: 2080)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "UART_TPR", scope: !480, file: !479, line: 54, baseType: !488, size: 32, offset: 2112)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "UART_TCR", scope: !480, file: !479, line: 55, baseType: !488, size: 32, offset: 2144)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RNPR", scope: !480, file: !479, line: 56, baseType: !488, size: 32, offset: 2176)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "UART_RNCR", scope: !480, file: !479, line: 57, baseType: !488, size: 32, offset: 2208)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "UART_TNPR", scope: !480, file: !479, line: 58, baseType: !488, size: 32, offset: 2240)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "UART_TNCR", scope: !480, file: !479, line: 59, baseType: !488, size: 32, offset: 2272)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "UART_PTCR", scope: !480, file: !479, line: 60, baseType: !483, size: 32, offset: 2304)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "UART_PTSR", scope: !480, file: !479, line: 61, baseType: !492, size: 32, offset: 2336)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_dwIrq", scope: !59, file: !58, line: 72, baseType: !512, size: 8, offset: 224, flags: DIFlagProtected)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !4, line: 120, baseType: !3)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_dwId", scope: !59, file: !58, line: 73, baseType: !485, size: 32, offset: 256, flags: DIFlagProtected)
!514 = !DISubprogram(name: "UARTClass", scope: !59, file: !58, line: 45, type: !515, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !517, !477, !512, !485, !456, !456}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!518 = !DISubprogram(name: "begin", linkageName: "_ZN9UARTClass5beginEj", scope: !59, file: !58, line: 47, type: !519, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !517, !521}
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!522 = !DISubprogram(name: "begin", linkageName: "_ZN9UARTClass5beginEjNS_9UARTModesE", scope: !59, file: !58, line: 48, type: !523, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !517, !521, !525}
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!526 = !DISubprogram(name: "end", linkageName: "_ZN9UARTClass3endEv", scope: !59, file: !58, line: 49, type: !527, scopeLine: 49, containingType: !59, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !517}
!529 = !DISubprogram(name: "available", linkageName: "_ZN9UARTClass9availableEv", scope: !59, file: !58, line: 50, type: !530, scopeLine: 50, containingType: !59, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!530 = !DISubroutineType(types: !531)
!531 = !{!78, !517}
!532 = !DISubprogram(name: "availableForWrite", linkageName: "_ZN9UARTClass17availableForWriteEv", scope: !59, file: !58, line: 51, type: !530, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!533 = !DISubprogram(name: "peek", linkageName: "_ZN9UARTClass4peekEv", scope: !59, file: !58, line: 52, type: !530, scopeLine: 52, containingType: !59, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!534 = !DISubprogram(name: "read", linkageName: "_ZN9UARTClass4readEv", scope: !59, file: !58, line: 53, type: !530, scopeLine: 53, containingType: !59, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!535 = !DISubprogram(name: "flush", linkageName: "_ZN9UARTClass5flushEv", scope: !59, file: !58, line: 54, type: !527, scopeLine: 54, containingType: !59, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!536 = !DISubprogram(name: "write", linkageName: "_ZN9UARTClass5writeEh", scope: !59, file: !58, line: 55, type: !537, scopeLine: 55, containingType: !59, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!537 = !DISubroutineType(types: !538)
!538 = !{!120, !517, !539}
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!540 = !DISubprogram(name: "setInterruptPriority", linkageName: "_ZN9UARTClass20setInterruptPriorityEj", scope: !59, file: !58, line: 58, type: !541, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !517, !485}
!543 = !DISubprogram(name: "getInterruptPriority", linkageName: "_ZN9UARTClass20getInterruptPriorityEv", scope: !59, file: !58, line: 59, type: !544, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!485, !517}
!546 = !DISubprogram(name: "IrqHandler", linkageName: "_ZN9UARTClass10IrqHandlerEv", scope: !59, file: !58, line: 61, type: !527, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!547 = !DISubprogram(name: "operator bool", linkageName: "_ZN9UARTClasscvbEv", scope: !59, file: !58, line: 63, type: !548, scopeLine: 63, containingType: !59, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!548 = !DISubroutineType(types: !549)
!549 = !{!90, !517}
!550 = !DISubprogram(name: "init", linkageName: "_ZN9UARTClass4initEjj", scope: !59, file: !58, line: 66, type: !551, scopeLine: 66, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !517, !521, !521}
!553 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!554 = !{!555, !556, !557, !558, !559}
!555 = !DIEnumerator(name: "Mode_8N1", value: 2240, isUnsigned: true)
!556 = !DIEnumerator(name: "Mode_8E1", value: 192, isUnsigned: true)
!557 = !DIEnumerator(name: "Mode_8O1", value: 704, isUnsigned: true)
!558 = !DIEnumerator(name: "Mode_8M1", value: 1728, isUnsigned: true)
!559 = !DIEnumerator(name: "Mode_8S1", value: 1216, isUnsigned: true)
!560 = !{!485, !122, !561, !594}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !563, line: 289, baseType: !564)
!563 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cm3.h", directory: "/home/aaa")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 274, size: 28704, flags: DIFlagTypePassByValue, elements: !565, identifier: "_ZTS9NVIC_Type")
!565 = !{!566, !570, !574, !575, !576, !577, !578, !579, !580, !581, !585, !589, !593}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !564, file: !563, line: 276, baseType: !567, size: 256)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 256, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 8)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !564, file: !563, line: 277, baseType: !571, size: 768, offset: 256)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 768, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 24)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !564, file: !563, line: 278, baseType: !567, size: 256, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !564, file: !563, line: 279, baseType: !571, size: 768, offset: 1280)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !564, file: !563, line: 280, baseType: !567, size: 256, offset: 2048)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !564, file: !563, line: 281, baseType: !571, size: 768, offset: 2304)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !564, file: !563, line: 282, baseType: !567, size: 256, offset: 3072)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !564, file: !563, line: 283, baseType: !571, size: 768, offset: 3328)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !564, file: !563, line: 284, baseType: !567, size: 256, offset: 4096)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !564, file: !563, line: 285, baseType: !582, size: 1792, offset: 4352)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 1792, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 56)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !564, file: !563, line: 286, baseType: !586, size: 1920, offset: 6144)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 1920, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 240)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !564, file: !563, line: 287, baseType: !590, size: 20608, offset: 8064)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 20608, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 644)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !564, file: !563, line: 288, baseType: !484, size: 32, offset: 28672)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !563, line: 329, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 306, size: 1120, flags: DIFlagTypePassByValue, elements: !597, identifier: "_ZTS8SCB_Type")
!597 = !{!598, !599, !600, !601, !602, !603, !604, !608, !609, !610, !611, !612, !613, !614, !615, !619, !620, !621, !625, !629, !631}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !596, file: !563, line: 308, baseType: !484, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !596, file: !563, line: 309, baseType: !484, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !596, file: !563, line: 310, baseType: !484, size: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !596, file: !563, line: 311, baseType: !484, size: 32, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !596, file: !563, line: 312, baseType: !484, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !596, file: !563, line: 313, baseType: !484, size: 32, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !596, file: !563, line: 314, baseType: !605, size: 96, offset: 192)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 96, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 12)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !596, file: !563, line: 315, baseType: !484, size: 32, offset: 288)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !596, file: !563, line: 316, baseType: !484, size: 32, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !596, file: !563, line: 317, baseType: !484, size: 32, offset: 352)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !596, file: !563, line: 318, baseType: !484, size: 32, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !596, file: !563, line: 319, baseType: !484, size: 32, offset: 416)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !596, file: !563, line: 320, baseType: !484, size: 32, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !596, file: !563, line: 321, baseType: !484, size: 32, offset: 480)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !596, file: !563, line: 322, baseType: !616, size: 64, offset: 512)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 64, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 2)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !596, file: !563, line: 323, baseType: !484, size: 32, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !596, file: !563, line: 324, baseType: !484, size: 32, offset: 608)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !596, file: !563, line: 325, baseType: !622, size: 128, offset: 640)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 128, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 4)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !596, file: !563, line: 326, baseType: !626, size: 160, offset: 768)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 160, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 5)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !596, file: !563, line: 327, baseType: !630, size: 160, offset: 928)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 160, elements: !627)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !596, file: !563, line: 328, baseType: !484, size: 32, offset: 1088)
!632 = !{i32 7, !"Dwarf Version", i32 4}
!633 = !{i32 2, !"Debug Info Version", i32 3}
!634 = !{i32 1, !"wchar_size", i32 4}
!635 = !{i32 1, !"min_enum_size", i32 1}
!636 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!637 = distinct !DISubprogram(name: "UARTClass", linkageName: "_ZN9UARTClassC2EP4Uart4IRQnjP10RingBufferS4_", scope: !59, file: !638, line: 26, type: !515, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !514, retainedNodes: !639)
!638 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/UARTClass.cpp", directory: "/home/aaa")
!639 = !{}
!640 = !DILocalVariable(name: "this", arg: 1, scope: !637, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!642 = !DILocation(line: 0, scope: !637)
!643 = !DILocalVariable(name: "pUart", arg: 2, scope: !637, file: !638, line: 26, type: !477)
!644 = !DILocation(line: 26, column: 29, scope: !637)
!645 = !DILocalVariable(name: "dwIrq", arg: 3, scope: !637, file: !638, line: 26, type: !512)
!646 = !DILocation(line: 26, column: 46, scope: !637)
!647 = !DILocalVariable(name: "dwId", arg: 4, scope: !637, file: !638, line: 26, type: !485)
!648 = !DILocation(line: 26, column: 62, scope: !637)
!649 = !DILocalVariable(name: "pRx_buffer", arg: 5, scope: !637, file: !638, line: 26, type: !456)
!650 = !DILocation(line: 26, column: 80, scope: !637)
!651 = !DILocalVariable(name: "pTx_buffer", arg: 6, scope: !637, file: !638, line: 26, type: !456)
!652 = !DILocation(line: 26, column: 104, scope: !637)
!653 = !DILocation(line: 27, column: 1, scope: !637)
!654 = !DILocation(line: 26, column: 12, scope: !637)
!655 = !DILocation(line: 28, column: 16, scope: !656)
!656 = distinct !DILexicalBlock(scope: !637, file: !638, line: 27, column: 1)
!657 = !DILocation(line: 28, column: 3, scope: !656)
!658 = !DILocation(line: 28, column: 14, scope: !656)
!659 = !DILocation(line: 29, column: 16, scope: !656)
!660 = !DILocation(line: 29, column: 3, scope: !656)
!661 = !DILocation(line: 29, column: 14, scope: !656)
!662 = !DILocation(line: 31, column: 10, scope: !656)
!663 = !DILocation(line: 31, column: 3, scope: !656)
!664 = !DILocation(line: 31, column: 9, scope: !656)
!665 = !DILocation(line: 32, column: 10, scope: !656)
!666 = !DILocation(line: 32, column: 3, scope: !656)
!667 = !DILocation(line: 32, column: 9, scope: !656)
!668 = !DILocation(line: 33, column: 9, scope: !656)
!669 = !DILocation(line: 33, column: 3, scope: !656)
!670 = !DILocation(line: 33, column: 8, scope: !656)
!671 = !DILocation(line: 34, column: 1, scope: !637)
!672 = distinct !DISubprogram(name: "HardwareSerial", linkageName: "_ZN14HardwareSerialC2Ev", scope: !62, file: !63, line: 26, type: !441, scopeLine: 26, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !673, retainedNodes: !639)
!673 = !DISubprogram(name: "HardwareSerial", scope: !62, type: !441, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!674 = !DILocalVariable(name: "this", arg: 1, scope: !672, type: !675, flags: DIFlagArtificial | DIFlagObjectPointer)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 32)
!676 = !DILocation(line: 0, scope: !672)
!677 = !DILocation(line: 26, column: 7, scope: !672)
!678 = distinct !DISubprogram(name: "begin", linkageName: "_ZN9UARTClass5beginEj", scope: !59, file: !638, line: 38, type: !519, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !518, retainedNodes: !639)
!679 = !DILocalVariable(name: "this", arg: 1, scope: !678, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!680 = !DILocation(line: 0, scope: !678)
!681 = !DILocalVariable(name: "dwBaudRate", arg: 2, scope: !678, file: !638, line: 38, type: !521)
!682 = !DILocation(line: 38, column: 38, scope: !678)
!683 = !DILocation(line: 40, column: 9, scope: !678)
!684 = !DILocation(line: 40, column: 3, scope: !678)
!685 = !DILocation(line: 41, column: 1, scope: !678)
!686 = distinct !DISubprogram(name: "begin", linkageName: "_ZN9UARTClass5beginEjNS_9UARTModesE", scope: !59, file: !638, line: 43, type: !523, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !522, retainedNodes: !639)
!687 = !DILocalVariable(name: "this", arg: 1, scope: !686, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!688 = !DILocation(line: 0, scope: !686)
!689 = !DILocalVariable(name: "dwBaudRate", arg: 2, scope: !686, file: !638, line: 43, type: !521)
!690 = !DILocation(line: 43, column: 38, scope: !686)
!691 = !DILocalVariable(name: "config", arg: 3, scope: !686, file: !638, line: 43, type: !525)
!692 = !DILocation(line: 43, column: 66, scope: !686)
!693 = !DILocalVariable(name: "modeReg", scope: !686, file: !638, line: 45, type: !485)
!694 = !DILocation(line: 45, column: 12, scope: !686)
!695 = !DILocation(line: 45, column: 44, scope: !686)
!696 = !DILocation(line: 45, column: 52, scope: !686)
!697 = !DILocation(line: 46, column: 8, scope: !686)
!698 = !DILocation(line: 46, column: 20, scope: !686)
!699 = !DILocation(line: 46, column: 3, scope: !686)
!700 = !DILocation(line: 47, column: 1, scope: !686)
!701 = distinct !DISubprogram(name: "init", linkageName: "_ZN9UARTClass4initEjj", scope: !59, file: !638, line: 49, type: !551, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !550, retainedNodes: !639)
!702 = !DILocalVariable(name: "this", arg: 1, scope: !701, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!703 = !DILocation(line: 0, scope: !701)
!704 = !DILocalVariable(name: "dwBaudRate", arg: 2, scope: !701, file: !638, line: 49, type: !521)
!705 = !DILocation(line: 49, column: 37, scope: !701)
!706 = !DILocalVariable(name: "modeReg", arg: 3, scope: !701, file: !638, line: 49, type: !521)
!707 = !DILocation(line: 49, column: 64, scope: !701)
!708 = !DILocation(line: 52, column: 26, scope: !701)
!709 = !DILocation(line: 52, column: 3, scope: !701)
!710 = !DILocation(line: 55, column: 3, scope: !701)
!711 = !DILocation(line: 55, column: 11, scope: !701)
!712 = !DILocation(line: 55, column: 21, scope: !701)
!713 = !DILocation(line: 58, column: 3, scope: !701)
!714 = !DILocation(line: 58, column: 11, scope: !701)
!715 = !DILocation(line: 58, column: 19, scope: !701)
!716 = !DILocation(line: 61, column: 21, scope: !701)
!717 = !DILocation(line: 61, column: 3, scope: !701)
!718 = !DILocation(line: 61, column: 11, scope: !701)
!719 = !DILocation(line: 61, column: 19, scope: !701)
!720 = !DILocation(line: 64, column: 24, scope: !701)
!721 = !DILocation(line: 64, column: 42, scope: !701)
!722 = !DILocation(line: 64, column: 40, scope: !701)
!723 = !DILocation(line: 64, column: 54, scope: !701)
!724 = !DILocation(line: 64, column: 3, scope: !701)
!725 = !DILocation(line: 64, column: 11, scope: !701)
!726 = !DILocation(line: 64, column: 21, scope: !701)
!727 = !DILocation(line: 67, column: 3, scope: !701)
!728 = !DILocation(line: 67, column: 11, scope: !701)
!729 = !DILocation(line: 67, column: 20, scope: !701)
!730 = !DILocation(line: 68, column: 3, scope: !701)
!731 = !DILocation(line: 68, column: 11, scope: !701)
!732 = !DILocation(line: 68, column: 20, scope: !701)
!733 = !DILocation(line: 71, column: 18, scope: !701)
!734 = !DILocation(line: 71, column: 3, scope: !701)
!735 = !DILocation(line: 74, column: 24, scope: !701)
!736 = !DILocation(line: 74, column: 36, scope: !701)
!737 = !DILocation(line: 74, column: 43, scope: !701)
!738 = !DILocation(line: 74, column: 3, scope: !701)
!739 = !DILocation(line: 74, column: 15, scope: !701)
!740 = !DILocation(line: 74, column: 22, scope: !701)
!741 = !DILocation(line: 75, column: 24, scope: !701)
!742 = !DILocation(line: 75, column: 36, scope: !701)
!743 = !DILocation(line: 75, column: 43, scope: !701)
!744 = !DILocation(line: 75, column: 3, scope: !701)
!745 = !DILocation(line: 75, column: 15, scope: !701)
!746 = !DILocation(line: 75, column: 22, scope: !701)
!747 = !DILocation(line: 78, column: 3, scope: !701)
!748 = !DILocation(line: 78, column: 11, scope: !701)
!749 = !DILocation(line: 78, column: 19, scope: !701)
!750 = !DILocation(line: 79, column: 1, scope: !701)
!751 = distinct !DISubprogram(name: "NVIC_EnableIRQ", linkageName: "_ZL14NVIC_EnableIRQ4IRQn", scope: !563, file: !563, line: 938, type: !752, scopeLine: 939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !639)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !512}
!754 = !DILocalVariable(name: "IRQn", arg: 1, scope: !751, file: !563, line: 938, type: !512)
!755 = !DILocation(line: 938, column: 47, scope: !751)
!756 = !DILocation(line: 940, column: 59, scope: !751)
!757 = !DILocation(line: 940, column: 58, scope: !751)
!758 = !DILocation(line: 940, column: 65, scope: !751)
!759 = !DILocation(line: 940, column: 44, scope: !751)
!760 = !DILocation(line: 940, column: 26, scope: !751)
!761 = !DILocation(line: 940, column: 25, scope: !751)
!762 = !DILocation(line: 940, column: 32, scope: !751)
!763 = !DILocation(line: 940, column: 3, scope: !751)
!764 = !DILocation(line: 940, column: 39, scope: !751)
!765 = !DILocation(line: 941, column: 1, scope: !751)
!766 = distinct !DISubprogram(name: "end", linkageName: "_ZN9UARTClass3endEv", scope: !59, file: !638, line: 81, type: !527, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !526, retainedNodes: !639)
!767 = !DILocalVariable(name: "this", arg: 1, scope: !766, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!768 = !DILocation(line: 0, scope: !766)
!769 = !DILocation(line: 84, column: 24, scope: !766)
!770 = !DILocation(line: 84, column: 36, scope: !766)
!771 = !DILocation(line: 84, column: 3, scope: !766)
!772 = !DILocation(line: 84, column: 15, scope: !766)
!773 = !DILocation(line: 84, column: 22, scope: !766)
!774 = !DILocation(line: 87, column: 3, scope: !766)
!775 = !DILocation(line: 90, column: 20, scope: !766)
!776 = !DILocation(line: 90, column: 3, scope: !766)
!777 = !DILocation(line: 92, column: 27, scope: !766)
!778 = !DILocation(line: 92, column: 3, scope: !766)
!779 = !DILocation(line: 93, column: 1, scope: !766)
!780 = distinct !DISubprogram(name: "NVIC_DisableIRQ", linkageName: "_ZL15NVIC_DisableIRQ4IRQn", scope: !563, file: !563, line: 951, type: !752, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !639)
!781 = !DILocalVariable(name: "IRQn", arg: 1, scope: !780, file: !563, line: 951, type: !512)
!782 = !DILocation(line: 951, column: 48, scope: !780)
!783 = !DILocation(line: 953, column: 59, scope: !780)
!784 = !DILocation(line: 953, column: 58, scope: !780)
!785 = !DILocation(line: 953, column: 65, scope: !780)
!786 = !DILocation(line: 953, column: 44, scope: !780)
!787 = !DILocation(line: 953, column: 26, scope: !780)
!788 = !DILocation(line: 953, column: 25, scope: !780)
!789 = !DILocation(line: 953, column: 32, scope: !780)
!790 = !DILocation(line: 953, column: 3, scope: !780)
!791 = !DILocation(line: 953, column: 39, scope: !780)
!792 = !DILocation(line: 954, column: 1, scope: !780)
!793 = distinct !DISubprogram(name: "setInterruptPriority", linkageName: "_ZN9UARTClass20setInterruptPriorityEj", scope: !59, file: !638, line: 95, type: !541, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !540, retainedNodes: !639)
!794 = !DILocalVariable(name: "this", arg: 1, scope: !793, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!795 = !DILocation(line: 0, scope: !793)
!796 = !DILocalVariable(name: "priority", arg: 2, scope: !793, file: !638, line: 95, type: !485)
!797 = !DILocation(line: 95, column: 47, scope: !793)
!798 = !DILocation(line: 97, column: 20, scope: !793)
!799 = !DILocation(line: 97, column: 28, scope: !793)
!800 = !DILocation(line: 97, column: 37, scope: !793)
!801 = !DILocation(line: 97, column: 3, scope: !793)
!802 = !DILocation(line: 98, column: 1, scope: !793)
!803 = distinct !DISubprogram(name: "NVIC_SetPriority", linkageName: "_ZL16NVIC_SetPriority4IRQnj", scope: !563, file: !563, line: 1022, type: !804, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !639)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !512, !485}
!806 = !DILocalVariable(name: "IRQn", arg: 1, scope: !803, file: !563, line: 1022, type: !512)
!807 = !DILocation(line: 1022, column: 49, scope: !803)
!808 = !DILocalVariable(name: "priority", arg: 2, scope: !803, file: !563, line: 1022, type: !485)
!809 = !DILocation(line: 1022, column: 64, scope: !803)
!810 = !DILocation(line: 1024, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !803, file: !563, line: 1024, column: 6)
!812 = !DILocation(line: 1024, column: 11, scope: !811)
!813 = !DILocation(line: 1024, column: 6, scope: !803)
!814 = !DILocation(line: 1025, column: 46, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !563, line: 1024, column: 16)
!816 = !DILocation(line: 1025, column: 55, scope: !815)
!817 = !DILocation(line: 1025, column: 82, scope: !815)
!818 = !DILocation(line: 1025, column: 44, scope: !815)
!819 = !DILocation(line: 1025, column: 26, scope: !815)
!820 = !DILocation(line: 1025, column: 25, scope: !815)
!821 = !DILocation(line: 1025, column: 32, scope: !815)
!822 = !DILocation(line: 1025, column: 38, scope: !815)
!823 = !DILocation(line: 1025, column: 5, scope: !815)
!824 = !DILocation(line: 1025, column: 42, scope: !815)
!825 = !DILocation(line: 1025, column: 91, scope: !815)
!826 = !DILocation(line: 1027, column: 36, scope: !827)
!827 = distinct !DILexicalBlock(scope: !811, file: !563, line: 1026, column: 8)
!828 = !DILocation(line: 1027, column: 45, scope: !827)
!829 = !DILocation(line: 1027, column: 72, scope: !827)
!830 = !DILocation(line: 1027, column: 34, scope: !827)
!831 = !DILocation(line: 1027, column: 25, scope: !827)
!832 = !DILocation(line: 1027, column: 24, scope: !827)
!833 = !DILocation(line: 1027, column: 5, scope: !827)
!834 = !DILocation(line: 1027, column: 32, scope: !827)
!835 = !DILocation(line: 1028, column: 1, scope: !803)
!836 = distinct !DISubprogram(name: "getInterruptPriority", linkageName: "_ZN9UARTClass20getInterruptPriorityEv", scope: !59, file: !638, line: 100, type: !544, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !543, retainedNodes: !639)
!837 = !DILocalVariable(name: "this", arg: 1, scope: !836, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!838 = !DILocation(line: 0, scope: !836)
!839 = !DILocation(line: 102, column: 27, scope: !836)
!840 = !DILocation(line: 102, column: 10, scope: !836)
!841 = !DILocation(line: 102, column: 3, scope: !836)
!842 = distinct !DISubprogram(name: "NVIC_GetPriority", linkageName: "_ZL16NVIC_GetPriority4IRQn", scope: !563, file: !563, line: 1043, type: !843, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !639)
!843 = !DISubroutineType(types: !844)
!844 = !{!485, !512}
!845 = !DILocalVariable(name: "IRQn", arg: 1, scope: !842, file: !563, line: 1043, type: !512)
!846 = !DILocation(line: 1043, column: 53, scope: !842)
!847 = !DILocation(line: 1046, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !563, line: 1046, column: 6)
!849 = !DILocation(line: 1046, column: 11, scope: !848)
!850 = !DILocation(line: 1046, column: 6, scope: !842)
!851 = !DILocation(line: 1047, column: 44, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !563, line: 1046, column: 16)
!853 = !DILocation(line: 1047, column: 43, scope: !852)
!854 = !DILocation(line: 1047, column: 50, scope: !852)
!855 = !DILocation(line: 1047, column: 56, scope: !852)
!856 = !DILocation(line: 1047, column: 23, scope: !852)
!857 = !DILocation(line: 1047, column: 60, scope: !852)
!858 = !DILocation(line: 1047, column: 5, scope: !852)
!859 = !DILocation(line: 1049, column: 43, scope: !860)
!860 = distinct !DILexicalBlock(scope: !848, file: !563, line: 1048, column: 8)
!861 = !DILocation(line: 1049, column: 42, scope: !860)
!862 = !DILocation(line: 1049, column: 23, scope: !860)
!863 = !DILocation(line: 1049, column: 60, scope: !860)
!864 = !DILocation(line: 1049, column: 5, scope: !860)
!865 = !DILocation(line: 1050, column: 1, scope: !842)
!866 = distinct !DISubprogram(name: "available", linkageName: "_ZN9UARTClass9availableEv", scope: !59, file: !638, line: 105, type: !530, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !529, retainedNodes: !639)
!867 = !DILocalVariable(name: "this", arg: 1, scope: !866, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!868 = !DILocation(line: 0, scope: !866)
!869 = !DILocation(line: 107, column: 42, scope: !866)
!870 = !DILocation(line: 107, column: 54, scope: !866)
!871 = !DILocation(line: 107, column: 40, scope: !866)
!872 = !DILocation(line: 107, column: 63, scope: !866)
!873 = !DILocation(line: 107, column: 75, scope: !866)
!874 = !DILocation(line: 107, column: 61, scope: !866)
!875 = !DILocation(line: 107, column: 83, scope: !866)
!876 = !DILocation(line: 107, column: 3, scope: !866)
!877 = distinct !DISubprogram(name: "availableForWrite", linkageName: "_ZN9UARTClass17availableForWriteEv", scope: !59, file: !638, line: 110, type: !530, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !532, retainedNodes: !639)
!878 = !DILocalVariable(name: "this", arg: 1, scope: !877, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!879 = !DILocation(line: 0, scope: !877)
!880 = !DILocalVariable(name: "head", scope: !877, file: !638, line: 112, type: !78)
!881 = !DILocation(line: 112, column: 7, scope: !877)
!882 = !DILocation(line: 112, column: 14, scope: !877)
!883 = !DILocation(line: 112, column: 26, scope: !877)
!884 = !DILocalVariable(name: "tail", scope: !877, file: !638, line: 113, type: !78)
!885 = !DILocation(line: 113, column: 7, scope: !877)
!886 = !DILocation(line: 113, column: 14, scope: !877)
!887 = !DILocation(line: 113, column: 26, scope: !877)
!888 = !DILocation(line: 114, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !877, file: !638, line: 114, column: 7)
!890 = !DILocation(line: 114, column: 15, scope: !889)
!891 = !DILocation(line: 114, column: 12, scope: !889)
!892 = !DILocation(line: 114, column: 7, scope: !877)
!893 = !DILocation(line: 114, column: 53, scope: !889)
!894 = !DILocation(line: 114, column: 51, scope: !889)
!895 = !DILocation(line: 114, column: 60, scope: !889)
!896 = !DILocation(line: 114, column: 58, scope: !889)
!897 = !DILocation(line: 114, column: 21, scope: !889)
!898 = !DILocation(line: 115, column: 10, scope: !877)
!899 = !DILocation(line: 115, column: 17, scope: !877)
!900 = !DILocation(line: 115, column: 15, scope: !877)
!901 = !DILocation(line: 115, column: 22, scope: !877)
!902 = !DILocation(line: 115, column: 3, scope: !877)
!903 = !DILocation(line: 116, column: 1, scope: !877)
!904 = distinct !DISubprogram(name: "peek", linkageName: "_ZN9UARTClass4peekEv", scope: !59, file: !638, line: 118, type: !530, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !533, retainedNodes: !639)
!905 = !DILocalVariable(name: "this", arg: 1, scope: !904, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!906 = !DILocation(line: 0, scope: !904)
!907 = !DILocation(line: 120, column: 8, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !638, line: 120, column: 8)
!909 = !DILocation(line: 120, column: 20, scope: !908)
!910 = !DILocation(line: 120, column: 30, scope: !908)
!911 = !DILocation(line: 120, column: 42, scope: !908)
!912 = !DILocation(line: 120, column: 27, scope: !908)
!913 = !DILocation(line: 120, column: 8, scope: !904)
!914 = !DILocation(line: 121, column: 5, scope: !908)
!915 = !DILocation(line: 123, column: 10, scope: !904)
!916 = !DILocation(line: 123, column: 22, scope: !904)
!917 = !DILocation(line: 123, column: 33, scope: !904)
!918 = !DILocation(line: 123, column: 45, scope: !904)
!919 = !DILocation(line: 123, column: 3, scope: !904)
!920 = !DILocation(line: 124, column: 1, scope: !904)
!921 = distinct !DISubprogram(name: "read", linkageName: "_ZN9UARTClass4readEv", scope: !59, file: !638, line: 126, type: !530, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !534, retainedNodes: !639)
!922 = !DILocalVariable(name: "this", arg: 1, scope: !921, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!923 = !DILocation(line: 0, scope: !921)
!924 = !DILocation(line: 129, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !638, line: 129, column: 8)
!926 = !DILocation(line: 129, column: 20, scope: !925)
!927 = !DILocation(line: 129, column: 30, scope: !925)
!928 = !DILocation(line: 129, column: 42, scope: !925)
!929 = !DILocation(line: 129, column: 27, scope: !925)
!930 = !DILocation(line: 129, column: 8, scope: !921)
!931 = !DILocation(line: 130, column: 5, scope: !925)
!932 = !DILocalVariable(name: "uc", scope: !921, file: !638, line: 132, type: !113)
!933 = !DILocation(line: 132, column: 11, scope: !921)
!934 = !DILocation(line: 132, column: 16, scope: !921)
!935 = !DILocation(line: 132, column: 28, scope: !921)
!936 = !DILocation(line: 132, column: 39, scope: !921)
!937 = !DILocation(line: 132, column: 51, scope: !921)
!938 = !DILocation(line: 133, column: 39, scope: !921)
!939 = !DILocation(line: 133, column: 51, scope: !921)
!940 = !DILocation(line: 133, column: 58, scope: !921)
!941 = !DILocation(line: 133, column: 63, scope: !921)
!942 = !DILocation(line: 133, column: 3, scope: !921)
!943 = !DILocation(line: 133, column: 15, scope: !921)
!944 = !DILocation(line: 133, column: 22, scope: !921)
!945 = !DILocation(line: 134, column: 10, scope: !921)
!946 = !DILocation(line: 134, column: 3, scope: !921)
!947 = !DILocation(line: 135, column: 1, scope: !921)
!948 = distinct !DISubprogram(name: "flush", linkageName: "_ZN9UARTClass5flushEv", scope: !59, file: !638, line: 137, type: !527, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !535, retainedNodes: !639)
!949 = !DILocalVariable(name: "this", arg: 1, scope: !948, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!950 = !DILocation(line: 0, scope: !948)
!951 = !DILocation(line: 139, column: 3, scope: !948)
!952 = !DILocation(line: 139, column: 10, scope: !948)
!953 = !DILocation(line: 139, column: 22, scope: !948)
!954 = !DILocation(line: 139, column: 32, scope: !948)
!955 = !DILocation(line: 139, column: 44, scope: !948)
!956 = !DILocation(line: 139, column: 29, scope: !948)
!957 = distinct !{!957, !951, !958}
!958 = !DILocation(line: 139, column: 51, scope: !948)
!959 = !DILocation(line: 141, column: 3, scope: !948)
!960 = !DILocation(line: 141, column: 11, scope: !948)
!961 = !DILocation(line: 141, column: 19, scope: !948)
!962 = !DILocation(line: 141, column: 27, scope: !948)
!963 = !DILocation(line: 141, column: 46, scope: !948)
!964 = distinct !{!964, !959, !965}
!965 = !DILocation(line: 142, column: 4, scope: !948)
!966 = !DILocation(line: 143, column: 1, scope: !948)
!967 = distinct !DISubprogram(name: "write", linkageName: "_ZN9UARTClass5writeEh", scope: !59, file: !638, line: 145, type: !537, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !536, retainedNodes: !639)
!968 = !DILocalVariable(name: "this", arg: 1, scope: !967, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!969 = !DILocation(line: 0, scope: !967)
!970 = !DILocalVariable(name: "uc_data", arg: 2, scope: !967, file: !638, line: 145, type: !539)
!971 = !DILocation(line: 145, column: 40, scope: !967)
!972 = !DILocation(line: 148, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !967, file: !638, line: 148, column: 7)
!974 = !DILocation(line: 148, column: 17, scope: !973)
!975 = !DILocation(line: 148, column: 25, scope: !973)
!976 = !DILocation(line: 148, column: 42, scope: !973)
!977 = !DILocation(line: 148, column: 7, scope: !973)
!978 = !DILocation(line: 149, column: 8, scope: !973)
!979 = !DILocation(line: 149, column: 20, scope: !973)
!980 = !DILocation(line: 149, column: 30, scope: !973)
!981 = !DILocation(line: 149, column: 42, scope: !973)
!982 = !DILocation(line: 149, column: 27, scope: !973)
!983 = !DILocation(line: 149, column: 7, scope: !973)
!984 = !DILocation(line: 148, column: 60, scope: !973)
!985 = !DILocation(line: 148, column: 7, scope: !967)
!986 = !DILocalVariable(name: "nextWrite", scope: !987, file: !638, line: 152, type: !78)
!987 = distinct !DILexicalBlock(scope: !973, file: !638, line: 150, column: 3)
!988 = !DILocation(line: 152, column: 9, scope: !987)
!989 = !DILocation(line: 152, column: 22, scope: !987)
!990 = !DILocation(line: 152, column: 34, scope: !987)
!991 = !DILocation(line: 152, column: 41, scope: !987)
!992 = !DILocation(line: 152, column: 46, scope: !987)
!993 = !DILocation(line: 153, column: 5, scope: !987)
!994 = !DILocation(line: 153, column: 12, scope: !987)
!995 = !DILocation(line: 153, column: 24, scope: !987)
!996 = !DILocation(line: 153, column: 34, scope: !987)
!997 = !DILocation(line: 153, column: 31, scope: !987)
!998 = distinct !{!998, !993, !999}
!999 = !DILocation(line: 154, column: 7, scope: !987)
!1000 = !DILocation(line: 156, column: 50, scope: !987)
!1001 = !DILocation(line: 156, column: 5, scope: !987)
!1002 = !DILocation(line: 156, column: 17, scope: !987)
!1003 = !DILocation(line: 156, column: 28, scope: !987)
!1004 = !DILocation(line: 156, column: 40, scope: !987)
!1005 = !DILocation(line: 156, column: 48, scope: !987)
!1006 = !DILocation(line: 157, column: 26, scope: !987)
!1007 = !DILocation(line: 157, column: 5, scope: !987)
!1008 = !DILocation(line: 157, column: 17, scope: !987)
!1009 = !DILocation(line: 157, column: 24, scope: !987)
!1010 = !DILocation(line: 159, column: 5, scope: !987)
!1011 = !DILocation(line: 159, column: 13, scope: !987)
!1012 = !DILocation(line: 159, column: 22, scope: !987)
!1013 = !DILocation(line: 160, column: 3, scope: !987)
!1014 = !DILocation(line: 164, column: 25, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !973, file: !638, line: 162, column: 3)
!1016 = !DILocation(line: 164, column: 6, scope: !1015)
!1017 = !DILocation(line: 164, column: 14, scope: !1015)
!1018 = !DILocation(line: 164, column: 23, scope: !1015)
!1019 = !DILocation(line: 166, column: 3, scope: !967)
!1020 = distinct !DISubprogram(name: "IrqHandler", linkageName: "_ZN9UARTClass10IrqHandlerEv", scope: !59, file: !638, line: 169, type: !527, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !546, retainedNodes: !639)
!1021 = !DILocalVariable(name: "this", arg: 1, scope: !1020, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!1022 = !DILocation(line: 0, scope: !1020)
!1023 = !DILocalVariable(name: "status", scope: !1020, file: !638, line: 171, type: !485)
!1024 = !DILocation(line: 171, column: 12, scope: !1020)
!1025 = !DILocation(line: 171, column: 21, scope: !1020)
!1026 = !DILocation(line: 171, column: 29, scope: !1020)
!1027 = !DILocation(line: 174, column: 8, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !638, line: 174, column: 7)
!1029 = !DILocation(line: 174, column: 15, scope: !1028)
!1030 = !DILocation(line: 174, column: 32, scope: !1028)
!1031 = !DILocation(line: 174, column: 7, scope: !1020)
!1032 = !DILocation(line: 175, column: 5, scope: !1028)
!1033 = !DILocation(line: 175, column: 28, scope: !1028)
!1034 = !DILocation(line: 175, column: 36, scope: !1028)
!1035 = !DILocation(line: 175, column: 17, scope: !1028)
!1036 = !DILocation(line: 178, column: 8, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1020, file: !638, line: 178, column: 7)
!1038 = !DILocation(line: 178, column: 15, scope: !1037)
!1039 = !DILocation(line: 178, column: 32, scope: !1037)
!1040 = !DILocation(line: 178, column: 7, scope: !1020)
!1041 = !DILocation(line: 180, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !638, line: 180, column: 9)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !638, line: 179, column: 3)
!1044 = !DILocation(line: 180, column: 21, scope: !1042)
!1045 = !DILocation(line: 180, column: 31, scope: !1042)
!1046 = !DILocation(line: 180, column: 43, scope: !1042)
!1047 = !DILocation(line: 180, column: 28, scope: !1042)
!1048 = !DILocation(line: 180, column: 9, scope: !1043)
!1049 = !DILocation(line: 181, column: 26, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1042, file: !638, line: 180, column: 51)
!1051 = !DILocation(line: 181, column: 38, scope: !1050)
!1052 = !DILocation(line: 181, column: 49, scope: !1050)
!1053 = !DILocation(line: 181, column: 61, scope: !1050)
!1054 = !DILocation(line: 181, column: 7, scope: !1050)
!1055 = !DILocation(line: 181, column: 15, scope: !1050)
!1056 = !DILocation(line: 181, column: 24, scope: !1050)
!1057 = !DILocation(line: 182, column: 43, scope: !1050)
!1058 = !DILocation(line: 182, column: 55, scope: !1050)
!1059 = !DILocation(line: 182, column: 62, scope: !1050)
!1060 = !DILocation(line: 182, column: 67, scope: !1050)
!1061 = !DILocation(line: 182, column: 7, scope: !1050)
!1062 = !DILocation(line: 182, column: 19, scope: !1050)
!1063 = !DILocation(line: 182, column: 26, scope: !1050)
!1064 = !DILocation(line: 183, column: 5, scope: !1050)
!1065 = !DILocation(line: 187, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1042, file: !638, line: 185, column: 5)
!1067 = !DILocation(line: 187, column: 15, scope: !1066)
!1068 = !DILocation(line: 187, column: 24, scope: !1066)
!1069 = !DILocation(line: 189, column: 3, scope: !1043)
!1070 = !DILocation(line: 192, column: 8, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1020, file: !638, line: 192, column: 7)
!1072 = !DILocation(line: 192, column: 15, scope: !1071)
!1073 = !DILocation(line: 192, column: 31, scope: !1071)
!1074 = !DILocation(line: 192, column: 47, scope: !1071)
!1075 = !DILocation(line: 192, column: 51, scope: !1071)
!1076 = !DILocation(line: 192, column: 58, scope: !1071)
!1077 = !DILocation(line: 192, column: 75, scope: !1071)
!1078 = !DILocation(line: 192, column: 7, scope: !1020)
!1079 = !DILocation(line: 195, column: 5, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !638, line: 193, column: 3)
!1081 = !DILocation(line: 195, column: 13, scope: !1080)
!1082 = !DILocation(line: 195, column: 21, scope: !1080)
!1083 = !DILocation(line: 196, column: 3, scope: !1080)
!1084 = !DILocation(line: 197, column: 1, scope: !1020)
!1085 = distinct !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEm", scope: !62, file: !63, line: 29, type: !437, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !436, retainedNodes: !639)
!1086 = !DILocalVariable(name: "this", arg: 1, scope: !1085, type: !675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1087 = !DILocation(line: 0, scope: !1085)
!1088 = !DILocalVariable(arg: 2, scope: !1085, file: !63, line: 29, type: !73)
!1089 = !DILocation(line: 29, column: 37, scope: !1085)
!1090 = !DILocation(line: 29, column: 41, scope: !1085)
!1091 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZN9UARTClasscvbEv", scope: !59, file: !58, line: 63, type: !548, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !547, retainedNodes: !639)
!1092 = !DILocalVariable(name: "this", arg: 1, scope: !1091, type: !641, flags: DIFlagArtificial | DIFlagObjectPointer)
!1093 = !DILocation(line: 0, scope: !1091)
!1094 = !DILocation(line: 63, column: 23, scope: !1091)
!1095 = distinct !DISubprogram(name: "Stream", linkageName: "_ZN6StreamC2Ev", scope: !66, file: !67, line: 64, type: !95, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !97, retainedNodes: !639)
!1096 = !DILocalVariable(name: "this", arg: 1, scope: !1095, type: !1097, flags: DIFlagArtificial | DIFlagObjectPointer)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!1098 = !DILocation(line: 0, scope: !1095)
!1099 = !DILocation(line: 64, column: 14, scope: !1095)
!1100 = !DILocation(line: 64, column: 5, scope: !1095)
!1101 = !DILocation(line: 64, column: 15, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !67, line: 64, column: 14)
!1103 = !DILocation(line: 64, column: 23, scope: !1102)
!1104 = !DILocation(line: 64, column: 29, scope: !1095)
!1105 = distinct !DISubprogram(name: "end", linkageName: "_ZN14HardwareSerial3endEv", scope: !62, file: !63, line: 30, type: !441, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !440, retainedNodes: !639)
!1106 = !DILocalVariable(name: "this", arg: 1, scope: !1105, type: !675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1107 = !DILocation(line: 0, scope: !1105)
!1108 = !DILocation(line: 30, column: 26, scope: !1105)
!1109 = distinct !DISubprogram(name: "Print", linkageName: "_ZN5PrintC2Ev", scope: !70, file: !71, line: 43, type: !1110, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !1113, retainedNodes: !639)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1113 = !DISubprogram(name: "Print", scope: !70, file: !71, line: 43, type: !1110, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1114 = !DILocalVariable(name: "this", arg: 1, scope: !1109, type: !1115, flags: DIFlagArtificial | DIFlagObjectPointer)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!1116 = !DILocation(line: 0, scope: !1109)
!1117 = !DILocation(line: 43, column: 30, scope: !1109)
!1118 = !DILocation(line: 43, column: 15, scope: !1109)
!1119 = !DILocation(line: 43, column: 31, scope: !1109)

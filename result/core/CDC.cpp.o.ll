; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/CDC.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/CDC.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct.ring_buffer = type { [512 x i8], i32, i32 }
%struct.CDCDescriptor = type { %struct.IADDescriptor, %struct.InterfaceDescriptor, %struct.CDCCSInterfaceDescriptor, %struct.CMFunctionalDescriptor, %struct.ACMFunctionalDescriptor, %struct.CDCCSInterfaceDescriptor, %struct.EndpointDescriptor, %struct.InterfaceDescriptor, %struct.EndpointDescriptor, %struct.EndpointDescriptor }
%struct.IADDescriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.CMFunctionalDescriptor = type { i8, i8, i8, i8, i8 }
%struct.ACMFunctionalDescriptor = type { i8, i8, i8, i8 }
%struct.CDCCSInterfaceDescriptor = type { i8, i8, i8, i8, i8 }
%struct.InterfaceDescriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.EndpointDescriptor = type <{ i8, i8, i8, i8, i16, i8 }>
%struct.LineInfo = type { i32, i8, i8, i8, i8 }
%class.Serial_ = type { %class.Stream, %class.RingBuffer* }
%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i32 }
%class.RingBuffer = type { [128 x i8], i32, i32 }
%struct.USBSetup = type { i8, i8, i8, i8, i16, i16 }
%struct.Uotghs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [55 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [50 x i32], [7 x %struct.UotghsDevdma], [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [52 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [2 x i32], [10 x i32], [26 x i32], [7 x %struct.UotghsHstdma], [32 x i32], i32, i32, i32, i32, [7 x i32], i32 }
%struct.UotghsDevdma = type { i32, i32, i32, i32 }
%struct.UotghsHstdma = type { i32, i32, i32, i32 }

$_ZN5Print13setWriteErrorEi = comdat any

$_ZN7Serial_C2Ev = comdat any

$_ZN6StreamC2Ev = comdat any

$_ZN5PrintC2Ev = comdat any

$_ZTV6Stream = comdat any

@cdc_rx_buffer = dso_local global %struct.ring_buffer zeroinitializer, align 4, !dbg !0
@_ZL13_cdcInterface = internal constant %struct.CDCDescriptor { %struct.IADDescriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 2, i8 1, i8 0 }, %struct.InterfaceDescriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 2, i8 0, i8 0 }, %struct.CDCCSInterfaceDescriptor { i8 5, i8 36, i8 0, i8 16, i8 1 }, %struct.CMFunctionalDescriptor { i8 5, i8 36, i8 1, i8 1, i8 1 }, %struct.ACMFunctionalDescriptor { i8 4, i8 36, i8 2, i8 6 }, %struct.CDCCSInterfaceDescriptor { i8 5, i8 36, i8 6, i8 0, i8 1 }, %struct.EndpointDescriptor <{ i8 7, i8 5, i8 -127, i8 3, i16 16, i8 16 }>, %struct.InterfaceDescriptor { i8 9, i8 4, i8 1, i8 0, i8 2, i8 10, i8 0, i8 0, i8 0 }, %struct.EndpointDescriptor <{ i8 7, i8 5, i8 2, i8 2, i16 512, i8 0 }>, %struct.EndpointDescriptor <{ i8 7, i8 5, i8 -125, i8 2, i16 512, i8 0 }> }, align 1, !dbg !561
@_ZL18_cdcOtherInterface = internal constant %struct.CDCDescriptor { %struct.IADDescriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 2, i8 1, i8 0 }, %struct.InterfaceDescriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 2, i8 0, i8 0 }, %struct.CDCCSInterfaceDescriptor { i8 5, i8 36, i8 0, i8 16, i8 1 }, %struct.CMFunctionalDescriptor { i8 5, i8 36, i8 1, i8 1, i8 1 }, %struct.ACMFunctionalDescriptor { i8 4, i8 36, i8 2, i8 6 }, %struct.CDCCSInterfaceDescriptor { i8 5, i8 36, i8 6, i8 0, i8 1 }, %struct.EndpointDescriptor <{ i8 7, i8 5, i8 -127, i8 3, i16 16, i8 16 }>, %struct.InterfaceDescriptor { i8 9, i8 4, i8 1, i8 0, i8 2, i8 10, i8 0, i8 0, i8 0 }, %struct.EndpointDescriptor <{ i8 7, i8 5, i8 2, i8 2, i16 64, i8 0 }>, %struct.EndpointDescriptor <{ i8 7, i8 5, i8 -125, i8 2, i16 64, i8 0 }> }, align 1, !dbg !633
@_ZL12_usbLineInfo = internal global %struct.LineInfo { i32 57600, i8 0, i8 0, i8 8, i8 0 }, align 4, !dbg !635
@_ZL10breakValue = internal global i32 -1, align 4, !dbg !646
@_serialPeek = dso_local global i32 -1, align 4, !dbg !140
@_ZZN7Serial_6acceptEvE5guard = internal global i32 0, align 4, !dbg !144
@SerialUSB = dso_local global %class.Serial_ zeroinitializer, align 4, !dbg !559
@_ZTV7Serial_ = dso_local unnamed_addr constant { [10 x i8*] } { [10 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%class.Serial_*, i8)* @_ZN7Serial_5writeEh to i8*), i8* bitcast (i32 (%class.Serial_*, i8*, i32)* @_ZN7Serial_5writeEPKhj to i8*), i8* bitcast (i32 (%class.Serial_*)* @_ZN7Serial_9availableEv to i8*), i8* bitcast (i32 (%class.Serial_*)* @_ZN7Serial_4readEv to i8*), i8* bitcast (i32 (%class.Serial_*)* @_ZN7Serial_4peekEv to i8*), i8* bitcast (void (%class.Serial_*)* @_ZN7Serial_5flushEv to i8*), i8* bitcast (i32 (%class.Serial_*)* @_ZN7Serial_17availableForWriteEv to i8*), i8* bitcast (void (%class.Serial_*)* @_ZN7Serial_6acceptEv to i8*)] }, align 4
@_ZTV6Stream = linkonce_odr dso_local unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* null, i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i32 (%class.Print*, i8*, i32)* @_ZN5Print5writeEPKhj to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 4
@_ZTV5Print = external dso_local unnamed_addr constant { [4 x i8*] }, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CDC.cpp, i8* null }]

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc i32 @_Z16CDC_GetInterfacePh(i8* %interfaceNum) #0 !dbg !662 {
entry:
  %interfaceNum.addr = alloca i8*, align 4
  store i8* %interfaceNum, i8** %interfaceNum.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %interfaceNum.addr, metadata !665, metadata !DIExpression()), !dbg !666
  %0 = load i8*, i8** %interfaceNum.addr, align 4, !dbg !667
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0, !dbg !667
  %1 = load i8, i8* %arrayidx, align 1, !dbg !668
  %conv = zext i8 %1 to i32, !dbg !668
  %add = add nsw i32 %conv, 2, !dbg !668
  %conv1 = trunc i32 %add to i8, !dbg !668
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !668
  %call = call arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext 0, i8* getelementptr inbounds (%struct.CDCDescriptor, %struct.CDCDescriptor* @_ZL13_cdcInterface, i32 0, i32 0, i32 0), i32 66), !dbg !669
  ret i32 %call, !dbg !670
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc i32 @_Z21CDC_GetOtherInterfacePh(i8* %interfaceNum) #0 !dbg !671 {
entry:
  %interfaceNum.addr = alloca i8*, align 4
  store i8* %interfaceNum, i8** %interfaceNum.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %interfaceNum.addr, metadata !672, metadata !DIExpression()), !dbg !673
  %0 = load i8*, i8** %interfaceNum.addr, align 4, !dbg !674
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0, !dbg !674
  %1 = load i8, i8* %arrayidx, align 1, !dbg !675
  %conv = zext i8 %1 to i32, !dbg !675
  %add = add nsw i32 %conv, 2, !dbg !675
  %conv1 = trunc i32 %add to i8, !dbg !675
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !675
  %call = call arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext 0, i8* getelementptr inbounds (%struct.CDCDescriptor, %struct.CDCDescriptor* @_ZL18_cdcOtherInterface, i32 0, i32 0, i32 0), i32 66), !dbg !676
  ret i32 %call, !dbg !677
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc zeroext i1 @_Z9CDC_SetupR8USBSetup(%struct.USBSetup* dereferenceable(8) %setup) #0 !dbg !678 {
entry:
  %retval = alloca i1, align 1
  %setup.addr = alloca %struct.USBSetup*, align 4
  %r = alloca i8, align 1
  %requestType = alloca i8, align 1
  store %struct.USBSetup* %setup, %struct.USBSetup** %setup.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.USBSetup** %setup.addr, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata i8* %r, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !695
  %bRequest = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %0, i32 0, i32 1, !dbg !696
  %1 = load i8, i8* %bRequest, align 1, !dbg !696
  store i8 %1, i8* %r, align 1, !dbg !694
  call void @llvm.dbg.declare(metadata i8* %requestType, metadata !697, metadata !DIExpression()), !dbg !698
  %2 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !699
  %bmRequestType = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %2, i32 0, i32 0, !dbg !700
  %3 = load i8, i8* %bmRequestType, align 2, !dbg !700
  store i8 %3, i8* %requestType, align 1, !dbg !698
  %4 = load i8, i8* %requestType, align 1, !dbg !701
  %conv = zext i8 %4 to i32, !dbg !701
  %cmp = icmp eq i32 161, %conv, !dbg !703
  br i1 %cmp, label %if.then, label %if.end4, !dbg !704

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %r, align 1, !dbg !705
  %conv1 = zext i8 %5 to i32, !dbg !705
  %cmp2 = icmp eq i32 33, %conv1, !dbg !708
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !709

if.then3:                                         ; preds = %if.then
  %call = call arm_aapcscc i32 @_Z16USBD_SendControlhPKvj(i8 zeroext 0, i8* bitcast (%struct.LineInfo* @_ZL12_usbLineInfo to i8*), i32 7), !dbg !710
  store i1 true, i1* %retval, align 1, !dbg !712
  br label %return, !dbg !712

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !713

if.end4:                                          ; preds = %if.end, %entry
  %6 = load i8, i8* %requestType, align 1, !dbg !714
  %conv5 = zext i8 %6 to i32, !dbg !714
  %cmp6 = icmp eq i32 33, %conv5, !dbg !716
  br i1 %cmp6, label %if.then7, label %if.end32, !dbg !717

if.then7:                                         ; preds = %if.end4
  %7 = load i8, i8* %r, align 1, !dbg !718
  %conv8 = zext i8 %7 to i32, !dbg !718
  %cmp9 = icmp eq i32 32, %conv8, !dbg !721
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !722

if.then10:                                        ; preds = %if.then7
  %call11 = call arm_aapcscc i32 @_Z16USBD_RecvControlPvj(i8* bitcast (%struct.LineInfo* @_ZL12_usbLineInfo to i8*), i32 7), !dbg !723
  store i1 true, i1* %retval, align 1, !dbg !725
  br label %return, !dbg !725

if.end12:                                         ; preds = %if.then7
  %8 = load i8, i8* %r, align 1, !dbg !726
  %conv13 = zext i8 %8 to i32, !dbg !726
  %cmp14 = icmp eq i32 34, %conv13, !dbg !728
  br i1 %cmp14, label %if.then15, label %if.end23, !dbg !729

if.then15:                                        ; preds = %if.end12
  %9 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !730
  %wValueL = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %9, i32 0, i32 2, !dbg !732
  %10 = load i8, i8* %wValueL, align 2, !dbg !732
  store volatile i8 %10, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 4), align 1, !dbg !733
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 0), align 4, !dbg !734
  %cmp16 = icmp eq i32 1200, %11, !dbg !736
  br i1 %cmp16, label %if.then17, label %if.end22, !dbg !737

if.then17:                                        ; preds = %if.then15
  %12 = load volatile i8, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 4), align 1, !dbg !738
  %conv18 = zext i8 %12 to i32, !dbg !741
  %and = and i32 %conv18, 1, !dbg !742
  %cmp19 = icmp eq i32 %and, 0, !dbg !743
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !744

if.then20:                                        ; preds = %if.then17
  call arm_aapcscc void @initiateReset(i32 250), !dbg !745
  br label %if.end21, !dbg !745

if.else:                                          ; preds = %if.then17
  call arm_aapcscc void @cancelReset(), !dbg !746
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then20
  br label %if.end22, !dbg !747

if.end22:                                         ; preds = %if.end21, %if.then15
  store i1 true, i1* %retval, align 1, !dbg !748
  br label %return, !dbg !748

if.end23:                                         ; preds = %if.end12
  %13 = load i8, i8* %r, align 1, !dbg !749
  %conv24 = zext i8 %13 to i32, !dbg !749
  %cmp25 = icmp eq i32 35, %conv24, !dbg !751
  br i1 %cmp25, label %if.then26, label %if.end31, !dbg !752

if.then26:                                        ; preds = %if.end23
  %14 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !753
  %wValueH = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %14, i32 0, i32 3, !dbg !755
  %15 = load i8, i8* %wValueH, align 1, !dbg !755
  %conv27 = zext i8 %15 to i16, !dbg !753
  %conv28 = zext i16 %conv27 to i32, !dbg !756
  %shl = shl i32 %conv28, 8, !dbg !757
  %16 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !758
  %wValueL29 = getelementptr inbounds %struct.USBSetup, %struct.USBSetup* %16, i32 0, i32 2, !dbg !759
  %17 = load i8, i8* %wValueL29, align 2, !dbg !759
  %conv30 = zext i8 %17 to i32, !dbg !758
  %or = or i32 %shl, %conv30, !dbg !760
  store volatile i32 %or, i32* @_ZL10breakValue, align 4, !dbg !761
  store i1 true, i1* %retval, align 1, !dbg !762
  br label %return, !dbg !762

if.end31:                                         ; preds = %if.end23
  br label %if.end32, !dbg !763

if.end32:                                         ; preds = %if.end31, %if.end4
  store i1 false, i1* %retval, align 1, !dbg !764
  br label %return, !dbg !764

return:                                           ; preds = %if.end32, %if.then26, %if.end22, %if.then10, %if.then3
  %18 = load i1, i1* %retval, align 1, !dbg !765
  ret i1 %18, !dbg !765
}

declare dso_local arm_aapcscc i32 @_Z16USBD_RecvControlPvj(i8*, i32) #2

declare dso_local arm_aapcscc void @initiateReset(i32) #2

declare dso_local arm_aapcscc void @cancelReset() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN7Serial_5beginEj(%class.Serial_* %this, i32 %baud_count) #0 align 2 !dbg !766 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  %baud_count.addr = alloca i32, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !767, metadata !DIExpression()), !dbg !769
  store i32 %baud_count, i32* %baud_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %baud_count.addr, metadata !770, metadata !DIExpression()), !dbg !771
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN7Serial_5beginEjh(%class.Serial_* %this, i32 %baud_count, i8 zeroext %config) #0 align 2 !dbg !773 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  %baud_count.addr = alloca i32, align 4
  %config.addr = alloca i8, align 1
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !774, metadata !DIExpression()), !dbg !775
  store i32 %baud_count, i32* %baud_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %baud_count.addr, metadata !776, metadata !DIExpression()), !dbg !777
  store i8 %config, i8* %config.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %config.addr, metadata !778, metadata !DIExpression()), !dbg !779
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN7Serial_3endEv(%class.Serial_* %this) #0 align 2 !dbg !781 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !782, metadata !DIExpression()), !dbg !783
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN7Serial_6acceptEv(%class.Serial_* %this) unnamed_addr #0 align 2 !dbg !146 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i, metadata !785, metadata !DIExpression()), !dbg !791
  %addr.addr.i14 = alloca i32*, align 4
  call void @llvm.dbg.declare(metadata i32** %addr.addr.i14, metadata !793, metadata !DIExpression()), !dbg !794
  %result.i15 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result.i15, metadata !795, metadata !DIExpression()), !dbg !796
  %addr.addr.i = alloca i32*, align 4
  call void @llvm.dbg.declare(metadata i32** %addr.addr.i, metadata !797, metadata !DIExpression()), !dbg !801
  %result.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result.i, metadata !805, metadata !DIExpression()), !dbg !806
  %this.addr = alloca %class.Serial_*, align 4
  %buffer = alloca %struct.ring_buffer*, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !807, metadata !DIExpression()), !dbg !808
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  br label %do.body, !dbg !809

do.body:                                          ; preds = %do.cond, %entry
  store i32* @_ZZN7Serial_6acceptEvE5guard, i32** %addr.addr.i, align 4
  %0 = load i32*, i32** %addr.addr.i, align 4, !dbg !810
  %1 = call i32 asm sideeffect "ldrex $0, [$1]", "=r,r"(i32* %0) #4, !dbg !811, !srcloc !812
  store i32 %1, i32* %result.i, align 4, !dbg !811
  %2 = load i32, i32* %result.i, align 4, !dbg !813
  %cmp = icmp ne i32 %2, 0, !dbg !814
  br i1 %cmp, label %if.then, label %if.end, !dbg !815

if.then:                                          ; preds = %do.body
  call void asm sideeffect "clrex", ""() #4, !dbg !816, !srcloc !822
  br label %return, !dbg !823

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !824

do.cond:                                          ; preds = %if.end
  store i32 1, i32* %value.addr.i, align 4
  store i32* @_ZZN7Serial_6acceptEvE5guard, i32** %addr.addr.i14, align 4
  %3 = load i32*, i32** %addr.addr.i14, align 4, !dbg !825
  %4 = load i32, i32* %value.addr.i, align 4, !dbg !826
  %5 = call i32 asm sideeffect "strex $0, $2, [$1]", "=r,r,r"(i32* %3, i32 %4) #4, !dbg !827, !srcloc !828
  store i32 %5, i32* %result.i15, align 4, !dbg !827
  %6 = load i32, i32* %result.i15, align 4, !dbg !829
  %cmp3 = icmp ne i32 %6, 0, !dbg !830
  br i1 %cmp3, label %do.body, label %do.end, !dbg !824, !llvm.loop !831

do.end:                                           ; preds = %do.cond
  call void @llvm.dbg.declare(metadata %struct.ring_buffer** %buffer, metadata !833, metadata !DIExpression()), !dbg !835
  store %struct.ring_buffer* @cdc_rx_buffer, %struct.ring_buffer** %buffer, align 4, !dbg !835
  call void @llvm.dbg.declare(metadata i32* %i, metadata !836, metadata !DIExpression()), !dbg !837
  %7 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !838
  %head = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %7, i32 0, i32 1, !dbg !839
  %8 = load volatile i32, i32* %head, align 4, !dbg !839
  %add = add i32 %8, 1, !dbg !840
  %rem = urem i32 %add, 512, !dbg !841
  store i32 %rem, i32* %i, align 4, !dbg !837
  br label %while.cond, !dbg !842

while.cond:                                       ; preds = %if.end7, %do.end
  %9 = load i32, i32* %i, align 4, !dbg !843
  %10 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !844
  %tail = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %10, i32 0, i32 2, !dbg !845
  %11 = load volatile i32, i32* %tail, align 4, !dbg !845
  %cmp4 = icmp ne i32 %9, %11, !dbg !846
  br i1 %cmp4, label %while.body, label %while.end, !dbg !842

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %c, metadata !847, metadata !DIExpression()), !dbg !849
  %call5 = call arm_aapcscc i32 @_Z14USBD_Availablej(i32 2), !dbg !850
  %tobool = icmp ne i32 %call5, 0, !dbg !850
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !852

if.then6:                                         ; preds = %while.body
  store volatile i32 16384, i32* getelementptr inbounds (%struct.Uotghs, %struct.Uotghs* inttoptr (i32 1074446336 to %struct.Uotghs*), i32 0, i32 22, i32 2), align 4, !dbg !853
  br label %while.end, !dbg !855

if.end7:                                          ; preds = %while.body
  %call8 = call arm_aapcscc i32 @_Z9USBD_Recvj(i32 2), !dbg !856
  store i32 %call8, i32* %c, align 4, !dbg !857
  %12 = load i32, i32* %c, align 4, !dbg !858
  %conv = trunc i32 %12 to i8, !dbg !858
  %13 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !859
  %buffer9 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %13, i32 0, i32 0, !dbg !860
  %14 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !861
  %head10 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %14, i32 0, i32 1, !dbg !862
  %15 = load volatile i32, i32* %head10, align 4, !dbg !862
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buffer9, i32 0, i32 %15, !dbg !859
  store i8 %conv, i8* %arrayidx, align 1, !dbg !863
  %16 = load i32, i32* %i, align 4, !dbg !864
  %17 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !865
  %head11 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %17, i32 0, i32 1, !dbg !866
  store volatile i32 %16, i32* %head11, align 4, !dbg !867
  %18 = load i32, i32* %i, align 4, !dbg !868
  %add12 = add i32 %18, 1, !dbg !869
  %rem13 = urem i32 %add12, 512, !dbg !870
  store i32 %rem13, i32* %i, align 4, !dbg !871
  br label %while.cond, !dbg !842, !llvm.loop !872

while.end:                                        ; preds = %if.then6, %while.cond
  store i32 0, i32* @_ZZN7Serial_6acceptEvE5guard, align 4, !dbg !874
  br label %return, !dbg !875

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !875
}

declare dso_local arm_aapcscc i32 @_Z14USBD_Availablej(i32) #2

declare dso_local arm_aapcscc i32 @_Z9USBD_Recvj(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN7Serial_9availableEv(%class.Serial_* %this) unnamed_addr #0 align 2 !dbg !876 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  %buffer = alloca %struct.ring_buffer*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !877, metadata !DIExpression()), !dbg !878
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.ring_buffer** %buffer, metadata !879, metadata !DIExpression()), !dbg !880
  store %struct.ring_buffer* @cdc_rx_buffer, %struct.ring_buffer** %buffer, align 4, !dbg !880
  %0 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !881
  %head = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %0, i32 0, i32 1, !dbg !882
  %1 = load volatile i32, i32* %head, align 4, !dbg !882
  %add = add i32 512, %1, !dbg !883
  %2 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !884
  %tail = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %2, i32 0, i32 2, !dbg !885
  %3 = load volatile i32, i32* %tail, align 4, !dbg !885
  %sub = sub i32 %add, %3, !dbg !886
  %rem = urem i32 %sub, 512, !dbg !887
  ret i32 %rem, !dbg !888
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN7Serial_17availableForWriteEv(%class.Serial_* %this) unnamed_addr #0 align 2 !dbg !889 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !890, metadata !DIExpression()), !dbg !891
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  ret i32 511, !dbg !892
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN7Serial_4peekEv(%class.Serial_* %this) unnamed_addr #0 align 2 !dbg !893 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Serial_*, align 4
  %buffer = alloca %struct.ring_buffer*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !894, metadata !DIExpression()), !dbg !895
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.ring_buffer** %buffer, metadata !896, metadata !DIExpression()), !dbg !897
  store %struct.ring_buffer* @cdc_rx_buffer, %struct.ring_buffer** %buffer, align 4, !dbg !897
  %0 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !898
  %head = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %0, i32 0, i32 1, !dbg !900
  %1 = load volatile i32, i32* %head, align 4, !dbg !900
  %2 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !901
  %tail = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %2, i32 0, i32 2, !dbg !902
  %3 = load volatile i32, i32* %tail, align 4, !dbg !902
  %cmp = icmp eq i32 %1, %3, !dbg !903
  br i1 %cmp, label %if.then, label %if.else, !dbg !904

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !905
  br label %return, !dbg !905

if.else:                                          ; preds = %entry
  %4 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !907
  %buffer2 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %4, i32 0, i32 0, !dbg !909
  %5 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !910
  %tail3 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %5, i32 0, i32 2, !dbg !911
  %6 = load volatile i32, i32* %tail3, align 4, !dbg !911
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buffer2, i32 0, i32 %6, !dbg !907
  %7 = load i8, i8* %arrayidx, align 1, !dbg !907
  %conv = zext i8 %7 to i32, !dbg !907
  store i32 %conv, i32* %retval, align 4, !dbg !912
  br label %return, !dbg !912

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !913
  ret i32 %8, !dbg !913
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN7Serial_4readEv(%class.Serial_* %this) unnamed_addr #0 align 2 !dbg !914 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Serial_*, align 4
  %buffer = alloca %struct.ring_buffer*, align 4
  %c = alloca i8, align 1
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !915, metadata !DIExpression()), !dbg !916
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.ring_buffer** %buffer, metadata !917, metadata !DIExpression()), !dbg !918
  store %struct.ring_buffer* @cdc_rx_buffer, %struct.ring_buffer** %buffer, align 4, !dbg !918
  %0 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !919
  %head = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %0, i32 0, i32 1, !dbg !921
  %1 = load volatile i32, i32* %head, align 4, !dbg !921
  %2 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !922
  %tail = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %2, i32 0, i32 2, !dbg !923
  %3 = load volatile i32, i32* %tail, align 4, !dbg !923
  %cmp = icmp eq i32 %1, %3, !dbg !924
  br i1 %cmp, label %if.then, label %if.else, !dbg !925

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !926
  br label %return, !dbg !926

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %c, metadata !928, metadata !DIExpression()), !dbg !930
  %4 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !931
  %buffer2 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %4, i32 0, i32 0, !dbg !932
  %5 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !933
  %tail3 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %5, i32 0, i32 2, !dbg !934
  %6 = load volatile i32, i32* %tail3, align 4, !dbg !934
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buffer2, i32 0, i32 %6, !dbg !931
  %7 = load i8, i8* %arrayidx, align 1, !dbg !931
  store i8 %7, i8* %c, align 1, !dbg !930
  %8 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !935
  %tail4 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %8, i32 0, i32 2, !dbg !936
  %9 = load volatile i32, i32* %tail4, align 4, !dbg !936
  %add = add i32 %9, 1, !dbg !937
  %rem = urem i32 %add, 512, !dbg !938
  %10 = load %struct.ring_buffer*, %struct.ring_buffer** %buffer, align 4, !dbg !939
  %tail5 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %10, i32 0, i32 2, !dbg !940
  store volatile i32 %rem, i32* %tail5, align 4, !dbg !941
  %call = call arm_aapcscc i32 @_Z14USBD_Availablej(i32 2), !dbg !942
  %tobool = icmp ne i32 %call, 0, !dbg !942
  br i1 %tobool, label %if.then6, label %if.end, !dbg !944

if.then6:                                         ; preds = %if.else
  %11 = bitcast %class.Serial_* %this1 to void (%class.Serial_*)***, !dbg !945
  %vtable = load void (%class.Serial_*)**, void (%class.Serial_*)*** %11, align 4, !dbg !945
  %vfn = getelementptr inbounds void (%class.Serial_*)*, void (%class.Serial_*)** %vtable, i64 7, !dbg !945
  %12 = load void (%class.Serial_*)*, void (%class.Serial_*)** %vfn, align 4, !dbg !945
  call arm_aapcscc void %12(%class.Serial_* %this1), !dbg !945
  br label %if.end, !dbg !945

if.end:                                           ; preds = %if.then6, %if.else
  %13 = load i8, i8* %c, align 1, !dbg !946
  %conv = zext i8 %13 to i32, !dbg !946
  store i32 %conv, i32* %retval, align 4, !dbg !947
  br label %return, !dbg !947

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !948
  ret i32 %14, !dbg !948
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN7Serial_5flushEv(%class.Serial_* %this) unnamed_addr #0 align 2 !dbg !949 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !950, metadata !DIExpression()), !dbg !951
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  call arm_aapcscc void @_Z10USBD_Flushj(i32 3), !dbg !952
  ret void, !dbg !953
}

declare dso_local arm_aapcscc void @_Z10USBD_Flushj(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN7Serial_5writeEPKhj(%class.Serial_* %this, i8* %buffer, i32 %size) unnamed_addr #0 align 2 !dbg !954 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Serial_*, align 4
  %buffer.addr = alloca i8*, align 4
  %size.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !955, metadata !DIExpression()), !dbg !956
  store i8* %buffer, i8** %buffer.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !957, metadata !DIExpression()), !dbg !958
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !959, metadata !DIExpression()), !dbg !960
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = load volatile i8, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 4), align 1, !dbg !961
  %conv = zext i8 %0 to i32, !dbg !963
  %cmp = icmp sgt i32 %conv, 0, !dbg !964
  br i1 %cmp, label %if.then, label %if.end, !dbg !965

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %r, metadata !966, metadata !DIExpression()), !dbg !968
  %1 = load i8*, i8** %buffer.addr, align 4, !dbg !969
  %2 = load i32, i32* %size.addr, align 4, !dbg !970
  %call = call arm_aapcscc i32 @_Z9USBD_SendjPKvj(i32 3, i8* %1, i32 %2), !dbg !971
  store i32 %call, i32* %r, align 4, !dbg !968
  %3 = load i32, i32* %r, align 4, !dbg !972
  %cmp2 = icmp sgt i32 %3, 0, !dbg !974
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !975

if.then3:                                         ; preds = %if.then
  %4 = load i32, i32* %r, align 4, !dbg !976
  store i32 %4, i32* %retval, align 4, !dbg !978
  br label %return, !dbg !978

if.else:                                          ; preds = %if.then
  %5 = bitcast %class.Serial_* %this1 to %class.Print*, !dbg !979
  call arm_aapcscc void @_ZN5Print13setWriteErrorEi(%class.Print* %5, i32 1), !dbg !979
  store i32 0, i32* %retval, align 4, !dbg !981
  br label %return, !dbg !981

if.end:                                           ; preds = %entry
  %6 = bitcast %class.Serial_* %this1 to %class.Print*, !dbg !982
  call arm_aapcscc void @_ZN5Print13setWriteErrorEi(%class.Print* %6, i32 1), !dbg !982
  store i32 0, i32* %retval, align 4, !dbg !983
  br label %return, !dbg !983

return:                                           ; preds = %if.end, %if.else, %if.then3
  %7 = load i32, i32* %retval, align 4, !dbg !984
  ret i32 %7, !dbg !984
}

declare dso_local arm_aapcscc i32 @_Z9USBD_SendjPKvj(i32, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc void @_ZN5Print13setWriteErrorEi(%class.Print* %this, i32 %err) #0 comdat align 2 !dbg !985 {
entry:
  %this.addr = alloca %class.Print*, align 4
  %err.addr = alloca i32, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !990, metadata !DIExpression()), !dbg !992
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !993, metadata !DIExpression()), !dbg !994
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = load i32, i32* %err.addr, align 4, !dbg !995
  %write_error = getelementptr inbounds %class.Print, %class.Print* %this1, i32 0, i32 1, !dbg !996
  store i32 %0, i32* %write_error, align 4, !dbg !997
  ret void, !dbg !998
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN7Serial_5writeEh(%class.Serial_* %this, i8 zeroext %c) unnamed_addr #0 align 2 !dbg !999 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  %c.addr = alloca i8, align 1
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1000, metadata !DIExpression()), !dbg !1001
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = bitcast %class.Serial_* %this1 to i32 (%class.Serial_*, i8*, i32)***, !dbg !1004
  %vtable = load i32 (%class.Serial_*, i8*, i32)**, i32 (%class.Serial_*, i8*, i32)*** %0, align 4, !dbg !1004
  %vfn = getelementptr inbounds i32 (%class.Serial_*, i8*, i32)*, i32 (%class.Serial_*, i8*, i32)** %vtable, i64 1, !dbg !1004
  %1 = load i32 (%class.Serial_*, i8*, i32)*, i32 (%class.Serial_*, i8*, i32)** %vfn, align 4, !dbg !1004
  %call = call arm_aapcscc i32 %1(%class.Serial_* %this1, i8* %c.addr, i32 1), !dbg !1004
  ret i32 %call, !dbg !1005
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN7Serial_cvbEv(%class.Serial_* %this) #0 align 2 !dbg !1006 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.Serial_*, align 4
  %result = alloca i8, align 1
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1007, metadata !DIExpression()), !dbg !1008
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %call = call arm_aapcscc i32 @millis(), !dbg !1009
  %cmp = icmp ult i32 %call, 500, !dbg !1011
  br i1 %cmp, label %if.then, label %if.end, !dbg !1012

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !1013
  br label %return, !dbg !1013

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %result, metadata !1014, metadata !DIExpression()), !dbg !1015
  store i8 0, i8* %result, align 1, !dbg !1015
  %0 = load volatile i8, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 4), align 1, !dbg !1016
  %conv = zext i8 %0 to i32, !dbg !1018
  %cmp2 = icmp sgt i32 %conv, 0, !dbg !1019
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1020

if.then3:                                         ; preds = %if.end
  store i8 1, i8* %result, align 1, !dbg !1021
  br label %if.end4, !dbg !1023

if.end4:                                          ; preds = %if.then3, %if.end
  call arm_aapcscc void @delay(i32 10), !dbg !1024
  %1 = load i8, i8* %result, align 1, !dbg !1025
  %tobool = trunc i8 %1 to i1, !dbg !1025
  store i1 %tobool, i1* %retval, align 1, !dbg !1026
  br label %return, !dbg !1026

return:                                           ; preds = %if.end4, %if.then
  %2 = load i1, i1* %retval, align 1, !dbg !1027
  ret i1 %2, !dbg !1027
}

declare dso_local arm_aapcscc i32 @millis() #2

declare dso_local arm_aapcscc void @delay(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN7Serial_9readBreakEv(%class.Serial_* %this) #0 align 2 !dbg !1028 {
entry:
  %result.i5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result.i5, metadata !1029, metadata !DIExpression()), !dbg !1034
  %result.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result.i, metadata !1036, metadata !DIExpression()), !dbg !1038
  %this.addr = alloca %class.Serial_*, align 4
  %enableInterrupts = alloca i8, align 1
  %ret = alloca i32, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1040, metadata !DIExpression()), !dbg !1041
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i8* %enableInterrupts, metadata !1042, metadata !DIExpression()), !dbg !1043
  %0 = call i32 asm sideeffect "MRS $0, primask", "=r"() #4, !dbg !1044, !srcloc !1045
  store i32 %0, i32* %result.i, align 4, !dbg !1044
  %1 = load i32, i32* %result.i, align 4, !dbg !1046
  %and = and i32 %1, 1, !dbg !1047
  %cmp = icmp eq i32 %and, 0, !dbg !1048
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1049

land.rhs:                                         ; preds = %entry
  %2 = call i32 asm sideeffect "MRS $0, faultmask", "=r"() #4, !dbg !1050, !srcloc !1051
  store i32 %2, i32* %result.i5, align 4, !dbg !1050
  %3 = load i32, i32* %result.i5, align 4, !dbg !1052
  %and3 = and i32 %3, 1, !dbg !1053
  %cmp4 = icmp eq i32 %and3, 0, !dbg !1054
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !1041
  %conv = zext i1 %4 to i8, !dbg !1055
  store i8 %conv, i8* %enableInterrupts, align 1, !dbg !1043
  call void asm sideeffect "cpsid i", ""() #4, !dbg !1056, !srcloc !1059
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1060, metadata !DIExpression()), !dbg !1061
  %5 = load volatile i32, i32* @_ZL10breakValue, align 4, !dbg !1062
  store i32 %5, i32* %ret, align 4, !dbg !1061
  store volatile i32 -1, i32* @_ZL10breakValue, align 4, !dbg !1063
  %6 = load i8, i8* %enableInterrupts, align 1, !dbg !1064
  %tobool = icmp ne i8 %6, 0, !dbg !1064
  br i1 %tobool, label %if.then, label %if.end, !dbg !1066

if.then:                                          ; preds = %land.end
  call void asm sideeffect "cpsie i", ""() #4, !dbg !1067, !srcloc !1071
  br label %if.end, !dbg !1072

if.end:                                           ; preds = %if.then, %land.end
  %7 = load i32, i32* %ret, align 4, !dbg !1073
  ret i32 %7, !dbg !1074
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN7Serial_4baudEv(%class.Serial_* %this) #0 align 2 !dbg !1075 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1076, metadata !DIExpression()), !dbg !1077
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 0), align 4, !dbg !1078
  ret i32 %0, !dbg !1079
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN7Serial_8stopbitsEv(%class.Serial_* %this) #0 align 2 !dbg !1080 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1081, metadata !DIExpression()), !dbg !1082
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = load volatile i8, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 1), align 4, !dbg !1083
  ret i8 %0, !dbg !1084
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN7Serial_10paritytypeEv(%class.Serial_* %this) #0 align 2 !dbg !1085 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = load volatile i8, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 2), align 1, !dbg !1088
  ret i8 %0, !dbg !1089
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i8 @_ZN7Serial_7numbitsEv(%class.Serial_* %this) #0 align 2 !dbg !1090 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1091, metadata !DIExpression()), !dbg !1092
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = load volatile i8, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 3), align 2, !dbg !1093
  ret i8 %0, !dbg !1094
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN7Serial_3dtrEv(%class.Serial_* %this) #0 align 2 !dbg !1095 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1096, metadata !DIExpression()), !dbg !1097
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = load volatile i8, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 4), align 1, !dbg !1098
  %conv = zext i8 %0 to i32, !dbg !1099
  %and = and i32 %conv, 1, !dbg !1100
  %tobool = icmp ne i32 %and, 0, !dbg !1099
  ret i1 %tobool, !dbg !1101
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN7Serial_3rtsEv(%class.Serial_* %this) #0 align 2 !dbg !1102 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1103, metadata !DIExpression()), !dbg !1104
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = load volatile i8, i8* getelementptr inbounds (%struct.LineInfo, %struct.LineInfo* @_ZL12_usbLineInfo, i32 0, i32 4), align 1, !dbg !1105
  %conv = zext i8 %0 to i32, !dbg !1106
  %and = and i32 %conv, 2, !dbg !1107
  %tobool = icmp ne i32 %and, 0, !dbg !1106
  ret i1 %tobool, !dbg !1108
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init() #3 !dbg !1109 {
entry:
  %call = call arm_aapcscc %class.Serial_* @_ZN7Serial_C2Ev(%class.Serial_* @SerialUSB), !dbg !1110
  ret void, !dbg !1110
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.Serial_* @_ZN7Serial_C2Ev(%class.Serial_* returned %this) unnamed_addr #0 comdat align 2 !dbg !1111 {
entry:
  %this.addr = alloca %class.Serial_*, align 4
  store %class.Serial_* %this, %class.Serial_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Serial_** %this.addr, metadata !1113, metadata !DIExpression()), !dbg !1114
  %this1 = load %class.Serial_*, %class.Serial_** %this.addr, align 4
  %0 = bitcast %class.Serial_* %this1 to %class.Stream*, !dbg !1115
  %call = call arm_aapcscc %class.Stream* @_ZN6StreamC2Ev(%class.Stream* %0), !dbg !1115
  %1 = bitcast %class.Serial_* %this1 to i32 (...)***, !dbg !1115
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [10 x i8*] }, { [10 x i8*] }* @_ZTV7Serial_, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !1115
  ret %class.Serial_* %this1, !dbg !1115
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.Stream* @_ZN6StreamC2Ev(%class.Stream* returned %this) unnamed_addr #0 comdat align 2 !dbg !1116 {
entry:
  %this.addr = alloca %class.Stream*, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !1117, metadata !DIExpression()), !dbg !1119
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  %0 = bitcast %class.Stream* %this1 to %class.Print*, !dbg !1120
  %call = call arm_aapcscc %class.Print* @_ZN5PrintC2Ev(%class.Print* %0), !dbg !1121
  %1 = bitcast %class.Stream* %this1 to i32 (...)***, !dbg !1120
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV6Stream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4, !dbg !1120
  %_timeout = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 1, !dbg !1122
  store i32 1000, i32* %_timeout, align 4, !dbg !1124
  ret %class.Stream* %this1, !dbg !1125
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc %class.Print* @_ZN5PrintC2Ev(%class.Print* returned %this) unnamed_addr #0 comdat align 2 !dbg !1126 {
entry:
  %this.addr = alloca %class.Print*, align 4
  store %class.Print* %this, %class.Print** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Print** %this.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  %this1 = load %class.Print*, %class.Print** %this.addr, align 4
  %0 = bitcast %class.Print* %this1 to i32 (...)***, !dbg !1132
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV5Print, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 4, !dbg !1132
  %write_error = getelementptr inbounds %class.Print, %class.Print* %this1, i32 0, i32 1, !dbg !1133
  store i32 0, i32* %write_error, align 4, !dbg !1133
  ret %class.Print* %this1, !dbg !1134
}

declare dso_local arm_aapcscc void @__cxa_pure_virtual() unnamed_addr

declare dso_local arm_aapcscc i32 @_ZN5Print5writeEPKhj(%class.Print*, i8*, i32) unnamed_addr #2

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @_GLOBAL__sub_I_CDC.cpp() #3 !dbg !1135 {
entry:
  call arm_aapcscc void @__cxx_global_var_init(), !dbg !1137
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!657, !658, !659, !660}
!llvm.ident = !{!661}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cdc_rx_buffer", scope: !2, file: !142, line: 39, type: !649, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !139, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/CDC.cpp", directory: "/home/aaa/llvm-arduino-due")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "LookaheadMode", file: !6, line: 41, baseType: !7, size: 8, elements: !8, identifier: "_ZTS13LookaheadMode")
!6 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Stream.h", directory: "/home/aaa")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "SKIP_ALL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "SKIP_NONE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "SKIP_WHITESPACE", value: 2, isUnsigned: true)
!12 = !{!13, !14, !19, !22, !21}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 54, baseType: !16)
!15 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !17, line: 38, baseType: !18)
!17 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 66, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 56, baseType: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uotghs", file: !24, line: 123, baseType: !25)
!24 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_uotghs.h", directory: "/home/aaa")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 57, size: 16768, flags: DIFlagTypePassByValue, elements: !26, identifier: "_ZTS6Uotghs")
!26 = !{!27, !31, !33, !35, !36, !37, !38, !39, !40, !41, !45, !49, !53, !55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !70, !81, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !122, !131, !132, !133, !134, !135, !136, !138}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVCTRL", scope: !25, file: !24, line: 58, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !29, line: 54, baseType: !30)
!29 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVISR", scope: !25, file: !24, line: 59, baseType: !32, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !29, line: 51, baseType: !30)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVICR", scope: !25, file: !24, line: 60, baseType: !34, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !29, line: 53, baseType: !30)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVIFR", scope: !25, file: !24, line: 61, baseType: !34, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVIMR", scope: !25, file: !24, line: 62, baseType: !32, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVIDR", scope: !25, file: !24, line: 63, baseType: !34, size: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVIER", scope: !25, file: !24, line: 64, baseType: !34, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPT", scope: !25, file: !24, line: 65, baseType: !28, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVFNUM", scope: !25, file: !24, line: 66, baseType: !32, size: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !25, file: !24, line: 67, baseType: !42, size: 1760, offset: 288)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1760, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 55)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTCFG", scope: !25, file: !24, line: 68, baseType: !46, size: 320, offset: 2048)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 320, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 10)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !25, file: !24, line: 69, baseType: !50, size: 64, offset: 2368)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 2)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTISR", scope: !25, file: !24, line: 70, baseType: !54, size: 320, offset: 2432)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 320, elements: !47)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !25, file: !24, line: 71, baseType: !50, size: 64, offset: 2752)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTICR", scope: !25, file: !24, line: 72, baseType: !57, size: 320, offset: 2816)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 320, elements: !47)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !25, file: !24, line: 73, baseType: !50, size: 64, offset: 3136)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTIFR", scope: !25, file: !24, line: 74, baseType: !57, size: 320, offset: 3200)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !25, file: !24, line: 75, baseType: !50, size: 64, offset: 3520)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTIMR", scope: !25, file: !24, line: 76, baseType: !54, size: 320, offset: 3584)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !25, file: !24, line: 77, baseType: !50, size: 64, offset: 3904)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTIER", scope: !25, file: !24, line: 78, baseType: !57, size: 320, offset: 3968)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved7", scope: !25, file: !24, line: 79, baseType: !50, size: 64, offset: 4288)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVEPTIDR", scope: !25, file: !24, line: 80, baseType: !57, size: 320, offset: 4352)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved8", scope: !25, file: !24, line: 81, baseType: !67, size: 1600, offset: 4672)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1600, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 50)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMA", scope: !25, file: !24, line: 82, baseType: !71, size: 896, offset: 6272)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 896, elements: !79)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "UotghsDevdma", file: !24, line: 46, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 41, size: 128, flags: DIFlagTypePassByValue, elements: !74, identifier: "_ZTS12UotghsDevdma")
!74 = !{!75, !76, !77, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMANXTDSC", scope: !73, file: !24, line: 42, baseType: !28, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMAADDRESS", scope: !73, file: !24, line: 43, baseType: !28, size: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMACONTROL", scope: !73, file: !24, line: 44, baseType: !28, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_DEVDMASTATUS", scope: !73, file: !24, line: 45, baseType: !28, size: 32, offset: 96)
!79 = !{!80}
!80 = !DISubrange(count: 7)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved9", scope: !25, file: !24, line: 83, baseType: !82, size: 1024, offset: 7168)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1024, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTCTRL", scope: !25, file: !24, line: 84, baseType: !28, size: 32, offset: 8192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTISR", scope: !25, file: !24, line: 85, baseType: !32, size: 32, offset: 8224)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTICR", scope: !25, file: !24, line: 86, baseType: !34, size: 32, offset: 8256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTIFR", scope: !25, file: !24, line: 87, baseType: !34, size: 32, offset: 8288)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTIMR", scope: !25, file: !24, line: 88, baseType: !32, size: 32, offset: 8320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTIDR", scope: !25, file: !24, line: 89, baseType: !34, size: 32, offset: 8352)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTIER", scope: !25, file: !24, line: 90, baseType: !34, size: 32, offset: 8384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIP", scope: !25, file: !24, line: 91, baseType: !28, size: 32, offset: 8416)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTFNUM", scope: !25, file: !24, line: 92, baseType: !28, size: 32, offset: 8448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTADDR1", scope: !25, file: !24, line: 93, baseType: !28, size: 32, offset: 8480)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTADDR2", scope: !25, file: !24, line: 94, baseType: !28, size: 32, offset: 8512)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTADDR3", scope: !25, file: !24, line: 95, baseType: !28, size: 32, offset: 8544)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved10", scope: !25, file: !24, line: 96, baseType: !98, size: 1664, offset: 8576)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1664, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 52)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPCFG", scope: !25, file: !24, line: 97, baseType: !46, size: 320, offset: 10240)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved11", scope: !25, file: !24, line: 98, baseType: !50, size: 64, offset: 10560)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPISR", scope: !25, file: !24, line: 99, baseType: !54, size: 320, offset: 10624)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved12", scope: !25, file: !24, line: 100, baseType: !50, size: 64, offset: 10944)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPICR", scope: !25, file: !24, line: 101, baseType: !57, size: 320, offset: 11008)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved13", scope: !25, file: !24, line: 102, baseType: !50, size: 64, offset: 11328)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPIFR", scope: !25, file: !24, line: 103, baseType: !57, size: 320, offset: 11392)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved14", scope: !25, file: !24, line: 104, baseType: !50, size: 64, offset: 11712)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPIMR", scope: !25, file: !24, line: 105, baseType: !54, size: 320, offset: 11776)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved15", scope: !25, file: !24, line: 106, baseType: !50, size: 64, offset: 12096)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPIER", scope: !25, file: !24, line: 107, baseType: !57, size: 320, offset: 12160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved16", scope: !25, file: !24, line: 108, baseType: !50, size: 64, offset: 12480)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPIDR", scope: !25, file: !24, line: 109, baseType: !57, size: 320, offset: 12544)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved17", scope: !25, file: !24, line: 110, baseType: !50, size: 64, offset: 12864)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPINRQ", scope: !25, file: !24, line: 111, baseType: !46, size: 320, offset: 12928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved18", scope: !25, file: !24, line: 112, baseType: !50, size: 64, offset: 13248)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTPIPERR", scope: !25, file: !24, line: 113, baseType: !46, size: 320, offset: 13312)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved19", scope: !25, file: !24, line: 114, baseType: !119, size: 832, offset: 13632)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 832, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 26)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMA", scope: !25, file: !24, line: 115, baseType: !123, size: 896, offset: 14464)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 896, elements: !79)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "UotghsHstdma", file: !24, line: 53, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 48, size: 128, flags: DIFlagTypePassByValue, elements: !126, identifier: "_ZTS12UotghsHstdma")
!126 = !{!127, !128, !129, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMANXTDSC", scope: !125, file: !24, line: 49, baseType: !28, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMAADDRESS", scope: !125, file: !24, line: 50, baseType: !28, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMACONTROL", scope: !125, file: !24, line: 51, baseType: !28, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_HSTDMASTATUS", scope: !125, file: !24, line: 52, baseType: !28, size: 32, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved20", scope: !25, file: !24, line: 116, baseType: !82, size: 1024, offset: 15360)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_CTRL", scope: !25, file: !24, line: 117, baseType: !28, size: 32, offset: 16384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_SR", scope: !25, file: !24, line: 118, baseType: !32, size: 32, offset: 16416)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_SCR", scope: !25, file: !24, line: 119, baseType: !34, size: 32, offset: 16448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_SFR", scope: !25, file: !24, line: 120, baseType: !34, size: 32, offset: 16480)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved21", scope: !25, file: !24, line: 121, baseType: !137, size: 224, offset: 16512)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 224, elements: !79)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "UOTGHS_FSM", scope: !25, file: !24, line: 122, baseType: !32, size: 32, offset: 16736)
!139 = !{!0, !140, !144, !559, !561, !633, !635, !646}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "_serialPeek", scope: !2, file: !142, line: 156, type: !143, isLocal: false, isDefinition: true)
!142 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/CDC.cpp", directory: "/home/aaa")
!143 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "guard", scope: !146, file: !142, line: 176, type: !19, isLocal: true, isDefinition: true)
!146 = distinct !DISubprogram(name: "accept", linkageName: "_ZN7Serial_6acceptEv", scope: !147, file: !142, line: 174, type: !522, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !528, retainedNodes: !558)
!147 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Serial_", file: !148, line: 47, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !149, vtableHolder: !154)
!148 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/USBAPI.h", directory: "/home/aaa")
!149 = !{!150, !510, !514, !518, !521, !524, !527, !528, !529, !530, !531, !532, !535, !540, !543, !548, !551, !554, !555, !556, !557}
!150 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !147, baseType: !151, flags: DIFlagPublic, extraData: i32 0)
!151 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Stream", file: !6, line: 49, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !152, vtableHolder: !154, identifier: "_ZTS6Stream")
!152 = !{!153, !156, !158, !159, !163, !164, !168, !169, !170, !171, !174, !175, !178, !181, !186, !192, !197, !200, !203, !206, !209, !212, !215, !219, !223, !226, !229, !232, !235, !496, !499, !502, !505}
!153 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !151, baseType: !154, flags: DIFlagPublic, extraData: i32 0)
!154 = !DICompositeType(tag: DW_TAG_class_type, name: "Print", file: !155, line: 34, flags: DIFlagFwdDecl)
!155 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Print.h", directory: "/home/aaa")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_timeout", scope: !151, file: !6, line: 52, baseType: !157, size: 32, offset: 64, flags: DIFlagProtected)
!157 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_startMillis", scope: !151, file: !6, line: 53, baseType: !157, size: 32, offset: 96, flags: DIFlagProtected)
!159 = !DISubprogram(name: "timedRead", linkageName: "_ZN6Stream9timedReadEv", scope: !151, file: !6, line: 54, type: !160, scopeLine: 54, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!143, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!163 = !DISubprogram(name: "timedPeek", linkageName: "_ZN6Stream9timedPeekEv", scope: !151, file: !6, line: 55, type: !160, scopeLine: 55, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!164 = !DISubprogram(name: "peekNextDigit", linkageName: "_ZN6Stream13peekNextDigitE13LookaheadModeb", scope: !151, file: !6, line: 56, type: !165, scopeLine: 56, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!143, !162, !5, !167}
!167 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!168 = !DISubprogram(name: "available", linkageName: "_ZN6Stream9availableEv", scope: !151, file: !6, line: 59, type: !160, scopeLine: 59, containingType: !151, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!169 = !DISubprogram(name: "read", linkageName: "_ZN6Stream4readEv", scope: !151, file: !6, line: 60, type: !160, scopeLine: 60, containingType: !151, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!170 = !DISubprogram(name: "peek", linkageName: "_ZN6Stream4peekEv", scope: !151, file: !6, line: 61, type: !160, scopeLine: 61, containingType: !151, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!171 = !DISubprogram(name: "flush", linkageName: "_ZN6Stream5flushEv", scope: !151, file: !6, line: 62, type: !172, scopeLine: 62, containingType: !151, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !162}
!174 = !DISubprogram(name: "Stream", scope: !151, file: !6, line: 64, type: !172, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!175 = !DISubprogram(name: "setTimeout", linkageName: "_ZN6Stream10setTimeoutEm", scope: !151, file: !6, line: 68, type: !176, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !162, !157}
!178 = !DISubprogram(name: "getTimeout", linkageName: "_ZN6Stream10getTimeoutEv", scope: !151, file: !6, line: 69, type: !179, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!179 = !DISubroutineType(types: !180)
!180 = !{!157, !162}
!181 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPc", scope: !151, file: !6, line: 71, type: !182, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{!167, !162, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32)
!185 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPh", scope: !151, file: !6, line: 72, type: !187, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!167, !162, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 42, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 28, baseType: !7)
!192 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPcj", scope: !151, file: !6, line: 75, type: !193, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{!167, !162, !184, !195}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 46, baseType: !21)
!196 = !DIFile(filename: "JJS_Project1/src/build/lib/clang/10.0.1/include/stddef.h", directory: "/home/aaa")
!197 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPhj", scope: !151, file: !6, line: 76, type: !198, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!167, !162, !189, !195}
!200 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEc", scope: !151, file: !6, line: 79, type: !201, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!167, !162, !185}
!203 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcS0_", scope: !151, file: !6, line: 81, type: !204, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!167, !162, !184, !184}
!206 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPhPc", scope: !151, file: !6, line: 82, type: !207, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{!167, !162, !189, !184}
!209 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcjS0_j", scope: !151, file: !6, line: 84, type: !210, scopeLine: 84, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{!167, !162, !184, !195, !184, !195}
!212 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPhjPcj", scope: !151, file: !6, line: 85, type: !213, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!167, !162, !189, !195, !184, !195}
!215 = !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntE13LookaheadModec", scope: !151, file: !6, line: 87, type: !216, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !162, !5, !185}
!218 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!219 = !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatE13LookaheadModec", scope: !151, file: !6, line: 94, type: !220, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !162, !5, !185}
!222 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!223 = !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPcj", scope: !151, file: !6, line: 97, type: !224, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{!195, !162, !184, !195}
!226 = !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPhj", scope: !151, file: !6, line: 98, type: !227, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!195, !162, !189, !195}
!229 = !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPcj", scope: !151, file: !6, line: 102, type: !230, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!195, !162, !185, !184, !195}
!232 = !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPhj", scope: !151, file: !6, line: 103, type: !233, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!195, !162, !185, !189, !195}
!235 = !DISubprogram(name: "readString", linkageName: "_ZN6Stream10readStringEv", scope: !151, file: !6, line: 108, type: !236, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !162}
!238 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !239, line: 45, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !240, identifier: "_ZTS6String")
!239 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.h", directory: "/home/aaa")
!240 = !{!241, !242, !243, !244, !249, !255, !259, !265, !269, !274, !277, !280, !283, !286, !289, !292, !295, !299, !302, !305, !308, !312, !315, !318, !321, !324, !327, !330, !333, !336, !339, !340, !343, !346, !349, !352, !355, !356, !357, !360, !363, !366, !369, !372, !375, !378, !381, !382, !387, !390, !393, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !409, !410, !413, !416, !417, !421, !425, !428, !431, !434, !435, !436, !437, !440, !443, !444, !447, !448, !449, !450, !451, !454, !457, !460, !463, !466, !469, !470, !471, !472, !475, !478, !481, !482, !483, !484, !487, !490, !493}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !238, file: !239, line: 196, baseType: !184, size: 32, flags: DIFlagProtected)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !238, file: !239, line: 197, baseType: !21, size: 32, offset: 32, flags: DIFlagProtected)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !238, file: !239, line: 198, baseType: !21, size: 32, offset: 64, flags: DIFlagProtected)
!244 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !238, file: !239, line: 51, type: !245, scopeLine: 51, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!249 = !DISubprogram(name: "String", scope: !238, file: !239, line: 59, type: !250, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !252, !253}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!255 = !DISubprogram(name: "String", scope: !238, file: !239, line: 60, type: !256, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !252, !258}
!258 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !248, size: 32)
!259 = !DISubprogram(name: "String", scope: !238, file: !239, line: 61, type: !260, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !252, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !239, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!265 = !DISubprogram(name: "String", scope: !238, file: !239, line: 63, type: !266, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !252, !268}
!268 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !238, size: 32)
!269 = !DISubprogram(name: "String", scope: !238, file: !239, line: 64, type: !270, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !252, !272}
!272 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !273, size: 32)
!273 = !DICompositeType(tag: DW_TAG_class_type, name: "StringSumHelper", file: !239, line: 213, flags: DIFlagFwdDecl, identifier: "_ZTS15StringSumHelper")
!274 = !DISubprogram(name: "String", scope: !238, file: !239, line: 66, type: !275, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !252, !185}
!277 = !DISubprogram(name: "String", scope: !238, file: !239, line: 67, type: !278, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !252, !7, !7}
!280 = !DISubprogram(name: "String", scope: !238, file: !239, line: 68, type: !281, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !252, !143, !7}
!283 = !DISubprogram(name: "String", scope: !238, file: !239, line: 69, type: !284, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !252, !21, !7}
!286 = !DISubprogram(name: "String", scope: !238, file: !239, line: 70, type: !287, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !252, !218, !7}
!289 = !DISubprogram(name: "String", scope: !238, file: !239, line: 71, type: !290, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !252, !157, !7}
!292 = !DISubprogram(name: "String", scope: !238, file: !239, line: 72, type: !293, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !252, !222, !7}
!295 = !DISubprogram(name: "String", scope: !238, file: !239, line: 73, type: !296, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !252, !298, !7}
!298 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!299 = !DISubprogram(name: "~String", scope: !238, file: !239, line: 74, type: !300, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !252}
!302 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !238, file: !239, line: 80, type: !303, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{!7, !252, !21}
!305 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !238, file: !239, line: 81, type: !306, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!21, !247}
!308 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !238, file: !239, line: 86, type: !309, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !252, !258}
!311 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !238, size: 32)
!312 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !238, file: !239, line: 87, type: !313, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!311, !252, !253}
!315 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !238, file: !239, line: 88, type: !316, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!316 = !DISubroutineType(types: !317)
!317 = !{!311, !252, !262}
!318 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEOS_", scope: !238, file: !239, line: 90, type: !319, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!311, !252, !268}
!321 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEO15StringSumHelper", scope: !238, file: !239, line: 91, type: !322, scopeLine: 91, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!311, !252, !272}
!324 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !238, file: !239, line: 99, type: !325, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{!7, !252, !258}
!327 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !238, file: !239, line: 100, type: !328, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!7, !252, !253}
!330 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !238, file: !239, line: 101, type: !331, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{!7, !252, !185}
!333 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !238, file: !239, line: 102, type: !334, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{!7, !252, !7}
!336 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !238, file: !239, line: 103, type: !337, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!337 = !DISubroutineType(types: !338)
!338 = !{!7, !252, !143}
!339 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !238, file: !239, line: 104, type: !303, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!340 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !238, file: !239, line: 105, type: !341, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{!7, !252, !218}
!343 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !238, file: !239, line: 106, type: !344, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!7, !252, !157}
!346 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !238, file: !239, line: 107, type: !347, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{!7, !252, !222}
!349 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !238, file: !239, line: 108, type: !350, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!7, !252, !298}
!352 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !238, file: !239, line: 109, type: !353, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!7, !252, !262}
!355 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !238, file: !239, line: 113, type: !309, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!356 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !238, file: !239, line: 114, type: !313, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!357 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !238, file: !239, line: 115, type: !358, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!311, !252, !185}
!360 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !238, file: !239, line: 116, type: !361, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!361 = !DISubroutineType(types: !362)
!362 = !{!311, !252, !7}
!363 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !238, file: !239, line: 117, type: !364, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!364 = !DISubroutineType(types: !365)
!365 = !{!311, !252, !143}
!366 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !238, file: !239, line: 118, type: !367, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!311, !252, !21}
!369 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !238, file: !239, line: 119, type: !370, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!370 = !DISubroutineType(types: !371)
!371 = !{!311, !252, !218}
!372 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !238, file: !239, line: 120, type: !373, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!373 = !DISubroutineType(types: !374)
!374 = !{!311, !252, !157}
!375 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !238, file: !239, line: 121, type: !376, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{!311, !252, !222}
!378 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !238, file: !239, line: 122, type: !379, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!311, !252, !298}
!381 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !238, file: !239, line: 123, type: !316, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!382 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !238, file: !239, line: 138, type: !383, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{!385, !247}
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !238, file: !239, line: 50, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !245, size: 64, extraData: !238)
!387 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !238, file: !239, line: 139, type: !388, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!388 = !DISubroutineType(types: !389)
!389 = !{!143, !247, !258}
!390 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !238, file: !239, line: 140, type: !391, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{!7, !247, !258}
!393 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !238, file: !239, line: 141, type: !394, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!394 = !DISubroutineType(types: !395)
!395 = !{!7, !247, !253}
!396 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !238, file: !239, line: 142, type: !391, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!397 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !238, file: !239, line: 143, type: !394, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!398 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !238, file: !239, line: 144, type: !391, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!399 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !238, file: !239, line: 145, type: !394, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!400 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !238, file: !239, line: 146, type: !391, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!401 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !238, file: !239, line: 147, type: !391, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!402 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !238, file: !239, line: 148, type: !391, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!403 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !238, file: !239, line: 149, type: !391, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!404 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !238, file: !239, line: 150, type: !391, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!405 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !238, file: !239, line: 151, type: !391, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!406 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !238, file: !239, line: 152, type: !407, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!7, !247, !258, !21}
!409 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !238, file: !239, line: 153, type: !391, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!410 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !238, file: !239, line: 156, type: !411, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!185, !247, !21}
!413 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !238, file: !239, line: 157, type: !414, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !252, !21, !185}
!416 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !238, file: !239, line: 158, type: !411, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!417 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !238, file: !239, line: 159, type: !418, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!418 = !DISubroutineType(types: !419)
!419 = !{!420, !252, !21}
!420 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !185, size: 32)
!421 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !238, file: !239, line: 160, type: !422, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !247, !424, !21, !21}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!425 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !238, file: !239, line: 161, type: !426, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !247, !184, !21, !21}
!428 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !238, file: !239, line: 163, type: !429, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!253, !247}
!431 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !238, file: !239, line: 164, type: !432, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{!184, !252}
!434 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !238, file: !239, line: 165, type: !432, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!435 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !238, file: !239, line: 166, type: !429, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!436 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !238, file: !239, line: 167, type: !429, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!437 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !238, file: !239, line: 170, type: !438, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!438 = !DISubroutineType(types: !439)
!439 = !{!143, !247, !185}
!440 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !238, file: !239, line: 171, type: !441, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!143, !247, !185, !21}
!443 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !238, file: !239, line: 172, type: !388, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!444 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !238, file: !239, line: 173, type: !445, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!143, !247, !258, !21}
!447 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !238, file: !239, line: 174, type: !438, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!448 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !238, file: !239, line: 175, type: !441, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!449 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !238, file: !239, line: 176, type: !388, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!450 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !238, file: !239, line: 177, type: !445, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!451 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !238, file: !239, line: 178, type: !452, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!238, !247, !21}
!454 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !238, file: !239, line: 179, type: !455, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!238, !247, !21, !21}
!457 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !238, file: !239, line: 182, type: !458, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !252, !185, !185}
!460 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !238, file: !239, line: 183, type: !461, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !252, !258, !258}
!463 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !238, file: !239, line: 184, type: !464, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !252, !21}
!466 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !238, file: !239, line: 185, type: !467, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !252, !21, !21}
!469 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !238, file: !239, line: 186, type: !300, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!470 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !238, file: !239, line: 187, type: !300, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!471 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !238, file: !239, line: 188, type: !300, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!472 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !238, file: !239, line: 191, type: !473, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!218, !247}
!475 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !238, file: !239, line: 192, type: !476, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!222, !247}
!478 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !238, file: !239, line: 193, type: !479, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!298, !247}
!481 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !238, file: !239, line: 200, type: !300, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!482 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !238, file: !239, line: 201, type: !300, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!483 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !238, file: !239, line: 202, type: !303, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!484 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !238, file: !239, line: 203, type: !485, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!7, !252, !253, !21}
!487 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !238, file: !239, line: 206, type: !488, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!311, !252, !253, !21}
!490 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !238, file: !239, line: 207, type: !491, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{!311, !252, !262, !21}
!493 = !DISubprogram(name: "move", linkageName: "_ZN6String4moveERS_", scope: !238, file: !239, line: 209, type: !494, scopeLine: 209, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !252, !311}
!496 = !DISubprogram(name: "readStringUntil", linkageName: "_ZN6Stream15readStringUntilEc", scope: !151, file: !6, line: 109, type: !497, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!238, !162, !185}
!499 = !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntEc", scope: !151, file: !6, line: 112, type: !500, scopeLine: 112, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!218, !162, !185}
!502 = !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatEc", scope: !151, file: !6, line: 113, type: !503, scopeLine: 113, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!222, !162, !185}
!505 = !DISubprogram(name: "findMulti", linkageName: "_ZN6Stream9findMultiEPNS_11MultiTargetEi", scope: !151, file: !6, line: 126, type: !506, scopeLine: 126, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!143, !162, !508, !143}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 32)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "MultiTarget", scope: !151, file: !6, line: 118, flags: DIFlagFwdDecl, identifier: "_ZTSN6Stream11MultiTargetE")
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_cdc_rx_buffer", scope: !147, file: !148, line: 50, baseType: !511, size: 32, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 32)
!512 = !DICompositeType(tag: DW_TAG_class_type, name: "RingBuffer", file: !513, line: 30, flags: DIFlagFwdDecl, identifier: "_ZTS10RingBuffer")
!513 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/RingBuffer.h", directory: "/home/aaa")
!514 = !DISubprogram(name: "begin", linkageName: "_ZN7Serial_5beginEj", scope: !147, file: !148, line: 52, type: !515, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !517, !19}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!518 = !DISubprogram(name: "begin", linkageName: "_ZN7Serial_5beginEjh", scope: !147, file: !148, line: 53, type: !519, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !517, !19, !190}
!521 = !DISubprogram(name: "end", linkageName: "_ZN7Serial_3endEv", scope: !147, file: !148, line: 54, type: !522, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !517}
!524 = !DISubprogram(name: "available", linkageName: "_ZN7Serial_9availableEv", scope: !147, file: !148, line: 56, type: !525, scopeLine: 56, containingType: !147, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!525 = !DISubroutineType(types: !526)
!526 = !{!143, !517}
!527 = !DISubprogram(name: "availableForWrite", linkageName: "_ZN7Serial_17availableForWriteEv", scope: !147, file: !148, line: 57, type: !525, scopeLine: 57, containingType: !147, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!528 = !DISubprogram(name: "accept", linkageName: "_ZN7Serial_6acceptEv", scope: !147, file: !148, line: 58, type: !522, scopeLine: 58, containingType: !147, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!529 = !DISubprogram(name: "peek", linkageName: "_ZN7Serial_4peekEv", scope: !147, file: !148, line: 59, type: !525, scopeLine: 59, containingType: !147, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!530 = !DISubprogram(name: "read", linkageName: "_ZN7Serial_4readEv", scope: !147, file: !148, line: 60, type: !525, scopeLine: 60, containingType: !147, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!531 = !DISubprogram(name: "flush", linkageName: "_ZN7Serial_5flushEv", scope: !147, file: !148, line: 61, type: !522, scopeLine: 61, containingType: !147, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!532 = !DISubprogram(name: "write", linkageName: "_ZN7Serial_5writeEh", scope: !147, file: !148, line: 62, type: !533, scopeLine: 62, containingType: !147, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!533 = !DISubroutineType(types: !534)
!534 = !{!195, !517, !190}
!535 = !DISubprogram(name: "write", linkageName: "_ZN7Serial_5writeEPKhj", scope: !147, file: !148, line: 63, type: !536, scopeLine: 63, containingType: !147, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!536 = !DISubroutineType(types: !537)
!537 = !{!195, !517, !538, !195}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!540 = !DISubprogram(name: "operator bool", linkageName: "_ZN7Serial_cvbEv", scope: !147, file: !148, line: 65, type: !541, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!167, !517}
!543 = !DISubprogram(name: "readBreak", linkageName: "_ZN7Serial_9readBreakEv", scope: !147, file: !148, line: 82, type: !544, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !517}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !15, line: 65, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !17, line: 55, baseType: !143)
!548 = !DISubprogram(name: "baud", linkageName: "_ZN7Serial_4baudEv", scope: !147, file: !148, line: 87, type: !549, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!19, !517}
!551 = !DISubprogram(name: "stopbits", linkageName: "_ZN7Serial_8stopbitsEv", scope: !147, file: !148, line: 88, type: !552, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{!190, !517}
!554 = !DISubprogram(name: "paritytype", linkageName: "_ZN7Serial_10paritytypeEv", scope: !147, file: !148, line: 89, type: !552, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!555 = !DISubprogram(name: "numbits", linkageName: "_ZN7Serial_7numbitsEv", scope: !147, file: !148, line: 90, type: !552, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!556 = !DISubprogram(name: "dtr", linkageName: "_ZN7Serial_3dtrEv", scope: !147, file: !148, line: 91, type: !541, scopeLine: 91, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!557 = !DISubprogram(name: "rts", linkageName: "_ZN7Serial_3rtsEv", scope: !147, file: !148, line: 92, type: !541, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!558 = !{}
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "SerialUSB", scope: !2, file: !142, line: 364, type: !147, isLocal: false, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "_cdcInterface", linkageName: "_ZL13_cdcInterface", scope: !2, file: !142, line: 61, type: !563, isLocal: true, isDefinition: true)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "CDCDescriptor", file: !565, line: 258, baseType: !566)
!565 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/USBCore.h", directory: "/home/aaa")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 241, size: 528, flags: DIFlagTypePassByValue, elements: !567, identifier: "_ZTS13CDCDescriptor")
!567 = !{!568, !580, !593, !602, !611, !619, !620, !630, !631, !632}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "iad", scope: !566, file: !565, line: 244, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "IADDescriptor", file: !565, line: 204, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 194, size: 64, flags: DIFlagTypePassByValue, elements: !571, identifier: "_ZTS13IADDescriptor")
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !570, file: !565, line: 196, baseType: !190, size: 8)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !570, file: !565, line: 197, baseType: !190, size: 8, offset: 8)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "firstInterface", scope: !570, file: !565, line: 198, baseType: !190, size: 8, offset: 16)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "interfaceCount", scope: !570, file: !565, line: 199, baseType: !190, size: 8, offset: 24)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "functionClass", scope: !570, file: !565, line: 200, baseType: !190, size: 8, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "funtionSubClass", scope: !570, file: !565, line: 201, baseType: !190, size: 8, offset: 40)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "functionProtocol", scope: !570, file: !565, line: 202, baseType: !190, size: 8, offset: 48)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !570, file: !565, line: 203, baseType: !190, size: 8, offset: 56)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cif", scope: !566, file: !565, line: 247, baseType: !581, size: 72, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterfaceDescriptor", file: !565, line: 179, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 168, size: 72, flags: DIFlagTypePassByValue, elements: !583, identifier: "_ZTS19InterfaceDescriptor")
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !582, file: !565, line: 170, baseType: !190, size: 8)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !582, file: !565, line: 171, baseType: !190, size: 8, offset: 8)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !582, file: !565, line: 172, baseType: !190, size: 8, offset: 16)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "alternate", scope: !582, file: !565, line: 173, baseType: !190, size: 8, offset: 24)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "numEndpoints", scope: !582, file: !565, line: 174, baseType: !190, size: 8, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "interfaceClass", scope: !582, file: !565, line: 175, baseType: !190, size: 8, offset: 40)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "interfaceSubClass", scope: !582, file: !565, line: 176, baseType: !190, size: 8, offset: 48)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !582, file: !565, line: 177, baseType: !190, size: 8, offset: 56)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !582, file: !565, line: 178, baseType: !190, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !566, file: !565, line: 248, baseType: !594, size: 40, offset: 136)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "CDCCSInterfaceDescriptor", file: !565, line: 214, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 207, size: 40, flags: DIFlagTypePassByValue, elements: !596, identifier: "_ZTS24CDCCSInterfaceDescriptor")
!596 = !{!597, !598, !599, !600, !601}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !595, file: !565, line: 209, baseType: !190, size: 8)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !595, file: !565, line: 210, baseType: !190, size: 8, offset: 8)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !595, file: !565, line: 211, baseType: !190, size: 8, offset: 16)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d0", scope: !595, file: !565, line: 212, baseType: !190, size: 8, offset: 24)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !595, file: !565, line: 213, baseType: !190, size: 8, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "callManagement", scope: !566, file: !565, line: 249, baseType: !603, size: 40, offset: 176)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "CMFunctionalDescriptor", file: !565, line: 231, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 224, size: 40, flags: DIFlagTypePassByValue, elements: !605, identifier: "_ZTS22CMFunctionalDescriptor")
!605 = !{!606, !607, !608, !609, !610}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !604, file: !565, line: 226, baseType: !190, size: 8)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !604, file: !565, line: 227, baseType: !190, size: 8, offset: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !604, file: !565, line: 228, baseType: !190, size: 8, offset: 16)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bmCapabilities", scope: !604, file: !565, line: 229, baseType: !190, size: 8, offset: 24)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bDataInterface", scope: !604, file: !565, line: 230, baseType: !190, size: 8, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "controlManagement", scope: !566, file: !565, line: 250, baseType: !612, size: 32, offset: 216)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACMFunctionalDescriptor", file: !565, line: 239, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 233, size: 32, flags: DIFlagTypePassByValue, elements: !614, identifier: "_ZTS23ACMFunctionalDescriptor")
!614 = !{!615, !616, !617, !618}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !613, file: !565, line: 235, baseType: !190, size: 8)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !613, file: !565, line: 236, baseType: !190, size: 8, offset: 8)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !613, file: !565, line: 237, baseType: !190, size: 8, offset: 16)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bmCapabilities", scope: !613, file: !565, line: 238, baseType: !190, size: 8, offset: 24)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "functionalDescriptor", scope: !566, file: !565, line: 251, baseType: !594, size: 40, offset: 248)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cifin", scope: !566, file: !565, line: 252, baseType: !621, size: 56, offset: 288)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndpointDescriptor", file: !565, line: 190, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 182, size: 56, flags: DIFlagTypePassByValue, elements: !623, identifier: "_ZTS18EndpointDescriptor")
!623 = !{!624, !625, !626, !627, !628, !629}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !622, file: !565, line: 184, baseType: !190, size: 8)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !622, file: !565, line: 185, baseType: !190, size: 8, offset: 8)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !622, file: !565, line: 186, baseType: !190, size: 8, offset: 16)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !622, file: !565, line: 187, baseType: !190, size: 8, offset: 24)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "packetSize", scope: !622, file: !565, line: 188, baseType: !14, size: 16, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !622, file: !565, line: 189, baseType: !190, size: 8, offset: 48)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dif", scope: !566, file: !565, line: 255, baseType: !581, size: 72, offset: 344)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !566, file: !565, line: 256, baseType: !621, size: 56, offset: 416)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !566, file: !565, line: 257, baseType: !621, size: 56, offset: 472)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "_cdcOtherInterface", linkageName: "_ZL18_cdcOtherInterface", scope: !2, file: !142, line: 78, type: !563, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "_usbLineInfo", linkageName: "_ZL12_usbLineInfo", scope: !2, file: !142, line: 50, type: !637, isLocal: true, isDefinition: true)
!637 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineInfo", file: !142, line: 48, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 41, size: 64, flags: DIFlagTypePassByValue, elements: !640, identifier: "_ZTS8LineInfo")
!640 = !{!641, !642, !643, !644, !645}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dwDTERate", scope: !639, file: !142, line: 43, baseType: !19, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bCharFormat", scope: !639, file: !142, line: 44, baseType: !190, size: 8, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bParityType", scope: !639, file: !142, line: 45, baseType: !190, size: 8, offset: 40)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bDataBits", scope: !639, file: !142, line: 46, baseType: !190, size: 8, offset: 48)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lineState", scope: !639, file: !142, line: 47, baseType: !190, size: 8, offset: 56)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "breakValue", linkageName: "_ZL10breakValue", scope: !2, file: !142, line: 58, type: !648, isLocal: true, isDefinition: true)
!648 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !546)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer", file: !142, line: 32, size: 4160, flags: DIFlagTypePassByValue, elements: !650, identifier: "_ZTS11ring_buffer")
!650 = !{!651, !655, !656}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !649, file: !142, line: 34, baseType: !652, size: 4096)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 4096, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !649, file: !142, line: 35, baseType: !30, size: 32, offset: 4096)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !649, file: !142, line: 36, baseType: !30, size: 32, offset: 4128)
!657 = !{i32 7, !"Dwarf Version", i32 4}
!658 = !{i32 2, !"Debug Info Version", i32 3}
!659 = !{i32 1, !"wchar_size", i32 4}
!660 = !{i32 1, !"min_enum_size", i32 1}
!661 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!662 = distinct !DISubprogram(name: "CDC_GetInterface", linkageName: "_Z16CDC_GetInterfacePh", scope: !142, file: !142, line: 97, type: !663, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!663 = !DISubroutineType(types: !664)
!664 = !{!143, !189}
!665 = !DILocalVariable(name: "interfaceNum", arg: 1, scope: !662, file: !142, line: 97, type: !189)
!666 = !DILocation(line: 97, column: 36, scope: !662)
!667 = !DILocation(line: 99, column: 2, scope: !662)
!668 = !DILocation(line: 99, column: 18, scope: !662)
!669 = !DILocation(line: 100, column: 9, scope: !662)
!670 = !DILocation(line: 100, column: 2, scope: !662)
!671 = distinct !DISubprogram(name: "CDC_GetOtherInterface", linkageName: "_Z21CDC_GetOtherInterfacePh", scope: !142, file: !142, line: 103, type: !663, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!672 = !DILocalVariable(name: "interfaceNum", arg: 1, scope: !671, file: !142, line: 103, type: !189)
!673 = !DILocation(line: 103, column: 41, scope: !671)
!674 = !DILocation(line: 105, column: 2, scope: !671)
!675 = !DILocation(line: 105, column: 18, scope: !671)
!676 = !DILocation(line: 106, column: 9, scope: !671)
!677 = !DILocation(line: 106, column: 2, scope: !671)
!678 = distinct !DISubprogram(name: "CDC_Setup", linkageName: "_Z9CDC_SetupR8USBSetup", scope: !142, file: !142, line: 109, type: !679, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !558)
!679 = !DISubroutineType(types: !680)
!680 = !{!167, !681}
!681 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "USBSetup", file: !148, line: 120, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 112, size: 64, flags: DIFlagTypePassByValue, elements: !684, identifier: "_ZTS8USBSetup")
!684 = !{!685, !686, !687, !688, !689, !690}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bmRequestType", scope: !683, file: !148, line: 114, baseType: !190, size: 8)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !683, file: !148, line: 115, baseType: !190, size: 8, offset: 8)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wValueL", scope: !683, file: !148, line: 116, baseType: !190, size: 8, offset: 16)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wValueH", scope: !683, file: !148, line: 117, baseType: !190, size: 8, offset: 24)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !683, file: !148, line: 118, baseType: !14, size: 16, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !683, file: !148, line: 119, baseType: !14, size: 16, offset: 48)
!691 = !DILocalVariable(name: "setup", arg: 1, scope: !678, file: !142, line: 109, type: !681)
!692 = !DILocation(line: 109, column: 31, scope: !678)
!693 = !DILocalVariable(name: "r", scope: !678, file: !142, line: 111, type: !190)
!694 = !DILocation(line: 111, column: 10, scope: !678)
!695 = !DILocation(line: 111, column: 14, scope: !678)
!696 = !DILocation(line: 111, column: 20, scope: !678)
!697 = !DILocalVariable(name: "requestType", scope: !678, file: !142, line: 112, type: !190)
!698 = !DILocation(line: 112, column: 10, scope: !678)
!699 = !DILocation(line: 112, column: 24, scope: !678)
!700 = !DILocation(line: 112, column: 30, scope: !678)
!701 = !DILocation(line: 114, column: 46, scope: !702)
!702 = distinct !DILexicalBlock(scope: !678, file: !142, line: 114, column: 6)
!703 = !DILocation(line: 114, column: 43, scope: !702)
!704 = !DILocation(line: 114, column: 6, scope: !678)
!705 = !DILocation(line: 116, column: 30, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !142, line: 116, column: 7)
!707 = distinct !DILexicalBlock(scope: !702, file: !142, line: 115, column: 2)
!708 = !DILocation(line: 116, column: 27, scope: !706)
!709 = !DILocation(line: 116, column: 7, scope: !707)
!710 = !DILocation(line: 118, column: 4, scope: !711)
!711 = distinct !DILexicalBlock(scope: !706, file: !142, line: 117, column: 3)
!712 = !DILocation(line: 119, column: 4, scope: !711)
!713 = !DILocation(line: 121, column: 2, scope: !707)
!714 = !DILocation(line: 123, column: 46, scope: !715)
!715 = distinct !DILexicalBlock(scope: !678, file: !142, line: 123, column: 6)
!716 = !DILocation(line: 123, column: 43, scope: !715)
!717 = !DILocation(line: 123, column: 6, scope: !678)
!718 = !DILocation(line: 125, column: 30, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !142, line: 125, column: 7)
!720 = distinct !DILexicalBlock(scope: !715, file: !142, line: 124, column: 2)
!721 = !DILocation(line: 125, column: 27, scope: !719)
!722 = !DILocation(line: 125, column: 7, scope: !720)
!723 = !DILocation(line: 127, column: 4, scope: !724)
!724 = distinct !DILexicalBlock(scope: !719, file: !142, line: 126, column: 3)
!725 = !DILocation(line: 128, column: 4, scope: !724)
!726 = !DILocation(line: 131, column: 37, scope: !727)
!727 = distinct !DILexicalBlock(scope: !720, file: !142, line: 131, column: 7)
!728 = !DILocation(line: 131, column: 34, scope: !727)
!729 = !DILocation(line: 131, column: 7, scope: !720)
!730 = !DILocation(line: 133, column: 29, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !142, line: 132, column: 3)
!732 = !DILocation(line: 133, column: 35, scope: !731)
!733 = !DILocation(line: 133, column: 27, scope: !731)
!734 = !DILocation(line: 136, column: 29, scope: !735)
!735 = distinct !DILexicalBlock(scope: !731, file: !142, line: 136, column: 8)
!736 = !DILocation(line: 136, column: 13, scope: !735)
!737 = !DILocation(line: 136, column: 8, scope: !731)
!738 = !DILocation(line: 139, column: 23, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !142, line: 139, column: 9)
!740 = distinct !DILexicalBlock(scope: !735, file: !142, line: 137, column: 4)
!741 = !DILocation(line: 139, column: 10, scope: !739)
!742 = !DILocation(line: 139, column: 33, scope: !739)
!743 = !DILocation(line: 139, column: 41, scope: !739)
!744 = !DILocation(line: 139, column: 9, scope: !740)
!745 = !DILocation(line: 140, column: 6, scope: !739)
!746 = !DILocation(line: 142, column: 6, scope: !739)
!747 = !DILocation(line: 143, column: 4, scope: !740)
!748 = !DILocation(line: 144, column: 4, scope: !731)
!749 = !DILocation(line: 147, column: 25, scope: !750)
!750 = distinct !DILexicalBlock(scope: !720, file: !142, line: 147, column: 7)
!751 = !DILocation(line: 147, column: 22, scope: !750)
!752 = !DILocation(line: 147, column: 7, scope: !720)
!753 = !DILocation(line: 149, column: 28, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !142, line: 148, column: 3)
!755 = !DILocation(line: 149, column: 34, scope: !754)
!756 = !DILocation(line: 149, column: 18, scope: !754)
!757 = !DILocation(line: 149, column: 42, scope: !754)
!758 = !DILocation(line: 149, column: 50, scope: !754)
!759 = !DILocation(line: 149, column: 56, scope: !754)
!760 = !DILocation(line: 149, column: 48, scope: !754)
!761 = !DILocation(line: 149, column: 15, scope: !754)
!762 = !DILocation(line: 150, column: 4, scope: !754)
!763 = !DILocation(line: 152, column: 2, scope: !720)
!764 = !DILocation(line: 153, column: 2, scope: !678)
!765 = !DILocation(line: 154, column: 1, scope: !678)
!766 = distinct !DISubprogram(name: "begin", linkageName: "_ZN7Serial_5beginEj", scope: !147, file: !142, line: 157, type: !515, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !514, retainedNodes: !558)
!767 = !DILocalVariable(name: "this", arg: 1, scope: !766, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!769 = !DILocation(line: 0, scope: !766)
!770 = !DILocalVariable(name: "baud_count", arg: 2, scope: !766, file: !142, line: 157, type: !19)
!771 = !DILocation(line: 157, column: 30, scope: !766)
!772 = !DILocation(line: 161, column: 1, scope: !766)
!773 = distinct !DISubprogram(name: "begin", linkageName: "_ZN7Serial_5beginEjh", scope: !147, file: !142, line: 163, type: !519, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !518, retainedNodes: !558)
!774 = !DILocalVariable(name: "this", arg: 1, scope: !773, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!775 = !DILocation(line: 0, scope: !773)
!776 = !DILocalVariable(name: "baud_count", arg: 2, scope: !773, file: !142, line: 163, type: !19)
!777 = !DILocation(line: 163, column: 30, scope: !773)
!778 = !DILocalVariable(name: "config", arg: 3, scope: !773, file: !142, line: 163, type: !190)
!779 = !DILocation(line: 163, column: 50, scope: !773)
!780 = !DILocation(line: 168, column: 1, scope: !773)
!781 = distinct !DISubprogram(name: "end", linkageName: "_ZN7Serial_3endEv", scope: !147, file: !142, line: 170, type: !522, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !521, retainedNodes: !558)
!782 = !DILocalVariable(name: "this", arg: 1, scope: !781, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!783 = !DILocation(line: 0, scope: !781)
!784 = !DILocation(line: 172, column: 1, scope: !781)
!785 = !DILocalVariable(name: "value", arg: 1, scope: !786, file: !787, line: 500, type: !19)
!786 = distinct !DISubprogram(name: "__STREXW", linkageName: "_ZL8__STREXWjPVj", scope: !787, file: !787, line: 500, type: !788, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!787 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cmInstr.h", directory: "/home/aaa")
!788 = !DISubroutineType(types: !789)
!789 = !{!19, !19, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!791 = !DILocation(line: 500, column: 79, scope: !786, inlinedAt: !792)
!792 = distinct !DILocation(line: 184, column: 11, scope: !146)
!793 = !DILocalVariable(name: "addr", arg: 2, scope: !786, file: !787, line: 500, type: !790)
!794 = !DILocation(line: 500, column: 105, scope: !786, inlinedAt: !792)
!795 = !DILocalVariable(name: "result", scope: !786, file: !787, line: 502, type: !19)
!796 = !DILocation(line: 502, column: 13, scope: !786, inlinedAt: !792)
!797 = !DILocalVariable(name: "addr", arg: 1, scope: !798, file: !787, line: 446, type: !790)
!798 = distinct !DISubprogram(name: "__LDREXW", linkageName: "_ZL8__LDREXWPVj", scope: !787, file: !787, line: 446, type: !799, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!799 = !DISubroutineType(types: !800)
!800 = !{!19, !790}
!801 = !DILocation(line: 446, column: 89, scope: !798, inlinedAt: !802)
!802 = distinct !DILocation(line: 180, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !142, line: 180, column: 7)
!804 = distinct !DILexicalBlock(scope: !146, file: !142, line: 179, column: 5)
!805 = !DILocalVariable(name: "result", scope: !798, file: !787, line: 448, type: !19)
!806 = !DILocation(line: 448, column: 14, scope: !798, inlinedAt: !802)
!807 = !DILocalVariable(name: "this", arg: 1, scope: !146, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!808 = !DILocation(line: 0, scope: !146)
!809 = !DILocation(line: 179, column: 2, scope: !146)
!810 = !DILocation(line: 450, column: 60, scope: !798, inlinedAt: !802)
!811 = !DILocation(line: 450, column: 4, scope: !798, inlinedAt: !802)
!812 = !{i32 362674}
!813 = !DILocation(line: 451, column: 11, scope: !798, inlinedAt: !802)
!814 = !DILocation(line: 180, column: 24, scope: !803)
!815 = !DILocation(line: 180, column: 7, scope: !804)
!816 = !DILocation(line: 516, column: 3, scope: !817, inlinedAt: !820)
!817 = distinct !DISubprogram(name: "__CLREX", linkageName: "_ZL7__CLREXv", scope: !787, file: !787, line: 514, type: !818, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!818 = !DISubroutineType(types: !819)
!819 = !{null}
!820 = distinct !DILocation(line: 181, column: 4, scope: !821)
!821 = distinct !DILexicalBlock(scope: !803, file: !142, line: 180, column: 30)
!822 = !{i32 364510}
!823 = !DILocation(line: 182, column: 4, scope: !821)
!824 = !DILocation(line: 184, column: 2, scope: !804)
!825 = !DILocation(line: 504, column: 64, scope: !786, inlinedAt: !792)
!826 = !DILocation(line: 504, column: 76, scope: !786, inlinedAt: !792)
!827 = !DILocation(line: 504, column: 4, scope: !786, inlinedAt: !792)
!828 = !{i32 364215}
!829 = !DILocation(line: 505, column: 11, scope: !786, inlinedAt: !792)
!830 = !DILocation(line: 184, column: 31, scope: !146)
!831 = distinct !{!831, !809, !832}
!832 = !DILocation(line: 184, column: 35, scope: !146)
!833 = !DILocalVariable(name: "buffer", scope: !146, file: !142, line: 186, type: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 32)
!835 = !DILocation(line: 186, column: 15, scope: !146)
!836 = !DILocalVariable(name: "i", scope: !146, file: !142, line: 187, type: !19)
!837 = !DILocation(line: 187, column: 11, scope: !146)
!838 = !DILocation(line: 187, column: 26, scope: !146)
!839 = !DILocation(line: 187, column: 34, scope: !146)
!840 = !DILocation(line: 187, column: 38, scope: !146)
!841 = !DILocation(line: 187, column: 42, scope: !146)
!842 = !DILocation(line: 193, column: 2, scope: !146)
!843 = !DILocation(line: 193, column: 9, scope: !146)
!844 = !DILocation(line: 193, column: 14, scope: !146)
!845 = !DILocation(line: 193, column: 22, scope: !146)
!846 = !DILocation(line: 193, column: 11, scope: !146)
!847 = !DILocalVariable(name: "c", scope: !848, file: !142, line: 194, type: !19)
!848 = distinct !DILexicalBlock(scope: !146, file: !142, line: 193, column: 28)
!849 = !DILocation(line: 194, column: 12, scope: !848)
!850 = !DILocation(line: 195, column: 8, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !142, line: 195, column: 7)
!852 = !DILocation(line: 195, column: 7, scope: !848)
!853 = !DILocation(line: 196, column: 4, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !142, line: 195, column: 32)
!855 = !DILocation(line: 197, column: 4, scope: !854)
!856 = !DILocation(line: 199, column: 7, scope: !848)
!857 = !DILocation(line: 199, column: 5, scope: !848)
!858 = !DILocation(line: 201, column: 34, scope: !848)
!859 = !DILocation(line: 201, column: 3, scope: !848)
!860 = !DILocation(line: 201, column: 11, scope: !848)
!861 = !DILocation(line: 201, column: 18, scope: !848)
!862 = !DILocation(line: 201, column: 26, scope: !848)
!863 = !DILocation(line: 201, column: 32, scope: !848)
!864 = !DILocation(line: 202, column: 18, scope: !848)
!865 = !DILocation(line: 202, column: 3, scope: !848)
!866 = !DILocation(line: 202, column: 11, scope: !848)
!867 = !DILocation(line: 202, column: 16, scope: !848)
!868 = !DILocation(line: 204, column: 8, scope: !848)
!869 = !DILocation(line: 204, column: 10, scope: !848)
!870 = !DILocation(line: 204, column: 15, scope: !848)
!871 = !DILocation(line: 204, column: 5, scope: !848)
!872 = distinct !{!872, !842, !873}
!873 = !DILocation(line: 205, column: 2, scope: !146)
!874 = !DILocation(line: 208, column: 8, scope: !146)
!875 = !DILocation(line: 209, column: 1, scope: !146)
!876 = distinct !DISubprogram(name: "available", linkageName: "_ZN7Serial_9availableEv", scope: !147, file: !142, line: 211, type: !525, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !524, retainedNodes: !558)
!877 = !DILocalVariable(name: "this", arg: 1, scope: !876, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!878 = !DILocation(line: 0, scope: !876)
!879 = !DILocalVariable(name: "buffer", scope: !876, file: !142, line: 213, type: !834)
!880 = !DILocation(line: 213, column: 15, scope: !876)
!881 = !DILocation(line: 214, column: 49, scope: !876)
!882 = !DILocation(line: 214, column: 57, scope: !876)
!883 = !DILocation(line: 214, column: 47, scope: !876)
!884 = !DILocation(line: 214, column: 64, scope: !876)
!885 = !DILocation(line: 214, column: 72, scope: !876)
!886 = !DILocation(line: 214, column: 62, scope: !876)
!887 = !DILocation(line: 214, column: 78, scope: !876)
!888 = !DILocation(line: 214, column: 2, scope: !876)
!889 = distinct !DISubprogram(name: "availableForWrite", linkageName: "_ZN7Serial_17availableForWriteEv", scope: !147, file: !142, line: 217, type: !525, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !527, retainedNodes: !558)
!890 = !DILocalVariable(name: "this", arg: 1, scope: !889, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!891 = !DILocation(line: 0, scope: !889)
!892 = !DILocation(line: 221, column: 2, scope: !889)
!893 = distinct !DISubprogram(name: "peek", linkageName: "_ZN7Serial_4peekEv", scope: !147, file: !142, line: 224, type: !525, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !529, retainedNodes: !558)
!894 = !DILocalVariable(name: "this", arg: 1, scope: !893, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!895 = !DILocation(line: 0, scope: !893)
!896 = !DILocalVariable(name: "buffer", scope: !893, file: !142, line: 226, type: !834)
!897 = !DILocation(line: 226, column: 15, scope: !893)
!898 = !DILocation(line: 228, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !142, line: 228, column: 6)
!900 = !DILocation(line: 228, column: 14, scope: !899)
!901 = !DILocation(line: 228, column: 22, scope: !899)
!902 = !DILocation(line: 228, column: 30, scope: !899)
!903 = !DILocation(line: 228, column: 19, scope: !899)
!904 = !DILocation(line: 228, column: 6, scope: !893)
!905 = !DILocation(line: 230, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !899, file: !142, line: 229, column: 2)
!907 = !DILocation(line: 234, column: 10, scope: !908)
!908 = distinct !DILexicalBlock(scope: !899, file: !142, line: 233, column: 2)
!909 = !DILocation(line: 234, column: 18, scope: !908)
!910 = !DILocation(line: 234, column: 25, scope: !908)
!911 = !DILocation(line: 234, column: 33, scope: !908)
!912 = !DILocation(line: 234, column: 3, scope: !908)
!913 = !DILocation(line: 236, column: 1, scope: !893)
!914 = distinct !DISubprogram(name: "read", linkageName: "_ZN7Serial_4readEv", scope: !147, file: !142, line: 238, type: !525, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !530, retainedNodes: !558)
!915 = !DILocalVariable(name: "this", arg: 1, scope: !914, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!916 = !DILocation(line: 0, scope: !914)
!917 = !DILocalVariable(name: "buffer", scope: !914, file: !142, line: 240, type: !834)
!918 = !DILocation(line: 240, column: 15, scope: !914)
!919 = !DILocation(line: 243, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !914, file: !142, line: 243, column: 6)
!921 = !DILocation(line: 243, column: 14, scope: !920)
!922 = !DILocation(line: 243, column: 22, scope: !920)
!923 = !DILocation(line: 243, column: 30, scope: !920)
!924 = !DILocation(line: 243, column: 19, scope: !920)
!925 = !DILocation(line: 243, column: 6, scope: !914)
!926 = !DILocation(line: 245, column: 3, scope: !927)
!927 = distinct !DILexicalBlock(scope: !920, file: !142, line: 244, column: 2)
!928 = !DILocalVariable(name: "c", scope: !929, file: !142, line: 249, type: !7)
!929 = distinct !DILexicalBlock(scope: !920, file: !142, line: 248, column: 2)
!930 = !DILocation(line: 249, column: 17, scope: !929)
!931 = !DILocation(line: 249, column: 21, scope: !929)
!932 = !DILocation(line: 249, column: 29, scope: !929)
!933 = !DILocation(line: 249, column: 36, scope: !929)
!934 = !DILocation(line: 249, column: 44, scope: !929)
!935 = !DILocation(line: 250, column: 33, scope: !929)
!936 = !DILocation(line: 250, column: 41, scope: !929)
!937 = !DILocation(line: 250, column: 46, scope: !929)
!938 = !DILocation(line: 250, column: 51, scope: !929)
!939 = !DILocation(line: 250, column: 3, scope: !929)
!940 = !DILocation(line: 250, column: 11, scope: !929)
!941 = !DILocation(line: 250, column: 16, scope: !929)
!942 = !DILocation(line: 251, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !929, file: !142, line: 251, column: 7)
!944 = !DILocation(line: 251, column: 7, scope: !929)
!945 = !DILocation(line: 252, column: 4, scope: !943)
!946 = !DILocation(line: 253, column: 10, scope: !929)
!947 = !DILocation(line: 253, column: 3, scope: !929)
!948 = !DILocation(line: 255, column: 1, scope: !914)
!949 = distinct !DISubprogram(name: "flush", linkageName: "_ZN7Serial_5flushEv", scope: !147, file: !142, line: 257, type: !522, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !531, retainedNodes: !558)
!950 = !DILocalVariable(name: "this", arg: 1, scope: !949, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!951 = !DILocation(line: 0, scope: !949)
!952 = !DILocation(line: 259, column: 2, scope: !949)
!953 = !DILocation(line: 260, column: 1, scope: !949)
!954 = distinct !DISubprogram(name: "write", linkageName: "_ZN7Serial_5writeEPKhj", scope: !147, file: !142, line: 262, type: !536, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !535, retainedNodes: !558)
!955 = !DILocalVariable(name: "this", arg: 1, scope: !954, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!956 = !DILocation(line: 0, scope: !954)
!957 = !DILocalVariable(name: "buffer", arg: 2, scope: !954, file: !142, line: 262, type: !538)
!958 = !DILocation(line: 262, column: 38, scope: !954)
!959 = !DILocalVariable(name: "size", arg: 3, scope: !954, file: !142, line: 262, type: !195)
!960 = !DILocation(line: 262, column: 53, scope: !954)
!961 = !DILocation(line: 273, column: 19, scope: !962)
!962 = distinct !DILexicalBlock(scope: !954, file: !142, line: 273, column: 6)
!963 = !DILocation(line: 273, column: 6, scope: !962)
!964 = !DILocation(line: 273, column: 29, scope: !962)
!965 = !DILocation(line: 273, column: 6, scope: !954)
!966 = !DILocalVariable(name: "r", scope: !967, file: !142, line: 275, type: !143)
!967 = distinct !DILexicalBlock(scope: !962, file: !142, line: 274, column: 2)
!968 = !DILocation(line: 275, column: 7, scope: !967)
!969 = !DILocation(line: 275, column: 29, scope: !967)
!970 = !DILocation(line: 275, column: 37, scope: !967)
!971 = !DILocation(line: 275, column: 11, scope: !967)
!972 = !DILocation(line: 277, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !967, file: !142, line: 277, column: 7)
!974 = !DILocation(line: 277, column: 9, scope: !973)
!975 = !DILocation(line: 277, column: 7, scope: !967)
!976 = !DILocation(line: 279, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !142, line: 278, column: 3)
!978 = !DILocation(line: 279, column: 4, scope: !977)
!979 = !DILocation(line: 282, column: 4, scope: !980)
!980 = distinct !DILexicalBlock(scope: !973, file: !142, line: 281, column: 3)
!981 = !DILocation(line: 283, column: 4, scope: !980)
!982 = !DILocation(line: 286, column: 2, scope: !954)
!983 = !DILocation(line: 287, column: 2, scope: !954)
!984 = !DILocation(line: 288, column: 1, scope: !954)
!985 = distinct !DISubprogram(name: "setWriteError", linkageName: "_ZN5Print13setWriteErrorEi", scope: !154, file: !155, line: 41, type: !986, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !989, retainedNodes: !558)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !988, !143}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!989 = !DISubprogram(name: "setWriteError", linkageName: "_ZN5Print13setWriteErrorEi", scope: !154, file: !155, line: 41, type: !986, scopeLine: 41, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!990 = !DILocalVariable(name: "this", arg: 1, scope: !985, type: !991, flags: DIFlagArtificial | DIFlagObjectPointer)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!992 = !DILocation(line: 0, scope: !985)
!993 = !DILocalVariable(name: "err", arg: 2, scope: !985, file: !155, line: 41, type: !143)
!994 = !DILocation(line: 41, column: 28, scope: !985)
!995 = !DILocation(line: 41, column: 53, scope: !985)
!996 = !DILocation(line: 41, column: 39, scope: !985)
!997 = !DILocation(line: 41, column: 51, scope: !985)
!998 = !DILocation(line: 41, column: 58, scope: !985)
!999 = distinct !DISubprogram(name: "write", linkageName: "_ZN7Serial_5writeEh", scope: !147, file: !142, line: 290, type: !533, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !532, retainedNodes: !558)
!1000 = !DILocalVariable(name: "this", arg: 1, scope: !999, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1001 = !DILocation(line: 0, scope: !999)
!1002 = !DILocalVariable(name: "c", arg: 2, scope: !999, file: !142, line: 290, type: !190)
!1003 = !DILocation(line: 290, column: 31, scope: !999)
!1004 = !DILocation(line: 291, column: 9, scope: !999)
!1005 = !DILocation(line: 291, column: 2, scope: !999)
!1006 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZN7Serial_cvbEv", scope: !147, file: !142, line: 301, type: !541, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !540, retainedNodes: !558)
!1007 = !DILocalVariable(name: "this", arg: 1, scope: !1006, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1008 = !DILocation(line: 0, scope: !1006)
!1009 = !DILocation(line: 304, column: 6, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !142, line: 304, column: 6)
!1011 = !DILocation(line: 304, column: 15, scope: !1010)
!1012 = !DILocation(line: 304, column: 6, scope: !1006)
!1013 = !DILocation(line: 305, column: 3, scope: !1010)
!1014 = !DILocalVariable(name: "result", scope: !1006, file: !142, line: 307, type: !167)
!1015 = !DILocation(line: 307, column: 7, scope: !1006)
!1016 = !DILocation(line: 309, column: 19, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1006, file: !142, line: 309, column: 6)
!1018 = !DILocation(line: 309, column: 6, scope: !1017)
!1019 = !DILocation(line: 309, column: 29, scope: !1017)
!1020 = !DILocation(line: 309, column: 6, scope: !1006)
!1021 = !DILocation(line: 311, column: 10, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !142, line: 310, column: 2)
!1023 = !DILocation(line: 312, column: 2, scope: !1022)
!1024 = !DILocation(line: 314, column: 2, scope: !1006)
!1025 = !DILocation(line: 315, column: 9, scope: !1006)
!1026 = !DILocation(line: 315, column: 2, scope: !1006)
!1027 = !DILocation(line: 316, column: 1, scope: !1006)
!1028 = distinct !DISubprogram(name: "readBreak", linkageName: "_ZN7Serial_9readBreakEv", scope: !147, file: !142, line: 318, type: !544, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !543, retainedNodes: !558)
!1029 = !DILocalVariable(name: "result", scope: !1030, file: !1031, line: 537, type: !19)
!1030 = distinct !DISubprogram(name: "__get_FAULTMASK", linkageName: "_ZL15__get_FAULTMASKv", scope: !1031, file: !1031, line: 535, type: !1032, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!1031 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cmFunc.h", directory: "/home/aaa")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!19}
!1034 = !DILocation(line: 537, column: 12, scope: !1030, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 319, column: 63, scope: !1028)
!1036 = !DILocalVariable(name: "result", scope: !1037, file: !1031, line: 459, type: !19)
!1037 = distinct !DISubprogram(name: "__get_PRIMASK", linkageName: "_ZL13__get_PRIMASKv", scope: !1031, file: !1031, line: 457, type: !1032, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!1038 = !DILocation(line: 459, column: 12, scope: !1037, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 319, column: 31, scope: !1028)
!1040 = !DILocalVariable(name: "this", arg: 1, scope: !1028, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1041 = !DILocation(line: 0, scope: !1028)
!1042 = !DILocalVariable(name: "enableInterrupts", scope: !1028, file: !142, line: 319, type: !190)
!1043 = !DILocation(line: 319, column: 10, scope: !1028)
!1044 = !DILocation(line: 461, column: 3, scope: !1037, inlinedAt: !1039)
!1045 = !{i32 377978}
!1046 = !DILocation(line: 462, column: 10, scope: !1037, inlinedAt: !1039)
!1047 = !DILocation(line: 319, column: 47, scope: !1028)
!1048 = !DILocation(line: 319, column: 54, scope: !1028)
!1049 = !DILocation(line: 319, column: 59, scope: !1028)
!1050 = !DILocation(line: 539, column: 3, scope: !1030, inlinedAt: !1035)
!1051 = !{i32 379851}
!1052 = !DILocation(line: 540, column: 10, scope: !1030, inlinedAt: !1035)
!1053 = !DILocation(line: 319, column: 81, scope: !1028)
!1054 = !DILocation(line: 319, column: 88, scope: !1028)
!1055 = !DILocation(line: 319, column: 29, scope: !1028)
!1056 = !DILocation(line: 321, column: 3, scope: !1057, inlinedAt: !1058)
!1057 = distinct !DISubprogram(name: "__disable_irq", linkageName: "_ZL13__disable_irqv", scope: !1031, file: !1031, line: 319, type: !818, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!1058 = distinct !DILocation(line: 324, column: 2, scope: !1028)
!1059 = !{i32 374677}
!1060 = !DILocalVariable(name: "ret", scope: !1028, file: !142, line: 326, type: !143)
!1061 = !DILocation(line: 326, column: 6, scope: !1028)
!1062 = !DILocation(line: 326, column: 12, scope: !1028)
!1063 = !DILocation(line: 328, column: 13, scope: !1028)
!1064 = !DILocation(line: 330, column: 6, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1028, file: !142, line: 330, column: 6)
!1066 = !DILocation(line: 330, column: 6, scope: !1028)
!1067 = !DILocation(line: 310, column: 3, scope: !1068, inlinedAt: !1069)
!1068 = distinct !DISubprogram(name: "__enable_irq", linkageName: "_ZL12__enable_irqv", scope: !1031, file: !1031, line: 308, type: !818, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!1069 = distinct !DILocation(line: 333, column: 3, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !142, line: 331, column: 2)
!1071 = !{i32 374407}
!1072 = !DILocation(line: 334, column: 2, scope: !1070)
!1073 = !DILocation(line: 336, column: 9, scope: !1028)
!1074 = !DILocation(line: 336, column: 2, scope: !1028)
!1075 = distinct !DISubprogram(name: "baud", linkageName: "_ZN7Serial_4baudEv", scope: !147, file: !142, line: 340, type: !549, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !548, retainedNodes: !558)
!1076 = !DILocalVariable(name: "this", arg: 1, scope: !1075, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1077 = !DILocation(line: 0, scope: !1075)
!1078 = !DILocation(line: 341, column: 22, scope: !1075)
!1079 = !DILocation(line: 341, column: 2, scope: !1075)
!1080 = distinct !DISubprogram(name: "stopbits", linkageName: "_ZN7Serial_8stopbitsEv", scope: !147, file: !142, line: 344, type: !552, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !551, retainedNodes: !558)
!1081 = !DILocalVariable(name: "this", arg: 1, scope: !1080, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1082 = !DILocation(line: 0, scope: !1080)
!1083 = !DILocation(line: 345, column: 22, scope: !1080)
!1084 = !DILocation(line: 345, column: 2, scope: !1080)
!1085 = distinct !DISubprogram(name: "paritytype", linkageName: "_ZN7Serial_10paritytypeEv", scope: !147, file: !142, line: 348, type: !552, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !554, retainedNodes: !558)
!1086 = !DILocalVariable(name: "this", arg: 1, scope: !1085, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1087 = !DILocation(line: 0, scope: !1085)
!1088 = !DILocation(line: 349, column: 22, scope: !1085)
!1089 = !DILocation(line: 349, column: 2, scope: !1085)
!1090 = distinct !DISubprogram(name: "numbits", linkageName: "_ZN7Serial_7numbitsEv", scope: !147, file: !142, line: 352, type: !552, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !555, retainedNodes: !558)
!1091 = !DILocalVariable(name: "this", arg: 1, scope: !1090, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1092 = !DILocation(line: 0, scope: !1090)
!1093 = !DILocation(line: 353, column: 22, scope: !1090)
!1094 = !DILocation(line: 353, column: 2, scope: !1090)
!1095 = distinct !DISubprogram(name: "dtr", linkageName: "_ZN7Serial_3dtrEv", scope: !147, file: !142, line: 356, type: !541, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !556, retainedNodes: !558)
!1096 = !DILocalVariable(name: "this", arg: 1, scope: !1095, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1097 = !DILocation(line: 0, scope: !1095)
!1098 = !DILocation(line: 357, column: 22, scope: !1095)
!1099 = !DILocation(line: 357, column: 9, scope: !1095)
!1100 = !DILocation(line: 357, column: 32, scope: !1095)
!1101 = !DILocation(line: 357, column: 2, scope: !1095)
!1102 = distinct !DISubprogram(name: "rts", linkageName: "_ZN7Serial_3rtsEv", scope: !147, file: !142, line: 360, type: !541, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !557, retainedNodes: !558)
!1103 = !DILocalVariable(name: "this", arg: 1, scope: !1102, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1104 = !DILocation(line: 0, scope: !1102)
!1105 = !DILocation(line: 361, column: 22, scope: !1102)
!1106 = !DILocation(line: 361, column: 9, scope: !1102)
!1107 = !DILocation(line: 361, column: 32, scope: !1102)
!1108 = !DILocation(line: 361, column: 2, scope: !1102)
!1109 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !142, file: !142, line: 364, type: !818, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!1110 = !DILocation(line: 364, column: 9, scope: !1109)
!1111 = distinct !DISubprogram(name: "Serial_", linkageName: "_ZN7Serial_C2Ev", scope: !147, file: !148, line: 47, type: !522, scopeLine: 47, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1112, retainedNodes: !558)
!1112 = !DISubprogram(name: "Serial_", scope: !147, type: !522, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1113 = !DILocalVariable(name: "this", arg: 1, scope: !1111, type: !768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1114 = !DILocation(line: 0, scope: !1111)
!1115 = !DILocation(line: 47, column: 7, scope: !1111)
!1116 = distinct !DISubprogram(name: "Stream", linkageName: "_ZN6StreamC2Ev", scope: !151, file: !6, line: 64, type: !172, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !174, retainedNodes: !558)
!1117 = !DILocalVariable(name: "this", arg: 1, scope: !1116, type: !1118, flags: DIFlagArtificial | DIFlagObjectPointer)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32)
!1119 = !DILocation(line: 0, scope: !1116)
!1120 = !DILocation(line: 64, column: 14, scope: !1116)
!1121 = !DILocation(line: 64, column: 5, scope: !1116)
!1122 = !DILocation(line: 64, column: 15, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1116, file: !6, line: 64, column: 14)
!1124 = !DILocation(line: 64, column: 23, scope: !1123)
!1125 = !DILocation(line: 64, column: 29, scope: !1116)
!1126 = distinct !DISubprogram(name: "Print", linkageName: "_ZN5PrintC2Ev", scope: !154, file: !155, line: 43, type: !1127, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1129, retainedNodes: !558)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !988}
!1129 = !DISubprogram(name: "Print", scope: !154, file: !155, line: 43, type: !1127, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1130 = !DILocalVariable(name: "this", arg: 1, scope: !1126, type: !991, flags: DIFlagArtificial | DIFlagObjectPointer)
!1131 = !DILocation(line: 0, scope: !1126)
!1132 = !DILocation(line: 43, column: 30, scope: !1126)
!1133 = !DILocation(line: 43, column: 15, scope: !1126)
!1134 = !DILocation(line: 43, column: 31, scope: !1126)
!1135 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_CDC.cpp", scope: !3, file: !3, type: !1136, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !558)
!1136 = !DISubroutineType(types: !558)
!1137 = !DILocation(line: 0, scope: !1135)

; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/PluggableUSB.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/PluggableUSB.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.PluggableUSB_ = type { i8, i8, %class.PluggableUSBModule* }
%class.PluggableUSBModule = type { i32 (...)**, i8, i8, i8, i8, i32*, %class.PluggableUSBModule* }
%struct.USBSetup = type { i8, i8, i8, i8, i16, i16 }

@EndPoints = external dso_local global [0 x i32], align 4
@_ZZ12PluggableUSBvE3obj = internal global %class.PluggableUSB_ zeroinitializer, align 4, !dbg !0
@_ZGVZ12PluggableUSBvE3obj = internal global i8 0, align 1

@_ZN13PluggableUSB_C1Ev = dso_local unnamed_addr alias %class.PluggableUSB_* (%class.PluggableUSB_*), %class.PluggableUSB_* (%class.PluggableUSB_*)* @_ZN13PluggableUSB_C2Ev

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN13PluggableUSB_12getInterfaceEPh(%class.PluggableUSB_* %this, i8* %interfaceCount) #0 align 2 !dbg !57 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.PluggableUSB_*, align 4
  %interfaceCount.addr = alloca i8*, align 4
  %sent = alloca i32, align 4
  %node = alloca %class.PluggableUSBModule*, align 4
  %res = alloca i32, align 4
  store %class.PluggableUSB_* %this, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSB_** %this.addr, metadata !58, metadata !DIExpression()), !dbg !60
  store i8* %interfaceCount, i8** %interfaceCount.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %interfaceCount.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %this1 = load %class.PluggableUSB_*, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sent, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %sent, align 4, !dbg !64
  call void @llvm.dbg.declare(metadata %class.PluggableUSBModule** %node, metadata !65, metadata !DIExpression()), !dbg !66
  %rootNode = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 2, !dbg !67
  %0 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %rootNode, align 4, !dbg !67
  store %class.PluggableUSBModule* %0, %class.PluggableUSBModule** %node, align 4, !dbg !69
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !71
  %tobool = icmp ne %class.PluggableUSBModule* %1, null, !dbg !71
  br i1 %tobool, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %res, metadata !74, metadata !DIExpression()), !dbg !76
  %2 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !77
  %3 = load i8*, i8** %interfaceCount.addr, align 4, !dbg !78
  %4 = bitcast %class.PluggableUSBModule* %2 to i32 (%class.PluggableUSBModule*, i8*)***, !dbg !79
  %vtable = load i32 (%class.PluggableUSBModule*, i8*)**, i32 (%class.PluggableUSBModule*, i8*)*** %4, align 4, !dbg !79
  %vfn = getelementptr inbounds i32 (%class.PluggableUSBModule*, i8*)*, i32 (%class.PluggableUSBModule*, i8*)** %vtable, i64 1, !dbg !79
  %5 = load i32 (%class.PluggableUSBModule*, i8*)*, i32 (%class.PluggableUSBModule*, i8*)** %vfn, align 4, !dbg !79
  %call = call arm_aapcscc i32 %5(%class.PluggableUSBModule* %2, i8* %3), !dbg !79
  store i32 %call, i32* %res, align 4, !dbg !76
  %6 = load i32, i32* %res, align 4, !dbg !80
  %cmp = icmp slt i32 %6, 0, !dbg !82
  br i1 %cmp, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, align 4, !dbg !84
  br label %return, !dbg !84

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %res, align 4, !dbg !85
  %8 = load i32, i32* %sent, align 4, !dbg !86
  %add = add nsw i32 %8, %7, !dbg !86
  store i32 %add, i32* %sent, align 4, !dbg !86
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %if.end
  %9 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !88
  %next = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %9, i32 0, i32 6, !dbg !89
  %10 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %next, align 4, !dbg !89
  store %class.PluggableUSBModule* %10, %class.PluggableUSBModule** %node, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %sent, align 4, !dbg !94
  store i32 %11, i32* %retval, align 4, !dbg !95
  br label %return, !dbg !95

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !96
  ret i32 %12, !dbg !96
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN13PluggableUSB_13getDescriptorER8USBSetup(%class.PluggableUSB_* %this, %struct.USBSetup* dereferenceable(8) %setup) #0 align 2 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.PluggableUSB_*, align 4
  %setup.addr = alloca %struct.USBSetup*, align 4
  %node = alloca %class.PluggableUSBModule*, align 4
  %ret = alloca i32, align 4
  store %class.PluggableUSB_* %this, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSB_** %this.addr, metadata !98, metadata !DIExpression()), !dbg !99
  store %struct.USBSetup* %setup, %struct.USBSetup** %setup.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.USBSetup** %setup.addr, metadata !100, metadata !DIExpression()), !dbg !101
  %this1 = load %class.PluggableUSB_*, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSBModule** %node, metadata !102, metadata !DIExpression()), !dbg !103
  %rootNode = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 2, !dbg !104
  %0 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %rootNode, align 4, !dbg !104
  store %class.PluggableUSBModule* %0, %class.PluggableUSBModule** %node, align 4, !dbg !106
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !108
  %tobool = icmp ne %class.PluggableUSBModule* %1, null, !dbg !108
  br i1 %tobool, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !111, metadata !DIExpression()), !dbg !113
  %2 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !114
  %3 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !115
  %4 = bitcast %class.PluggableUSBModule* %2 to i32 (%class.PluggableUSBModule*, %struct.USBSetup*)***, !dbg !116
  %vtable = load i32 (%class.PluggableUSBModule*, %struct.USBSetup*)**, i32 (%class.PluggableUSBModule*, %struct.USBSetup*)*** %4, align 4, !dbg !116
  %vfn = getelementptr inbounds i32 (%class.PluggableUSBModule*, %struct.USBSetup*)*, i32 (%class.PluggableUSBModule*, %struct.USBSetup*)** %vtable, i64 2, !dbg !116
  %5 = load i32 (%class.PluggableUSBModule*, %struct.USBSetup*)*, i32 (%class.PluggableUSBModule*, %struct.USBSetup*)** %vfn, align 4, !dbg !116
  %call = call arm_aapcscc i32 %5(%class.PluggableUSBModule* %2, %struct.USBSetup* dereferenceable(8) %3), !dbg !116
  store i32 %call, i32* %ret, align 4, !dbg !113
  %6 = load i32, i32* %ret, align 4, !dbg !117
  %tobool2 = icmp ne i32 %6, 0, !dbg !117
  br i1 %tobool2, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %ret, align 4, !dbg !120
  store i32 %7, i32* %retval, align 4, !dbg !121
  br label %return, !dbg !121

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %if.end
  %8 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !123
  %next = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %8, i32 0, i32 6, !dbg !124
  %9 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %next, align 4, !dbg !124
  store %class.PluggableUSBModule* %9, %class.PluggableUSBModule** %node, align 4, !dbg !125
  br label %for.cond, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !129
  br label %return, !dbg !129

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !130
  ret i32 %10, !dbg !130
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN13PluggableUSB_12getShortNameEPc(%class.PluggableUSB_* %this, i8* %iSerialNum) #0 align 2 !dbg !131 {
entry:
  %this.addr = alloca %class.PluggableUSB_*, align 4
  %iSerialNum.addr = alloca i8*, align 4
  %node = alloca %class.PluggableUSBModule*, align 4
  store %class.PluggableUSB_* %this, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSB_** %this.addr, metadata !132, metadata !DIExpression()), !dbg !133
  store i8* %iSerialNum, i8** %iSerialNum.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %iSerialNum.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %this1 = load %class.PluggableUSB_*, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSBModule** %node, metadata !136, metadata !DIExpression()), !dbg !137
  %rootNode = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 2, !dbg !138
  %0 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %rootNode, align 4, !dbg !138
  store %class.PluggableUSBModule* %0, %class.PluggableUSBModule** %node, align 4, !dbg !140
  br label %for.cond, !dbg !141

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !142
  %tobool = icmp ne %class.PluggableUSBModule* %1, null, !dbg !142
  br i1 %tobool, label %for.body, label %for.end, !dbg !144

for.body:                                         ; preds = %for.cond
  %2 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !145
  %3 = load i8*, i8** %iSerialNum.addr, align 4, !dbg !147
  %4 = bitcast %class.PluggableUSBModule* %2 to i8 (%class.PluggableUSBModule*, i8*)***, !dbg !148
  %vtable = load i8 (%class.PluggableUSBModule*, i8*)**, i8 (%class.PluggableUSBModule*, i8*)*** %4, align 4, !dbg !148
  %vfn = getelementptr inbounds i8 (%class.PluggableUSBModule*, i8*)*, i8 (%class.PluggableUSBModule*, i8*)** %vtable, i64 3, !dbg !148
  %5 = load i8 (%class.PluggableUSBModule*, i8*)*, i8 (%class.PluggableUSBModule*, i8*)** %vfn, align 4, !dbg !148
  %call = call arm_aapcscc zeroext i8 %5(%class.PluggableUSBModule* %2, i8* %3), !dbg !148
  %conv = zext i8 %call to i32, !dbg !145
  %6 = load i8*, i8** %iSerialNum.addr, align 4, !dbg !149
  %add.ptr = getelementptr inbounds i8, i8* %6, i32 %conv, !dbg !149
  store i8* %add.ptr, i8** %iSerialNum.addr, align 4, !dbg !149
  br label %for.inc, !dbg !150

for.inc:                                          ; preds = %for.body
  %7 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !151
  %next = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %7, i32 0, i32 6, !dbg !152
  %8 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %next, align 4, !dbg !152
  store %class.PluggableUSBModule* %8, %class.PluggableUSBModule** %node, align 4, !dbg !153
  br label %for.cond, !dbg !154, !llvm.loop !155

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %iSerialNum.addr, align 4, !dbg !157
  store i8 0, i8* %9, align 1, !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN13PluggableUSB_5setupER8USBSetup(%class.PluggableUSB_* %this, %struct.USBSetup* dereferenceable(8) %setup) #0 align 2 !dbg !160 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.PluggableUSB_*, align 4
  %setup.addr = alloca %struct.USBSetup*, align 4
  %node = alloca %class.PluggableUSBModule*, align 4
  store %class.PluggableUSB_* %this, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSB_** %this.addr, metadata !161, metadata !DIExpression()), !dbg !162
  store %struct.USBSetup* %setup, %struct.USBSetup** %setup.addr, align 4
  call void @llvm.dbg.declare(metadata %struct.USBSetup** %setup.addr, metadata !163, metadata !DIExpression()), !dbg !164
  %this1 = load %class.PluggableUSB_*, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSBModule** %node, metadata !165, metadata !DIExpression()), !dbg !166
  %rootNode = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 2, !dbg !167
  %0 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %rootNode, align 4, !dbg !167
  store %class.PluggableUSBModule* %0, %class.PluggableUSBModule** %node, align 4, !dbg !169
  br label %for.cond, !dbg !170

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !171
  %tobool = icmp ne %class.PluggableUSBModule* %1, null, !dbg !171
  br i1 %tobool, label %for.body, label %for.end, !dbg !173

for.body:                                         ; preds = %for.cond
  %2 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !174
  %3 = load %struct.USBSetup*, %struct.USBSetup** %setup.addr, align 4, !dbg !177
  %4 = bitcast %class.PluggableUSBModule* %2 to i1 (%class.PluggableUSBModule*, %struct.USBSetup*)***, !dbg !178
  %vtable = load i1 (%class.PluggableUSBModule*, %struct.USBSetup*)**, i1 (%class.PluggableUSBModule*, %struct.USBSetup*)*** %4, align 4, !dbg !178
  %vfn = getelementptr inbounds i1 (%class.PluggableUSBModule*, %struct.USBSetup*)*, i1 (%class.PluggableUSBModule*, %struct.USBSetup*)** %vtable, i64 0, !dbg !178
  %5 = load i1 (%class.PluggableUSBModule*, %struct.USBSetup*)*, i1 (%class.PluggableUSBModule*, %struct.USBSetup*)** %vfn, align 4, !dbg !178
  %call = call arm_aapcscc zeroext i1 %5(%class.PluggableUSBModule* %2, %struct.USBSetup* dereferenceable(8) %3), !dbg !178
  br i1 %call, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !180
  br label %return, !dbg !180

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !182

for.inc:                                          ; preds = %if.end
  %6 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node, align 4, !dbg !183
  %next = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %6, i32 0, i32 6, !dbg !184
  %7 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %next, align 4, !dbg !184
  store %class.PluggableUSBModule* %7, %class.PluggableUSBModule** %node, align 4, !dbg !185
  br label %for.cond, !dbg !186, !llvm.loop !187

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !189
  br label %return, !dbg !189

return:                                           ; preds = %for.end, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !190
  ret i1 %8, !dbg !190
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN13PluggableUSB_4plugEP18PluggableUSBModule(%class.PluggableUSB_* %this, %class.PluggableUSBModule* %node) #0 align 2 !dbg !191 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.PluggableUSB_*, align 4
  %node.addr = alloca %class.PluggableUSBModule*, align 4
  %current = alloca %class.PluggableUSBModule*, align 4
  %i = alloca i8, align 1
  store %class.PluggableUSB_* %this, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSB_** %this.addr, metadata !192, metadata !DIExpression()), !dbg !193
  store %class.PluggableUSBModule* %node, %class.PluggableUSBModule** %node.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSBModule** %node.addr, metadata !194, metadata !DIExpression()), !dbg !195
  %this1 = load %class.PluggableUSB_*, %class.PluggableUSB_** %this.addr, align 4
  %lastEp = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 1, !dbg !196
  %0 = load i8, i8* %lastEp, align 1, !dbg !196
  %conv = zext i8 %0 to i32, !dbg !196
  %1 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node.addr, align 4, !dbg !198
  %numEndpoints = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %1, i32 0, i32 3, !dbg !199
  %2 = load i8, i8* %numEndpoints, align 2, !dbg !199
  %conv2 = zext i8 %2 to i32, !dbg !198
  %add = add nsw i32 %conv, %conv2, !dbg !200
  %cmp = icmp sgt i32 %add, 7, !dbg !201
  br i1 %cmp, label %if.then, label %if.end, !dbg !202

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !203
  br label %return, !dbg !203

if.end:                                           ; preds = %entry
  %rootNode = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 2, !dbg !205
  %3 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %rootNode, align 4, !dbg !205
  %tobool = icmp ne %class.PluggableUSBModule* %3, null, !dbg !205
  br i1 %tobool, label %if.else, label %if.then3, !dbg !207

if.then3:                                         ; preds = %if.end
  %4 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node.addr, align 4, !dbg !208
  %rootNode4 = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 2, !dbg !210
  store %class.PluggableUSBModule* %4, %class.PluggableUSBModule** %rootNode4, align 4, !dbg !211
  br label %if.end9, !dbg !212

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %class.PluggableUSBModule** %current, metadata !213, metadata !DIExpression()), !dbg !215
  %rootNode5 = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 2, !dbg !216
  %5 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %rootNode5, align 4, !dbg !216
  store %class.PluggableUSBModule* %5, %class.PluggableUSBModule** %current, align 4, !dbg !215
  br label %while.cond, !dbg !217

while.cond:                                       ; preds = %while.body, %if.else
  %6 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %current, align 4, !dbg !218
  %next = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %6, i32 0, i32 6, !dbg !219
  %7 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %next, align 4, !dbg !219
  %tobool6 = icmp ne %class.PluggableUSBModule* %7, null, !dbg !218
  br i1 %tobool6, label %while.body, label %while.end, !dbg !217

while.body:                                       ; preds = %while.cond
  %8 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %current, align 4, !dbg !220
  %next7 = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %8, i32 0, i32 6, !dbg !222
  %9 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %next7, align 4, !dbg !222
  store %class.PluggableUSBModule* %9, %class.PluggableUSBModule** %current, align 4, !dbg !223
  br label %while.cond, !dbg !217, !llvm.loop !224

while.end:                                        ; preds = %while.cond
  %10 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node.addr, align 4, !dbg !226
  %11 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %current, align 4, !dbg !227
  %next8 = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %11, i32 0, i32 6, !dbg !228
  store %class.PluggableUSBModule* %10, %class.PluggableUSBModule** %next8, align 4, !dbg !229
  br label %if.end9

if.end9:                                          ; preds = %while.end, %if.then3
  %lastIf = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 0, !dbg !230
  %12 = load i8, i8* %lastIf, align 4, !dbg !230
  %13 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node.addr, align 4, !dbg !231
  %pluggedInterface = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %13, i32 0, i32 1, !dbg !232
  store i8 %12, i8* %pluggedInterface, align 4, !dbg !233
  %lastEp10 = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 1, !dbg !234
  %14 = load i8, i8* %lastEp10, align 1, !dbg !234
  %15 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node.addr, align 4, !dbg !235
  %pluggedEndpoint = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %15, i32 0, i32 2, !dbg !236
  store i8 %14, i8* %pluggedEndpoint, align 1, !dbg !237
  %16 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node.addr, align 4, !dbg !238
  %numInterfaces = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %16, i32 0, i32 4, !dbg !239
  %17 = load i8, i8* %numInterfaces, align 1, !dbg !239
  %conv11 = zext i8 %17 to i32, !dbg !238
  %lastIf12 = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 0, !dbg !240
  %18 = load i8, i8* %lastIf12, align 4, !dbg !241
  %conv13 = zext i8 %18 to i32, !dbg !241
  %add14 = add nsw i32 %conv13, %conv11, !dbg !241
  %conv15 = trunc i32 %add14 to i8, !dbg !241
  store i8 %conv15, i8* %lastIf12, align 4, !dbg !241
  call void @llvm.dbg.declare(metadata i8* %i, metadata !242, metadata !DIExpression()), !dbg !244
  store i8 0, i8* %i, align 1, !dbg !244
  br label %for.cond, !dbg !245

for.cond:                                         ; preds = %for.inc, %if.end9
  %19 = load i8, i8* %i, align 1, !dbg !246
  %conv16 = zext i8 %19 to i32, !dbg !246
  %20 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node.addr, align 4, !dbg !248
  %numEndpoints17 = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %20, i32 0, i32 3, !dbg !249
  %21 = load i8, i8* %numEndpoints17, align 2, !dbg !249
  %conv18 = zext i8 %21 to i32, !dbg !248
  %cmp19 = icmp slt i32 %conv16, %conv18, !dbg !250
  br i1 %cmp19, label %for.body, label %for.end, !dbg !251

for.body:                                         ; preds = %for.cond
  %22 = load %class.PluggableUSBModule*, %class.PluggableUSBModule** %node.addr, align 4, !dbg !252
  %endpointType = getelementptr inbounds %class.PluggableUSBModule, %class.PluggableUSBModule* %22, i32 0, i32 5, !dbg !254
  %23 = load i32*, i32** %endpointType, align 4, !dbg !254
  %24 = load i8, i8* %i, align 1, !dbg !255
  %idxprom = zext i8 %24 to i32, !dbg !252
  %arrayidx = getelementptr inbounds i32, i32* %23, i32 %idxprom, !dbg !252
  %25 = load i32, i32* %arrayidx, align 4, !dbg !252
  %lastEp20 = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 1, !dbg !256
  %26 = load i8, i8* %lastEp20, align 1, !dbg !256
  %idxprom21 = zext i8 %26 to i32, !dbg !257
  %arrayidx22 = getelementptr inbounds [0 x i32], [0 x i32]* @EndPoints, i32 0, i32 %idxprom21, !dbg !257
  store i32 %25, i32* %arrayidx22, align 4, !dbg !258
  %lastEp23 = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 1, !dbg !259
  %27 = load i8, i8* %lastEp23, align 1, !dbg !260
  %inc = add i8 %27, 1, !dbg !260
  store i8 %inc, i8* %lastEp23, align 1, !dbg !260
  br label %for.inc, !dbg !261

for.inc:                                          ; preds = %for.body
  %28 = load i8, i8* %i, align 1, !dbg !262
  %inc24 = add i8 %28, 1, !dbg !262
  store i8 %inc24, i8* %i, align 1, !dbg !262
  br label %for.cond, !dbg !263, !llvm.loop !264

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !266
  br label %return, !dbg !266

return:                                           ; preds = %for.end, %if.then
  %29 = load i1, i1* %retval, align 1, !dbg !267
  ret i1 %29, !dbg !267
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc dereferenceable(8) %class.PluggableUSB_* @_Z12PluggableUSBv() #0 !dbg !2 {
entry:
  %0 = load i8, i8* @_ZGVZ12PluggableUSBvE3obj, align 1, !dbg !268
  %guard.uninitialized = icmp eq i8 %0, 0, !dbg !268
  br i1 %guard.uninitialized, label %init.check, label %init.end, !dbg !268, !prof !269

init.check:                                       ; preds = %entry
  %call = call arm_aapcscc %class.PluggableUSB_* @_ZN13PluggableUSB_C1Ev(%class.PluggableUSB_* @_ZZ12PluggableUSBvE3obj), !dbg !270
  store i8 1, i8* @_ZGVZ12PluggableUSBvE3obj, align 1, !dbg !268
  br label %init.end, !dbg !268

init.end:                                         ; preds = %init.check, %entry
  ret %class.PluggableUSB_* @_ZZ12PluggableUSBvE3obj, !dbg !271
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc %class.PluggableUSB_* @_ZN13PluggableUSB_C2Ev(%class.PluggableUSB_* returned %this) unnamed_addr #0 align 2 !dbg !272 {
entry:
  %this.addr = alloca %class.PluggableUSB_*, align 4
  store %class.PluggableUSB_* %this, %class.PluggableUSB_** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.PluggableUSB_** %this.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %this1 = load %class.PluggableUSB_*, %class.PluggableUSB_** %this.addr, align 4
  %lastIf = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 0, !dbg !275
  store i8 2, i8* %lastIf, align 4, !dbg !275
  %lastEp = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 1, !dbg !276
  store i8 4, i8* %lastEp, align 1, !dbg !276
  %rootNode = getelementptr inbounds %class.PluggableUSB_, %class.PluggableUSB_* %this1, i32 0, i32 2, !dbg !277
  store %class.PluggableUSBModule* null, %class.PluggableUSBModule** %rootNode, align 4, !dbg !277
  ret %class.PluggableUSB_* %this1, !dbg !278
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!48}
!llvm.module.flags = !{!52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "obj", scope: !2, file: !3, line: 104, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "PluggableUSB", linkageName: "_Z12PluggableUSBv", scope: !3, file: !3, line: 102, type: !4, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !50)
!3 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/PluggableUSB.cpp", directory: "/home/aaa")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 32)
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PluggableUSB_", file: !8, line: 51, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !9, identifier: "_ZTS13PluggableUSB_")
!8 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/PluggableUSB.h", directory: "/home/aaa")
!9 = !{!10, !16, !17, !20, !24, !28, !33, !40, !43}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "lastIf", scope: !7, file: !8, line: 61, baseType: !11, size: 8)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 42, baseType: !13)
!12 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 28, baseType: !15)
!14 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "lastEp", scope: !7, file: !8, line: 62, baseType: !11, size: 8, offset: 8)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "rootNode", scope: !7, file: !8, line: 63, baseType: !18, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DICompositeType(tag: DW_TAG_class_type, name: "PluggableUSBModule", file: !8, line: 27, flags: DIFlagFwdDecl, identifier: "_ZTS18PluggableUSBModule")
!20 = !DISubprogram(name: "PluggableUSB_", scope: !7, file: !8, line: 53, type: !21, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!24 = !DISubprogram(name: "plug", linkageName: "_ZN13PluggableUSB_4plugEP18PluggableUSBModule", scope: !7, file: !8, line: 54, type: !25, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !23, !18}
!27 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!28 = !DISubprogram(name: "getInterface", linkageName: "_ZN13PluggableUSB_12getInterfaceEPh", scope: !7, file: !8, line: 55, type: !29, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !23, !32}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!33 = !DISubprogram(name: "getDescriptor", linkageName: "_ZN13PluggableUSB_13getDescriptorER8USBSetup", scope: !7, file: !8, line: 56, type: !34, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!34 = !DISubroutineType(types: !35)
!35 = !{!31, !23, !36}
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "USBSetup", file: !38, line: 120, baseType: !39)
!38 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/USBAPI.h", directory: "/home/aaa")
!39 = !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 112, flags: DIFlagFwdDecl, identifier: "_ZTS8USBSetup")
!40 = !DISubprogram(name: "setup", linkageName: "_ZN13PluggableUSB_5setupER8USBSetup", scope: !7, file: !8, line: 57, type: !41, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!41 = !DISubroutineType(types: !42)
!42 = !{!27, !23, !36}
!43 = !DISubprogram(name: "getShortName", linkageName: "_ZN13PluggableUSB_12getShortNameEPc", scope: !7, file: !8, line: 58, type: !44, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !23, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !49, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !51, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USB/PluggableUSB.cpp", directory: "/home/aaa/llvm-arduino-due")
!50 = !{}
!51 = !{!0}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{i32 1, !"min_enum_size", i32 1}
!56 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!57 = distinct !DISubprogram(name: "getInterface", linkageName: "_ZN13PluggableUSB_12getInterfaceEPh", scope: !7, file: !3, line: 30, type: !29, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, declaration: !28, retainedNodes: !50)
!58 = !DILocalVariable(name: "this", arg: 1, scope: !57, type: !59, flags: DIFlagArtificial | DIFlagObjectPointer)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!60 = !DILocation(line: 0, scope: !57)
!61 = !DILocalVariable(name: "interfaceCount", arg: 2, scope: !57, file: !3, line: 30, type: !32)
!62 = !DILocation(line: 30, column: 42, scope: !57)
!63 = !DILocalVariable(name: "sent", scope: !57, file: !3, line: 32, type: !31)
!64 = !DILocation(line: 32, column: 6, scope: !57)
!65 = !DILocalVariable(name: "node", scope: !57, file: !3, line: 33, type: !18)
!66 = !DILocation(line: 33, column: 22, scope: !57)
!67 = !DILocation(line: 34, column: 14, scope: !68)
!68 = distinct !DILexicalBlock(scope: !57, file: !3, line: 34, column: 2)
!69 = !DILocation(line: 34, column: 12, scope: !68)
!70 = !DILocation(line: 34, column: 7, scope: !68)
!71 = !DILocation(line: 34, column: 24, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 34, column: 2)
!73 = !DILocation(line: 34, column: 2, scope: !68)
!74 = !DILocalVariable(name: "res", scope: !75, file: !3, line: 35, type: !31)
!75 = distinct !DILexicalBlock(scope: !72, file: !3, line: 34, column: 49)
!76 = !DILocation(line: 35, column: 7, scope: !75)
!77 = !DILocation(line: 35, column: 13, scope: !75)
!78 = !DILocation(line: 35, column: 32, scope: !75)
!79 = !DILocation(line: 35, column: 19, scope: !75)
!80 = !DILocation(line: 36, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !3, line: 36, column: 7)
!82 = !DILocation(line: 36, column: 11, scope: !81)
!83 = !DILocation(line: 36, column: 7, scope: !75)
!84 = !DILocation(line: 37, column: 4, scope: !81)
!85 = !DILocation(line: 38, column: 11, scope: !75)
!86 = !DILocation(line: 38, column: 8, scope: !75)
!87 = !DILocation(line: 39, column: 2, scope: !75)
!88 = !DILocation(line: 34, column: 37, scope: !72)
!89 = !DILocation(line: 34, column: 43, scope: !72)
!90 = !DILocation(line: 34, column: 35, scope: !72)
!91 = !DILocation(line: 34, column: 2, scope: !72)
!92 = distinct !{!92, !73, !93}
!93 = !DILocation(line: 39, column: 2, scope: !68)
!94 = !DILocation(line: 40, column: 9, scope: !57)
!95 = !DILocation(line: 40, column: 2, scope: !57)
!96 = !DILocation(line: 41, column: 1, scope: !57)
!97 = distinct !DISubprogram(name: "getDescriptor", linkageName: "_ZN13PluggableUSB_13getDescriptorER8USBSetup", scope: !7, file: !3, line: 43, type: !34, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, declaration: !33, retainedNodes: !50)
!98 = !DILocalVariable(name: "this", arg: 1, scope: !97, type: !59, flags: DIFlagArtificial | DIFlagObjectPointer)
!99 = !DILocation(line: 0, scope: !97)
!100 = !DILocalVariable(name: "setup", arg: 2, scope: !97, file: !3, line: 43, type: !36)
!101 = !DILocation(line: 43, column: 44, scope: !97)
!102 = !DILocalVariable(name: "node", scope: !97, file: !3, line: 45, type: !18)
!103 = !DILocation(line: 45, column: 22, scope: !97)
!104 = !DILocation(line: 46, column: 14, scope: !105)
!105 = distinct !DILexicalBlock(scope: !97, file: !3, line: 46, column: 2)
!106 = !DILocation(line: 46, column: 12, scope: !105)
!107 = !DILocation(line: 46, column: 7, scope: !105)
!108 = !DILocation(line: 46, column: 24, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !3, line: 46, column: 2)
!110 = !DILocation(line: 46, column: 2, scope: !105)
!111 = !DILocalVariable(name: "ret", scope: !112, file: !3, line: 47, type: !31)
!112 = distinct !DILexicalBlock(scope: !109, file: !3, line: 46, column: 49)
!113 = !DILocation(line: 47, column: 7, scope: !112)
!114 = !DILocation(line: 47, column: 13, scope: !112)
!115 = !DILocation(line: 47, column: 33, scope: !112)
!116 = !DILocation(line: 47, column: 19, scope: !112)
!117 = !DILocation(line: 49, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !112, file: !3, line: 49, column: 7)
!119 = !DILocation(line: 49, column: 7, scope: !112)
!120 = !DILocation(line: 50, column: 11, scope: !118)
!121 = !DILocation(line: 50, column: 4, scope: !118)
!122 = !DILocation(line: 51, column: 2, scope: !112)
!123 = !DILocation(line: 46, column: 37, scope: !109)
!124 = !DILocation(line: 46, column: 43, scope: !109)
!125 = !DILocation(line: 46, column: 35, scope: !109)
!126 = !DILocation(line: 46, column: 2, scope: !109)
!127 = distinct !{!127, !110, !128}
!128 = !DILocation(line: 51, column: 2, scope: !105)
!129 = !DILocation(line: 52, column: 2, scope: !97)
!130 = !DILocation(line: 53, column: 1, scope: !97)
!131 = distinct !DISubprogram(name: "getShortName", linkageName: "_ZN13PluggableUSB_12getShortNameEPc", scope: !7, file: !3, line: 55, type: !44, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, declaration: !43, retainedNodes: !50)
!132 = !DILocalVariable(name: "this", arg: 1, scope: !131, type: !59, flags: DIFlagArtificial | DIFlagObjectPointer)
!133 = !DILocation(line: 0, scope: !131)
!134 = !DILocalVariable(name: "iSerialNum", arg: 2, scope: !131, file: !3, line: 55, type: !46)
!135 = !DILocation(line: 55, column: 40, scope: !131)
!136 = !DILocalVariable(name: "node", scope: !131, file: !3, line: 57, type: !18)
!137 = !DILocation(line: 57, column: 22, scope: !131)
!138 = !DILocation(line: 58, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !131, file: !3, line: 58, column: 2)
!140 = !DILocation(line: 58, column: 12, scope: !139)
!141 = !DILocation(line: 58, column: 7, scope: !139)
!142 = !DILocation(line: 58, column: 24, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !3, line: 58, column: 2)
!144 = !DILocation(line: 58, column: 2, scope: !139)
!145 = !DILocation(line: 59, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 58, column: 49)
!147 = !DILocation(line: 59, column: 36, scope: !146)
!148 = !DILocation(line: 59, column: 23, scope: !146)
!149 = !DILocation(line: 59, column: 14, scope: !146)
!150 = !DILocation(line: 60, column: 2, scope: !146)
!151 = !DILocation(line: 58, column: 37, scope: !143)
!152 = !DILocation(line: 58, column: 43, scope: !143)
!153 = !DILocation(line: 58, column: 35, scope: !143)
!154 = !DILocation(line: 58, column: 2, scope: !143)
!155 = distinct !{!155, !144, !156}
!156 = !DILocation(line: 60, column: 2, scope: !139)
!157 = !DILocation(line: 61, column: 3, scope: !131)
!158 = !DILocation(line: 61, column: 14, scope: !131)
!159 = !DILocation(line: 62, column: 1, scope: !131)
!160 = distinct !DISubprogram(name: "setup", linkageName: "_ZN13PluggableUSB_5setupER8USBSetup", scope: !7, file: !3, line: 64, type: !41, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, declaration: !40, retainedNodes: !50)
!161 = !DILocalVariable(name: "this", arg: 1, scope: !160, type: !59, flags: DIFlagArtificial | DIFlagObjectPointer)
!162 = !DILocation(line: 0, scope: !160)
!163 = !DILocalVariable(name: "setup", arg: 2, scope: !160, file: !3, line: 64, type: !36)
!164 = !DILocation(line: 64, column: 37, scope: !160)
!165 = !DILocalVariable(name: "node", scope: !160, file: !3, line: 66, type: !18)
!166 = !DILocation(line: 66, column: 22, scope: !160)
!167 = !DILocation(line: 67, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !160, file: !3, line: 67, column: 2)
!169 = !DILocation(line: 67, column: 12, scope: !168)
!170 = !DILocation(line: 67, column: 7, scope: !168)
!171 = !DILocation(line: 67, column: 24, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !3, line: 67, column: 2)
!173 = !DILocation(line: 67, column: 2, scope: !168)
!174 = !DILocation(line: 68, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 68, column: 7)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 67, column: 49)
!177 = !DILocation(line: 68, column: 19, scope: !175)
!178 = !DILocation(line: 68, column: 13, scope: !175)
!179 = !DILocation(line: 68, column: 7, scope: !176)
!180 = !DILocation(line: 69, column: 4, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !3, line: 68, column: 27)
!182 = !DILocation(line: 71, column: 2, scope: !176)
!183 = !DILocation(line: 67, column: 37, scope: !172)
!184 = !DILocation(line: 67, column: 43, scope: !172)
!185 = !DILocation(line: 67, column: 35, scope: !172)
!186 = !DILocation(line: 67, column: 2, scope: !172)
!187 = distinct !{!187, !173, !188}
!188 = !DILocation(line: 71, column: 2, scope: !168)
!189 = !DILocation(line: 72, column: 2, scope: !160)
!190 = !DILocation(line: 73, column: 1, scope: !160)
!191 = distinct !DISubprogram(name: "plug", linkageName: "_ZN13PluggableUSB_4plugEP18PluggableUSBModule", scope: !7, file: !3, line: 75, type: !25, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, declaration: !24, retainedNodes: !50)
!192 = !DILocalVariable(name: "this", arg: 1, scope: !191, type: !59, flags: DIFlagArtificial | DIFlagObjectPointer)
!193 = !DILocation(line: 0, scope: !191)
!194 = !DILocalVariable(name: "node", arg: 2, scope: !191, file: !3, line: 75, type: !18)
!195 = !DILocation(line: 75, column: 46, scope: !191)
!196 = !DILocation(line: 77, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !3, line: 77, column: 6)
!198 = !DILocation(line: 77, column: 16, scope: !197)
!199 = !DILocation(line: 77, column: 22, scope: !197)
!200 = !DILocation(line: 77, column: 14, scope: !197)
!201 = !DILocation(line: 77, column: 36, scope: !197)
!202 = !DILocation(line: 77, column: 6, scope: !191)
!203 = !DILocation(line: 78, column: 3, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !3, line: 77, column: 53)
!205 = !DILocation(line: 81, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !191, file: !3, line: 81, column: 6)
!207 = !DILocation(line: 81, column: 6, scope: !191)
!208 = !DILocation(line: 82, column: 14, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !3, line: 81, column: 17)
!210 = !DILocation(line: 82, column: 3, scope: !209)
!211 = !DILocation(line: 82, column: 12, scope: !209)
!212 = !DILocation(line: 83, column: 2, scope: !209)
!213 = !DILocalVariable(name: "current", scope: !214, file: !3, line: 84, type: !18)
!214 = distinct !DILexicalBlock(scope: !206, file: !3, line: 83, column: 9)
!215 = !DILocation(line: 84, column: 23, scope: !214)
!216 = !DILocation(line: 84, column: 33, scope: !214)
!217 = !DILocation(line: 85, column: 3, scope: !214)
!218 = !DILocation(line: 85, column: 10, scope: !214)
!219 = !DILocation(line: 85, column: 19, scope: !214)
!220 = !DILocation(line: 86, column: 14, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !3, line: 85, column: 25)
!222 = !DILocation(line: 86, column: 23, scope: !221)
!223 = !DILocation(line: 86, column: 12, scope: !221)
!224 = distinct !{!224, !217, !225}
!225 = !DILocation(line: 87, column: 3, scope: !214)
!226 = !DILocation(line: 88, column: 19, scope: !214)
!227 = !DILocation(line: 88, column: 3, scope: !214)
!228 = !DILocation(line: 88, column: 12, scope: !214)
!229 = !DILocation(line: 88, column: 17, scope: !214)
!230 = !DILocation(line: 91, column: 27, scope: !191)
!231 = !DILocation(line: 91, column: 2, scope: !191)
!232 = !DILocation(line: 91, column: 8, scope: !191)
!233 = !DILocation(line: 91, column: 25, scope: !191)
!234 = !DILocation(line: 92, column: 26, scope: !191)
!235 = !DILocation(line: 92, column: 2, scope: !191)
!236 = !DILocation(line: 92, column: 8, scope: !191)
!237 = !DILocation(line: 92, column: 24, scope: !191)
!238 = !DILocation(line: 93, column: 12, scope: !191)
!239 = !DILocation(line: 93, column: 18, scope: !191)
!240 = !DILocation(line: 93, column: 2, scope: !191)
!241 = !DILocation(line: 93, column: 9, scope: !191)
!242 = !DILocalVariable(name: "i", scope: !243, file: !3, line: 94, type: !11)
!243 = distinct !DILexicalBlock(scope: !191, file: !3, line: 94, column: 2)
!244 = !DILocation(line: 94, column: 15, scope: !243)
!245 = !DILocation(line: 94, column: 7, scope: !243)
!246 = !DILocation(line: 94, column: 22, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !3, line: 94, column: 2)
!248 = !DILocation(line: 94, column: 26, scope: !247)
!249 = !DILocation(line: 94, column: 32, scope: !247)
!250 = !DILocation(line: 94, column: 24, scope: !247)
!251 = !DILocation(line: 94, column: 2, scope: !243)
!252 = !DILocation(line: 95, column: 23, scope: !253)
!253 = distinct !DILexicalBlock(scope: !247, file: !3, line: 94, column: 51)
!254 = !DILocation(line: 95, column: 29, scope: !253)
!255 = !DILocation(line: 95, column: 42, scope: !253)
!256 = !DILocation(line: 95, column: 13, scope: !253)
!257 = !DILocation(line: 95, column: 3, scope: !253)
!258 = !DILocation(line: 95, column: 21, scope: !253)
!259 = !DILocation(line: 96, column: 3, scope: !253)
!260 = !DILocation(line: 96, column: 9, scope: !253)
!261 = !DILocation(line: 97, column: 2, scope: !253)
!262 = !DILocation(line: 94, column: 47, scope: !247)
!263 = !DILocation(line: 94, column: 2, scope: !247)
!264 = distinct !{!264, !251, !265}
!265 = !DILocation(line: 97, column: 2, scope: !243)
!266 = !DILocation(line: 98, column: 2, scope: !191)
!267 = !DILocation(line: 100, column: 1, scope: !191)
!268 = !DILocation(line: 104, column: 2, scope: !2)
!269 = !{!"branch_weights", i32 1, i32 1048575}
!270 = !DILocation(line: 104, column: 23, scope: !2)
!271 = !DILocation(line: 105, column: 2, scope: !2)
!272 = distinct !DISubprogram(name: "PluggableUSB_", linkageName: "_ZN13PluggableUSB_C2Ev", scope: !7, file: !3, line: 108, type: !21, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, declaration: !20, retainedNodes: !50)
!273 = !DILocalVariable(name: "this", arg: 1, scope: !272, type: !59, flags: DIFlagArtificial | DIFlagObjectPointer)
!274 = !DILocation(line: 0, scope: !272)
!275 = !DILocation(line: 108, column: 34, scope: !272)
!276 = !DILocation(line: 109, column: 34, scope: !272)
!277 = !DILocation(line: 110, column: 34, scope: !272)
!278 = !DILocation(line: 113, column: 1, scope: !272)

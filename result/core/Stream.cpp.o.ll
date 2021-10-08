; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Stream.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Stream.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i32 }
%"struct.Stream::MultiTarget" = type { i8*, i32, i32 }
%class.String = type { i8*, i32, i32 }

$_ZN6StringpLEc = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN6Stream9timedReadEv(%class.Stream* %this) #0 align 2 !dbg !17 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Stream*, align 4
  %c = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !26, metadata !DIExpression()), !dbg !28
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c, metadata !29, metadata !DIExpression()), !dbg !30
  %call = call arm_aapcscc i32 @millis(), !dbg !31
  %_startMillis = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 2, !dbg !32
  store i32 %call, i32* %_startMillis, align 4, !dbg !33
  br label %do.body, !dbg !34

do.body:                                          ; preds = %do.cond, %entry
  %0 = bitcast %class.Stream* %this1 to i32 (%class.Stream*)***, !dbg !35
  %vtable = load i32 (%class.Stream*)**, i32 (%class.Stream*)*** %0, align 4, !dbg !35
  %vfn = getelementptr inbounds i32 (%class.Stream*)*, i32 (%class.Stream*)** %vtable, i64 3, !dbg !35
  %1 = load i32 (%class.Stream*)*, i32 (%class.Stream*)** %vfn, align 4, !dbg !35
  %call2 = call arm_aapcscc i32 %1(%class.Stream* %this1), !dbg !35
  store i32 %call2, i32* %c, align 4, !dbg !37
  %2 = load i32, i32* %c, align 4, !dbg !38
  %cmp = icmp sge i32 %2, 0, !dbg !40
  br i1 %cmp, label %if.then, label %if.end, !dbg !41

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %c, align 4, !dbg !42
  store i32 %3, i32* %retval, align 4, !dbg !43
  br label %return, !dbg !43

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !44

do.cond:                                          ; preds = %if.end
  %call3 = call arm_aapcscc i32 @millis(), !dbg !45
  %_startMillis4 = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 2, !dbg !46
  %4 = load i32, i32* %_startMillis4, align 4, !dbg !46
  %sub = sub i32 %call3, %4, !dbg !47
  %_timeout = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 1, !dbg !48
  %5 = load i32, i32* %_timeout, align 4, !dbg !48
  %cmp5 = icmp ult i32 %sub, %5, !dbg !49
  br i1 %cmp5, label %do.body, label %do.end, !dbg !44, !llvm.loop !50

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, align 4, !dbg !52
  br label %return, !dbg !52

return:                                           ; preds = %do.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !53
  ret i32 %6, !dbg !53
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local arm_aapcscc i32 @millis() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN6Stream9timedPeekEv(%class.Stream* %this) #0 align 2 !dbg !54 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Stream*, align 4
  %c = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !56, metadata !DIExpression()), !dbg !57
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c, metadata !58, metadata !DIExpression()), !dbg !59
  %call = call arm_aapcscc i32 @millis(), !dbg !60
  %_startMillis = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 2, !dbg !61
  store i32 %call, i32* %_startMillis, align 4, !dbg !62
  br label %do.body, !dbg !63

do.body:                                          ; preds = %do.cond, %entry
  %0 = bitcast %class.Stream* %this1 to i32 (%class.Stream*)***, !dbg !64
  %vtable = load i32 (%class.Stream*)**, i32 (%class.Stream*)*** %0, align 4, !dbg !64
  %vfn = getelementptr inbounds i32 (%class.Stream*)*, i32 (%class.Stream*)** %vtable, i64 4, !dbg !64
  %1 = load i32 (%class.Stream*)*, i32 (%class.Stream*)** %vfn, align 4, !dbg !64
  %call2 = call arm_aapcscc i32 %1(%class.Stream* %this1), !dbg !64
  store i32 %call2, i32* %c, align 4, !dbg !66
  %2 = load i32, i32* %c, align 4, !dbg !67
  %cmp = icmp sge i32 %2, 0, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %c, align 4, !dbg !71
  store i32 %3, i32* %retval, align 4, !dbg !72
  br label %return, !dbg !72

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !73

do.cond:                                          ; preds = %if.end
  %call3 = call arm_aapcscc i32 @millis(), !dbg !74
  %_startMillis4 = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 2, !dbg !75
  %4 = load i32, i32* %_startMillis4, align 4, !dbg !75
  %sub = sub i32 %call3, %4, !dbg !76
  %_timeout = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 1, !dbg !77
  %5 = load i32, i32* %_timeout, align 4, !dbg !77
  %cmp5 = icmp ult i32 %sub, %5, !dbg !78
  br i1 %cmp5, label %do.body, label %do.end, !dbg !73, !llvm.loop !79

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, align 4, !dbg !81
  br label %return, !dbg !81

return:                                           ; preds = %do.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !82
  ret i32 %6, !dbg !82
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN6Stream13peekNextDigitE13LookaheadModeb(%class.Stream* %this, i8 zeroext %lookahead, i1 zeroext %detectDecimal) #0 align 2 !dbg !83 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Stream*, align 4
  %lookahead.addr = alloca i8, align 1
  %detectDecimal.addr = alloca i8, align 1
  %c = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store i8 %lookahead, i8* %lookahead.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %lookahead.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %frombool = zext i1 %detectDecimal to i8
  store i8 %frombool, i8* %detectDecimal.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %detectDecimal.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c, metadata !94, metadata !DIExpression()), !dbg !95
  br label %while.body, !dbg !96

while.body:                                       ; preds = %entry, %sw.epilog12
  %call = call arm_aapcscc i32 @_ZN6Stream9timedPeekEv(%class.Stream* %this1), !dbg !97
  store i32 %call, i32* %c, align 4, !dbg !99
  %0 = load i32, i32* %c, align 4, !dbg !100
  %cmp = icmp slt i32 %0, 0, !dbg !102
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !103

lor.lhs.false:                                    ; preds = %while.body
  %1 = load i32, i32* %c, align 4, !dbg !104
  %cmp2 = icmp eq i32 %1, 45, !dbg !105
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !106

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c, align 4, !dbg !107
  %cmp4 = icmp sge i32 %2, 48, !dbg !108
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false6, !dbg !109

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %3 = load i32, i32* %c, align 4, !dbg !110
  %cmp5 = icmp sle i32 %3, 57, !dbg !111
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !112

lor.lhs.false6:                                   ; preds = %land.lhs.true, %lor.lhs.false3
  %4 = load i8, i8* %detectDecimal.addr, align 1, !dbg !113
  %tobool = trunc i8 %4 to i1, !dbg !113
  br i1 %tobool, label %land.lhs.true7, label %if.end, !dbg !114

land.lhs.true7:                                   ; preds = %lor.lhs.false6
  %5 = load i32, i32* %c, align 4, !dbg !115
  %cmp8 = icmp eq i32 %5, 46, !dbg !116
  br i1 %cmp8, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %land.lhs.true7, %land.lhs.true, %lor.lhs.false, %while.body
  %6 = load i32, i32* %c, align 4, !dbg !118
  store i32 %6, i32* %retval, align 4, !dbg !119
  br label %return, !dbg !119

if.end:                                           ; preds = %land.lhs.true7, %lor.lhs.false6
  %7 = load i8, i8* %lookahead.addr, align 1, !dbg !120
  %conv = zext i8 %7 to i32, !dbg !120
  switch i32 %conv, label %sw.epilog12 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 0, label %sw.bb11
  ], !dbg !121

sw.bb:                                            ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !122
  br label %return, !dbg !122

sw.bb9:                                           ; preds = %if.end
  %8 = load i32, i32* %c, align 4, !dbg !124
  switch i32 %8, label %sw.default [
    i32 32, label %sw.bb10
    i32 9, label %sw.bb10
    i32 13, label %sw.bb10
    i32 10, label %sw.bb10
  ], !dbg !125

sw.bb10:                                          ; preds = %sw.bb9, %sw.bb9, %sw.bb9, %sw.bb9
  br label %sw.epilog, !dbg !126

sw.default:                                       ; preds = %sw.bb9
  store i32 -1, i32* %retval, align 4, !dbg !128
  br label %return, !dbg !128

sw.epilog:                                        ; preds = %sw.bb10
  br label %sw.bb11, !dbg !129

sw.bb11:                                          ; preds = %if.end, %sw.epilog
  br label %sw.epilog12, !dbg !130

sw.epilog12:                                      ; preds = %if.end, %sw.bb11
  %9 = bitcast %class.Stream* %this1 to i32 (%class.Stream*)***, !dbg !131
  %vtable = load i32 (%class.Stream*)**, i32 (%class.Stream*)*** %9, align 4, !dbg !131
  %vfn = getelementptr inbounds i32 (%class.Stream*)*, i32 (%class.Stream*)** %vtable, i64 3, !dbg !131
  %10 = load i32 (%class.Stream*)*, i32 (%class.Stream*)** %vfn, align 4, !dbg !131
  %call13 = call arm_aapcscc i32 %10(%class.Stream* %this1), !dbg !131
  br label %while.body, !dbg !96, !llvm.loop !132

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !134
  ret i32 %11, !dbg !134
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6Stream10setTimeoutEm(%class.Stream* %this, i32 %timeout) #0 align 2 !dbg !135 {
entry:
  %this.addr = alloca %class.Stream*, align 4
  %timeout.addr = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  %0 = load i32, i32* %timeout.addr, align 4, !dbg !144
  %_timeout = getelementptr inbounds %class.Stream, %class.Stream* %this1, i32 0, i32 1, !dbg !145
  store i32 %0, i32* %_timeout, align 4, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN6Stream4findEPc(%class.Stream* %this, i8* %target) #0 align 2 !dbg !148 {
entry:
  %this.addr = alloca %class.Stream*, align 4
  %target.addr = alloca i8*, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !153, metadata !DIExpression()), !dbg !154
  store i8* %target, i8** %target.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %target.addr, metadata !155, metadata !DIExpression()), !dbg !156
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  %0 = load i8*, i8** %target.addr, align 4, !dbg !157
  %1 = load i8*, i8** %target.addr, align 4, !dbg !158
  %call = call arm_aapcscc i32 @strlen(i8* %1), !dbg !159
  %call2 = call arm_aapcscc zeroext i1 @_ZN6Stream9findUntilEPcjS0_j(%class.Stream* %this1, i8* %0, i32 %call, i8* null, i32 0), !dbg !160
  ret i1 %call2, !dbg !161
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN6Stream9findUntilEPcjS0_j(%class.Stream* %this, i8* %target, i32 %targetLen, i8* %terminator, i32 %termLen) #0 align 2 !dbg !162 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.Stream*, align 4
  %target.addr = alloca i8*, align 4
  %targetLen.addr = alloca i32, align 4
  %terminator.addr = alloca i8*, align 4
  %termLen.addr = alloca i32, align 4
  %t = alloca [1 x %"struct.Stream::MultiTarget"], align 4
  %t3 = alloca [2 x %"struct.Stream::MultiTarget"], align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !169, metadata !DIExpression()), !dbg !170
  store i8* %target, i8** %target.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %target.addr, metadata !171, metadata !DIExpression()), !dbg !172
  store i32 %targetLen, i32* %targetLen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %targetLen.addr, metadata !173, metadata !DIExpression()), !dbg !174
  store i8* %terminator, i8** %terminator.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %terminator.addr, metadata !175, metadata !DIExpression()), !dbg !176
  store i32 %termLen, i32* %termLen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %termLen.addr, metadata !177, metadata !DIExpression()), !dbg !178
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  %0 = load i8*, i8** %terminator.addr, align 4, !dbg !179
  %cmp = icmp eq i8* %0, null, !dbg !181
  br i1 %cmp, label %if.then, label %if.else, !dbg !182

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %"struct.Stream::MultiTarget"]* %t, metadata !183, metadata !DIExpression()), !dbg !195
  %arrayinit.begin = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t, i32 0, i32 0, !dbg !196
  %str = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.begin, i32 0, i32 0, !dbg !197
  %1 = load i8*, i8** %target.addr, align 4, !dbg !198
  store i8* %1, i8** %str, align 4, !dbg !197
  %len = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.begin, i32 0, i32 1, !dbg !197
  %2 = load i32, i32* %targetLen.addr, align 4, !dbg !199
  store i32 %2, i32* %len, align 4, !dbg !197
  %index = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.begin, i32 0, i32 2, !dbg !197
  store i32 0, i32* %index, align 4, !dbg !197
  %arraydecay = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t, i32 0, i32 0, !dbg !200
  %call = call arm_aapcscc i32 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this1, %"struct.Stream::MultiTarget"* %arraydecay, i32 1), !dbg !201
  %cmp2 = icmp eq i32 %call, 0, !dbg !202
  %3 = zext i1 %cmp2 to i64, !dbg !201
  %cond = select i1 %cmp2, i32 1, i32 0, !dbg !201
  %tobool = icmp ne i32 %cond, 0, !dbg !201
  store i1 %tobool, i1* %retval, align 1, !dbg !203
  br label %return, !dbg !203

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [2 x %"struct.Stream::MultiTarget"]* %t3, metadata !204, metadata !DIExpression()), !dbg !209
  %arrayinit.begin4 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i32 0, i32 0, !dbg !210
  %str5 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.begin4, i32 0, i32 0, !dbg !211
  %4 = load i8*, i8** %target.addr, align 4, !dbg !212
  store i8* %4, i8** %str5, align 4, !dbg !211
  %len6 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.begin4, i32 0, i32 1, !dbg !211
  %5 = load i32, i32* %targetLen.addr, align 4, !dbg !213
  store i32 %5, i32* %len6, align 4, !dbg !211
  %index7 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.begin4, i32 0, i32 2, !dbg !211
  store i32 0, i32* %index7, align 4, !dbg !211
  %arrayinit.element = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.begin4, i32 1, !dbg !210
  %str8 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.element, i32 0, i32 0, !dbg !214
  %6 = load i8*, i8** %terminator.addr, align 4, !dbg !215
  store i8* %6, i8** %str8, align 4, !dbg !214
  %len9 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.element, i32 0, i32 1, !dbg !214
  %7 = load i32, i32* %termLen.addr, align 4, !dbg !216
  store i32 %7, i32* %len9, align 4, !dbg !214
  %index10 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %arrayinit.element, i32 0, i32 2, !dbg !214
  store i32 0, i32* %index10, align 4, !dbg !214
  %arraydecay11 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i32 0, i32 0, !dbg !217
  %call12 = call arm_aapcscc i32 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this1, %"struct.Stream::MultiTarget"* %arraydecay11, i32 2), !dbg !218
  %cmp13 = icmp eq i32 %call12, 0, !dbg !219
  %8 = zext i1 %cmp13 to i64, !dbg !218
  %cond14 = select i1 %cmp13, i32 1, i32 0, !dbg !218
  %tobool15 = icmp ne i32 %cond14, 0, !dbg !218
  store i1 %tobool15, i1* %retval, align 1, !dbg !220
  br label %return, !dbg !220

return:                                           ; preds = %if.else, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !221
  ret i1 %9, !dbg !221
}

declare dso_local arm_aapcscc i32 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN6Stream4findEPcj(%class.Stream* %this, i8* %target, i32 %length) #0 align 2 !dbg !222 {
entry:
  %this.addr = alloca %class.Stream*, align 4
  %target.addr = alloca i8*, align 4
  %length.addr = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !226, metadata !DIExpression()), !dbg !227
  store i8* %target, i8** %target.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %target.addr, metadata !228, metadata !DIExpression()), !dbg !229
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !230, metadata !DIExpression()), !dbg !231
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  %0 = load i8*, i8** %target.addr, align 4, !dbg !232
  %1 = load i32, i32* %length.addr, align 4, !dbg !233
  %call = call arm_aapcscc zeroext i1 @_ZN6Stream9findUntilEPcjS0_j(%class.Stream* %this1, i8* %0, i32 %1, i8* null, i32 0), !dbg !234
  ret i1 %call, !dbg !235
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc zeroext i1 @_ZN6Stream9findUntilEPcS0_(%class.Stream* %this, i8* %target, i8* %terminator) #0 align 2 !dbg !236 {
entry:
  %this.addr = alloca %class.Stream*, align 4
  %target.addr = alloca i8*, align 4
  %terminator.addr = alloca i8*, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !240, metadata !DIExpression()), !dbg !241
  store i8* %target, i8** %target.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %target.addr, metadata !242, metadata !DIExpression()), !dbg !243
  store i8* %terminator, i8** %terminator.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %terminator.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  %0 = load i8*, i8** %target.addr, align 4, !dbg !246
  %1 = load i8*, i8** %target.addr, align 4, !dbg !247
  %call = call arm_aapcscc i32 @strlen(i8* %1), !dbg !248
  %2 = load i8*, i8** %terminator.addr, align 4, !dbg !249
  %3 = load i8*, i8** %terminator.addr, align 4, !dbg !250
  %call2 = call arm_aapcscc i32 @strlen(i8* %3), !dbg !251
  %call3 = call arm_aapcscc zeroext i1 @_ZN6Stream9findUntilEPcjS0_j(%class.Stream* %this1, i8* %0, i32 %call, i8* %2, i32 %call2), !dbg !252
  ret i1 %call3, !dbg !253
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this, %"struct.Stream::MultiTarget"* %targets, i32 %tCount) #0 align 2 !dbg !254 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Stream*, align 4
  %targets.addr = alloca %"struct.Stream::MultiTarget"*, align 4
  %tCount.addr = alloca i32, align 4
  %t = alloca %"struct.Stream::MultiTarget"*, align 4
  %c = alloca i32, align 4
  %t6 = alloca %"struct.Stream::MultiTarget"*, align 4
  %origIndex = alloca i32, align 4
  %diff = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !259, metadata !DIExpression()), !dbg !260
  store %"struct.Stream::MultiTarget"* %targets, %"struct.Stream::MultiTarget"** %targets.addr, align 4
  call void @llvm.dbg.declare(metadata %"struct.Stream::MultiTarget"** %targets.addr, metadata !261, metadata !DIExpression()), !dbg !262
  store i32 %tCount, i32* %tCount.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tCount.addr, metadata !263, metadata !DIExpression()), !dbg !264
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %"struct.Stream::MultiTarget"** %t, metadata !265, metadata !DIExpression()), !dbg !267
  %0 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %targets.addr, align 4, !dbg !268
  store %"struct.Stream::MultiTarget"* %0, %"struct.Stream::MultiTarget"** %t, align 4, !dbg !267
  br label %for.cond, !dbg !269

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t, align 4, !dbg !270
  %2 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %targets.addr, align 4, !dbg !272
  %3 = load i32, i32* %tCount.addr, align 4, !dbg !273
  %add.ptr = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %2, i32 %3, !dbg !274
  %cmp = icmp ult %"struct.Stream::MultiTarget"* %1, %add.ptr, !dbg !275
  br i1 %cmp, label %for.body, label %for.end, !dbg !276

for.body:                                         ; preds = %for.cond
  %4 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t, align 4, !dbg !277
  %len = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %4, i32 0, i32 1, !dbg !280
  %5 = load i32, i32* %len, align 4, !dbg !280
  %cmp2 = icmp ule i32 %5, 0, !dbg !281
  br i1 %cmp2, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %for.body
  %6 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t, align 4, !dbg !283
  %7 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %targets.addr, align 4, !dbg !284
  %sub.ptr.lhs.cast = ptrtoint %"struct.Stream::MultiTarget"* %6 to i32, !dbg !285
  %sub.ptr.rhs.cast = ptrtoint %"struct.Stream::MultiTarget"* %7 to i32, !dbg !285
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !285
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12, !dbg !285
  store i32 %sub.ptr.div, i32* %retval, align 4, !dbg !286
  br label %return, !dbg !286

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !287

for.inc:                                          ; preds = %if.end
  %8 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t, align 4, !dbg !288
  %incdec.ptr = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %8, i32 1, !dbg !288
  store %"struct.Stream::MultiTarget"* %incdec.ptr, %"struct.Stream::MultiTarget"** %t, align 4, !dbg !288
  br label %for.cond, !dbg !289, !llvm.loop !290

for.end:                                          ; preds = %for.cond
  br label %while.body, !dbg !292

while.body:                                       ; preds = %for.end, %for.end67
  call void @llvm.dbg.declare(metadata i32* %c, metadata !293, metadata !DIExpression()), !dbg !295
  %call = call arm_aapcscc i32 @_ZN6Stream9timedReadEv(%class.Stream* %this1), !dbg !296
  store i32 %call, i32* %c, align 4, !dbg !295
  %9 = load i32, i32* %c, align 4, !dbg !297
  %cmp3 = icmp slt i32 %9, 0, !dbg !299
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !300

if.then4:                                         ; preds = %while.body
  store i32 -1, i32* %retval, align 4, !dbg !301
  br label %return, !dbg !301

if.end5:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata %"struct.Stream::MultiTarget"** %t6, metadata !302, metadata !DIExpression()), !dbg !304
  %10 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %targets.addr, align 4, !dbg !305
  store %"struct.Stream::MultiTarget"* %10, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !304
  br label %for.cond7, !dbg !306

for.cond7:                                        ; preds = %for.inc65, %if.end5
  %11 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !307
  %12 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %targets.addr, align 4, !dbg !309
  %13 = load i32, i32* %tCount.addr, align 4, !dbg !310
  %add.ptr8 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %12, i32 %13, !dbg !311
  %cmp9 = icmp ult %"struct.Stream::MultiTarget"* %11, %add.ptr8, !dbg !312
  br i1 %cmp9, label %for.body10, label %for.end67, !dbg !313

for.body10:                                       ; preds = %for.cond7
  %14 = load i32, i32* %c, align 4, !dbg !314
  %15 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !317
  %str = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %15, i32 0, i32 0, !dbg !318
  %16 = load i8*, i8** %str, align 4, !dbg !318
  %17 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !319
  %index = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %17, i32 0, i32 2, !dbg !320
  %18 = load i32, i32* %index, align 4, !dbg !320
  %arrayidx = getelementptr inbounds i8, i8* %16, i32 %18, !dbg !317
  %19 = load i8, i8* %arrayidx, align 1, !dbg !317
  %conv = zext i8 %19 to i32, !dbg !317
  %cmp11 = icmp eq i32 %14, %conv, !dbg !321
  br i1 %cmp11, label %if.then12, label %if.end21, !dbg !322

if.then12:                                        ; preds = %for.body10
  %20 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !323
  %index13 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %20, i32 0, i32 2, !dbg !326
  %21 = load i32, i32* %index13, align 4, !dbg !327
  %inc = add i32 %21, 1, !dbg !327
  store i32 %inc, i32* %index13, align 4, !dbg !327
  %22 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !328
  %len14 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %22, i32 0, i32 1, !dbg !329
  %23 = load i32, i32* %len14, align 4, !dbg !329
  %cmp15 = icmp eq i32 %inc, %23, !dbg !330
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !331

if.then16:                                        ; preds = %if.then12
  %24 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !332
  %25 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %targets.addr, align 4, !dbg !333
  %sub.ptr.lhs.cast17 = ptrtoint %"struct.Stream::MultiTarget"* %24 to i32, !dbg !334
  %sub.ptr.rhs.cast18 = ptrtoint %"struct.Stream::MultiTarget"* %25 to i32, !dbg !334
  %sub.ptr.sub19 = sub i32 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !334
  %sub.ptr.div20 = sdiv exact i32 %sub.ptr.sub19, 12, !dbg !334
  store i32 %sub.ptr.div20, i32* %retval, align 4, !dbg !335
  br label %return, !dbg !335

if.else:                                          ; preds = %if.then12
  br label %for.inc65, !dbg !336

if.end21:                                         ; preds = %for.body10
  %26 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !337
  %index22 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %26, i32 0, i32 2, !dbg !339
  %27 = load i32, i32* %index22, align 4, !dbg !339
  %cmp23 = icmp eq i32 %27, 0, !dbg !340
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !341

if.then24:                                        ; preds = %if.end21
  br label %for.inc65, !dbg !342

if.end25:                                         ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %origIndex, metadata !343, metadata !DIExpression()), !dbg !344
  %28 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !345
  %index26 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %28, i32 0, i32 2, !dbg !346
  %29 = load i32, i32* %index26, align 4, !dbg !346
  store i32 %29, i32* %origIndex, align 4, !dbg !344
  br label %do.body, !dbg !347

do.body:                                          ; preds = %do.cond, %if.end25
  %30 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !348
  %index27 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %30, i32 0, i32 2, !dbg !350
  %31 = load i32, i32* %index27, align 4, !dbg !351
  %dec = add i32 %31, -1, !dbg !351
  store i32 %dec, i32* %index27, align 4, !dbg !351
  %32 = load i32, i32* %c, align 4, !dbg !352
  %33 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !354
  %str28 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %33, i32 0, i32 0, !dbg !355
  %34 = load i8*, i8** %str28, align 4, !dbg !355
  %35 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !356
  %index29 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %35, i32 0, i32 2, !dbg !357
  %36 = load i32, i32* %index29, align 4, !dbg !357
  %arrayidx30 = getelementptr inbounds i8, i8* %34, i32 %36, !dbg !354
  %37 = load i8, i8* %arrayidx30, align 1, !dbg !354
  %conv31 = zext i8 %37 to i32, !dbg !354
  %cmp32 = icmp ne i32 %32, %conv31, !dbg !358
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !359

if.then33:                                        ; preds = %do.body
  br label %do.cond, !dbg !360

if.end34:                                         ; preds = %do.body
  %38 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !361
  %index35 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %38, i32 0, i32 2, !dbg !363
  %39 = load i32, i32* %index35, align 4, !dbg !363
  %cmp36 = icmp eq i32 %39, 0, !dbg !364
  br i1 %cmp36, label %if.then37, label %if.end40, !dbg !365

if.then37:                                        ; preds = %if.end34
  %40 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !366
  %index38 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %40, i32 0, i32 2, !dbg !368
  %41 = load i32, i32* %index38, align 4, !dbg !369
  %inc39 = add i32 %41, 1, !dbg !369
  store i32 %inc39, i32* %index38, align 4, !dbg !369
  br label %do.end, !dbg !370

if.end40:                                         ; preds = %if.end34
  call void @llvm.dbg.declare(metadata i32* %diff, metadata !371, metadata !DIExpression()), !dbg !372
  %42 = load i32, i32* %origIndex, align 4, !dbg !373
  %43 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !374
  %index41 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %43, i32 0, i32 2, !dbg !375
  %44 = load i32, i32* %index41, align 4, !dbg !375
  %sub = sub i32 %42, %44, !dbg !376
  store i32 %sub, i32* %diff, align 4, !dbg !372
  call void @llvm.dbg.declare(metadata i32* %i, metadata !377, metadata !DIExpression()), !dbg !378
  store i32 0, i32* %i, align 4, !dbg !379
  br label %for.cond42, !dbg !381

for.cond42:                                       ; preds = %for.inc55, %if.end40
  %45 = load i32, i32* %i, align 4, !dbg !382
  %46 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !384
  %index43 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %46, i32 0, i32 2, !dbg !385
  %47 = load i32, i32* %index43, align 4, !dbg !385
  %cmp44 = icmp ult i32 %45, %47, !dbg !386
  br i1 %cmp44, label %for.body45, label %for.end57, !dbg !387

for.body45:                                       ; preds = %for.cond42
  %48 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !388
  %str46 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %48, i32 0, i32 0, !dbg !391
  %49 = load i8*, i8** %str46, align 4, !dbg !391
  %50 = load i32, i32* %i, align 4, !dbg !392
  %arrayidx47 = getelementptr inbounds i8, i8* %49, i32 %50, !dbg !388
  %51 = load i8, i8* %arrayidx47, align 1, !dbg !388
  %conv48 = zext i8 %51 to i32, !dbg !388
  %52 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !393
  %str49 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %52, i32 0, i32 0, !dbg !394
  %53 = load i8*, i8** %str49, align 4, !dbg !394
  %54 = load i32, i32* %i, align 4, !dbg !395
  %55 = load i32, i32* %diff, align 4, !dbg !396
  %add = add i32 %54, %55, !dbg !397
  %arrayidx50 = getelementptr inbounds i8, i8* %53, i32 %add, !dbg !393
  %56 = load i8, i8* %arrayidx50, align 1, !dbg !393
  %conv51 = zext i8 %56 to i32, !dbg !393
  %cmp52 = icmp ne i32 %conv48, %conv51, !dbg !398
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !399

if.then53:                                        ; preds = %for.body45
  br label %for.end57, !dbg !400

if.end54:                                         ; preds = %for.body45
  br label %for.inc55, !dbg !401

for.inc55:                                        ; preds = %if.end54
  %57 = load i32, i32* %i, align 4, !dbg !402
  %inc56 = add i32 %57, 1, !dbg !402
  store i32 %inc56, i32* %i, align 4, !dbg !402
  br label %for.cond42, !dbg !403, !llvm.loop !404

for.end57:                                        ; preds = %if.then53, %for.cond42
  %58 = load i32, i32* %i, align 4, !dbg !406
  %59 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !408
  %index58 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %59, i32 0, i32 2, !dbg !409
  %60 = load i32, i32* %index58, align 4, !dbg !409
  %cmp59 = icmp eq i32 %58, %60, !dbg !410
  br i1 %cmp59, label %if.then60, label %if.end63, !dbg !411

if.then60:                                        ; preds = %for.end57
  %61 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !412
  %index61 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %61, i32 0, i32 2, !dbg !414
  %62 = load i32, i32* %index61, align 4, !dbg !415
  %inc62 = add i32 %62, 1, !dbg !415
  store i32 %inc62, i32* %index61, align 4, !dbg !415
  br label %do.end, !dbg !416

if.end63:                                         ; preds = %for.end57
  br label %do.cond, !dbg !417

do.cond:                                          ; preds = %if.end63, %if.then33
  %63 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !418
  %index64 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %63, i32 0, i32 2, !dbg !419
  %64 = load i32, i32* %index64, align 4, !dbg !419
  %tobool = icmp ne i32 %64, 0, !dbg !418
  br i1 %tobool, label %do.body, label %do.end, !dbg !417, !llvm.loop !420

do.end:                                           ; preds = %do.cond, %if.then60, %if.then37
  br label %for.inc65, !dbg !422

for.inc65:                                        ; preds = %do.end, %if.then24, %if.else
  %65 = load %"struct.Stream::MultiTarget"*, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !423
  %incdec.ptr66 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %65, i32 1, !dbg !423
  store %"struct.Stream::MultiTarget"* %incdec.ptr66, %"struct.Stream::MultiTarget"** %t6, align 4, !dbg !423
  br label %for.cond7, !dbg !424, !llvm.loop !425

for.end67:                                        ; preds = %for.cond7
  br label %while.body, !dbg !292, !llvm.loop !427

return:                                           ; preds = %if.then16, %if.then4, %if.then
  %66 = load i32, i32* %retval, align 4, !dbg !429
  ret i32 %66, !dbg !429
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN6Stream8parseIntE13LookaheadModec(%class.Stream* %this, i8 zeroext %lookahead, i8 zeroext %ignore) #0 align 2 !dbg !430 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Stream*, align 4
  %lookahead.addr = alloca i8, align 1
  %ignore.addr = alloca i8, align 1
  %isNegative = alloca i8, align 1
  %value = alloca i32, align 4
  %c = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !435, metadata !DIExpression()), !dbg !436
  store i8 %lookahead, i8* %lookahead.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %lookahead.addr, metadata !437, metadata !DIExpression()), !dbg !438
  store i8 %ignore, i8* %ignore.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ignore.addr, metadata !439, metadata !DIExpression()), !dbg !440
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i8* %isNegative, metadata !441, metadata !DIExpression()), !dbg !442
  store i8 0, i8* %isNegative, align 1, !dbg !442
  call void @llvm.dbg.declare(metadata i32* %value, metadata !443, metadata !DIExpression()), !dbg !444
  store i32 0, i32* %value, align 4, !dbg !444
  call void @llvm.dbg.declare(metadata i32* %c, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load i8, i8* %lookahead.addr, align 1, !dbg !447
  %call = call arm_aapcscc i32 @_ZN6Stream13peekNextDigitE13LookaheadModeb(%class.Stream* %this1, i8 zeroext %0, i1 zeroext false), !dbg !448
  store i32 %call, i32* %c, align 4, !dbg !449
  %1 = load i32, i32* %c, align 4, !dbg !450
  %cmp = icmp slt i32 %1, 0, !dbg !452
  br i1 %cmp, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !454
  br label %return, !dbg !454

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !455

do.body:                                          ; preds = %lor.end, %if.end
  %2 = load i32, i32* %c, align 4, !dbg !456
  %3 = load i8, i8* %ignore.addr, align 1, !dbg !459
  %conv = zext i8 %3 to i32, !dbg !459
  %cmp2 = icmp eq i32 %2, %conv, !dbg !460
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !461

if.then3:                                         ; preds = %do.body
  br label %if.end12, !dbg !461

if.else:                                          ; preds = %do.body
  %4 = load i32, i32* %c, align 4, !dbg !462
  %cmp4 = icmp eq i32 %4, 45, !dbg !464
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !465

if.then5:                                         ; preds = %if.else
  store i8 1, i8* %isNegative, align 1, !dbg !466
  br label %if.end11, !dbg !467

if.else6:                                         ; preds = %if.else
  %5 = load i32, i32* %c, align 4, !dbg !468
  %cmp7 = icmp sge i32 %5, 48, !dbg !470
  br i1 %cmp7, label %land.lhs.true, label %if.end10, !dbg !471

land.lhs.true:                                    ; preds = %if.else6
  %6 = load i32, i32* %c, align 4, !dbg !472
  %cmp8 = icmp sle i32 %6, 57, !dbg !473
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !474

if.then9:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %value, align 4, !dbg !475
  %mul = mul nsw i32 %7, 10, !dbg !476
  %8 = load i32, i32* %c, align 4, !dbg !477
  %add = add nsw i32 %mul, %8, !dbg !478
  %sub = sub nsw i32 %add, 48, !dbg !479
  store i32 %sub, i32* %value, align 4, !dbg !480
  br label %if.end10, !dbg !481

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.else6
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then3
  %9 = bitcast %class.Stream* %this1 to i32 (%class.Stream*)***, !dbg !482
  %vtable = load i32 (%class.Stream*)**, i32 (%class.Stream*)*** %9, align 4, !dbg !482
  %vfn = getelementptr inbounds i32 (%class.Stream*)*, i32 (%class.Stream*)** %vtable, i64 3, !dbg !482
  %10 = load i32 (%class.Stream*)*, i32 (%class.Stream*)** %vfn, align 4, !dbg !482
  %call13 = call arm_aapcscc i32 %10(%class.Stream* %this1), !dbg !482
  %call14 = call arm_aapcscc i32 @_ZN6Stream9timedPeekEv(%class.Stream* %this1), !dbg !483
  store i32 %call14, i32* %c, align 4, !dbg !484
  br label %do.cond, !dbg !485

do.cond:                                          ; preds = %if.end12
  %11 = load i32, i32* %c, align 4, !dbg !486
  %cmp15 = icmp sge i32 %11, 48, !dbg !487
  br i1 %cmp15, label %land.lhs.true16, label %lor.rhs, !dbg !488

land.lhs.true16:                                  ; preds = %do.cond
  %12 = load i32, i32* %c, align 4, !dbg !489
  %cmp17 = icmp sle i32 %12, 57, !dbg !490
  br i1 %cmp17, label %lor.end, label %lor.rhs, !dbg !491

lor.rhs:                                          ; preds = %land.lhs.true16, %do.cond
  %13 = load i32, i32* %c, align 4, !dbg !492
  %14 = load i8, i8* %ignore.addr, align 1, !dbg !493
  %conv18 = zext i8 %14 to i32, !dbg !493
  %cmp19 = icmp eq i32 %13, %conv18, !dbg !494
  br label %lor.end, !dbg !491

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true16
  %15 = phi i1 [ true, %land.lhs.true16 ], [ %cmp19, %lor.rhs ]
  br i1 %15, label %do.body, label %do.end, !dbg !485, !llvm.loop !495

do.end:                                           ; preds = %lor.end
  %16 = load i8, i8* %isNegative, align 1, !dbg !497
  %tobool = trunc i8 %16 to i1, !dbg !497
  br i1 %tobool, label %if.then20, label %if.end22, !dbg !499

if.then20:                                        ; preds = %do.end
  %17 = load i32, i32* %value, align 4, !dbg !500
  %sub21 = sub nsw i32 0, %17, !dbg !501
  store i32 %sub21, i32* %value, align 4, !dbg !502
  br label %if.end22, !dbg !503

if.end22:                                         ; preds = %if.then20, %do.end
  %18 = load i32, i32* %value, align 4, !dbg !504
  store i32 %18, i32* %retval, align 4, !dbg !505
  br label %return, !dbg !505

return:                                           ; preds = %if.end22, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !506
  ret i32 %19, !dbg !506
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc float @_ZN6Stream10parseFloatE13LookaheadModec(%class.Stream* %this, i8 zeroext %lookahead, i8 zeroext %ignore) #0 align 2 !dbg !507 {
entry:
  %retval = alloca float, align 4
  %this.addr = alloca %class.Stream*, align 4
  %lookahead.addr = alloca i8, align 1
  %ignore.addr = alloca i8, align 1
  %isNegative = alloca i8, align 1
  %isFraction = alloca i8, align 1
  %value = alloca i32, align 4
  %c = alloca i32, align 4
  %fraction = alloca float, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i8 %lookahead, i8* %lookahead.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %lookahead.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i8 %ignore, i8* %ignore.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ignore.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i8* %isNegative, metadata !518, metadata !DIExpression()), !dbg !519
  store i8 0, i8* %isNegative, align 1, !dbg !519
  call void @llvm.dbg.declare(metadata i8* %isFraction, metadata !520, metadata !DIExpression()), !dbg !521
  store i8 0, i8* %isFraction, align 1, !dbg !521
  call void @llvm.dbg.declare(metadata i32* %value, metadata !522, metadata !DIExpression()), !dbg !523
  store i32 0, i32* %value, align 4, !dbg !523
  call void @llvm.dbg.declare(metadata i32* %c, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata float* %fraction, metadata !526, metadata !DIExpression()), !dbg !527
  store float 1.000000e+00, float* %fraction, align 4, !dbg !527
  %0 = load i8, i8* %lookahead.addr, align 1, !dbg !528
  %call = call arm_aapcscc i32 @_ZN6Stream13peekNextDigitE13LookaheadModeb(%class.Stream* %this1, i8 zeroext %0, i1 zeroext true), !dbg !529
  store i32 %call, i32* %c, align 4, !dbg !530
  %1 = load i32, i32* %c, align 4, !dbg !531
  %cmp = icmp slt i32 %1, 0, !dbg !533
  br i1 %cmp, label %if.then, label %if.end, !dbg !534

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, align 4, !dbg !535
  br label %return, !dbg !535

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !536

do.body:                                          ; preds = %lor.end, %if.end
  %2 = load i32, i32* %c, align 4, !dbg !537
  %3 = load i8, i8* %ignore.addr, align 1, !dbg !540
  %conv = zext i8 %3 to i32, !dbg !540
  %cmp2 = icmp eq i32 %2, %conv, !dbg !541
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !542

if.then3:                                         ; preds = %do.body
  br label %if.end21, !dbg !542

if.else:                                          ; preds = %do.body
  %4 = load i32, i32* %c, align 4, !dbg !543
  %cmp4 = icmp eq i32 %4, 45, !dbg !545
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !546

if.then5:                                         ; preds = %if.else
  store i8 1, i8* %isNegative, align 1, !dbg !547
  br label %if.end20, !dbg !548

if.else6:                                         ; preds = %if.else
  %5 = load i32, i32* %c, align 4, !dbg !549
  %cmp7 = icmp eq i32 %5, 46, !dbg !551
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !552

if.then8:                                         ; preds = %if.else6
  store i8 1, i8* %isFraction, align 1, !dbg !553
  br label %if.end19, !dbg !554

if.else9:                                         ; preds = %if.else6
  %6 = load i32, i32* %c, align 4, !dbg !555
  %cmp10 = icmp sge i32 %6, 48, !dbg !557
  br i1 %cmp10, label %land.lhs.true, label %if.end18, !dbg !558

land.lhs.true:                                    ; preds = %if.else9
  %7 = load i32, i32* %c, align 4, !dbg !559
  %cmp11 = icmp sle i32 %7, 57, !dbg !560
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !561

if.then12:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %value, align 4, !dbg !562
  %mul = mul nsw i32 %8, 10, !dbg !564
  %9 = load i32, i32* %c, align 4, !dbg !565
  %add = add nsw i32 %mul, %9, !dbg !566
  %sub = sub nsw i32 %add, 48, !dbg !567
  store i32 %sub, i32* %value, align 4, !dbg !568
  %10 = load i8, i8* %isFraction, align 1, !dbg !569
  %tobool = trunc i8 %10 to i1, !dbg !569
  br i1 %tobool, label %if.then13, label %if.end17, !dbg !571

if.then13:                                        ; preds = %if.then12
  %11 = load float, float* %fraction, align 4, !dbg !572
  %conv14 = fpext float %11 to double, !dbg !572
  %mul15 = fmul double %conv14, 1.000000e-01, !dbg !572
  %conv16 = fptrunc double %mul15 to float, !dbg !572
  store float %conv16, float* %fraction, align 4, !dbg !572
  br label %if.end17, !dbg !573

if.end17:                                         ; preds = %if.then13, %if.then12
  br label %if.end18, !dbg !574

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %if.else9
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then8
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then5
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then3
  %12 = bitcast %class.Stream* %this1 to i32 (%class.Stream*)***, !dbg !575
  %vtable = load i32 (%class.Stream*)**, i32 (%class.Stream*)*** %12, align 4, !dbg !575
  %vfn = getelementptr inbounds i32 (%class.Stream*)*, i32 (%class.Stream*)** %vtable, i64 3, !dbg !575
  %13 = load i32 (%class.Stream*)*, i32 (%class.Stream*)** %vfn, align 4, !dbg !575
  %call22 = call arm_aapcscc i32 %13(%class.Stream* %this1), !dbg !575
  %call23 = call arm_aapcscc i32 @_ZN6Stream9timedPeekEv(%class.Stream* %this1), !dbg !576
  store i32 %call23, i32* %c, align 4, !dbg !577
  br label %do.cond, !dbg !578

do.cond:                                          ; preds = %if.end21
  %14 = load i32, i32* %c, align 4, !dbg !579
  %cmp24 = icmp sge i32 %14, 48, !dbg !580
  br i1 %cmp24, label %land.lhs.true25, label %lor.lhs.false, !dbg !581

land.lhs.true25:                                  ; preds = %do.cond
  %15 = load i32, i32* %c, align 4, !dbg !582
  %cmp26 = icmp sle i32 %15, 57, !dbg !583
  br i1 %cmp26, label %lor.end, label %lor.lhs.false, !dbg !584

lor.lhs.false:                                    ; preds = %land.lhs.true25, %do.cond
  %16 = load i32, i32* %c, align 4, !dbg !585
  %cmp27 = icmp eq i32 %16, 46, !dbg !586
  br i1 %cmp27, label %land.lhs.true28, label %lor.rhs, !dbg !587

land.lhs.true28:                                  ; preds = %lor.lhs.false
  %17 = load i8, i8* %isFraction, align 1, !dbg !588
  %tobool29 = trunc i8 %17 to i1, !dbg !588
  br i1 %tobool29, label %lor.rhs, label %lor.end, !dbg !589

lor.rhs:                                          ; preds = %land.lhs.true28, %lor.lhs.false
  %18 = load i32, i32* %c, align 4, !dbg !590
  %19 = load i8, i8* %ignore.addr, align 1, !dbg !591
  %conv30 = zext i8 %19 to i32, !dbg !591
  %cmp31 = icmp eq i32 %18, %conv30, !dbg !592
  br label %lor.end, !dbg !589

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true28, %land.lhs.true25
  %20 = phi i1 [ true, %land.lhs.true28 ], [ true, %land.lhs.true25 ], [ %cmp31, %lor.rhs ]
  br i1 %20, label %do.body, label %do.end, !dbg !578, !llvm.loop !593

do.end:                                           ; preds = %lor.end
  %21 = load i8, i8* %isNegative, align 1, !dbg !595
  %tobool32 = trunc i8 %21 to i1, !dbg !595
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !597

if.then33:                                        ; preds = %do.end
  %22 = load i32, i32* %value, align 4, !dbg !598
  %sub34 = sub nsw i32 0, %22, !dbg !599
  store i32 %sub34, i32* %value, align 4, !dbg !600
  br label %if.end35, !dbg !601

if.end35:                                         ; preds = %if.then33, %do.end
  %23 = load i8, i8* %isFraction, align 1, !dbg !602
  %tobool36 = trunc i8 %23 to i1, !dbg !602
  br i1 %tobool36, label %if.then37, label %if.else40, !dbg !604

if.then37:                                        ; preds = %if.end35
  %24 = load i32, i32* %value, align 4, !dbg !605
  %conv38 = sitofp i32 %24 to float, !dbg !605
  %25 = load float, float* %fraction, align 4, !dbg !606
  %mul39 = fmul float %conv38, %25, !dbg !607
  store float %mul39, float* %retval, align 4, !dbg !608
  br label %return, !dbg !608

if.else40:                                        ; preds = %if.end35
  %26 = load i32, i32* %value, align 4, !dbg !609
  %conv41 = sitofp i32 %26 to float, !dbg !609
  store float %conv41, float* %retval, align 4, !dbg !610
  br label %return, !dbg !610

return:                                           ; preds = %if.else40, %if.then37, %if.then
  %27 = load float, float* %retval, align 4, !dbg !611
  ret float %27, !dbg !611
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN6Stream9readBytesEPcj(%class.Stream* %this, i8* %buffer, i32 %length) #0 align 2 !dbg !612 {
entry:
  %this.addr = alloca %class.Stream*, align 4
  %buffer.addr = alloca i8*, align 4
  %length.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %c = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !616, metadata !DIExpression()), !dbg !617
  store i8* %buffer, i8** %buffer.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !618, metadata !DIExpression()), !dbg !619
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count, metadata !622, metadata !DIExpression()), !dbg !623
  store i32 0, i32* %count, align 4, !dbg !623
  br label %while.cond, !dbg !624

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %count, align 4, !dbg !625
  %1 = load i32, i32* %length.addr, align 4, !dbg !626
  %cmp = icmp ult i32 %0, %1, !dbg !627
  br i1 %cmp, label %while.body, label %while.end, !dbg !624

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %c, metadata !628, metadata !DIExpression()), !dbg !630
  %call = call arm_aapcscc i32 @_ZN6Stream9timedReadEv(%class.Stream* %this1), !dbg !631
  store i32 %call, i32* %c, align 4, !dbg !630
  %2 = load i32, i32* %c, align 4, !dbg !632
  %cmp2 = icmp slt i32 %2, 0, !dbg !634
  br i1 %cmp2, label %if.then, label %if.end, !dbg !635

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !636

if.end:                                           ; preds = %while.body
  %3 = load i32, i32* %c, align 4, !dbg !637
  %conv = trunc i32 %3 to i8, !dbg !637
  %4 = load i8*, i8** %buffer.addr, align 4, !dbg !638
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1, !dbg !638
  store i8* %incdec.ptr, i8** %buffer.addr, align 4, !dbg !638
  store i8 %conv, i8* %4, align 1, !dbg !639
  %5 = load i32, i32* %count, align 4, !dbg !640
  %inc = add i32 %5, 1, !dbg !640
  store i32 %inc, i32* %count, align 4, !dbg !640
  br label %while.cond, !dbg !624, !llvm.loop !641

while.end:                                        ; preds = %if.then, %while.cond
  %6 = load i32, i32* %count, align 4, !dbg !643
  ret i32 %6, !dbg !644
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @_ZN6Stream14readBytesUntilEcPcj(%class.Stream* %this, i8 zeroext %terminator, i8* %buffer, i32 %length) #0 align 2 !dbg !645 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.Stream*, align 4
  %terminator.addr = alloca i8, align 1
  %buffer.addr = alloca i8*, align 4
  %length.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %c = alloca i32, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !649, metadata !DIExpression()), !dbg !650
  store i8 %terminator, i8* %terminator.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %terminator.addr, metadata !651, metadata !DIExpression()), !dbg !652
  store i8* %buffer, i8** %buffer.addr, align 4
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !653, metadata !DIExpression()), !dbg !654
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !655, metadata !DIExpression()), !dbg !656
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  %0 = load i32, i32* %length.addr, align 4, !dbg !657
  %cmp = icmp ult i32 %0, 1, !dbg !659
  br i1 %cmp, label %if.then, label %if.end, !dbg !660

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !661
  br label %return, !dbg !661

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %index, metadata !662, metadata !DIExpression()), !dbg !663
  store i32 0, i32* %index, align 4, !dbg !663
  br label %while.cond, !dbg !664

while.cond:                                       ; preds = %if.end6, %if.end
  %1 = load i32, i32* %index, align 4, !dbg !665
  %2 = load i32, i32* %length.addr, align 4, !dbg !666
  %cmp2 = icmp ult i32 %1, %2, !dbg !667
  br i1 %cmp2, label %while.body, label %while.end, !dbg !664

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %c, metadata !668, metadata !DIExpression()), !dbg !670
  %call = call arm_aapcscc i32 @_ZN6Stream9timedReadEv(%class.Stream* %this1), !dbg !671
  store i32 %call, i32* %c, align 4, !dbg !670
  %3 = load i32, i32* %c, align 4, !dbg !672
  %cmp3 = icmp slt i32 %3, 0, !dbg !674
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !675

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i32, i32* %c, align 4, !dbg !676
  %5 = load i8, i8* %terminator.addr, align 1, !dbg !677
  %conv = zext i8 %5 to i32, !dbg !677
  %cmp4 = icmp eq i32 %4, %conv, !dbg !678
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !679

if.then5:                                         ; preds = %lor.lhs.false, %while.body
  br label %while.end, !dbg !680

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %c, align 4, !dbg !681
  %conv7 = trunc i32 %6 to i8, !dbg !681
  %7 = load i8*, i8** %buffer.addr, align 4, !dbg !682
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1, !dbg !682
  store i8* %incdec.ptr, i8** %buffer.addr, align 4, !dbg !682
  store i8 %conv7, i8* %7, align 1, !dbg !683
  %8 = load i32, i32* %index, align 4, !dbg !684
  %inc = add i32 %8, 1, !dbg !684
  store i32 %inc, i32* %index, align 4, !dbg !684
  br label %while.cond, !dbg !664, !llvm.loop !685

while.end:                                        ; preds = %if.then5, %while.cond
  %9 = load i32, i32* %index, align 4, !dbg !687
  store i32 %9, i32* %retval, align 4, !dbg !688
  br label %return, !dbg !688

return:                                           ; preds = %while.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !689
  ret i32 %10, !dbg !689
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6Stream10readStringEv(%class.String* noalias sret %agg.result, %class.Stream* %this) #0 align 2 !dbg !690 {
entry:
  %result.ptr = alloca i8*, align 4
  %this.addr = alloca %class.Stream*, align 4
  %nrvo = alloca i1, align 1
  %c = alloca i32, align 4
  %0 = bitcast %class.String* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !950, metadata !DIExpression()), !dbg !951
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  store i1 false, i1* %nrvo, align 1, !dbg !952
  call void @llvm.dbg.declare(metadata i8** %result.ptr, metadata !953, metadata !DIExpression(DW_OP_deref)), !dbg !954
  %call = call arm_aapcscc %class.String* @_ZN6StringC1EPKc(%class.String* %agg.result, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)), !dbg !954
  call void @llvm.dbg.declare(metadata i32* %c, metadata !955, metadata !DIExpression()), !dbg !956
  %call2 = call arm_aapcscc i32 @_ZN6Stream9timedReadEv(%class.Stream* %this1), !dbg !957
  store i32 %call2, i32* %c, align 4, !dbg !956
  br label %while.cond, !dbg !958

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %c, align 4, !dbg !959
  %cmp = icmp sge i32 %1, 0, !dbg !960
  br i1 %cmp, label %while.body, label %while.end, !dbg !958

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %c, align 4, !dbg !961
  %conv = trunc i32 %2 to i8, !dbg !961
  %call3 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringpLEc(%class.String* %agg.result, i8 zeroext %conv), !dbg !963
  %call4 = call arm_aapcscc i32 @_ZN6Stream9timedReadEv(%class.Stream* %this1), !dbg !964
  store i32 %call4, i32* %c, align 4, !dbg !965
  br label %while.cond, !dbg !958, !llvm.loop !966

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %nrvo, align 1, !dbg !968
  %nrvo.val = load i1, i1* %nrvo, align 1, !dbg !969
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused, !dbg !969

nrvo.unused:                                      ; preds = %while.end
  %call5 = call arm_aapcscc %class.String* @_ZN6StringD1Ev(%class.String* %agg.result) #4, !dbg !969
  br label %nrvo.skipdtor, !dbg !969

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %while.end
  ret void, !dbg !969
}

declare dso_local arm_aapcscc %class.String* @_ZN6StringC1EPKc(%class.String* returned, i8*) unnamed_addr #2

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringpLEc(%class.String* %this, i8 zeroext %c) #0 comdat align 2 !dbg !970 {
entry:
  %this.addr = alloca %class.String*, align 4
  %c.addr = alloca i8, align 1
  store %class.String* %this, %class.String** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.String** %this.addr, metadata !971, metadata !DIExpression()), !dbg !973
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !974, metadata !DIExpression()), !dbg !975
  %this1 = load %class.String*, %class.String** %this.addr, align 4
  %0 = load i8, i8* %c.addr, align 1, !dbg !976
  %call = call arm_aapcscc zeroext i8 @_ZN6String6concatEc(%class.String* %this1, i8 zeroext %0), !dbg !977
  ret %class.String* %this1, !dbg !978
}

; Function Attrs: nounwind
declare dso_local arm_aapcscc %class.String* @_ZN6StringD1Ev(%class.String* returned) unnamed_addr #3

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_ZN6Stream15readStringUntilEc(%class.String* noalias sret %agg.result, %class.Stream* %this, i8 zeroext %terminator) #0 align 2 !dbg !979 {
entry:
  %result.ptr = alloca i8*, align 4
  %this.addr = alloca %class.Stream*, align 4
  %terminator.addr = alloca i8, align 1
  %nrvo = alloca i1, align 1
  %c = alloca i32, align 4
  %0 = bitcast %class.String* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 4
  store %class.Stream* %this, %class.Stream** %this.addr, align 4
  call void @llvm.dbg.declare(metadata %class.Stream** %this.addr, metadata !983, metadata !DIExpression()), !dbg !984
  store i8 %terminator, i8* %terminator.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %terminator.addr, metadata !985, metadata !DIExpression()), !dbg !986
  %this1 = load %class.Stream*, %class.Stream** %this.addr, align 4
  store i1 false, i1* %nrvo, align 1, !dbg !987
  call void @llvm.dbg.declare(metadata i8** %result.ptr, metadata !988, metadata !DIExpression(DW_OP_deref)), !dbg !989
  %call = call arm_aapcscc %class.String* @_ZN6StringC1EPKc(%class.String* %agg.result, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)), !dbg !989
  call void @llvm.dbg.declare(metadata i32* %c, metadata !990, metadata !DIExpression()), !dbg !991
  %call2 = call arm_aapcscc i32 @_ZN6Stream9timedReadEv(%class.Stream* %this1), !dbg !992
  store i32 %call2, i32* %c, align 4, !dbg !991
  br label %while.cond, !dbg !993

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %c, align 4, !dbg !994
  %cmp = icmp sge i32 %1, 0, !dbg !995
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !996

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %c, align 4, !dbg !997
  %3 = load i8, i8* %terminator.addr, align 1, !dbg !998
  %conv = zext i8 %3 to i32, !dbg !998
  %cmp3 = icmp ne i32 %2, %conv, !dbg !999
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !984
  br i1 %4, label %while.body, label %while.end, !dbg !993

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %c, align 4, !dbg !1000
  %conv4 = trunc i32 %5 to i8, !dbg !1000
  %call5 = call arm_aapcscc dereferenceable(12) %class.String* @_ZN6StringpLEc(%class.String* %agg.result, i8 zeroext %conv4), !dbg !1002
  %call6 = call arm_aapcscc i32 @_ZN6Stream9timedReadEv(%class.Stream* %this1), !dbg !1003
  store i32 %call6, i32* %c, align 4, !dbg !1004
  br label %while.cond, !dbg !993, !llvm.loop !1005

while.end:                                        ; preds = %land.end
  store i1 true, i1* %nrvo, align 1, !dbg !1007
  %nrvo.val = load i1, i1* %nrvo, align 1, !dbg !1008
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused, !dbg !1008

nrvo.unused:                                      ; preds = %while.end
  %call7 = call arm_aapcscc %class.String* @_ZN6StringD1Ev(%class.String* %agg.result) #4, !dbg !1008
  br label %nrvo.skipdtor, !dbg !1008

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %while.end
  ret void, !dbg !1008
}

declare dso_local arm_aapcscc zeroext i8 @_ZN6String6concatEc(%class.String*, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Stream.cpp", directory: "/home/aaa/llvm-arduino-due")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "LookaheadMode", file: !4, line: 41, baseType: !5, size: 8, elements: !6, identifier: "_ZTS13LookaheadMode")
!4 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Stream.h", directory: "/home/aaa")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "SKIP_ALL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "SKIP_NONE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "SKIP_WHITESPACE", value: 2, isUnsigned: true)
!10 = !{!11}
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 1, !"min_enum_size", i32 1}
!16 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!17 = distinct !DISubprogram(name: "timedRead", linkageName: "_ZN6Stream9timedReadEv", scope: !19, file: !18, line: 31, type: !20, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !24, retainedNodes: !25)
!18 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Stream.cpp", directory: "/home/aaa")
!19 = !DICompositeType(tag: DW_TAG_class_type, name: "Stream", file: !4, line: 49, flags: DIFlagFwdDecl, identifier: "_ZTS6Stream")
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!24 = !DISubprogram(name: "timedRead", linkageName: "_ZN6Stream9timedReadEv", scope: !19, file: !4, line: 54, type: !20, scopeLine: 54, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!25 = !{}
!26 = !DILocalVariable(name: "this", arg: 1, scope: !17, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!28 = !DILocation(line: 0, scope: !17)
!29 = !DILocalVariable(name: "c", scope: !17, file: !18, line: 33, type: !22)
!30 = !DILocation(line: 33, column: 7, scope: !17)
!31 = !DILocation(line: 34, column: 18, scope: !17)
!32 = !DILocation(line: 34, column: 3, scope: !17)
!33 = !DILocation(line: 34, column: 16, scope: !17)
!34 = !DILocation(line: 35, column: 3, scope: !17)
!35 = !DILocation(line: 36, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !17, file: !18, line: 35, column: 6)
!37 = !DILocation(line: 36, column: 7, scope: !36)
!38 = !DILocation(line: 37, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !18, line: 37, column: 9)
!40 = !DILocation(line: 37, column: 11, scope: !39)
!41 = !DILocation(line: 37, column: 9, scope: !36)
!42 = !DILocation(line: 37, column: 24, scope: !39)
!43 = !DILocation(line: 37, column: 17, scope: !39)
!44 = !DILocation(line: 38, column: 3, scope: !36)
!45 = !DILocation(line: 38, column: 11, scope: !17)
!46 = !DILocation(line: 38, column: 22, scope: !17)
!47 = !DILocation(line: 38, column: 20, scope: !17)
!48 = !DILocation(line: 38, column: 37, scope: !17)
!49 = !DILocation(line: 38, column: 35, scope: !17)
!50 = distinct !{!50, !34, !51}
!51 = !DILocation(line: 38, column: 45, scope: !17)
!52 = !DILocation(line: 39, column: 3, scope: !17)
!53 = !DILocation(line: 40, column: 1, scope: !17)
!54 = distinct !DISubprogram(name: "timedPeek", linkageName: "_ZN6Stream9timedPeekEv", scope: !19, file: !18, line: 43, type: !20, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !55, retainedNodes: !25)
!55 = !DISubprogram(name: "timedPeek", linkageName: "_ZN6Stream9timedPeekEv", scope: !19, file: !4, line: 55, type: !20, scopeLine: 55, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!56 = !DILocalVariable(name: "this", arg: 1, scope: !54, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!57 = !DILocation(line: 0, scope: !54)
!58 = !DILocalVariable(name: "c", scope: !54, file: !18, line: 45, type: !22)
!59 = !DILocation(line: 45, column: 7, scope: !54)
!60 = !DILocation(line: 46, column: 18, scope: !54)
!61 = !DILocation(line: 46, column: 3, scope: !54)
!62 = !DILocation(line: 46, column: 16, scope: !54)
!63 = !DILocation(line: 47, column: 3, scope: !54)
!64 = !DILocation(line: 48, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !54, file: !18, line: 47, column: 6)
!66 = !DILocation(line: 48, column: 7, scope: !65)
!67 = !DILocation(line: 49, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !18, line: 49, column: 9)
!69 = !DILocation(line: 49, column: 11, scope: !68)
!70 = !DILocation(line: 49, column: 9, scope: !65)
!71 = !DILocation(line: 49, column: 24, scope: !68)
!72 = !DILocation(line: 49, column: 17, scope: !68)
!73 = !DILocation(line: 50, column: 3, scope: !65)
!74 = !DILocation(line: 50, column: 11, scope: !54)
!75 = !DILocation(line: 50, column: 22, scope: !54)
!76 = !DILocation(line: 50, column: 20, scope: !54)
!77 = !DILocation(line: 50, column: 37, scope: !54)
!78 = !DILocation(line: 50, column: 35, scope: !54)
!79 = distinct !{!79, !63, !80}
!80 = !DILocation(line: 50, column: 45, scope: !54)
!81 = !DILocation(line: 51, column: 3, scope: !54)
!82 = !DILocation(line: 52, column: 1, scope: !54)
!83 = distinct !DISubprogram(name: "peekNextDigit", linkageName: "_ZN6Stream13peekNextDigitE13LookaheadModeb", scope: !19, file: !18, line: 56, type: !84, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !87, retainedNodes: !25)
!84 = !DISubroutineType(types: !85)
!85 = !{!22, !23, !3, !86}
!86 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!87 = !DISubprogram(name: "peekNextDigit", linkageName: "_ZN6Stream13peekNextDigitE13LookaheadModeb", scope: !19, file: !4, line: 56, type: !84, scopeLine: 56, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!88 = !DILocalVariable(name: "this", arg: 1, scope: !83, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = !DILocation(line: 0, scope: !83)
!90 = !DILocalVariable(name: "lookahead", arg: 2, scope: !83, file: !18, line: 56, type: !3)
!91 = !DILocation(line: 56, column: 41, scope: !83)
!92 = !DILocalVariable(name: "detectDecimal", arg: 3, scope: !83, file: !18, line: 56, type: !86)
!93 = !DILocation(line: 56, column: 57, scope: !83)
!94 = !DILocalVariable(name: "c", scope: !83, file: !18, line: 58, type: !22)
!95 = !DILocation(line: 58, column: 7, scope: !83)
!96 = !DILocation(line: 59, column: 3, scope: !83)
!97 = !DILocation(line: 60, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !83, file: !18, line: 59, column: 13)
!99 = !DILocation(line: 60, column: 7, scope: !98)
!100 = !DILocation(line: 62, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !18, line: 62, column: 9)
!102 = !DILocation(line: 62, column: 11, scope: !101)
!103 = !DILocation(line: 62, column: 15, scope: !101)
!104 = !DILocation(line: 63, column: 9, scope: !101)
!105 = !DILocation(line: 63, column: 11, scope: !101)
!106 = !DILocation(line: 63, column: 18, scope: !101)
!107 = !DILocation(line: 64, column: 10, scope: !101)
!108 = !DILocation(line: 64, column: 12, scope: !101)
!109 = !DILocation(line: 64, column: 19, scope: !101)
!110 = !DILocation(line: 64, column: 22, scope: !101)
!111 = !DILocation(line: 64, column: 24, scope: !101)
!112 = !DILocation(line: 64, column: 32, scope: !101)
!113 = !DILocation(line: 65, column: 10, scope: !101)
!114 = !DILocation(line: 65, column: 24, scope: !101)
!115 = !DILocation(line: 65, column: 27, scope: !101)
!116 = !DILocation(line: 65, column: 29, scope: !101)
!117 = !DILocation(line: 62, column: 9, scope: !98)
!118 = !DILocation(line: 65, column: 45, scope: !101)
!119 = !DILocation(line: 65, column: 38, scope: !101)
!120 = !DILocation(line: 67, column: 13, scope: !98)
!121 = !DILocation(line: 67, column: 5, scope: !98)
!122 = !DILocation(line: 68, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !98, file: !18, line: 67, column: 24)
!124 = !DILocation(line: 70, column: 21, scope: !123)
!125 = !DILocation(line: 70, column: 13, scope: !123)
!126 = !DILocation(line: 74, column: 28, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !18, line: 70, column: 24)
!128 = !DILocation(line: 75, column: 26, scope: !127)
!129 = !DILocation(line: 76, column: 13, scope: !127)
!130 = !DILocation(line: 78, column: 13, scope: !123)
!131 = !DILocation(line: 80, column: 5, scope: !98)
!132 = distinct !{!132, !96, !133}
!133 = !DILocation(line: 81, column: 3, scope: !83)
!134 = !DILocation(line: 82, column: 1, scope: !83)
!135 = distinct !DISubprogram(name: "setTimeout", linkageName: "_ZN6Stream10setTimeoutEm", scope: !19, file: !18, line: 87, type: !136, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !139, retainedNodes: !25)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !23, !138}
!138 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!139 = !DISubprogram(name: "setTimeout", linkageName: "_ZN6Stream10setTimeoutEm", scope: !19, file: !4, line: 68, type: !136, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!140 = !DILocalVariable(name: "this", arg: 1, scope: !135, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!141 = !DILocation(line: 0, scope: !135)
!142 = !DILocalVariable(name: "timeout", arg: 2, scope: !135, file: !18, line: 87, type: !138)
!143 = !DILocation(line: 87, column: 39, scope: !135)
!144 = !DILocation(line: 89, column: 14, scope: !135)
!145 = !DILocation(line: 89, column: 3, scope: !135)
!146 = !DILocation(line: 89, column: 12, scope: !135)
!147 = !DILocation(line: 90, column: 1, scope: !135)
!148 = distinct !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPc", scope: !19, file: !18, line: 93, type: !149, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !152, retainedNodes: !25)
!149 = !DISubroutineType(types: !150)
!150 = !{!86, !23, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!152 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPc", scope: !19, file: !4, line: 71, type: !149, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!153 = !DILocalVariable(name: "this", arg: 1, scope: !148, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!154 = !DILocation(line: 0, scope: !148)
!155 = !DILocalVariable(name: "target", arg: 2, scope: !148, file: !18, line: 93, type: !151)
!156 = !DILocation(line: 93, column: 26, scope: !148)
!157 = !DILocation(line: 95, column: 20, scope: !148)
!158 = !DILocation(line: 95, column: 35, scope: !148)
!159 = !DILocation(line: 95, column: 28, scope: !148)
!160 = !DILocation(line: 95, column: 10, scope: !148)
!161 = !DILocation(line: 95, column: 3, scope: !148)
!162 = distinct !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcjS0_j", scope: !19, file: !18, line: 114, type: !163, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !168, retainedNodes: !25)
!163 = !DISubroutineType(types: !164)
!164 = !{!86, !23, !151, !165, !151, !165}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !166, line: 46, baseType: !167)
!166 = !DIFile(filename: "JJS_Project1/src/build/lib/clang/10.0.1/include/stddef.h", directory: "/home/aaa")
!167 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!168 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcjS0_j", scope: !19, file: !4, line: 84, type: !163, scopeLine: 84, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!169 = !DILocalVariable(name: "this", arg: 1, scope: !162, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!170 = !DILocation(line: 0, scope: !162)
!171 = !DILocalVariable(name: "target", arg: 2, scope: !162, file: !18, line: 114, type: !151)
!172 = !DILocation(line: 114, column: 30, scope: !162)
!173 = !DILocalVariable(name: "targetLen", arg: 3, scope: !162, file: !18, line: 114, type: !165)
!174 = !DILocation(line: 114, column: 45, scope: !162)
!175 = !DILocalVariable(name: "terminator", arg: 4, scope: !162, file: !18, line: 114, type: !151)
!176 = !DILocation(line: 114, column: 62, scope: !162)
!177 = !DILocalVariable(name: "termLen", arg: 5, scope: !162, file: !18, line: 114, type: !165)
!178 = !DILocation(line: 114, column: 81, scope: !162)
!179 = !DILocation(line: 116, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !162, file: !18, line: 116, column: 7)
!181 = !DILocation(line: 116, column: 18, scope: !180)
!182 = !DILocation(line: 116, column: 7, scope: !162)
!183 = !DILocalVariable(name: "t", scope: !184, file: !18, line: 117, type: !185)
!184 = distinct !DILexicalBlock(scope: !180, file: !18, line: 116, column: 27)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 96, elements: !193)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MultiTarget", scope: !19, file: !4, line: 118, size: 96, flags: DIFlagTypePassByValue, elements: !187, identifier: "_ZTSN6Stream11MultiTargetE")
!187 = !{!188, !191, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !186, file: !4, line: 119, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !186, file: !4, line: 120, baseType: !165, size: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !186, file: !4, line: 121, baseType: !165, size: 32, offset: 64)
!193 = !{!194}
!194 = !DISubrange(count: 1)
!195 = !DILocation(line: 117, column: 17, scope: !184)
!196 = !DILocation(line: 117, column: 24, scope: !184)
!197 = !DILocation(line: 117, column: 25, scope: !184)
!198 = !DILocation(line: 117, column: 26, scope: !184)
!199 = !DILocation(line: 117, column: 34, scope: !184)
!200 = !DILocation(line: 118, column: 22, scope: !184)
!201 = !DILocation(line: 118, column: 12, scope: !184)
!202 = !DILocation(line: 118, column: 28, scope: !184)
!203 = !DILocation(line: 118, column: 5, scope: !184)
!204 = !DILocalVariable(name: "t", scope: !205, file: !18, line: 120, type: !206)
!205 = distinct !DILexicalBlock(scope: !180, file: !18, line: 119, column: 10)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 192, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 2)
!209 = !DILocation(line: 120, column: 17, scope: !205)
!210 = !DILocation(line: 120, column: 24, scope: !205)
!211 = !DILocation(line: 120, column: 25, scope: !205)
!212 = !DILocation(line: 120, column: 26, scope: !205)
!213 = !DILocation(line: 120, column: 34, scope: !205)
!214 = !DILocation(line: 120, column: 49, scope: !205)
!215 = !DILocation(line: 120, column: 50, scope: !205)
!216 = !DILocation(line: 120, column: 62, scope: !205)
!217 = !DILocation(line: 121, column: 22, scope: !205)
!218 = !DILocation(line: 121, column: 12, scope: !205)
!219 = !DILocation(line: 121, column: 28, scope: !205)
!220 = !DILocation(line: 121, column: 5, scope: !205)
!221 = !DILocation(line: 123, column: 1, scope: !162)
!222 = distinct !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPcj", scope: !19, file: !18, line: 100, type: !223, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !225, retainedNodes: !25)
!223 = !DISubroutineType(types: !224)
!224 = !{!86, !23, !151, !165}
!225 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPcj", scope: !19, file: !4, line: 75, type: !223, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!226 = !DILocalVariable(name: "this", arg: 1, scope: !222, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!227 = !DILocation(line: 0, scope: !222)
!228 = !DILocalVariable(name: "target", arg: 2, scope: !222, file: !18, line: 100, type: !151)
!229 = !DILocation(line: 100, column: 25, scope: !222)
!230 = !DILocalVariable(name: "length", arg: 3, scope: !222, file: !18, line: 100, type: !165)
!231 = !DILocation(line: 100, column: 40, scope: !222)
!232 = !DILocation(line: 102, column: 20, scope: !222)
!233 = !DILocation(line: 102, column: 28, scope: !222)
!234 = !DILocation(line: 102, column: 10, scope: !222)
!235 = !DILocation(line: 102, column: 3, scope: !222)
!236 = distinct !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcS0_", scope: !19, file: !18, line: 106, type: !237, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !239, retainedNodes: !25)
!237 = !DISubroutineType(types: !238)
!238 = !{!86, !23, !151, !151}
!239 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcS0_", scope: !19, file: !4, line: 81, type: !237, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!240 = !DILocalVariable(name: "this", arg: 1, scope: !236, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!241 = !DILocation(line: 0, scope: !236)
!242 = !DILocalVariable(name: "target", arg: 2, scope: !236, file: !18, line: 106, type: !151)
!243 = !DILocation(line: 106, column: 31, scope: !236)
!244 = !DILocalVariable(name: "terminator", arg: 3, scope: !236, file: !18, line: 106, type: !151)
!245 = !DILocation(line: 106, column: 45, scope: !236)
!246 = !DILocation(line: 108, column: 20, scope: !236)
!247 = !DILocation(line: 108, column: 35, scope: !236)
!248 = !DILocation(line: 108, column: 28, scope: !236)
!249 = !DILocation(line: 108, column: 44, scope: !236)
!250 = !DILocation(line: 108, column: 63, scope: !236)
!251 = !DILocation(line: 108, column: 56, scope: !236)
!252 = !DILocation(line: 108, column: 10, scope: !236)
!253 = !DILocation(line: 108, column: 3, scope: !236)
!254 = distinct !DISubprogram(name: "findMulti", linkageName: "_ZN6Stream9findMultiEPNS_11MultiTargetEi", scope: !19, file: !18, line: 256, type: !255, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !258, retainedNodes: !25)
!255 = !DISubroutineType(types: !256)
!256 = !{!22, !23, !257, !22}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!258 = !DISubprogram(name: "findMulti", linkageName: "_ZN6Stream9findMultiEPNS_11MultiTargetEi", scope: !19, file: !4, line: 126, type: !255, scopeLine: 126, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!259 = !DILocalVariable(name: "this", arg: 1, scope: !254, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!260 = !DILocation(line: 0, scope: !254)
!261 = !DILocalVariable(name: "targets", arg: 2, scope: !254, file: !18, line: 256, type: !257)
!262 = !DILocation(line: 256, column: 52, scope: !254)
!263 = !DILocalVariable(name: "tCount", arg: 3, scope: !254, file: !18, line: 256, type: !22)
!264 = !DILocation(line: 256, column: 65, scope: !254)
!265 = !DILocalVariable(name: "t", scope: !266, file: !18, line: 259, type: !257)
!266 = distinct !DILexicalBlock(scope: !254, file: !18, line: 259, column: 3)
!267 = !DILocation(line: 259, column: 28, scope: !266)
!268 = !DILocation(line: 259, column: 32, scope: !266)
!269 = !DILocation(line: 259, column: 8, scope: !266)
!270 = !DILocation(line: 259, column: 41, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !18, line: 259, column: 3)
!272 = !DILocation(line: 259, column: 45, scope: !271)
!273 = !DILocation(line: 259, column: 53, scope: !271)
!274 = !DILocation(line: 259, column: 52, scope: !271)
!275 = !DILocation(line: 259, column: 43, scope: !271)
!276 = !DILocation(line: 259, column: 3, scope: !266)
!277 = !DILocation(line: 260, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !18, line: 260, column: 9)
!279 = distinct !DILexicalBlock(scope: !271, file: !18, line: 259, column: 66)
!280 = !DILocation(line: 260, column: 12, scope: !278)
!281 = !DILocation(line: 260, column: 16, scope: !278)
!282 = !DILocation(line: 260, column: 9, scope: !279)
!283 = !DILocation(line: 261, column: 14, scope: !278)
!284 = !DILocation(line: 261, column: 18, scope: !278)
!285 = !DILocation(line: 261, column: 16, scope: !278)
!286 = !DILocation(line: 261, column: 7, scope: !278)
!287 = !DILocation(line: 262, column: 3, scope: !279)
!288 = !DILocation(line: 259, column: 61, scope: !271)
!289 = !DILocation(line: 259, column: 3, scope: !271)
!290 = distinct !{!290, !276, !291}
!291 = !DILocation(line: 262, column: 3, scope: !266)
!292 = !DILocation(line: 264, column: 3, scope: !254)
!293 = !DILocalVariable(name: "c", scope: !294, file: !18, line: 265, type: !22)
!294 = distinct !DILexicalBlock(scope: !254, file: !18, line: 264, column: 13)
!295 = !DILocation(line: 265, column: 9, scope: !294)
!296 = !DILocation(line: 265, column: 13, scope: !294)
!297 = !DILocation(line: 266, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !18, line: 266, column: 9)
!299 = !DILocation(line: 266, column: 11, scope: !298)
!300 = !DILocation(line: 266, column: 9, scope: !294)
!301 = !DILocation(line: 267, column: 7, scope: !298)
!302 = !DILocalVariable(name: "t", scope: !303, file: !18, line: 269, type: !257)
!303 = distinct !DILexicalBlock(scope: !294, file: !18, line: 269, column: 5)
!304 = !DILocation(line: 269, column: 30, scope: !303)
!305 = !DILocation(line: 269, column: 34, scope: !303)
!306 = !DILocation(line: 269, column: 10, scope: !303)
!307 = !DILocation(line: 269, column: 43, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !18, line: 269, column: 5)
!309 = !DILocation(line: 269, column: 47, scope: !308)
!310 = !DILocation(line: 269, column: 55, scope: !308)
!311 = !DILocation(line: 269, column: 54, scope: !308)
!312 = !DILocation(line: 269, column: 45, scope: !308)
!313 = !DILocation(line: 269, column: 5, scope: !303)
!314 = !DILocation(line: 271, column: 11, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !18, line: 271, column: 11)
!316 = distinct !DILexicalBlock(scope: !308, file: !18, line: 269, column: 68)
!317 = !DILocation(line: 271, column: 16, scope: !315)
!318 = !DILocation(line: 271, column: 19, scope: !315)
!319 = !DILocation(line: 271, column: 23, scope: !315)
!320 = !DILocation(line: 271, column: 26, scope: !315)
!321 = !DILocation(line: 271, column: 13, scope: !315)
!322 = !DILocation(line: 271, column: 11, scope: !316)
!323 = !DILocation(line: 272, column: 15, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !18, line: 272, column: 13)
!325 = distinct !DILexicalBlock(scope: !315, file: !18, line: 271, column: 34)
!326 = !DILocation(line: 272, column: 18, scope: !324)
!327 = !DILocation(line: 272, column: 13, scope: !324)
!328 = !DILocation(line: 272, column: 27, scope: !324)
!329 = !DILocation(line: 272, column: 30, scope: !324)
!330 = !DILocation(line: 272, column: 24, scope: !324)
!331 = !DILocation(line: 272, column: 13, scope: !325)
!332 = !DILocation(line: 273, column: 18, scope: !324)
!333 = !DILocation(line: 273, column: 22, scope: !324)
!334 = !DILocation(line: 273, column: 20, scope: !324)
!335 = !DILocation(line: 273, column: 11, scope: !324)
!336 = !DILocation(line: 275, column: 11, scope: !324)
!337 = !DILocation(line: 282, column: 11, scope: !338)
!338 = distinct !DILexicalBlock(scope: !316, file: !18, line: 282, column: 11)
!339 = !DILocation(line: 282, column: 14, scope: !338)
!340 = !DILocation(line: 282, column: 20, scope: !338)
!341 = !DILocation(line: 282, column: 11, scope: !316)
!342 = !DILocation(line: 283, column: 9, scope: !338)
!343 = !DILocalVariable(name: "origIndex", scope: !316, file: !18, line: 285, type: !22)
!344 = !DILocation(line: 285, column: 11, scope: !316)
!345 = !DILocation(line: 285, column: 23, scope: !316)
!346 = !DILocation(line: 285, column: 26, scope: !316)
!347 = !DILocation(line: 286, column: 7, scope: !316)
!348 = !DILocation(line: 287, column: 11, scope: !349)
!349 = distinct !DILexicalBlock(scope: !316, file: !18, line: 286, column: 10)
!350 = !DILocation(line: 287, column: 14, scope: !349)
!351 = !DILocation(line: 287, column: 9, scope: !349)
!352 = !DILocation(line: 289, column: 13, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !18, line: 289, column: 13)
!354 = !DILocation(line: 289, column: 18, scope: !353)
!355 = !DILocation(line: 289, column: 21, scope: !353)
!356 = !DILocation(line: 289, column: 25, scope: !353)
!357 = !DILocation(line: 289, column: 28, scope: !353)
!358 = !DILocation(line: 289, column: 15, scope: !353)
!359 = !DILocation(line: 289, column: 13, scope: !349)
!360 = !DILocation(line: 290, column: 11, scope: !353)
!361 = !DILocation(line: 293, column: 13, scope: !362)
!362 = distinct !DILexicalBlock(scope: !349, file: !18, line: 293, column: 13)
!363 = !DILocation(line: 293, column: 16, scope: !362)
!364 = !DILocation(line: 293, column: 22, scope: !362)
!365 = !DILocation(line: 293, column: 13, scope: !349)
!366 = !DILocation(line: 294, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !18, line: 293, column: 28)
!368 = !DILocation(line: 294, column: 14, scope: !367)
!369 = !DILocation(line: 294, column: 19, scope: !367)
!370 = !DILocation(line: 295, column: 11, scope: !367)
!371 = !DILocalVariable(name: "diff", scope: !349, file: !18, line: 299, type: !22)
!372 = !DILocation(line: 299, column: 13, scope: !349)
!373 = !DILocation(line: 299, column: 20, scope: !349)
!374 = !DILocation(line: 299, column: 32, scope: !349)
!375 = !DILocation(line: 299, column: 35, scope: !349)
!376 = !DILocation(line: 299, column: 30, scope: !349)
!377 = !DILocalVariable(name: "i", scope: !349, file: !18, line: 300, type: !165)
!378 = !DILocation(line: 300, column: 16, scope: !349)
!379 = !DILocation(line: 301, column: 16, scope: !380)
!380 = distinct !DILexicalBlock(scope: !349, file: !18, line: 301, column: 9)
!381 = !DILocation(line: 301, column: 14, scope: !380)
!382 = !DILocation(line: 301, column: 21, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !18, line: 301, column: 9)
!384 = !DILocation(line: 301, column: 25, scope: !383)
!385 = !DILocation(line: 301, column: 28, scope: !383)
!386 = !DILocation(line: 301, column: 23, scope: !383)
!387 = !DILocation(line: 301, column: 9, scope: !380)
!388 = !DILocation(line: 302, column: 15, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !18, line: 302, column: 15)
!390 = distinct !DILexicalBlock(scope: !383, file: !18, line: 301, column: 40)
!391 = !DILocation(line: 302, column: 18, scope: !389)
!392 = !DILocation(line: 302, column: 22, scope: !389)
!393 = !DILocation(line: 302, column: 28, scope: !389)
!394 = !DILocation(line: 302, column: 31, scope: !389)
!395 = !DILocation(line: 302, column: 35, scope: !389)
!396 = !DILocation(line: 302, column: 39, scope: !389)
!397 = !DILocation(line: 302, column: 37, scope: !389)
!398 = !DILocation(line: 302, column: 25, scope: !389)
!399 = !DILocation(line: 302, column: 15, scope: !390)
!400 = !DILocation(line: 303, column: 13, scope: !389)
!401 = !DILocation(line: 304, column: 9, scope: !390)
!402 = !DILocation(line: 301, column: 35, scope: !383)
!403 = !DILocation(line: 301, column: 9, scope: !383)
!404 = distinct !{!404, !387, !405}
!405 = !DILocation(line: 304, column: 9, scope: !380)
!406 = !DILocation(line: 308, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !349, file: !18, line: 308, column: 13)
!408 = !DILocation(line: 308, column: 18, scope: !407)
!409 = !DILocation(line: 308, column: 21, scope: !407)
!410 = !DILocation(line: 308, column: 15, scope: !407)
!411 = !DILocation(line: 308, column: 13, scope: !349)
!412 = !DILocation(line: 309, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !407, file: !18, line: 308, column: 28)
!414 = !DILocation(line: 309, column: 14, scope: !413)
!415 = !DILocation(line: 309, column: 19, scope: !413)
!416 = !DILocation(line: 310, column: 11, scope: !413)
!417 = !DILocation(line: 314, column: 7, scope: !349)
!418 = !DILocation(line: 314, column: 16, scope: !316)
!419 = !DILocation(line: 314, column: 19, scope: !316)
!420 = distinct !{!420, !347, !421}
!421 = !DILocation(line: 314, column: 24, scope: !316)
!422 = !DILocation(line: 315, column: 5, scope: !316)
!423 = !DILocation(line: 269, column: 63, scope: !308)
!424 = !DILocation(line: 269, column: 5, scope: !308)
!425 = distinct !{!425, !313, !426}
!426 = !DILocation(line: 315, column: 5, scope: !303)
!427 = distinct !{!427, !292, !428}
!428 = !DILocation(line: 316, column: 3, scope: !254)
!429 = !DILocation(line: 319, column: 1, scope: !254)
!430 = distinct !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntE13LookaheadModec", scope: !19, file: !18, line: 130, type: !431, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !434, retainedNodes: !25)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !23, !3, !11}
!433 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!434 = !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntE13LookaheadModec", scope: !19, file: !4, line: 87, type: !431, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!435 = !DILocalVariable(name: "this", arg: 1, scope: !430, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!436 = !DILocation(line: 0, scope: !430)
!437 = !DILocalVariable(name: "lookahead", arg: 2, scope: !430, file: !18, line: 130, type: !3)
!438 = !DILocation(line: 130, column: 37, scope: !430)
!439 = !DILocalVariable(name: "ignore", arg: 3, scope: !430, file: !18, line: 130, type: !11)
!440 = !DILocation(line: 130, column: 53, scope: !430)
!441 = !DILocalVariable(name: "isNegative", scope: !430, file: !18, line: 132, type: !86)
!442 = !DILocation(line: 132, column: 8, scope: !430)
!443 = !DILocalVariable(name: "value", scope: !430, file: !18, line: 133, type: !433)
!444 = !DILocation(line: 133, column: 8, scope: !430)
!445 = !DILocalVariable(name: "c", scope: !430, file: !18, line: 134, type: !22)
!446 = !DILocation(line: 134, column: 7, scope: !430)
!447 = !DILocation(line: 136, column: 21, scope: !430)
!448 = !DILocation(line: 136, column: 7, scope: !430)
!449 = !DILocation(line: 136, column: 5, scope: !430)
!450 = !DILocation(line: 138, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !430, file: !18, line: 138, column: 6)
!452 = !DILocation(line: 138, column: 8, scope: !451)
!453 = !DILocation(line: 138, column: 6, scope: !430)
!454 = !DILocation(line: 139, column: 5, scope: !451)
!455 = !DILocation(line: 141, column: 3, scope: !430)
!456 = !DILocation(line: 142, column: 8, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !18, line: 142, column: 8)
!458 = distinct !DILexicalBlock(scope: !430, file: !18, line: 141, column: 5)
!459 = !DILocation(line: 142, column: 13, scope: !457)
!460 = !DILocation(line: 142, column: 10, scope: !457)
!461 = !DILocation(line: 142, column: 8, scope: !458)
!462 = !DILocation(line: 144, column: 13, scope: !463)
!463 = distinct !DILexicalBlock(scope: !457, file: !18, line: 144, column: 13)
!464 = !DILocation(line: 144, column: 15, scope: !463)
!465 = !DILocation(line: 144, column: 13, scope: !457)
!466 = !DILocation(line: 145, column: 18, scope: !463)
!467 = !DILocation(line: 145, column: 7, scope: !463)
!468 = !DILocation(line: 146, column: 13, scope: !469)
!469 = distinct !DILexicalBlock(scope: !463, file: !18, line: 146, column: 13)
!470 = !DILocation(line: 146, column: 15, scope: !469)
!471 = !DILocation(line: 146, column: 22, scope: !469)
!472 = !DILocation(line: 146, column: 25, scope: !469)
!473 = !DILocation(line: 146, column: 27, scope: !469)
!474 = !DILocation(line: 146, column: 13, scope: !463)
!475 = !DILocation(line: 147, column: 15, scope: !469)
!476 = !DILocation(line: 147, column: 21, scope: !469)
!477 = !DILocation(line: 147, column: 28, scope: !469)
!478 = !DILocation(line: 147, column: 26, scope: !469)
!479 = !DILocation(line: 147, column: 30, scope: !469)
!480 = !DILocation(line: 147, column: 13, scope: !469)
!481 = !DILocation(line: 147, column: 7, scope: !469)
!482 = !DILocation(line: 148, column: 5, scope: !458)
!483 = !DILocation(line: 149, column: 9, scope: !458)
!484 = !DILocation(line: 149, column: 7, scope: !458)
!485 = !DILocation(line: 150, column: 3, scope: !458)
!486 = !DILocation(line: 151, column: 11, scope: !430)
!487 = !DILocation(line: 151, column: 13, scope: !430)
!488 = !DILocation(line: 151, column: 20, scope: !430)
!489 = !DILocation(line: 151, column: 23, scope: !430)
!490 = !DILocation(line: 151, column: 25, scope: !430)
!491 = !DILocation(line: 151, column: 33, scope: !430)
!492 = !DILocation(line: 151, column: 36, scope: !430)
!493 = !DILocation(line: 151, column: 41, scope: !430)
!494 = !DILocation(line: 151, column: 38, scope: !430)
!495 = distinct !{!495, !455, !496}
!496 = !DILocation(line: 151, column: 48, scope: !430)
!497 = !DILocation(line: 153, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !430, file: !18, line: 153, column: 6)
!499 = !DILocation(line: 153, column: 6, scope: !430)
!500 = !DILocation(line: 154, column: 14, scope: !498)
!501 = !DILocation(line: 154, column: 13, scope: !498)
!502 = !DILocation(line: 154, column: 11, scope: !498)
!503 = !DILocation(line: 154, column: 5, scope: !498)
!504 = !DILocation(line: 155, column: 10, scope: !430)
!505 = !DILocation(line: 155, column: 3, scope: !430)
!506 = !DILocation(line: 156, column: 1, scope: !430)
!507 = distinct !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatE13LookaheadModec", scope: !19, file: !18, line: 159, type: !508, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !511, retainedNodes: !25)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !23, !3, !11}
!510 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!511 = !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatE13LookaheadModec", scope: !19, file: !4, line: 94, type: !508, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!512 = !DILocalVariable(name: "this", arg: 1, scope: !507, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!513 = !DILocation(line: 0, scope: !507)
!514 = !DILocalVariable(name: "lookahead", arg: 2, scope: !507, file: !18, line: 159, type: !3)
!515 = !DILocation(line: 159, column: 40, scope: !507)
!516 = !DILocalVariable(name: "ignore", arg: 3, scope: !507, file: !18, line: 159, type: !11)
!517 = !DILocation(line: 159, column: 56, scope: !507)
!518 = !DILocalVariable(name: "isNegative", scope: !507, file: !18, line: 161, type: !86)
!519 = !DILocation(line: 161, column: 8, scope: !507)
!520 = !DILocalVariable(name: "isFraction", scope: !507, file: !18, line: 162, type: !86)
!521 = !DILocation(line: 162, column: 8, scope: !507)
!522 = !DILocalVariable(name: "value", scope: !507, file: !18, line: 163, type: !433)
!523 = !DILocation(line: 163, column: 8, scope: !507)
!524 = !DILocalVariable(name: "c", scope: !507, file: !18, line: 164, type: !22)
!525 = !DILocation(line: 164, column: 7, scope: !507)
!526 = !DILocalVariable(name: "fraction", scope: !507, file: !18, line: 165, type: !510)
!527 = !DILocation(line: 165, column: 9, scope: !507)
!528 = !DILocation(line: 167, column: 21, scope: !507)
!529 = !DILocation(line: 167, column: 7, scope: !507)
!530 = !DILocation(line: 167, column: 5, scope: !507)
!531 = !DILocation(line: 169, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !507, file: !18, line: 169, column: 6)
!533 = !DILocation(line: 169, column: 8, scope: !532)
!534 = !DILocation(line: 169, column: 6, scope: !507)
!535 = !DILocation(line: 170, column: 5, scope: !532)
!536 = !DILocation(line: 172, column: 3, scope: !507)
!537 = !DILocation(line: 173, column: 8, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !18, line: 173, column: 8)
!539 = distinct !DILexicalBlock(scope: !507, file: !18, line: 172, column: 5)
!540 = !DILocation(line: 173, column: 13, scope: !538)
!541 = !DILocation(line: 173, column: 10, scope: !538)
!542 = !DILocation(line: 173, column: 8, scope: !539)
!543 = !DILocation(line: 175, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !538, file: !18, line: 175, column: 13)
!545 = !DILocation(line: 175, column: 15, scope: !544)
!546 = !DILocation(line: 175, column: 13, scope: !538)
!547 = !DILocation(line: 176, column: 18, scope: !544)
!548 = !DILocation(line: 176, column: 7, scope: !544)
!549 = !DILocation(line: 177, column: 14, scope: !550)
!550 = distinct !DILexicalBlock(scope: !544, file: !18, line: 177, column: 14)
!551 = !DILocation(line: 177, column: 16, scope: !550)
!552 = !DILocation(line: 177, column: 14, scope: !544)
!553 = !DILocation(line: 178, column: 18, scope: !550)
!554 = !DILocation(line: 178, column: 7, scope: !550)
!555 = !DILocation(line: 179, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !550, file: !18, line: 179, column: 13)
!557 = !DILocation(line: 179, column: 15, scope: !556)
!558 = !DILocation(line: 179, column: 22, scope: !556)
!559 = !DILocation(line: 179, column: 25, scope: !556)
!560 = !DILocation(line: 179, column: 27, scope: !556)
!561 = !DILocation(line: 179, column: 13, scope: !550)
!562 = !DILocation(line: 180, column: 15, scope: !563)
!563 = distinct !DILexicalBlock(scope: !556, file: !18, line: 179, column: 36)
!564 = !DILocation(line: 180, column: 21, scope: !563)
!565 = !DILocation(line: 180, column: 28, scope: !563)
!566 = !DILocation(line: 180, column: 26, scope: !563)
!567 = !DILocation(line: 180, column: 30, scope: !563)
!568 = !DILocation(line: 180, column: 13, scope: !563)
!569 = !DILocation(line: 181, column: 10, scope: !570)
!570 = distinct !DILexicalBlock(scope: !563, file: !18, line: 181, column: 10)
!571 = !DILocation(line: 181, column: 10, scope: !563)
!572 = !DILocation(line: 182, column: 19, scope: !570)
!573 = !DILocation(line: 182, column: 10, scope: !570)
!574 = !DILocation(line: 183, column: 5, scope: !563)
!575 = !DILocation(line: 184, column: 5, scope: !539)
!576 = !DILocation(line: 185, column: 9, scope: !539)
!577 = !DILocation(line: 185, column: 7, scope: !539)
!578 = !DILocation(line: 186, column: 3, scope: !539)
!579 = !DILocation(line: 187, column: 11, scope: !507)
!580 = !DILocation(line: 187, column: 13, scope: !507)
!581 = !DILocation(line: 187, column: 20, scope: !507)
!582 = !DILocation(line: 187, column: 23, scope: !507)
!583 = !DILocation(line: 187, column: 25, scope: !507)
!584 = !DILocation(line: 187, column: 34, scope: !507)
!585 = !DILocation(line: 187, column: 38, scope: !507)
!586 = !DILocation(line: 187, column: 40, scope: !507)
!587 = !DILocation(line: 187, column: 47, scope: !507)
!588 = !DILocation(line: 187, column: 51, scope: !507)
!589 = !DILocation(line: 187, column: 63, scope: !507)
!590 = !DILocation(line: 187, column: 66, scope: !507)
!591 = !DILocation(line: 187, column: 71, scope: !507)
!592 = !DILocation(line: 187, column: 68, scope: !507)
!593 = distinct !{!593, !536, !594}
!594 = !DILocation(line: 187, column: 78, scope: !507)
!595 = !DILocation(line: 189, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !507, file: !18, line: 189, column: 6)
!597 = !DILocation(line: 189, column: 6, scope: !507)
!598 = !DILocation(line: 190, column: 14, scope: !596)
!599 = !DILocation(line: 190, column: 13, scope: !596)
!600 = !DILocation(line: 190, column: 11, scope: !596)
!601 = !DILocation(line: 190, column: 5, scope: !596)
!602 = !DILocation(line: 191, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !507, file: !18, line: 191, column: 6)
!604 = !DILocation(line: 191, column: 6, scope: !507)
!605 = !DILocation(line: 192, column: 12, scope: !603)
!606 = !DILocation(line: 192, column: 20, scope: !603)
!607 = !DILocation(line: 192, column: 18, scope: !603)
!608 = !DILocation(line: 192, column: 5, scope: !603)
!609 = !DILocation(line: 194, column: 12, scope: !603)
!610 = !DILocation(line: 194, column: 5, scope: !603)
!611 = !DILocation(line: 195, column: 1, scope: !507)
!612 = distinct !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPcj", scope: !19, file: !18, line: 202, type: !613, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !615, retainedNodes: !25)
!613 = !DISubroutineType(types: !614)
!614 = !{!165, !23, !151, !165}
!615 = !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPcj", scope: !19, file: !4, line: 97, type: !613, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!616 = !DILocalVariable(name: "this", arg: 1, scope: !612, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!617 = !DILocation(line: 0, scope: !612)
!618 = !DILocalVariable(name: "buffer", arg: 2, scope: !612, file: !18, line: 202, type: !151)
!619 = !DILocation(line: 202, column: 32, scope: !612)
!620 = !DILocalVariable(name: "length", arg: 3, scope: !612, file: !18, line: 202, type: !165)
!621 = !DILocation(line: 202, column: 47, scope: !612)
!622 = !DILocalVariable(name: "count", scope: !612, file: !18, line: 204, type: !165)
!623 = !DILocation(line: 204, column: 10, scope: !612)
!624 = !DILocation(line: 205, column: 3, scope: !612)
!625 = !DILocation(line: 205, column: 10, scope: !612)
!626 = !DILocation(line: 205, column: 18, scope: !612)
!627 = !DILocation(line: 205, column: 16, scope: !612)
!628 = !DILocalVariable(name: "c", scope: !629, file: !18, line: 206, type: !22)
!629 = distinct !DILexicalBlock(scope: !612, file: !18, line: 205, column: 26)
!630 = !DILocation(line: 206, column: 9, scope: !629)
!631 = !DILocation(line: 206, column: 13, scope: !629)
!632 = !DILocation(line: 207, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !18, line: 207, column: 9)
!634 = !DILocation(line: 207, column: 11, scope: !633)
!635 = !DILocation(line: 207, column: 9, scope: !629)
!636 = !DILocation(line: 207, column: 16, scope: !633)
!637 = !DILocation(line: 208, column: 23, scope: !629)
!638 = !DILocation(line: 208, column: 12, scope: !629)
!639 = !DILocation(line: 208, column: 15, scope: !629)
!640 = !DILocation(line: 209, column: 10, scope: !629)
!641 = distinct !{!641, !624, !642}
!642 = !DILocation(line: 210, column: 3, scope: !612)
!643 = !DILocation(line: 211, column: 10, scope: !612)
!644 = !DILocation(line: 211, column: 3, scope: !612)
!645 = distinct !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPcj", scope: !19, file: !18, line: 219, type: !646, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !648, retainedNodes: !25)
!646 = !DISubroutineType(types: !647)
!647 = !{!165, !23, !11, !151, !165}
!648 = !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPcj", scope: !19, file: !4, line: 102, type: !646, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!649 = !DILocalVariable(name: "this", arg: 1, scope: !645, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!650 = !DILocation(line: 0, scope: !645)
!651 = !DILocalVariable(name: "terminator", arg: 2, scope: !645, file: !18, line: 219, type: !11)
!652 = !DILocation(line: 219, column: 36, scope: !645)
!653 = !DILocalVariable(name: "buffer", arg: 3, scope: !645, file: !18, line: 219, type: !151)
!654 = !DILocation(line: 219, column: 54, scope: !645)
!655 = !DILocalVariable(name: "length", arg: 4, scope: !645, file: !18, line: 219, type: !165)
!656 = !DILocation(line: 219, column: 69, scope: !645)
!657 = !DILocation(line: 221, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !645, file: !18, line: 221, column: 7)
!659 = !DILocation(line: 221, column: 14, scope: !658)
!660 = !DILocation(line: 221, column: 7, scope: !645)
!661 = !DILocation(line: 221, column: 19, scope: !658)
!662 = !DILocalVariable(name: "index", scope: !645, file: !18, line: 222, type: !165)
!663 = !DILocation(line: 222, column: 10, scope: !645)
!664 = !DILocation(line: 223, column: 3, scope: !645)
!665 = !DILocation(line: 223, column: 10, scope: !645)
!666 = !DILocation(line: 223, column: 18, scope: !645)
!667 = !DILocation(line: 223, column: 16, scope: !645)
!668 = !DILocalVariable(name: "c", scope: !669, file: !18, line: 224, type: !22)
!669 = distinct !DILexicalBlock(scope: !645, file: !18, line: 223, column: 26)
!670 = !DILocation(line: 224, column: 9, scope: !669)
!671 = !DILocation(line: 224, column: 13, scope: !669)
!672 = !DILocation(line: 225, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !18, line: 225, column: 9)
!674 = !DILocation(line: 225, column: 11, scope: !673)
!675 = !DILocation(line: 225, column: 15, scope: !673)
!676 = !DILocation(line: 225, column: 18, scope: !673)
!677 = !DILocation(line: 225, column: 23, scope: !673)
!678 = !DILocation(line: 225, column: 20, scope: !673)
!679 = !DILocation(line: 225, column: 9, scope: !669)
!680 = !DILocation(line: 225, column: 35, scope: !673)
!681 = !DILocation(line: 226, column: 23, scope: !669)
!682 = !DILocation(line: 226, column: 12, scope: !669)
!683 = !DILocation(line: 226, column: 15, scope: !669)
!684 = !DILocation(line: 227, column: 10, scope: !669)
!685 = distinct !{!685, !664, !686}
!686 = !DILocation(line: 228, column: 3, scope: !645)
!687 = !DILocation(line: 229, column: 10, scope: !645)
!688 = !DILocation(line: 229, column: 3, scope: !645)
!689 = !DILocation(line: 230, column: 1, scope: !645)
!690 = distinct !DISubprogram(name: "readString", linkageName: "_ZN6Stream10readStringEv", scope: !19, file: !18, line: 232, type: !691, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !949, retainedNodes: !25)
!691 = !DISubroutineType(types: !692)
!692 = !{!693, !23}
!693 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !694, line: 45, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !695, identifier: "_ZTS6String")
!694 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/WString.h", directory: "/home/aaa")
!695 = !{!696, !697, !698, !699, !704, !708, !712, !718, !722, !727, !730, !733, !736, !739, !742, !745, !748, !752, !755, !758, !761, !765, !768, !771, !774, !777, !780, !783, !786, !789, !792, !793, !796, !799, !802, !805, !808, !809, !810, !813, !816, !819, !822, !825, !828, !831, !834, !835, !840, !843, !846, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !862, !863, !866, !869, !870, !874, !878, !881, !884, !887, !888, !889, !890, !893, !896, !897, !900, !901, !902, !903, !904, !907, !910, !913, !916, !919, !922, !923, !924, !925, !928, !931, !934, !935, !936, !937, !940, !943, !946}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !693, file: !694, line: 196, baseType: !151, size: 32, flags: DIFlagProtected)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !693, file: !694, line: 197, baseType: !167, size: 32, offset: 32, flags: DIFlagProtected)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !693, file: !694, line: 198, baseType: !167, size: 32, offset: 64, flags: DIFlagProtected)
!699 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !693, file: !694, line: 51, type: !700, scopeLine: 51, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!704 = !DISubprogram(name: "String", scope: !693, file: !694, line: 59, type: !705, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !707, !189}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!708 = !DISubprogram(name: "String", scope: !693, file: !694, line: 60, type: !709, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !707, !711}
!711 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !703, size: 32)
!712 = !DISubprogram(name: "String", scope: !693, file: !694, line: 61, type: !713, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !707, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !694, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!718 = !DISubprogram(name: "String", scope: !693, file: !694, line: 63, type: !719, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !707, !721}
!721 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !693, size: 32)
!722 = !DISubprogram(name: "String", scope: !693, file: !694, line: 64, type: !723, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !707, !725}
!725 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !726, size: 32)
!726 = !DICompositeType(tag: DW_TAG_class_type, name: "StringSumHelper", file: !694, line: 213, flags: DIFlagFwdDecl, identifier: "_ZTS15StringSumHelper")
!727 = !DISubprogram(name: "String", scope: !693, file: !694, line: 66, type: !728, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !707, !11}
!730 = !DISubprogram(name: "String", scope: !693, file: !694, line: 67, type: !731, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !707, !5, !5}
!733 = !DISubprogram(name: "String", scope: !693, file: !694, line: 68, type: !734, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !707, !22, !5}
!736 = !DISubprogram(name: "String", scope: !693, file: !694, line: 69, type: !737, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !707, !167, !5}
!739 = !DISubprogram(name: "String", scope: !693, file: !694, line: 70, type: !740, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !707, !433, !5}
!742 = !DISubprogram(name: "String", scope: !693, file: !694, line: 71, type: !743, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !707, !138, !5}
!745 = !DISubprogram(name: "String", scope: !693, file: !694, line: 72, type: !746, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !707, !510, !5}
!748 = !DISubprogram(name: "String", scope: !693, file: !694, line: 73, type: !749, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !707, !751, !5}
!751 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!752 = !DISubprogram(name: "~String", scope: !693, file: !694, line: 74, type: !753, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !707}
!755 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !693, file: !694, line: 80, type: !756, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!756 = !DISubroutineType(types: !757)
!757 = !{!5, !707, !167}
!758 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !693, file: !694, line: 81, type: !759, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!759 = !DISubroutineType(types: !760)
!760 = !{!167, !702}
!761 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !693, file: !694, line: 86, type: !762, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!762 = !DISubroutineType(types: !763)
!763 = !{!764, !707, !711}
!764 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !693, size: 32)
!765 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !693, file: !694, line: 87, type: !766, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!766 = !DISubroutineType(types: !767)
!767 = !{!764, !707, !189}
!768 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !693, file: !694, line: 88, type: !769, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{!764, !707, !715}
!771 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEOS_", scope: !693, file: !694, line: 90, type: !772, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!772 = !DISubroutineType(types: !773)
!773 = !{!764, !707, !721}
!774 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEO15StringSumHelper", scope: !693, file: !694, line: 91, type: !775, scopeLine: 91, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!775 = !DISubroutineType(types: !776)
!776 = !{!764, !707, !725}
!777 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !693, file: !694, line: 99, type: !778, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!778 = !DISubroutineType(types: !779)
!779 = !{!5, !707, !711}
!780 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !693, file: !694, line: 100, type: !781, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!5, !707, !189}
!783 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !693, file: !694, line: 101, type: !784, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!784 = !DISubroutineType(types: !785)
!785 = !{!5, !707, !11}
!786 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !693, file: !694, line: 102, type: !787, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{!5, !707, !5}
!789 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !693, file: !694, line: 103, type: !790, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!790 = !DISubroutineType(types: !791)
!791 = !{!5, !707, !22}
!792 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !693, file: !694, line: 104, type: !756, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!793 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !693, file: !694, line: 105, type: !794, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!794 = !DISubroutineType(types: !795)
!795 = !{!5, !707, !433}
!796 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !693, file: !694, line: 106, type: !797, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!5, !707, !138}
!799 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !693, file: !694, line: 107, type: !800, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!800 = !DISubroutineType(types: !801)
!801 = !{!5, !707, !510}
!802 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !693, file: !694, line: 108, type: !803, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!803 = !DISubroutineType(types: !804)
!804 = !{!5, !707, !751}
!805 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !693, file: !694, line: 109, type: !806, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!806 = !DISubroutineType(types: !807)
!807 = !{!5, !707, !715}
!808 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !693, file: !694, line: 113, type: !762, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!809 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !693, file: !694, line: 114, type: !766, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!810 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !693, file: !694, line: 115, type: !811, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!764, !707, !11}
!813 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !693, file: !694, line: 116, type: !814, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!764, !707, !5}
!816 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !693, file: !694, line: 117, type: !817, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!817 = !DISubroutineType(types: !818)
!818 = !{!764, !707, !22}
!819 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !693, file: !694, line: 118, type: !820, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{!764, !707, !167}
!822 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !693, file: !694, line: 119, type: !823, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!764, !707, !433}
!825 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !693, file: !694, line: 120, type: !826, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!826 = !DISubroutineType(types: !827)
!827 = !{!764, !707, !138}
!828 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !693, file: !694, line: 121, type: !829, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!829 = !DISubroutineType(types: !830)
!830 = !{!764, !707, !510}
!831 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !693, file: !694, line: 122, type: !832, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!832 = !DISubroutineType(types: !833)
!833 = !{!764, !707, !751}
!834 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !693, file: !694, line: 123, type: !769, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!835 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !693, file: !694, line: 138, type: !836, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!836 = !DISubroutineType(types: !837)
!837 = !{!838, !702}
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !693, file: !694, line: 50, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !700, size: 64, extraData: !693)
!840 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !693, file: !694, line: 139, type: !841, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{!22, !702, !711}
!843 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !693, file: !694, line: 140, type: !844, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!844 = !DISubroutineType(types: !845)
!845 = !{!5, !702, !711}
!846 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !693, file: !694, line: 141, type: !847, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!847 = !DISubroutineType(types: !848)
!848 = !{!5, !702, !189}
!849 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !693, file: !694, line: 142, type: !844, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!850 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !693, file: !694, line: 143, type: !847, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!851 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !693, file: !694, line: 144, type: !844, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!852 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !693, file: !694, line: 145, type: !847, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!853 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !693, file: !694, line: 146, type: !844, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!854 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !693, file: !694, line: 147, type: !844, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!855 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !693, file: !694, line: 148, type: !844, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!856 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !693, file: !694, line: 149, type: !844, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!857 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !693, file: !694, line: 150, type: !844, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!858 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !693, file: !694, line: 151, type: !844, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!859 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !693, file: !694, line: 152, type: !860, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!860 = !DISubroutineType(types: !861)
!861 = !{!5, !702, !711, !167}
!862 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !693, file: !694, line: 153, type: !844, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!863 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !693, file: !694, line: 156, type: !864, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!864 = !DISubroutineType(types: !865)
!865 = !{!11, !702, !167}
!866 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !693, file: !694, line: 157, type: !867, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !707, !167, !11}
!869 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !693, file: !694, line: 158, type: !864, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!870 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !693, file: !694, line: 159, type: !871, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!871 = !DISubroutineType(types: !872)
!872 = !{!873, !707, !167}
!873 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 32)
!874 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !693, file: !694, line: 160, type: !875, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !702, !877, !167, !167}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!878 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !693, file: !694, line: 161, type: !879, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !702, !151, !167, !167}
!881 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !693, file: !694, line: 163, type: !882, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{!189, !702}
!884 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !693, file: !694, line: 164, type: !885, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!885 = !DISubroutineType(types: !886)
!886 = !{!151, !707}
!887 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !693, file: !694, line: 165, type: !885, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!888 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !693, file: !694, line: 166, type: !882, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!889 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !693, file: !694, line: 167, type: !882, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!890 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !693, file: !694, line: 170, type: !891, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!891 = !DISubroutineType(types: !892)
!892 = !{!22, !702, !11}
!893 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !693, file: !694, line: 171, type: !894, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!894 = !DISubroutineType(types: !895)
!895 = !{!22, !702, !11, !167}
!896 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !693, file: !694, line: 172, type: !841, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!897 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !693, file: !694, line: 173, type: !898, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!898 = !DISubroutineType(types: !899)
!899 = !{!22, !702, !711, !167}
!900 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !693, file: !694, line: 174, type: !891, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!901 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !693, file: !694, line: 175, type: !894, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!902 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !693, file: !694, line: 176, type: !841, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!903 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !693, file: !694, line: 177, type: !898, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!904 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !693, file: !694, line: 178, type: !905, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!905 = !DISubroutineType(types: !906)
!906 = !{!693, !702, !167}
!907 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !693, file: !694, line: 179, type: !908, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!908 = !DISubroutineType(types: !909)
!909 = !{!693, !702, !167, !167}
!910 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !693, file: !694, line: 182, type: !911, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !707, !11, !11}
!913 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !693, file: !694, line: 183, type: !914, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !707, !711, !711}
!916 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !693, file: !694, line: 184, type: !917, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !707, !167}
!919 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !693, file: !694, line: 185, type: !920, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !707, !167, !167}
!922 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !693, file: !694, line: 186, type: !753, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!923 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !693, file: !694, line: 187, type: !753, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!924 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !693, file: !694, line: 188, type: !753, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!925 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !693, file: !694, line: 191, type: !926, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!926 = !DISubroutineType(types: !927)
!927 = !{!433, !702}
!928 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !693, file: !694, line: 192, type: !929, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!929 = !DISubroutineType(types: !930)
!930 = !{!510, !702}
!931 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !693, file: !694, line: 193, type: !932, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!932 = !DISubroutineType(types: !933)
!933 = !{!751, !702}
!934 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !693, file: !694, line: 200, type: !753, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!935 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !693, file: !694, line: 201, type: !753, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!936 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !693, file: !694, line: 202, type: !756, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!937 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !693, file: !694, line: 203, type: !938, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!938 = !DISubroutineType(types: !939)
!939 = !{!5, !707, !189, !167}
!940 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !693, file: !694, line: 206, type: !941, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!941 = !DISubroutineType(types: !942)
!942 = !{!764, !707, !189, !167}
!943 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !693, file: !694, line: 207, type: !944, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!944 = !DISubroutineType(types: !945)
!945 = !{!764, !707, !715, !167}
!946 = !DISubprogram(name: "move", linkageName: "_ZN6String4moveERS_", scope: !693, file: !694, line: 209, type: !947, scopeLine: 209, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !707, !764}
!949 = !DISubprogram(name: "readString", linkageName: "_ZN6Stream10readStringEv", scope: !19, file: !4, line: 108, type: !691, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!950 = !DILocalVariable(name: "this", arg: 1, scope: !690, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!951 = !DILocation(line: 0, scope: !690)
!952 = !DILocation(line: 234, column: 3, scope: !690)
!953 = !DILocalVariable(name: "ret", scope: !690, file: !18, line: 234, type: !693)
!954 = !DILocation(line: 234, column: 10, scope: !690)
!955 = !DILocalVariable(name: "c", scope: !690, file: !18, line: 235, type: !22)
!956 = !DILocation(line: 235, column: 7, scope: !690)
!957 = !DILocation(line: 235, column: 11, scope: !690)
!958 = !DILocation(line: 236, column: 3, scope: !690)
!959 = !DILocation(line: 236, column: 10, scope: !690)
!960 = !DILocation(line: 236, column: 12, scope: !690)
!961 = !DILocation(line: 238, column: 18, scope: !962)
!962 = distinct !DILexicalBlock(scope: !690, file: !18, line: 237, column: 3)
!963 = !DILocation(line: 238, column: 9, scope: !962)
!964 = !DILocation(line: 239, column: 9, scope: !962)
!965 = !DILocation(line: 239, column: 7, scope: !962)
!966 = distinct !{!966, !958, !967}
!967 = !DILocation(line: 240, column: 3, scope: !690)
!968 = !DILocation(line: 241, column: 3, scope: !690)
!969 = !DILocation(line: 242, column: 1, scope: !690)
!970 = distinct !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !693, file: !694, line: 115, type: !811, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !810, retainedNodes: !25)
!971 = !DILocalVariable(name: "this", arg: 1, scope: !970, type: !972, flags: DIFlagArtificial | DIFlagObjectPointer)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 32)
!973 = !DILocation(line: 0, scope: !970)
!974 = !DILocalVariable(name: "c", arg: 2, scope: !970, file: !694, line: 115, type: !11)
!975 = !DILocation(line: 115, column: 29, scope: !970)
!976 = !DILocation(line: 115, column: 42, scope: !970)
!977 = !DILocation(line: 115, column: 35, scope: !970)
!978 = !DILocation(line: 115, column: 46, scope: !970)
!979 = distinct !DISubprogram(name: "readStringUntil", linkageName: "_ZN6Stream15readStringUntilEc", scope: !19, file: !18, line: 244, type: !980, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !982, retainedNodes: !25)
!980 = !DISubroutineType(types: !981)
!981 = !{!693, !23, !11}
!982 = !DISubprogram(name: "readStringUntil", linkageName: "_ZN6Stream15readStringUntilEc", scope: !19, file: !4, line: 109, type: !980, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!983 = !DILocalVariable(name: "this", arg: 1, scope: !979, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!984 = !DILocation(line: 0, scope: !979)
!985 = !DILocalVariable(name: "terminator", arg: 2, scope: !979, file: !18, line: 244, type: !11)
!986 = !DILocation(line: 244, column: 37, scope: !979)
!987 = !DILocation(line: 246, column: 3, scope: !979)
!988 = !DILocalVariable(name: "ret", scope: !979, file: !18, line: 246, type: !693)
!989 = !DILocation(line: 246, column: 10, scope: !979)
!990 = !DILocalVariable(name: "c", scope: !979, file: !18, line: 247, type: !22)
!991 = !DILocation(line: 247, column: 7, scope: !979)
!992 = !DILocation(line: 247, column: 11, scope: !979)
!993 = !DILocation(line: 248, column: 3, scope: !979)
!994 = !DILocation(line: 248, column: 10, scope: !979)
!995 = !DILocation(line: 248, column: 12, scope: !979)
!996 = !DILocation(line: 248, column: 17, scope: !979)
!997 = !DILocation(line: 248, column: 20, scope: !979)
!998 = !DILocation(line: 248, column: 25, scope: !979)
!999 = !DILocation(line: 248, column: 22, scope: !979)
!1000 = !DILocation(line: 250, column: 18, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !979, file: !18, line: 249, column: 3)
!1002 = !DILocation(line: 250, column: 9, scope: !1001)
!1003 = !DILocation(line: 251, column: 9, scope: !1001)
!1004 = !DILocation(line: 251, column: 7, scope: !1001)
!1005 = distinct !{!1005, !993, !1006}
!1006 = !DILocation(line: 252, column: 3, scope: !979)
!1007 = !DILocation(line: 253, column: 3, scope: !979)
!1008 = !DILocation(line: 254, column: 1, scope: !979)

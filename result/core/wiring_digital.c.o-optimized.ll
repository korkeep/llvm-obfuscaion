; ModuleID = '/home/aaa/llvm-arduino-due/build/core/wiring_digital.c.o.ll'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_digital.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct._PinDescription = type { %struct.Pio*, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.Pio = type { i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, [3 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32 }
%struct.Adc = type { i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], [1 x i32], i32, [19 x i32], i32, i32, [5 x i32], i32, i32, [2 x i32], i32, i32, [2 x i32], i32, i32 }

@g_APinDescription = external dso_local constant [0 x %struct._PinDescription], align 4
@g_pinStatus = external dso_local global [0 x i8], align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @pinMode(i32 %ulPin, i32 %ulMode) #0 !dbg !84 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %ulPin.addr = alloca i32, align 4
  %ulMode.addr = alloca i32, align 4
  store i32 %ulPin, i32* %ulPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulPin.addr, metadata !89, metadata !DIExpression()), !dbg !90
  store i32 %ulMode, i32* %ulMode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulMode.addr, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = load i32, i32* %ulPin.addr, align 4, !dbg !93
  %arrayidx = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %0, !dbg !95
  %ulPinType = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx, i32 0, i32 3, !dbg !96
  %1 = load i8, i8* %ulPinType, align 4, !dbg !96
  %conv = zext i8 %1 to i32, !dbg !95
  %cmp = icmp eq i32 %conv, 0, !dbg !97
  br i1 %cmp, label %if.then, label %if.end, !dbg !98

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !99

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ulPin.addr, align 4, !dbg !101
  %arrayidx2 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %2, !dbg !103
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !103
  %conv3 = zext i8 %3 to i32, !dbg !103
  %and = and i32 %conv3, 15, !dbg !104
  %cmp4 = icmp eq i32 %and, 4, !dbg !105
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !106

if.then6:                                         ; preds = %if.end
  %4 = load i32, i32* %ulPin.addr, align 4, !dbg !107
  %arrayidx7 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %4, !dbg !109
  %ulADCChannelNumber = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx7, i32 0, i32 7, !dbg !110
  %5 = load i8, i8* %ulADCChannelNumber, align 1, !dbg !110
  call arm_aapcscc void @adc_disable_channel(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*), i8 zeroext %5), !dbg !111
  br label %if.end8, !dbg !112

if.end8:                                          ; preds = %if.then6, %if.end
  %6 = load i32, i32* %ulPin.addr, align 4, !dbg !113
  %arrayidx9 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %6, !dbg !115
  %7 = load i8, i8* %arrayidx9, align 1, !dbg !115
  %conv10 = zext i8 %7 to i32, !dbg !115
  %and11 = and i32 %conv10, 15, !dbg !116
  %cmp12 = icmp slt i32 %and11, 3, !dbg !117
  br i1 %cmp12, label %land.lhs.true, label %if.end46, !dbg !118

land.lhs.true:                                    ; preds = %if.end8
  %8 = load i32, i32* %ulPin.addr, align 4, !dbg !119
  %arrayidx14 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %8, !dbg !120
  %9 = load i8, i8* %arrayidx14, align 1, !dbg !120
  %conv15 = zext i8 %9 to i32, !dbg !120
  %cmp16 = icmp ne i32 %conv15, 0, !dbg !121
  br i1 %cmp16, label %if.then18, label %if.end46, !dbg !122

if.then18:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %ulPin.addr, align 4, !dbg !123
  %arrayidx19 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %10, !dbg !126
  %11 = load i8, i8* %arrayidx19, align 1, !dbg !126
  %conv20 = zext i8 %11 to i32, !dbg !126
  %and21 = and i32 %conv20, 15, !dbg !127
  %cmp22 = icmp eq i32 %and21, 2, !dbg !128
  br i1 %cmp22, label %land.lhs.true24, label %lor.lhs.false, !dbg !129

land.lhs.true24:                                  ; preds = %if.then18
  %12 = load i32, i32* %ulMode.addr, align 4, !dbg !130
  %cmp25 = icmp eq i32 %12, 0, !dbg !131
  br i1 %cmp25, label %if.then44, label %lor.lhs.false, !dbg !132

lor.lhs.false:                                    ; preds = %land.lhs.true24, %if.then18
  %13 = load i32, i32* %ulPin.addr, align 4, !dbg !133
  %arrayidx27 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %13, !dbg !134
  %14 = load i8, i8* %arrayidx27, align 1, !dbg !134
  %conv28 = zext i8 %14 to i32, !dbg !134
  %and29 = and i32 %conv28, 15, !dbg !135
  %cmp30 = icmp eq i32 %and29, 1, !dbg !136
  br i1 %cmp30, label %land.lhs.true32, label %lor.lhs.false35, !dbg !137

land.lhs.true32:                                  ; preds = %lor.lhs.false
  %15 = load i32, i32* %ulMode.addr, align 4, !dbg !138
  %cmp33 = icmp eq i32 %15, 2, !dbg !139
  br i1 %cmp33, label %if.then44, label %lor.lhs.false35, !dbg !140

lor.lhs.false35:                                  ; preds = %land.lhs.true32, %lor.lhs.false
  %16 = load i32, i32* %ulPin.addr, align 4, !dbg !141
  %arrayidx36 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %16, !dbg !142
  %17 = load i8, i8* %arrayidx36, align 1, !dbg !142
  %conv37 = zext i8 %17 to i32, !dbg !142
  %and38 = and i32 %conv37, 15, !dbg !143
  %cmp39 = icmp eq i32 %and38, 3, !dbg !144
  br i1 %cmp39, label %land.lhs.true41, label %if.end45, !dbg !145

land.lhs.true41:                                  ; preds = %lor.lhs.false35
  %18 = load i32, i32* %ulMode.addr, align 4, !dbg !146
  %cmp42 = icmp eq i32 %18, 1, !dbg !147
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !148

if.then44:                                        ; preds = %land.lhs.true41, %land.lhs.true32, %land.lhs.true24
  br label %sw.epilog, !dbg !149

if.end45:                                         ; preds = %land.lhs.true41, %lor.lhs.false35
  br label %if.end46, !dbg !150

if.end46:                                         ; preds = %if.end45, %land.lhs.true, %if.end8
  %19 = load i32, i32* %ulMode.addr, align 4, !dbg !151
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb57
    i32 1, label %sw.bb72
  ], !dbg !152

sw.bb:                                            ; preds = %if.end46
  %20 = load i32, i32* %ulPin.addr, align 4, !dbg !153
  %arrayidx47 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %20, !dbg !155
  %ulPeripheralId = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx47, i32 0, i32 2, !dbg !156
  %21 = load i32, i32* %ulPeripheralId, align 4, !dbg !156
  %call = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 %21), !dbg !157
  %22 = load i32, i32* %ulPin.addr, align 4, !dbg !158
  %arrayidx48 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %22, !dbg !159
  %pPort = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx48, i32 0, i32 0, !dbg !160
  %23 = load %struct.Pio*, %struct.Pio** %pPort, align 4, !dbg !160
  %24 = load i32, i32* %ulPin.addr, align 4, !dbg !161
  %arrayidx49 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %24, !dbg !162
  %ulPin50 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx49, i32 0, i32 1, !dbg !163
  %25 = load i32, i32* %ulPin50, align 4, !dbg !163
  %call51 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %23, i8 zeroext 3, i32 %25, i32 0), !dbg !164
  %26 = load i32, i32* %ulPin.addr, align 4, !dbg !165
  %arrayidx52 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %26, !dbg !166
  %27 = load i8, i8* %arrayidx52, align 1, !dbg !166
  %conv53 = zext i8 %27 to i32, !dbg !166
  %and54 = and i32 %conv53, 240, !dbg !167
  %or = or i32 %and54, 2, !dbg !168
  %conv55 = trunc i32 %or to i8, !dbg !169
  %28 = load i32, i32* %ulPin.addr, align 4, !dbg !170
  %arrayidx56 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %28, !dbg !171
  store i8 %conv55, i8* %arrayidx56, align 1, !dbg !172
  br label %sw.epilog, !dbg !173

sw.bb57:                                          ; preds = %if.end46
  %29 = load i32, i32* %ulPin.addr, align 4, !dbg !174
  %arrayidx58 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %29, !dbg !175
  %ulPeripheralId59 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx58, i32 0, i32 2, !dbg !176
  %30 = load i32, i32* %ulPeripheralId59, align 4, !dbg !176
  %call60 = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 %30), !dbg !177
  %31 = load i32, i32* %ulPin.addr, align 4, !dbg !178
  %arrayidx61 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %31, !dbg !179
  %pPort62 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx61, i32 0, i32 0, !dbg !180
  %32 = load %struct.Pio*, %struct.Pio** %pPort62, align 4, !dbg !180
  %33 = load i32, i32* %ulPin.addr, align 4, !dbg !181
  %arrayidx63 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %33, !dbg !182
  %ulPin64 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx63, i32 0, i32 1, !dbg !183
  %34 = load i32, i32* %ulPin64, align 4, !dbg !183
  %call65 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %32, i8 zeroext 3, i32 %34, i32 1), !dbg !184
  %35 = load i32, i32* %ulPin.addr, align 4, !dbg !185
  %arrayidx66 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %35, !dbg !186
  %36 = load i8, i8* %arrayidx66, align 1, !dbg !186
  %conv67 = zext i8 %36 to i32, !dbg !186
  %and68 = and i32 %conv67, 240, !dbg !187
  %or69 = or i32 %and68, 1, !dbg !188
  %conv70 = trunc i32 %or69 to i8, !dbg !189
  %37 = load i32, i32* %ulPin.addr, align 4, !dbg !190
  %arrayidx71 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %37, !dbg !191
  store i8 %conv70, i8* %arrayidx71, align 1, !dbg !192
  br label %sw.epilog, !dbg !193

sw.bb72:                                          ; preds = %if.end46
  %38 = load i32, i32* %ulPin.addr, align 4, !dbg !194
  %arrayidx73 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %38, !dbg !195
  %pPort74 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx73, i32 0, i32 0, !dbg !196
  %39 = load %struct.Pio*, %struct.Pio** %pPort74, align 4, !dbg !196
  %40 = load i32, i32* %ulPin.addr, align 4, !dbg !197
  %arrayidx75 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %40, !dbg !198
  %41 = load i8, i8* %arrayidx75, align 1, !dbg !198
  %conv76 = zext i8 %41 to i32, !dbg !198
  %and77 = and i32 %conv76, 240, !dbg !199
  %shr = ashr i32 %and77, 4, !dbg !200
  %tobool = icmp ne i32 %shr, 0, !dbg !201
  %42 = zext i1 %tobool to i64, !dbg !201
  %cond = select i1 %tobool, i32 5, i32 4, !dbg !201
  %conv78 = trunc i32 %cond to i8, !dbg !201
  %43 = load i32, i32* %ulPin.addr, align 4, !dbg !202
  %arrayidx79 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %43, !dbg !203
  %ulPin80 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx79, i32 0, i32 1, !dbg !204
  %44 = load i32, i32* %ulPin80, align 4, !dbg !204
  %45 = load i32, i32* %ulPin.addr, align 4, !dbg !205
  %arrayidx81 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %45, !dbg !206
  %ulPinConfiguration = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx81, i32 0, i32 4, !dbg !207
  %46 = load i32, i32* %ulPinConfiguration, align 4, !dbg !207
  %call82 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %39, i8 zeroext %conv78, i32 %44, i32 %46), !dbg !208
  %47 = load i32, i32* %ulPin.addr, align 4, !dbg !209
  %arrayidx83 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %47, !dbg !210
  %48 = load i8, i8* %arrayidx83, align 1, !dbg !210
  %conv84 = zext i8 %48 to i32, !dbg !210
  %and85 = and i32 %conv84, 240, !dbg !211
  %or86 = or i32 %and85, 3, !dbg !212
  %conv87 = trunc i32 %or86 to i8, !dbg !213
  %49 = load i32, i32* %ulPin.addr, align 4, !dbg !214
  %arrayidx88 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %49, !dbg !215
  store i8 %conv87, i8* %arrayidx88, align 1, !dbg !216
  %50 = load i32, i32* %ulPin.addr, align 4, !dbg !217
  %arrayidx89 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %50, !dbg !219
  %pPort90 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx89, i32 0, i32 0, !dbg !220
  %51 = load %struct.Pio*, %struct.Pio** %pPort90, align 4, !dbg !220
  %PIO_OSR = getelementptr inbounds %struct.Pio, %struct.Pio* %51, i32 0, i32 6, !dbg !221
  %52 = load volatile i32, i32* %PIO_OSR, align 4, !dbg !221
  %cmp91 = icmp eq i32 %52, -1, !dbg !222
  br i1 %cmp91, label %if.then93, label %if.end97, !dbg !223

if.then93:                                        ; preds = %sw.bb72
  %53 = load i32, i32* %ulPin.addr, align 4, !dbg !224
  %arrayidx94 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %53, !dbg !226
  %ulPeripheralId95 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx94, i32 0, i32 2, !dbg !227
  %54 = load i32, i32* %ulPeripheralId95, align 4, !dbg !227
  %call96 = call arm_aapcscc i32 @pmc_disable_periph_clk(i32 %54), !dbg !228
  br label %if.end97, !dbg !229

if.end97:                                         ; preds = %if.then93, %sw.bb72
  br label %sw.epilog, !dbg !230

sw.default:                                       ; preds = %if.end46
  br label %sw.epilog, !dbg !231

sw.epilog:                                        ; preds = %sw.default, %if.end97, %sw.bb57, %sw.bb, %if.then44, %if.then
  br label %dec_start

dec_start:                                        ; preds = %sw.epilog
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@pinMode, %sw.epilog.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %55 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %55, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %56 = load i32, i32* %i, align 4
  %57 = load i8*, i8** %ptr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %57, i32 %56
  %58 = load i8, i8* %arrayidx13, align 1
  %59 = load i32, i32* %i, align 4
  %arrayidx24 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %59
  store i8 %58, i8* %arrayidx24, align 1
  %60 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %60
  %61 = load i8, i8* %arrayidx3, align 1
  %conv5 = zext i8 %61 to i32
  %xor = xor i32 %conv5, 133
  %conv4 = trunc i32 %xor to i8
  %62 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %62
  store i8 %conv4, i8* %arrayidx5, align 1
  br label %dec_add

dec_add:                                          ; preds = %dec_ing
  %63 = load i32, i32* %i, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %i, align 4
  br label %dec_cond

dec_end:                                          ; preds = %dec_cond
  %65 = load i8*, i8** %ptr2, align 4
  br label %dec_jmp

dec_jmp:                                          ; preds = %dec_end
  %66 = phi i8* [ %65, %dec_end ]
  indirectbr i8* %65, [label %sw.epilog.RetBlock]

sw.epilog.RetBlock:                               ; preds = %dec_jmp
  ret void, !dbg !232
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local arm_aapcscc void @adc_disable_channel(%struct.Adc*, i8 zeroext) #2

declare dso_local arm_aapcscc i32 @pmc_enable_periph_clk(i32) #2

declare dso_local arm_aapcscc i32 @PIO_Configure(%struct.Pio*, i8 zeroext, i32, i32) #2

declare dso_local arm_aapcscc i32 @pmc_disable_periph_clk(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @digitalWrite(i32 %ulPin, i32 %ulVal) #0 !dbg !233 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %ulPin.addr = alloca i32, align 4
  %ulVal.addr = alloca i32, align 4
  store i32 %ulPin, i32* %ulPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulPin.addr, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 %ulVal, i32* %ulVal.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulVal.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = load i32, i32* %ulPin.addr, align 4, !dbg !238
  %arrayidx = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %0, !dbg !240
  %ulPinType = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx, i32 0, i32 3, !dbg !241
  %1 = load i8, i8* %ulPinType, align 4, !dbg !241
  %conv = zext i8 %1 to i32, !dbg !240
  %cmp = icmp eq i32 %conv, 0, !dbg !242
  br i1 %cmp, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %entry
  br label %if.end27, !dbg !244

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ulPin.addr, align 4, !dbg !246
  %arrayidx2 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %2, !dbg !248
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !248
  %conv3 = zext i8 %3 to i32, !dbg !248
  %and = and i32 %conv3, 15, !dbg !249
  %cmp4 = icmp eq i32 %and, 5, !dbg !250
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !251

if.then6:                                         ; preds = %if.end
  %4 = load i32, i32* %ulPin.addr, align 4, !dbg !252
  call arm_aapcscc void @pinMode(i32 %4, i32 1), !dbg !254
  br label %if.end7, !dbg !255

if.end7:                                          ; preds = %if.then6, %if.end
  %5 = load i32, i32* %ulPin.addr, align 4, !dbg !256
  %arrayidx8 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %5, !dbg !257
  %6 = load i8, i8* %arrayidx8, align 1, !dbg !257
  %conv9 = zext i8 %6 to i32, !dbg !257
  %and10 = and i32 %conv9, 15, !dbg !258
  %7 = load i32, i32* %ulVal.addr, align 4, !dbg !259
  %shl = shl i32 %7, 4, !dbg !260
  %or = or i32 %and10, %shl, !dbg !261
  %conv11 = trunc i32 %or to i8, !dbg !262
  %8 = load i32, i32* %ulPin.addr, align 4, !dbg !263
  %arrayidx12 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %8, !dbg !264
  store i8 %conv11, i8* %arrayidx12, align 1, !dbg !265
  %9 = load i32, i32* %ulPin.addr, align 4, !dbg !266
  %arrayidx13 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %9, !dbg !268
  %pPort = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx13, i32 0, i32 0, !dbg !269
  %10 = load %struct.Pio*, %struct.Pio** %pPort, align 4, !dbg !269
  %11 = load i32, i32* %ulPin.addr, align 4, !dbg !270
  %arrayidx14 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %11, !dbg !271
  %ulPin15 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx14, i32 0, i32 1, !dbg !272
  %12 = load i32, i32* %ulPin15, align 4, !dbg !272
  %call = call arm_aapcscc i32 @PIO_GetOutputDataStatus(%struct.Pio* %10, i32 %12), !dbg !273
  %cmp16 = icmp eq i32 %call, 0, !dbg !274
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !275

if.then18:                                        ; preds = %if.end7
  %13 = load i32, i32* %ulPin.addr, align 4, !dbg !276
  %arrayidx19 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %13, !dbg !278
  %pPort20 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx19, i32 0, i32 0, !dbg !279
  %14 = load %struct.Pio*, %struct.Pio** %pPort20, align 4, !dbg !279
  %15 = load i32, i32* %ulPin.addr, align 4, !dbg !280
  %arrayidx21 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %15, !dbg !281
  %ulPin22 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx21, i32 0, i32 1, !dbg !282
  %16 = load i32, i32* %ulPin22, align 4, !dbg !282
  %17 = load i32, i32* %ulVal.addr, align 4, !dbg !283
  call arm_aapcscc void @PIO_PullUp(%struct.Pio* %14, i32 %16, i32 %17), !dbg !284
  br label %if.end27, !dbg !285

if.else:                                          ; preds = %if.end7
  %18 = load i32, i32* %ulPin.addr, align 4, !dbg !286
  %arrayidx23 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %18, !dbg !288
  %pPort24 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx23, i32 0, i32 0, !dbg !289
  %19 = load %struct.Pio*, %struct.Pio** %pPort24, align 4, !dbg !289
  %20 = load i32, i32* %ulPin.addr, align 4, !dbg !290
  %arrayidx25 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %20, !dbg !291
  %ulPin26 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx25, i32 0, i32 1, !dbg !292
  %21 = load i32, i32* %ulPin26, align 4, !dbg !292
  %22 = load i32, i32* %ulVal.addr, align 4, !dbg !293
  call arm_aapcscc void @PIO_SetOutput(%struct.Pio* %19, i32 %21, i32 %22, i32 0, i32 1), !dbg !294
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then18, %if.then
  br label %dec_start

dec_start:                                        ; preds = %if.end27
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@digitalWrite, %if.end27.RetBlock), i8** %ptr, align 4
  store i32 0, i32* %i, align 4
  br label %dec_cond

dec_cond:                                         ; preds = %dec_add, %dec_start
  %23 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %23, 12
  br i1 %cmp2, label %dec_ing, label %dec_end

dec_ing:                                          ; preds = %dec_cond
  %24 = load i32, i32* %i, align 4
  %25 = load i8*, i8** %ptr, align 4
  %arrayidx15 = getelementptr inbounds i8, i8* %25, i32 %24
  %26 = load i8, i8* %arrayidx15, align 1
  %27 = load i32, i32* %i, align 4
  %arrayidx26 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %27
  store i8 %26, i8* %arrayidx26, align 1
  %28 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %28
  %29 = load i8, i8* %arrayidx3, align 1
  %conv7 = zext i8 %29 to i32
  %xor = xor i32 %conv7, 133
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
  indirectbr i8* %33, [label %if.end27.RetBlock]

if.end27.RetBlock:                                ; preds = %dec_jmp
  ret void, !dbg !295
}

declare dso_local arm_aapcscc i32 @PIO_GetOutputDataStatus(%struct.Pio*, i32) #2

declare dso_local arm_aapcscc void @PIO_PullUp(%struct.Pio*, i32, i32) #2

declare dso_local arm_aapcscc void @PIO_SetOutput(%struct.Pio*, i32, i32, i32, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @digitalRead(i32 %ulPin) #0 !dbg !296 {
entry:
  %ret_ptr = alloca [12 x i8], align 1
  %ptr = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %retval = alloca i32, align 4
  %ulPin.addr = alloca i32, align 4
  store i32 %ulPin, i32* %ulPin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ulPin.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i32, i32* %ulPin.addr, align 4, !dbg !302
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %0, !dbg !304
  %1 = load i8, i8* %arrayidx, align 1, !dbg !304
  %conv = zext i8 %1 to i32, !dbg !304
  %and = and i32 %conv, 15, !dbg !305
  %cmp = icmp eq i32 %and, 3, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ulPin.addr, align 4, !dbg !308
  %arrayidx2 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %2, !dbg !310
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !310
  %conv3 = zext i8 %3 to i32, !dbg !310
  %and4 = and i32 %conv3, 240, !dbg !311
  %shr = ashr i32 %and4, 4, !dbg !312
  store i32 %shr, i32* %retval, align 4, !dbg !313
  br label %return, !dbg !313

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %ulPin.addr, align 4, !dbg !314
  %arrayidx5 = getelementptr inbounds [0 x i8], [0 x i8]* @g_pinStatus, i32 0, i32 %4, !dbg !316
  %5 = load i8, i8* %arrayidx5, align 1, !dbg !316
  %conv6 = zext i8 %5 to i32, !dbg !316
  %and7 = and i32 %conv6, 15, !dbg !317
  %cmp8 = icmp eq i32 %and7, 4, !dbg !318
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !319

if.then10:                                        ; preds = %if.end
  %6 = load i32, i32* %ulPin.addr, align 4, !dbg !320
  call arm_aapcscc void @pinMode(i32 %6, i32 0), !dbg !322
  br label %if.end11, !dbg !323

if.end11:                                         ; preds = %if.then10, %if.end
  %7 = load i32, i32* %ulPin.addr, align 4, !dbg !324
  %arrayidx12 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %7, !dbg !326
  %ulPinType = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx12, i32 0, i32 3, !dbg !327
  %8 = load i8, i8* %ulPinType, align 4, !dbg !327
  %conv13 = zext i8 %8 to i32, !dbg !326
  %cmp14 = icmp eq i32 %conv13, 0, !dbg !328
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !329

if.then16:                                        ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !330
  br label %return, !dbg !330

if.end17:                                         ; preds = %if.end11
  %9 = load i32, i32* %ulPin.addr, align 4, !dbg !332
  %arrayidx18 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %9, !dbg !334
  %pPort = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx18, i32 0, i32 0, !dbg !335
  %10 = load %struct.Pio*, %struct.Pio** %pPort, align 4, !dbg !335
  %11 = load i32, i32* %ulPin.addr, align 4, !dbg !336
  %arrayidx19 = getelementptr inbounds [0 x %struct._PinDescription], [0 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 %11, !dbg !337
  %ulPin20 = getelementptr inbounds %struct._PinDescription, %struct._PinDescription* %arrayidx19, i32 0, i32 1, !dbg !338
  %12 = load i32, i32* %ulPin20, align 4, !dbg !338
  %call = call arm_aapcscc i32 @PIO_Get(%struct.Pio* %10, i8 zeroext 3, i32 %12), !dbg !339
  %cmp21 = icmp eq i32 %call, 1, !dbg !340
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !341

if.then23:                                        ; preds = %if.end17
  store i32 1, i32* %retval, align 4, !dbg !342
  br label %return, !dbg !342

if.end24:                                         ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !344
  br label %return, !dbg !344

return:                                           ; preds = %if.end24, %if.then23, %if.then16, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !345
  br label %dec_start

dec_start:                                        ; preds = %return
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 0
  store i8* %arrayidx1, i8** %ptr2, align 4
  store i8* blockaddress(@digitalRead, %return.RetBlock), i8** %ptr, align 4
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
  %arrayidx24 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %18
  store i8 %17, i8* %arrayidx24, align 1
  %19 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %19
  %20 = load i8, i8* %arrayidx3, align 1
  %conv5 = zext i8 %20 to i32
  %xor = xor i32 %conv5, 133
  %conv4 = trunc i32 %xor to i8
  %21 = load i32, i32* %i, align 4
  %arrayidx56 = getelementptr inbounds [12 x i8], [12 x i8]* %ret_ptr, i32 0, i32 %21
  store i8 %conv4, i8* %arrayidx56, align 1
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
  ret i32 %13, !dbg !345
}

declare dso_local arm_aapcscc i32 @PIO_Get(%struct.Pio*, i8 zeroext, i32) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_digital.c", directory: "/home/aaa/llvm-arduino-due")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EPioType", file: !4, line: 44, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/libsam/include/pio.h", directory: "/home/aaa")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "PIO_NOT_A_PIN", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "PIO_PERIPH_A", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "PIO_PERIPH_B", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "PIO_INPUT", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "PIO_OUTPUT_0", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "PIO_OUTPUT_1", value: 5, isUnsigned: true)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Adc", file: !16, line: 76, baseType: !17)
!16 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_adc.h", directory: "/home/aaa")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 41, size: 2368, elements: !18)
!18 = !{!19, !28, !30, !31, !32, !33, !34, !37, !41, !42, !43, !44, !45, !46, !50, !51, !52, !53, !54, !55, !59, !60, !61, !65, !66, !67, !71, !72, !73, !74, !75, !76, !77, !78}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CR", scope: !17, file: !16, line: 42, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !21, line: 53, baseType: !22)
!21 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 66, baseType: !25)
!24 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !26, line: 56, baseType: !27)
!26 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_MR", scope: !17, file: !16, line: 43, baseType: !29, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !21, line: 54, baseType: !22)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_SEQR1", scope: !17, file: !16, line: 44, baseType: !29, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_SEQR2", scope: !17, file: !16, line: 45, baseType: !29, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CHER", scope: !17, file: !16, line: 46, baseType: !20, size: 32, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CHDR", scope: !17, file: !16, line: 47, baseType: !20, size: 32, offset: 160)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CHSR", scope: !17, file: !16, line: 48, baseType: !35, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !21, line: 49, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !17, file: !16, line: 49, baseType: !38, size: 32, offset: 224)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_LCDR", scope: !17, file: !16, line: 50, baseType: !35, size: 32, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_IER", scope: !17, file: !16, line: 51, baseType: !20, size: 32, offset: 288)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_IDR", scope: !17, file: !16, line: 52, baseType: !20, size: 32, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_IMR", scope: !17, file: !16, line: 53, baseType: !35, size: 32, offset: 352)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_ISR", scope: !17, file: !16, line: 54, baseType: !35, size: 32, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !17, file: !16, line: 55, baseType: !47, size: 64, offset: 416)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 2)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_OVER", scope: !17, file: !16, line: 56, baseType: !35, size: 32, offset: 480)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_EMR", scope: !17, file: !16, line: 57, baseType: !29, size: 32, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CWR", scope: !17, file: !16, line: 58, baseType: !29, size: 32, offset: 544)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CGR", scope: !17, file: !16, line: 59, baseType: !29, size: 32, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_COR", scope: !17, file: !16, line: 60, baseType: !29, size: 32, offset: 608)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_CDR", scope: !17, file: !16, line: 61, baseType: !56, size: 512, offset: 640)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !17, file: !16, line: 62, baseType: !38, size: 32, offset: 1152)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_ACR", scope: !17, file: !16, line: 63, baseType: !29, size: 32, offset: 1184)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !17, file: !16, line: 64, baseType: !62, size: 608, offset: 1216)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 608, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 19)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_WPMR", scope: !17, file: !16, line: 65, baseType: !29, size: 32, offset: 1824)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_WPSR", scope: !17, file: !16, line: 66, baseType: !35, size: 32, offset: 1856)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !17, file: !16, line: 67, baseType: !68, size: 160, offset: 1888)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 5)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_RPR", scope: !17, file: !16, line: 68, baseType: !29, size: 32, offset: 2048)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_RCR", scope: !17, file: !16, line: 69, baseType: !29, size: 32, offset: 2080)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !17, file: !16, line: 70, baseType: !47, size: 64, offset: 2112)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_RNPR", scope: !17, file: !16, line: 71, baseType: !29, size: 32, offset: 2176)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_RNCR", scope: !17, file: !16, line: 72, baseType: !29, size: 32, offset: 2208)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved7", scope: !17, file: !16, line: 73, baseType: !47, size: 64, offset: 2240)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_PTCR", scope: !17, file: !16, line: 74, baseType: !20, size: 32, offset: 2304)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ADC_PTSR", scope: !17, file: !16, line: 75, baseType: !35, size: 32, offset: 2336)
!79 = !{i32 7, !"Dwarf Version", i32 4}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 4}
!82 = !{i32 1, !"min_enum_size", i32 1}
!83 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!84 = distinct !DISubprogram(name: "pinMode", scope: !85, file: !85, line: 25, type: !86, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !88)
!85 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/wiring_digital.c", directory: "/home/aaa")
!86 = !DISubroutineType(types: !87)
!87 = !{null, !23, !23}
!88 = !{}
!89 = !DILocalVariable(name: "ulPin", arg: 1, scope: !84, file: !85, line: 25, type: !23)
!90 = !DILocation(line: 25, column: 31, scope: !84)
!91 = !DILocalVariable(name: "ulMode", arg: 2, scope: !84, file: !85, line: 25, type: !23)
!92 = !DILocation(line: 25, column: 47, scope: !84)
!93 = !DILocation(line: 27, column: 25, scope: !94)
!94 = distinct !DILexicalBlock(scope: !84, file: !85, line: 27, column: 7)
!95 = !DILocation(line: 27, column: 7, scope: !94)
!96 = !DILocation(line: 27, column: 32, scope: !94)
!97 = !DILocation(line: 27, column: 42, scope: !94)
!98 = !DILocation(line: 27, column: 7, scope: !84)
!99 = !DILocation(line: 29, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !94, file: !85, line: 28, column: 5)
!101 = !DILocation(line: 32, column: 20, scope: !102)
!102 = distinct !DILexicalBlock(scope: !84, file: !85, line: 32, column: 7)
!103 = !DILocation(line: 32, column: 8, scope: !102)
!104 = !DILocation(line: 32, column: 27, scope: !102)
!105 = !DILocation(line: 32, column: 34, scope: !102)
!106 = !DILocation(line: 32, column: 7, scope: !84)
!107 = !DILocation(line: 34, column: 51, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !85, line: 33, column: 5)
!109 = !DILocation(line: 34, column: 33, scope: !108)
!110 = !DILocation(line: 34, column: 58, scope: !108)
!111 = !DILocation(line: 34, column: 7, scope: !108)
!112 = !DILocation(line: 35, column: 5, scope: !108)
!113 = !DILocation(line: 37, column: 20, scope: !114)
!114 = distinct !DILexicalBlock(scope: !84, file: !85, line: 37, column: 7)
!115 = !DILocation(line: 37, column: 8, scope: !114)
!116 = !DILocation(line: 37, column: 27, scope: !114)
!117 = !DILocation(line: 37, column: 34, scope: !114)
!118 = !DILocation(line: 37, column: 62, scope: !114)
!119 = !DILocation(line: 37, column: 77, scope: !114)
!120 = !DILocation(line: 37, column: 65, scope: !114)
!121 = !DILocation(line: 37, column: 84, scope: !114)
!122 = !DILocation(line: 37, column: 7, scope: !84)
!123 = !DILocation(line: 40, column: 25, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !85, line: 40, column: 11)
!125 = distinct !DILexicalBlock(scope: !114, file: !85, line: 38, column: 5)
!126 = !DILocation(line: 40, column: 13, scope: !124)
!127 = !DILocation(line: 40, column: 32, scope: !124)
!128 = !DILocation(line: 40, column: 39, scope: !124)
!129 = !DILocation(line: 40, column: 67, scope: !124)
!130 = !DILocation(line: 40, column: 70, scope: !124)
!131 = !DILocation(line: 40, column: 77, scope: !124)
!132 = !DILocation(line: 40, column: 87, scope: !124)
!133 = !DILocation(line: 41, column: 25, scope: !124)
!134 = !DILocation(line: 41, column: 13, scope: !124)
!135 = !DILocation(line: 41, column: 32, scope: !124)
!136 = !DILocation(line: 41, column: 39, scope: !124)
!137 = !DILocation(line: 41, column: 74, scope: !124)
!138 = !DILocation(line: 41, column: 77, scope: !124)
!139 = !DILocation(line: 41, column: 84, scope: !124)
!140 = !DILocation(line: 41, column: 101, scope: !124)
!141 = !DILocation(line: 42, column: 25, scope: !124)
!142 = !DILocation(line: 42, column: 13, scope: !124)
!143 = !DILocation(line: 42, column: 32, scope: !124)
!144 = !DILocation(line: 42, column: 39, scope: !124)
!145 = !DILocation(line: 42, column: 68, scope: !124)
!146 = !DILocation(line: 42, column: 71, scope: !124)
!147 = !DILocation(line: 42, column: 78, scope: !124)
!148 = !DILocation(line: 40, column: 11, scope: !125)
!149 = !DILocation(line: 43, column: 7, scope: !124)
!150 = !DILocation(line: 44, column: 5, scope: !125)
!151 = !DILocation(line: 46, column: 11, scope: !84)
!152 = !DILocation(line: 46, column: 2, scope: !84)
!153 = !DILocation(line: 50, column: 54, scope: !154)
!154 = distinct !DILexicalBlock(scope: !84, file: !85, line: 47, column: 5)
!155 = !DILocation(line: 50, column: 36, scope: !154)
!156 = !DILocation(line: 50, column: 61, scope: !154)
!157 = !DILocation(line: 50, column: 13, scope: !154)
!158 = !DILocation(line: 52, column: 32, scope: !154)
!159 = !DILocation(line: 52, column: 14, scope: !154)
!160 = !DILocation(line: 52, column: 39, scope: !154)
!161 = !DILocation(line: 54, column: 32, scope: !154)
!162 = !DILocation(line: 54, column: 14, scope: !154)
!163 = !DILocation(line: 54, column: 39, scope: !154)
!164 = !DILocation(line: 51, column: 13, scope: !154)
!165 = !DILocation(line: 56, column: 47, scope: !154)
!166 = !DILocation(line: 56, column: 35, scope: !154)
!167 = !DILocation(line: 56, column: 54, scope: !154)
!168 = !DILocation(line: 56, column: 62, scope: !154)
!169 = !DILocation(line: 56, column: 34, scope: !154)
!170 = !DILocation(line: 56, column: 25, scope: !154)
!171 = !DILocation(line: 56, column: 13, scope: !154)
!172 = !DILocation(line: 56, column: 32, scope: !154)
!173 = !DILocation(line: 57, column: 9, scope: !154)
!174 = !DILocation(line: 61, column: 54, scope: !154)
!175 = !DILocation(line: 61, column: 36, scope: !154)
!176 = !DILocation(line: 61, column: 61, scope: !154)
!177 = !DILocation(line: 61, column: 13, scope: !154)
!178 = !DILocation(line: 63, column: 32, scope: !154)
!179 = !DILocation(line: 63, column: 14, scope: !154)
!180 = !DILocation(line: 63, column: 39, scope: !154)
!181 = !DILocation(line: 65, column: 32, scope: !154)
!182 = !DILocation(line: 65, column: 14, scope: !154)
!183 = !DILocation(line: 65, column: 39, scope: !154)
!184 = !DILocation(line: 62, column: 13, scope: !154)
!185 = !DILocation(line: 67, column: 47, scope: !154)
!186 = !DILocation(line: 67, column: 35, scope: !154)
!187 = !DILocation(line: 67, column: 54, scope: !154)
!188 = !DILocation(line: 67, column: 62, scope: !154)
!189 = !DILocation(line: 67, column: 34, scope: !154)
!190 = !DILocation(line: 67, column: 25, scope: !154)
!191 = !DILocation(line: 67, column: 13, scope: !154)
!192 = !DILocation(line: 67, column: 32, scope: !154)
!193 = !DILocation(line: 68, column: 9, scope: !154)
!194 = !DILocation(line: 72, column: 32, scope: !154)
!195 = !DILocation(line: 72, column: 14, scope: !154)
!196 = !DILocation(line: 72, column: 39, scope: !154)
!197 = !DILocation(line: 73, column: 28, scope: !154)
!198 = !DILocation(line: 73, column: 16, scope: !154)
!199 = !DILocation(line: 73, column: 35, scope: !154)
!200 = !DILocation(line: 73, column: 43, scope: !154)
!201 = !DILocation(line: 73, column: 15, scope: !154)
!202 = !DILocation(line: 74, column: 32, scope: !154)
!203 = !DILocation(line: 74, column: 14, scope: !154)
!204 = !DILocation(line: 74, column: 39, scope: !154)
!205 = !DILocation(line: 75, column: 32, scope: !154)
!206 = !DILocation(line: 75, column: 14, scope: !154)
!207 = !DILocation(line: 75, column: 39, scope: !154)
!208 = !DILocation(line: 71, column: 13, scope: !154)
!209 = !DILocation(line: 77, column: 47, scope: !154)
!210 = !DILocation(line: 77, column: 35, scope: !154)
!211 = !DILocation(line: 77, column: 54, scope: !154)
!212 = !DILocation(line: 77, column: 62, scope: !154)
!213 = !DILocation(line: 77, column: 34, scope: !154)
!214 = !DILocation(line: 77, column: 25, scope: !154)
!215 = !DILocation(line: 77, column: 13, scope: !154)
!216 = !DILocation(line: 77, column: 32, scope: !154)
!217 = !DILocation(line: 80, column: 36, scope: !218)
!218 = distinct !DILexicalBlock(scope: !154, file: !85, line: 80, column: 18)
!219 = !DILocation(line: 80, column: 18, scope: !218)
!220 = !DILocation(line: 80, column: 43, scope: !218)
!221 = !DILocation(line: 80, column: 50, scope: !218)
!222 = !DILocation(line: 80, column: 58, scope: !218)
!223 = !DILocation(line: 80, column: 18, scope: !154)
!224 = !DILocation(line: 82, column: 59, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !85, line: 81, column: 13)
!226 = !DILocation(line: 82, column: 41, scope: !225)
!227 = !DILocation(line: 82, column: 66, scope: !225)
!228 = !DILocation(line: 82, column: 17, scope: !225)
!229 = !DILocation(line: 83, column: 13, scope: !225)
!230 = !DILocation(line: 84, column: 9, scope: !154)
!231 = !DILocation(line: 87, column: 9, scope: !154)
!232 = !DILocation(line: 89, column: 1, scope: !84)
!233 = distinct !DISubprogram(name: "digitalWrite", scope: !85, file: !85, line: 91, type: !86, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !88)
!234 = !DILocalVariable(name: "ulPin", arg: 1, scope: !233, file: !85, line: 91, type: !23)
!235 = !DILocation(line: 91, column: 36, scope: !233)
!236 = !DILocalVariable(name: "ulVal", arg: 2, scope: !233, file: !85, line: 91, type: !23)
!237 = !DILocation(line: 91, column: 52, scope: !233)
!238 = !DILocation(line: 94, column: 25, scope: !239)
!239 = distinct !DILexicalBlock(scope: !233, file: !85, line: 94, column: 7)
!240 = !DILocation(line: 94, column: 7, scope: !239)
!241 = !DILocation(line: 94, column: 32, scope: !239)
!242 = !DILocation(line: 94, column: 42, scope: !239)
!243 = !DILocation(line: 94, column: 7, scope: !233)
!244 = !DILocation(line: 96, column: 5, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !85, line: 95, column: 3)
!246 = !DILocation(line: 99, column: 20, scope: !247)
!247 = distinct !DILexicalBlock(scope: !233, file: !85, line: 99, column: 7)
!248 = !DILocation(line: 99, column: 8, scope: !247)
!249 = !DILocation(line: 99, column: 27, scope: !247)
!250 = !DILocation(line: 99, column: 34, scope: !247)
!251 = !DILocation(line: 99, column: 7, scope: !233)
!252 = !DILocation(line: 100, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !247, file: !85, line: 99, column: 53)
!254 = !DILocation(line: 100, column: 5, scope: !253)
!255 = !DILocation(line: 101, column: 3, scope: !253)
!256 = !DILocation(line: 103, column: 37, scope: !233)
!257 = !DILocation(line: 103, column: 25, scope: !233)
!258 = !DILocation(line: 103, column: 44, scope: !233)
!259 = !DILocation(line: 103, column: 55, scope: !233)
!260 = !DILocation(line: 103, column: 61, scope: !233)
!261 = !DILocation(line: 103, column: 52, scope: !233)
!262 = !DILocation(line: 103, column: 24, scope: !233)
!263 = !DILocation(line: 103, column: 15, scope: !233)
!264 = !DILocation(line: 103, column: 3, scope: !233)
!265 = !DILocation(line: 103, column: 22, scope: !233)
!266 = !DILocation(line: 105, column: 51, scope: !267)
!267 = distinct !DILexicalBlock(scope: !233, file: !85, line: 105, column: 8)
!268 = !DILocation(line: 105, column: 33, scope: !267)
!269 = !DILocation(line: 105, column: 58, scope: !267)
!270 = !DILocation(line: 105, column: 83, scope: !267)
!271 = !DILocation(line: 105, column: 65, scope: !267)
!272 = !DILocation(line: 105, column: 90, scope: !267)
!273 = !DILocation(line: 105, column: 8, scope: !267)
!274 = !DILocation(line: 105, column: 98, scope: !267)
!275 = !DILocation(line: 105, column: 8, scope: !233)
!276 = !DILocation(line: 107, column: 35, scope: !277)
!277 = distinct !DILexicalBlock(scope: !267, file: !85, line: 106, column: 3)
!278 = !DILocation(line: 107, column: 17, scope: !277)
!279 = !DILocation(line: 107, column: 42, scope: !277)
!280 = !DILocation(line: 107, column: 67, scope: !277)
!281 = !DILocation(line: 107, column: 49, scope: !277)
!282 = !DILocation(line: 107, column: 74, scope: !277)
!283 = !DILocation(line: 107, column: 81, scope: !277)
!284 = !DILocation(line: 107, column: 5, scope: !277)
!285 = !DILocation(line: 108, column: 3, scope: !277)
!286 = !DILocation(line: 111, column: 38, scope: !287)
!287 = distinct !DILexicalBlock(scope: !267, file: !85, line: 110, column: 3)
!288 = !DILocation(line: 111, column: 20, scope: !287)
!289 = !DILocation(line: 111, column: 45, scope: !287)
!290 = !DILocation(line: 111, column: 70, scope: !287)
!291 = !DILocation(line: 111, column: 52, scope: !287)
!292 = !DILocation(line: 111, column: 77, scope: !287)
!293 = !DILocation(line: 111, column: 84, scope: !287)
!294 = !DILocation(line: 111, column: 5, scope: !287)
!295 = !DILocation(line: 113, column: 1, scope: !233)
!296 = distinct !DISubprogram(name: "digitalRead", scope: !85, file: !85, line: 115, type: !297, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !88)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !23}
!299 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!300 = !DILocalVariable(name: "ulPin", arg: 1, scope: !296, file: !85, line: 115, type: !23)
!301 = !DILocation(line: 115, column: 34, scope: !296)
!302 = !DILocation(line: 117, column: 20, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !85, line: 117, column: 7)
!304 = !DILocation(line: 117, column: 8, scope: !303)
!305 = !DILocation(line: 117, column: 27, scope: !303)
!306 = !DILocation(line: 117, column: 34, scope: !303)
!307 = !DILocation(line: 117, column: 7, scope: !296)
!308 = !DILocation(line: 118, column: 25, scope: !309)
!309 = distinct !DILexicalBlock(scope: !303, file: !85, line: 117, column: 64)
!310 = !DILocation(line: 118, column: 13, scope: !309)
!311 = !DILocation(line: 118, column: 32, scope: !309)
!312 = !DILocation(line: 118, column: 40, scope: !309)
!313 = !DILocation(line: 118, column: 5, scope: !309)
!314 = !DILocation(line: 121, column: 20, scope: !315)
!315 = distinct !DILexicalBlock(scope: !296, file: !85, line: 121, column: 7)
!316 = !DILocation(line: 121, column: 8, scope: !315)
!317 = !DILocation(line: 121, column: 27, scope: !315)
!318 = !DILocation(line: 121, column: 34, scope: !315)
!319 = !DILocation(line: 121, column: 7, scope: !296)
!320 = !DILocation(line: 122, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !85, line: 121, column: 56)
!322 = !DILocation(line: 122, column: 5, scope: !321)
!323 = !DILocation(line: 123, column: 3, scope: !321)
!324 = !DILocation(line: 125, column: 25, scope: !325)
!325 = distinct !DILexicalBlock(scope: !296, file: !85, line: 125, column: 7)
!326 = !DILocation(line: 125, column: 7, scope: !325)
!327 = !DILocation(line: 125, column: 32, scope: !325)
!328 = !DILocation(line: 125, column: 42, scope: !325)
!329 = !DILocation(line: 125, column: 7, scope: !296)
!330 = !DILocation(line: 127, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !325, file: !85, line: 126, column: 5)
!332 = !DILocation(line: 130, column: 34, scope: !333)
!333 = distinct !DILexicalBlock(scope: !296, file: !85, line: 130, column: 7)
!334 = !DILocation(line: 130, column: 16, scope: !333)
!335 = !DILocation(line: 130, column: 41, scope: !333)
!336 = !DILocation(line: 130, column: 77, scope: !333)
!337 = !DILocation(line: 130, column: 59, scope: !333)
!338 = !DILocation(line: 130, column: 84, scope: !333)
!339 = !DILocation(line: 130, column: 7, scope: !333)
!340 = !DILocation(line: 130, column: 92, scope: !333)
!341 = !DILocation(line: 130, column: 7, scope: !296)
!342 = !DILocation(line: 132, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !333, file: !85, line: 131, column: 5)
!344 = !DILocation(line: 135, column: 2, scope: !296)
!345 = !DILocation(line: 136, column: 1, scope: !296)

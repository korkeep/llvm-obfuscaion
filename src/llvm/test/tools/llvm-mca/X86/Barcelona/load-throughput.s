# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=x86-64 -scheduler-stats -dispatch-stats -iterations=100 -timeline -timeline-max-iterations=1 < %s | FileCheck %s

# LLVM-MCA-BEGIN
movb (%rax), %spl
movb (%rcx), %bpl
movb (%rdx), %sil
movb (%rbx), %dil
# LLVM-MCA-END

# LLVM-MCA-BEGIN
movw (%rax), %sp
movw (%rcx), %bp
movw (%rdx), %si
movw (%rbx), %di
# LLVM-MCA-END

# LLVM-MCA-BEGIN
movl (%rax), %esp
movl (%rcx), %ebp
movl (%rdx), %esi
movl (%rbx), %edi
# LLVM-MCA-END

# LLVM-MCA-BEGIN
movq (%rax), %rsp
movq (%rcx), %rbp
movq (%rdx), %rsi
movq (%rbx), %rdi
# LLVM-MCA-END

# LLVM-MCA-BEGIN
movd (%rax), %mm0
movd (%rcx), %mm1
movd (%rdx), %mm2
movd (%rbx), %mm3
# LLVM-MCA-END

# LLVM-MCA-BEGIN
movaps (%rax), %xmm0
movaps (%rcx), %xmm1
movaps (%rdx), %xmm2
movaps (%rbx), %xmm3
# LLVM-MCA-END

# CHECK:      [0] Code Region

# CHECK:      Iterations:        100
# CHECK-NEXT: Instructions:      400
# CHECK-NEXT: Total Cycles:      207
# CHECK-NEXT: Total uOps:        400

# CHECK:      Dispatch Width:    4
# CHECK-NEXT: uOps Per Cycle:    1.93
# CHECK-NEXT: IPC:               1.93
# CHECK-NEXT: Block RThroughput: 2.0

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      5     0.50    *                   movb	(%rax), %spl
# CHECK-NEXT:  1      5     0.50    *                   movb	(%rcx), %bpl
# CHECK-NEXT:  1      5     0.50    *                   movb	(%rdx), %sil
# CHECK-NEXT:  1      5     0.50    *                   movb	(%rbx), %dil

# CHECK:      Dynamic Dispatch Stall Cycles:
# CHECK-NEXT: RAT     - Register unavailable:                      0
# CHECK-NEXT: RCU     - Retire tokens unavailable:                 0
# CHECK-NEXT: SCHEDQ  - Scheduler full:                            147  (71.0%)
# CHECK-NEXT: LQ      - Load queue full:                           0
# CHECK-NEXT: SQ      - Store queue full:                          0
# CHECK-NEXT: GROUP   - Static restrictions on the dispatch group: 0

# CHECK:      Dispatch Logic - number of cycles where we saw N micro opcodes dispatched:
# CHECK-NEXT: [# dispatched], [# cycles]
# CHECK-NEXT:  0,              33  (15.9%)
# CHECK-NEXT:  2,              148  (71.5%)
# CHECK-NEXT:  4,              26  (12.6%)

# CHECK:      Schedulers - number of cycles where we saw N micro opcodes issued:
# CHECK-NEXT: [# issued], [# cycles]
# CHECK-NEXT:  0,          7  (3.4%)
# CHECK-NEXT:  2,          200  (96.6%)

# CHECK:      Scheduler's queue usage:
# CHECK-NEXT: [1] Resource name.
# CHECK-NEXT: [2] Average number of used buffer entries.
# CHECK-NEXT: [3] Maximum number of used buffer entries.
# CHECK-NEXT: [4] Total number of buffer entries.

# CHECK:       [1]            [2]        [3]        [4]
# CHECK-NEXT: SBPortAny        45         54         54

# CHECK:      Resources:
# CHECK-NEXT: [0]   - SBDivider
# CHECK-NEXT: [1]   - SBFPDivider
# CHECK-NEXT: [2]   - SBPort0
# CHECK-NEXT: [3]   - SBPort1
# CHECK-NEXT: [4]   - SBPort4
# CHECK-NEXT: [5]   - SBPort5
# CHECK-NEXT: [6.0] - SBPort23
# CHECK-NEXT: [6.1] - SBPort23

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]
# CHECK-NEXT:  -      -      -      -      -      -     2.00   2.00

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]  Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movb	(%rax), %spl
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movb	(%rcx), %bpl
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movb	(%rdx), %sil
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movb	(%rbx), %dil

# CHECK:      Timeline view:
# CHECK-NEXT: Index     012345678

# CHECK:      [0,0]     DeeeeeER.   movb	(%rax), %spl
# CHECK-NEXT: [0,1]     DeeeeeER.   movb	(%rcx), %bpl
# CHECK-NEXT: [0,2]     D=eeeeeER   movb	(%rdx), %sil
# CHECK-NEXT: [0,3]     D=eeeeeER   movb	(%rbx), %dil

# CHECK:      Average Wait times (based on the timeline view):
# CHECK-NEXT: [0]: Executions
# CHECK-NEXT: [1]: Average time spent waiting in a scheduler's queue
# CHECK-NEXT: [2]: Average time spent waiting in a scheduler's queue while ready
# CHECK-NEXT: [3]: Average time elapsed from WB until retire stage

# CHECK:            [0]    [1]    [2]    [3]
# CHECK-NEXT: 0.     1     1.0    1.0    0.0       movb	(%rax), %spl
# CHECK-NEXT: 1.     1     1.0    1.0    0.0       movb	(%rcx), %bpl
# CHECK-NEXT: 2.     1     2.0    2.0    0.0       movb	(%rdx), %sil
# CHECK-NEXT: 3.     1     2.0    2.0    0.0       movb	(%rbx), %dil
# CHECK-NEXT:        1     1.5    1.5    0.0       <total>

# CHECK:      [1] Code Region

# CHECK:      Iterations:        100
# CHECK-NEXT: Instructions:      400
# CHECK-NEXT: Total Cycles:      207
# CHECK-NEXT: Total uOps:        400

# CHECK:      Dispatch Width:    4
# CHECK-NEXT: uOps Per Cycle:    1.93
# CHECK-NEXT: IPC:               1.93
# CHECK-NEXT: Block RThroughput: 2.0

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      5     0.50    *                   movw	(%rax), %sp
# CHECK-NEXT:  1      5     0.50    *                   movw	(%rcx), %bp
# CHECK-NEXT:  1      5     0.50    *                   movw	(%rdx), %si
# CHECK-NEXT:  1      5     0.50    *                   movw	(%rbx), %di

# CHECK:      Dynamic Dispatch Stall Cycles:
# CHECK-NEXT: RAT     - Register unavailable:                      0
# CHECK-NEXT: RCU     - Retire tokens unavailable:                 0
# CHECK-NEXT: SCHEDQ  - Scheduler full:                            147  (71.0%)
# CHECK-NEXT: LQ      - Load queue full:                           0
# CHECK-NEXT: SQ      - Store queue full:                          0
# CHECK-NEXT: GROUP   - Static restrictions on the dispatch group: 0

# CHECK:      Dispatch Logic - number of cycles where we saw N micro opcodes dispatched:
# CHECK-NEXT: [# dispatched], [# cycles]
# CHECK-NEXT:  0,              33  (15.9%)
# CHECK-NEXT:  2,              148  (71.5%)
# CHECK-NEXT:  4,              26  (12.6%)

# CHECK:      Schedulers - number of cycles where we saw N micro opcodes issued:
# CHECK-NEXT: [# issued], [# cycles]
# CHECK-NEXT:  0,          7  (3.4%)
# CHECK-NEXT:  2,          200  (96.6%)

# CHECK:      Scheduler's queue usage:
# CHECK-NEXT: [1] Resource name.
# CHECK-NEXT: [2] Average number of used buffer entries.
# CHECK-NEXT: [3] Maximum number of used buffer entries.
# CHECK-NEXT: [4] Total number of buffer entries.

# CHECK:       [1]            [2]        [3]        [4]
# CHECK-NEXT: SBPortAny        45         54         54

# CHECK:      Resources:
# CHECK-NEXT: [0]   - SBDivider
# CHECK-NEXT: [1]   - SBFPDivider
# CHECK-NEXT: [2]   - SBPort0
# CHECK-NEXT: [3]   - SBPort1
# CHECK-NEXT: [4]   - SBPort4
# CHECK-NEXT: [5]   - SBPort5
# CHECK-NEXT: [6.0] - SBPort23
# CHECK-NEXT: [6.1] - SBPort23

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]
# CHECK-NEXT:  -      -      -      -      -      -     2.00   2.00

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]  Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movw	(%rax), %sp
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movw	(%rcx), %bp
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movw	(%rdx), %si
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movw	(%rbx), %di

# CHECK:      Timeline view:
# CHECK-NEXT: Index     012345678

# CHECK:      [0,0]     DeeeeeER.   movw	(%rax), %sp
# CHECK-NEXT: [0,1]     DeeeeeER.   movw	(%rcx), %bp
# CHECK-NEXT: [0,2]     D=eeeeeER   movw	(%rdx), %si
# CHECK-NEXT: [0,3]     D=eeeeeER   movw	(%rbx), %di

# CHECK:      Average Wait times (based on the timeline view):
# CHECK-NEXT: [0]: Executions
# CHECK-NEXT: [1]: Average time spent waiting in a scheduler's queue
# CHECK-NEXT: [2]: Average time spent waiting in a scheduler's queue while ready
# CHECK-NEXT: [3]: Average time elapsed from WB until retire stage

# CHECK:            [0]    [1]    [2]    [3]
# CHECK-NEXT: 0.     1     1.0    1.0    0.0       movw	(%rax), %sp
# CHECK-NEXT: 1.     1     1.0    1.0    0.0       movw	(%rcx), %bp
# CHECK-NEXT: 2.     1     2.0    2.0    0.0       movw	(%rdx), %si
# CHECK-NEXT: 3.     1     2.0    2.0    0.0       movw	(%rbx), %di
# CHECK-NEXT:        1     1.5    1.5    0.0       <total>

# CHECK:      [2] Code Region

# CHECK:      Iterations:        100
# CHECK-NEXT: Instructions:      400
# CHECK-NEXT: Total Cycles:      207
# CHECK-NEXT: Total uOps:        400

# CHECK:      Dispatch Width:    4
# CHECK-NEXT: uOps Per Cycle:    1.93
# CHECK-NEXT: IPC:               1.93
# CHECK-NEXT: Block RThroughput: 2.0

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      5     0.50    *                   movl	(%rax), %esp
# CHECK-NEXT:  1      5     0.50    *                   movl	(%rcx), %ebp
# CHECK-NEXT:  1      5     0.50    *                   movl	(%rdx), %esi
# CHECK-NEXT:  1      5     0.50    *                   movl	(%rbx), %edi

# CHECK:      Dynamic Dispatch Stall Cycles:
# CHECK-NEXT: RAT     - Register unavailable:                      0
# CHECK-NEXT: RCU     - Retire tokens unavailable:                 0
# CHECK-NEXT: SCHEDQ  - Scheduler full:                            147  (71.0%)
# CHECK-NEXT: LQ      - Load queue full:                           0
# CHECK-NEXT: SQ      - Store queue full:                          0
# CHECK-NEXT: GROUP   - Static restrictions on the dispatch group: 0

# CHECK:      Dispatch Logic - number of cycles where we saw N micro opcodes dispatched:
# CHECK-NEXT: [# dispatched], [# cycles]
# CHECK-NEXT:  0,              33  (15.9%)
# CHECK-NEXT:  2,              148  (71.5%)
# CHECK-NEXT:  4,              26  (12.6%)

# CHECK:      Schedulers - number of cycles where we saw N micro opcodes issued:
# CHECK-NEXT: [# issued], [# cycles]
# CHECK-NEXT:  0,          7  (3.4%)
# CHECK-NEXT:  2,          200  (96.6%)

# CHECK:      Scheduler's queue usage:
# CHECK-NEXT: [1] Resource name.
# CHECK-NEXT: [2] Average number of used buffer entries.
# CHECK-NEXT: [3] Maximum number of used buffer entries.
# CHECK-NEXT: [4] Total number of buffer entries.

# CHECK:       [1]            [2]        [3]        [4]
# CHECK-NEXT: SBPortAny        45         54         54

# CHECK:      Resources:
# CHECK-NEXT: [0]   - SBDivider
# CHECK-NEXT: [1]   - SBFPDivider
# CHECK-NEXT: [2]   - SBPort0
# CHECK-NEXT: [3]   - SBPort1
# CHECK-NEXT: [4]   - SBPort4
# CHECK-NEXT: [5]   - SBPort5
# CHECK-NEXT: [6.0] - SBPort23
# CHECK-NEXT: [6.1] - SBPort23

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]
# CHECK-NEXT:  -      -      -      -      -      -     2.00   2.00

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]  Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movl	(%rax), %esp
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movl	(%rcx), %ebp
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movl	(%rdx), %esi
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movl	(%rbx), %edi

# CHECK:      Timeline view:
# CHECK-NEXT: Index     012345678

# CHECK:      [0,0]     DeeeeeER.   movl	(%rax), %esp
# CHECK-NEXT: [0,1]     DeeeeeER.   movl	(%rcx), %ebp
# CHECK-NEXT: [0,2]     D=eeeeeER   movl	(%rdx), %esi
# CHECK-NEXT: [0,3]     D=eeeeeER   movl	(%rbx), %edi

# CHECK:      Average Wait times (based on the timeline view):
# CHECK-NEXT: [0]: Executions
# CHECK-NEXT: [1]: Average time spent waiting in a scheduler's queue
# CHECK-NEXT: [2]: Average time spent waiting in a scheduler's queue while ready
# CHECK-NEXT: [3]: Average time elapsed from WB until retire stage

# CHECK:            [0]    [1]    [2]    [3]
# CHECK-NEXT: 0.     1     1.0    1.0    0.0       movl	(%rax), %esp
# CHECK-NEXT: 1.     1     1.0    1.0    0.0       movl	(%rcx), %ebp
# CHECK-NEXT: 2.     1     2.0    2.0    0.0       movl	(%rdx), %esi
# CHECK-NEXT: 3.     1     2.0    2.0    0.0       movl	(%rbx), %edi
# CHECK-NEXT:        1     1.5    1.5    0.0       <total>

# CHECK:      [3] Code Region

# CHECK:      Iterations:        100
# CHECK-NEXT: Instructions:      400
# CHECK-NEXT: Total Cycles:      207
# CHECK-NEXT: Total uOps:        400

# CHECK:      Dispatch Width:    4
# CHECK-NEXT: uOps Per Cycle:    1.93
# CHECK-NEXT: IPC:               1.93
# CHECK-NEXT: Block RThroughput: 2.0

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      5     0.50    *                   movq	(%rax), %rsp
# CHECK-NEXT:  1      5     0.50    *                   movq	(%rcx), %rbp
# CHECK-NEXT:  1      5     0.50    *                   movq	(%rdx), %rsi
# CHECK-NEXT:  1      5     0.50    *                   movq	(%rbx), %rdi

# CHECK:      Dynamic Dispatch Stall Cycles:
# CHECK-NEXT: RAT     - Register unavailable:                      0
# CHECK-NEXT: RCU     - Retire tokens unavailable:                 0
# CHECK-NEXT: SCHEDQ  - Scheduler full:                            147  (71.0%)
# CHECK-NEXT: LQ      - Load queue full:                           0
# CHECK-NEXT: SQ      - Store queue full:                          0
# CHECK-NEXT: GROUP   - Static restrictions on the dispatch group: 0

# CHECK:      Dispatch Logic - number of cycles where we saw N micro opcodes dispatched:
# CHECK-NEXT: [# dispatched], [# cycles]
# CHECK-NEXT:  0,              33  (15.9%)
# CHECK-NEXT:  2,              148  (71.5%)
# CHECK-NEXT:  4,              26  (12.6%)

# CHECK:      Schedulers - number of cycles where we saw N micro opcodes issued:
# CHECK-NEXT: [# issued], [# cycles]
# CHECK-NEXT:  0,          7  (3.4%)
# CHECK-NEXT:  2,          200  (96.6%)

# CHECK:      Scheduler's queue usage:
# CHECK-NEXT: [1] Resource name.
# CHECK-NEXT: [2] Average number of used buffer entries.
# CHECK-NEXT: [3] Maximum number of used buffer entries.
# CHECK-NEXT: [4] Total number of buffer entries.

# CHECK:       [1]            [2]        [3]        [4]
# CHECK-NEXT: SBPortAny        45         54         54

# CHECK:      Resources:
# CHECK-NEXT: [0]   - SBDivider
# CHECK-NEXT: [1]   - SBFPDivider
# CHECK-NEXT: [2]   - SBPort0
# CHECK-NEXT: [3]   - SBPort1
# CHECK-NEXT: [4]   - SBPort4
# CHECK-NEXT: [5]   - SBPort5
# CHECK-NEXT: [6.0] - SBPort23
# CHECK-NEXT: [6.1] - SBPort23

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]
# CHECK-NEXT:  -      -      -      -      -      -     2.00   2.00

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]  Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movq	(%rax), %rsp
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movq	(%rcx), %rbp
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movq	(%rdx), %rsi
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movq	(%rbx), %rdi

# CHECK:      Timeline view:
# CHECK-NEXT: Index     012345678

# CHECK:      [0,0]     DeeeeeER.   movq	(%rax), %rsp
# CHECK-NEXT: [0,1]     DeeeeeER.   movq	(%rcx), %rbp
# CHECK-NEXT: [0,2]     D=eeeeeER   movq	(%rdx), %rsi
# CHECK-NEXT: [0,3]     D=eeeeeER   movq	(%rbx), %rdi

# CHECK:      Average Wait times (based on the timeline view):
# CHECK-NEXT: [0]: Executions
# CHECK-NEXT: [1]: Average time spent waiting in a scheduler's queue
# CHECK-NEXT: [2]: Average time spent waiting in a scheduler's queue while ready
# CHECK-NEXT: [3]: Average time elapsed from WB until retire stage

# CHECK:            [0]    [1]    [2]    [3]
# CHECK-NEXT: 0.     1     1.0    1.0    0.0       movq	(%rax), %rsp
# CHECK-NEXT: 1.     1     1.0    1.0    0.0       movq	(%rcx), %rbp
# CHECK-NEXT: 2.     1     2.0    2.0    0.0       movq	(%rdx), %rsi
# CHECK-NEXT: 3.     1     2.0    2.0    0.0       movq	(%rbx), %rdi
# CHECK-NEXT:        1     1.5    1.5    0.0       <total>

# CHECK:      [4] Code Region

# CHECK:      Iterations:        100
# CHECK-NEXT: Instructions:      400
# CHECK-NEXT: Total Cycles:      207
# CHECK-NEXT: Total uOps:        400

# CHECK:      Dispatch Width:    4
# CHECK-NEXT: uOps Per Cycle:    1.93
# CHECK-NEXT: IPC:               1.93
# CHECK-NEXT: Block RThroughput: 2.0

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      5     0.50    *                   movd	(%rax), %mm0
# CHECK-NEXT:  1      5     0.50    *                   movd	(%rcx), %mm1
# CHECK-NEXT:  1      5     0.50    *                   movd	(%rdx), %mm2
# CHECK-NEXT:  1      5     0.50    *                   movd	(%rbx), %mm3

# CHECK:      Dynamic Dispatch Stall Cycles:
# CHECK-NEXT: RAT     - Register unavailable:                      0
# CHECK-NEXT: RCU     - Retire tokens unavailable:                 0
# CHECK-NEXT: SCHEDQ  - Scheduler full:                            147  (71.0%)
# CHECK-NEXT: LQ      - Load queue full:                           0
# CHECK-NEXT: SQ      - Store queue full:                          0
# CHECK-NEXT: GROUP   - Static restrictions on the dispatch group: 0

# CHECK:      Dispatch Logic - number of cycles where we saw N micro opcodes dispatched:
# CHECK-NEXT: [# dispatched], [# cycles]
# CHECK-NEXT:  0,              33  (15.9%)
# CHECK-NEXT:  2,              148  (71.5%)
# CHECK-NEXT:  4,              26  (12.6%)

# CHECK:      Schedulers - number of cycles where we saw N micro opcodes issued:
# CHECK-NEXT: [# issued], [# cycles]
# CHECK-NEXT:  0,          7  (3.4%)
# CHECK-NEXT:  2,          200  (96.6%)

# CHECK:      Scheduler's queue usage:
# CHECK-NEXT: [1] Resource name.
# CHECK-NEXT: [2] Average number of used buffer entries.
# CHECK-NEXT: [3] Maximum number of used buffer entries.
# CHECK-NEXT: [4] Total number of buffer entries.

# CHECK:       [1]            [2]        [3]        [4]
# CHECK-NEXT: SBPortAny        45         54         54

# CHECK:      Resources:
# CHECK-NEXT: [0]   - SBDivider
# CHECK-NEXT: [1]   - SBFPDivider
# CHECK-NEXT: [2]   - SBPort0
# CHECK-NEXT: [3]   - SBPort1
# CHECK-NEXT: [4]   - SBPort4
# CHECK-NEXT: [5]   - SBPort5
# CHECK-NEXT: [6.0] - SBPort23
# CHECK-NEXT: [6.1] - SBPort23

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]
# CHECK-NEXT:  -      -      -      -      -      -     2.00   2.00

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]  Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movd	(%rax), %mm0
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movd	(%rcx), %mm1
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movd	(%rdx), %mm2
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movd	(%rbx), %mm3

# CHECK:      Timeline view:
# CHECK-NEXT: Index     012345678

# CHECK:      [0,0]     DeeeeeER.   movd	(%rax), %mm0
# CHECK-NEXT: [0,1]     DeeeeeER.   movd	(%rcx), %mm1
# CHECK-NEXT: [0,2]     D=eeeeeER   movd	(%rdx), %mm2
# CHECK-NEXT: [0,3]     D=eeeeeER   movd	(%rbx), %mm3

# CHECK:      Average Wait times (based on the timeline view):
# CHECK-NEXT: [0]: Executions
# CHECK-NEXT: [1]: Average time spent waiting in a scheduler's queue
# CHECK-NEXT: [2]: Average time spent waiting in a scheduler's queue while ready
# CHECK-NEXT: [3]: Average time elapsed from WB until retire stage

# CHECK:            [0]    [1]    [2]    [3]
# CHECK-NEXT: 0.     1     1.0    1.0    0.0       movd	(%rax), %mm0
# CHECK-NEXT: 1.     1     1.0    1.0    0.0       movd	(%rcx), %mm1
# CHECK-NEXT: 2.     1     2.0    2.0    0.0       movd	(%rdx), %mm2
# CHECK-NEXT: 3.     1     2.0    2.0    0.0       movd	(%rbx), %mm3
# CHECK-NEXT:        1     1.5    1.5    0.0       <total>

# CHECK:      [5] Code Region

# CHECK:      Iterations:        100
# CHECK-NEXT: Instructions:      400
# CHECK-NEXT: Total Cycles:      208
# CHECK-NEXT: Total uOps:        400

# CHECK:      Dispatch Width:    4
# CHECK-NEXT: uOps Per Cycle:    1.92
# CHECK-NEXT: IPC:               1.92
# CHECK-NEXT: Block RThroughput: 2.0

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      6     0.50    *                   movaps	(%rax), %xmm0
# CHECK-NEXT:  1      6     0.50    *                   movaps	(%rcx), %xmm1
# CHECK-NEXT:  1      6     0.50    *                   movaps	(%rdx), %xmm2
# CHECK-NEXT:  1      6     0.50    *                   movaps	(%rbx), %xmm3

# CHECK:      Dynamic Dispatch Stall Cycles:
# CHECK-NEXT: RAT     - Register unavailable:                      0
# CHECK-NEXT: RCU     - Retire tokens unavailable:                 0
# CHECK-NEXT: SCHEDQ  - Scheduler full:                            147  (70.7%)
# CHECK-NEXT: LQ      - Load queue full:                           0
# CHECK-NEXT: SQ      - Store queue full:                          0
# CHECK-NEXT: GROUP   - Static restrictions on the dispatch group: 0

# CHECK:      Dispatch Logic - number of cycles where we saw N micro opcodes dispatched:
# CHECK-NEXT: [# dispatched], [# cycles]
# CHECK-NEXT:  0,              34  (16.3%)
# CHECK-NEXT:  2,              148  (71.2%)
# CHECK-NEXT:  4,              26  (12.5%)

# CHECK:      Schedulers - number of cycles where we saw N micro opcodes issued:
# CHECK-NEXT: [# issued], [# cycles]
# CHECK-NEXT:  0,          8  (3.8%)
# CHECK-NEXT:  2,          200  (96.2%)

# CHECK:      Scheduler's queue usage:
# CHECK-NEXT: [1] Resource name.
# CHECK-NEXT: [2] Average number of used buffer entries.
# CHECK-NEXT: [3] Maximum number of used buffer entries.
# CHECK-NEXT: [4] Total number of buffer entries.

# CHECK:       [1]            [2]        [3]        [4]
# CHECK-NEXT: SBPortAny        45         54         54

# CHECK:      Resources:
# CHECK-NEXT: [0]   - SBDivider
# CHECK-NEXT: [1]   - SBFPDivider
# CHECK-NEXT: [2]   - SBPort0
# CHECK-NEXT: [3]   - SBPort1
# CHECK-NEXT: [4]   - SBPort4
# CHECK-NEXT: [5]   - SBPort5
# CHECK-NEXT: [6.0] - SBPort23
# CHECK-NEXT: [6.1] - SBPort23

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]
# CHECK-NEXT:  -      -      -      -      -      -     2.00   2.00

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6.0]  [6.1]  Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movaps	(%rax), %xmm0
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movaps	(%rcx), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -     1.00   movaps	(%rdx), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -     movaps	(%rbx), %xmm3

# CHECK:      Timeline view:
# CHECK-NEXT: Index     0123456789

# CHECK:      [0,0]     DeeeeeeER.   movaps	(%rax), %xmm0
# CHECK-NEXT: [0,1]     DeeeeeeER.   movaps	(%rcx), %xmm1
# CHECK-NEXT: [0,2]     D=eeeeeeER   movaps	(%rdx), %xmm2
# CHECK-NEXT: [0,3]     D=eeeeeeER   movaps	(%rbx), %xmm3

# CHECK:      Average Wait times (based on the timeline view):
# CHECK-NEXT: [0]: Executions
# CHECK-NEXT: [1]: Average time spent waiting in a scheduler's queue
# CHECK-NEXT: [2]: Average time spent waiting in a scheduler's queue while ready
# CHECK-NEXT: [3]: Average time elapsed from WB until retire stage

# CHECK:            [0]    [1]    [2]    [3]
# CHECK-NEXT: 0.     1     1.0    1.0    0.0       movaps	(%rax), %xmm0
# CHECK-NEXT: 1.     1     1.0    1.0    0.0       movaps	(%rcx), %xmm1
# CHECK-NEXT: 2.     1     2.0    2.0    0.0       movaps	(%rdx), %xmm2
# CHECK-NEXT: 3.     1     2.0    2.0    0.0       movaps	(%rbx), %xmm3
# CHECK-NEXT:        1     1.5    1.5    0.0       <total>

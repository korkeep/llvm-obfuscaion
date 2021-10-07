# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=btver2 -all-views=false -instruction-info < %s | FileCheck %s --check-prefix=DEFAULT
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=btver2 -all-views=false -instruction-info -print-imm-hex=false < %s | FileCheck %s --check-prefix=DEFAULT
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=btver2 -all-views=false -instruction-info -print-imm-hex < %s | FileCheck %s --check-prefix=HEX
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=btver2 -all-views=false -instruction-info -print-imm-hex=true < %s | FileCheck %s --check-prefix=HEX

  .intel_syntax noprefix
  shl eax, 8
  shl eax, 0x8
  shl eax, 8h
  shl eax, 1000b

# DEFAULT:      Instruction Info:
# DEFAULT-NEXT: [1]: #uOps
# DEFAULT-NEXT: [2]: Latency
# DEFAULT-NEXT: [3]: RThroughput
# DEFAULT-NEXT: [4]: MayLoad
# DEFAULT-NEXT: [5]: MayStore
# DEFAULT-NEXT: [6]: HasSideEffects (U)

# HEX:          Instruction Info:
# HEX-NEXT:     [1]: #uOps
# HEX-NEXT:     [2]: Latency
# HEX-NEXT:     [3]: RThroughput
# HEX-NEXT:     [4]: MayLoad
# HEX-NEXT:     [5]: MayStore
# HEX-NEXT:     [6]: HasSideEffects (U)

# DEFAULT:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# DEFAULT-NEXT:  1      1     0.50                        shl	eax, 8
# DEFAULT-NEXT:  1      1     0.50                        shl	eax, 8
# DEFAULT-NEXT:  1      1     0.50                        shl	eax, 8
# DEFAULT-NEXT:  1      1     0.50                        shl	eax, 8

# HEX:          [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# HEX-NEXT:      1      1     0.50                        shl	eax, 0x8
# HEX-NEXT:      1      1     0.50                        shl	eax, 0x8
# HEX-NEXT:      1      1     0.50                        shl	eax, 0x8
# HEX-NEXT:      1      1     0.50                        shl	eax, 0x8

; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i686--   -no-integrated-as | FileCheck %s -check-prefix=X32
; RUN: llc < %s -mtriple=x86_64-- -no-integrated-as | FileCheck %s -check-prefix=X64

define i32 @test_cca(i64 %nr, i64* %addr) {
; X32-LABEL: test_cca:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setbe %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_cca:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setbe %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@cca},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccae(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccae:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setb %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccae:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setb %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccae},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccb(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccb:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setae %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccb:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setae %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccb},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccbe(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccbe:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    seta %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccbe:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    seta %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccbe},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccc(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccc:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setae %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccc:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setae %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccc},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_cce(i64 %nr, i64* %addr) {
; X32-LABEL: test_cce:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setne %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_cce:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setne %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@cce},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccz(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccz:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setne %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccz:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setne %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccz},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccg(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccg:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setle %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccg:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setle %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccg},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccge(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccge:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setl %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccge:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setl %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccge},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccl(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccl:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setge %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccl:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setge %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccl},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccle(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccle:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setg %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccle:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setg %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccle},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccna(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccna:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    seta %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccna:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    seta %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccna},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnae(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnae:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setae %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnae:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setae %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnae},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnb(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnb:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setb %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnb:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setb %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnb},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnbe(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnbe:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setbe %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnbe:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setbe %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnbe},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnc(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnc:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setb %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnc:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setb %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnc},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccne(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccne:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    sete %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccne:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    sete %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccne},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnz(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnz:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    sete %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnz:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    sete %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnz},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccng(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccng:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setg %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccng:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setg %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccng},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnge(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnge:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setge %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnge:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setge %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnge},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnl(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnl:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setl %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnl:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setl %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnl},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnle(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnle:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setle %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnle:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setle %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnle},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccno(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccno:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    seto %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccno:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    seto %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccno},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccnp(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccnp:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setnp %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccnp:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setnp %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccnp},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccns(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccns:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    sets %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccns:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    sets %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccns},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_cco(i64 %nr, i64* %addr) {
; X32-LABEL: test_cco:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setno %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_cco:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setno %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@cco},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccp(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccp:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setnp %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccp:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setnp %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccp},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}


define i32 @test_ccs(i64 %nr, i64* %addr) {
; X32-LABEL: test_ccs:
; X32:       # %bb.0: # %entry
; X32-NEXT:    pushl %esi
; X32-NEXT:    .cfi_def_cfa_offset 8
; X32-NEXT:    .cfi_offset %esi, -8
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; X32-NEXT:    movl {{[0-9]+}}(%esp), %esi
; X32-NEXT:    xorl %eax, %eax
; X32-NEXT:    #APP
; X32-NEXT:    cmp %ecx,(%esi)
; X32-NEXT:    #NO_APP
; X32-NEXT:    setns %al
; X32-NEXT:    popl %esi
; X32-NEXT:    .cfi_def_cfa_offset 4
; X32-NEXT:    retl
;
; X64-LABEL: test_ccs:
; X64:       # %bb.0: # %entry
; X64-NEXT:    xorl %eax, %eax
; X64-NEXT:    #APP
; X64-NEXT:    cmp %rdi,(%rsi)
; X64-NEXT:    #NO_APP
; X64-NEXT:    setns %al
; X64-NEXT:    retq
entry:
  %cc = tail call i32 asm "cmp $2,$1", "={@ccs},=*m,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %addr, i64 %nr) nounwind
  %tobool = icmp eq i32 %cc, 0
  %rv = zext i1 %tobool to i32
  ret i32 %rv
}

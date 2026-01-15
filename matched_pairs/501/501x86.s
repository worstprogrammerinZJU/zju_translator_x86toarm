	.text
	.globl	socknext                        # -- Begin function socknext
	.p2align	4, 0x90
socknext:                               # @socknext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	$1000000000, %ecx               # imm = 0x3B9ACA00
	cltd
	idivl	%ecx
	movl	%eax, socknext.ts(%rip)
	movl	-20(%rbp), %eax
	movl	$1000000000, %ecx               # imm = 0x3B9ACA00
	cltd
	idivl	%ecx
	movl	%edx, socknext.ts+4(%rip)
	movl	kq(%rip), %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	leaq	-40(%rbp), %rcx
	movl	$1, %r8d
	leaq	socknext.ts(%rip), %r9
	callq	kevent@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_3
# %bb.1:
	movq	errno(%rip), %rax
	cmpq	EINTR(%rip), %rax
	je	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_11
.LBB0_3:
	cmpl	$0, -24(%rbp)
	jle	.LBB0_10
# %bb.4:
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-40(%rbp), %eax
	andl	EV_EOF(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movl	$104, -4(%rbp)
	jmp	.LBB0_11
.LBB0_6:
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_8
	jmp	.LBB0_12
.LBB0_12:
	movl	-44(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	jne	.LBB0_9
	jmp	.LBB0_7
.LBB0_7:
	movl	$114, -4(%rbp)
	jmp	.LBB0_11
.LBB0_8:
	movl	$119, -4(%rbp)
	jmp	.LBB0_11
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movl	$0, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	socknext.ts
	.comm	socknext.ts,8,4
	.bss
	.globl	kq
	.p2align	2
kq:
	.long	0                               # 0x0
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.globl	EINTR
	.p2align	3
EINTR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"kevent"
	.bss
	.globl	EV_EOF
	.p2align	2
EV_EOF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kevent
	.addrsig_sym twarn
	.addrsig_sym socknext.ts
	.addrsig_sym kq
	.addrsig_sym errno
	.addrsig_sym EINTR
	.addrsig_sym EV_EOF
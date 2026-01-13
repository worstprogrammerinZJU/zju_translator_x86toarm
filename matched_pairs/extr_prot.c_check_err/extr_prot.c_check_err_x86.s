	.text
	.p2align	4, 0x90                         # -- Begin function check_err
check_err:                              # @check_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	errno(%rip), %rax
	cmpq	EAGAIN(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_7
.LBB0_2:
	movq	errno(%rip), %rax
	cmpq	EINTR(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	jmp	.LBB0_7
.LBB0_4:
	movq	errno(%rip), %rax
	cmpq	EWOULDBLOCK(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	jmp	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	STATE_CLOSE(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_7:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.globl	EAGAIN
	.p2align	3
EAGAIN:
	.quad	0                               # 0x0
	.globl	EINTR
	.p2align	3
EINTR:
	.quad	0                               # 0x0
	.globl	EWOULDBLOCK
	.p2align	3
EWOULDBLOCK:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.bss
	.globl	STATE_CLOSE
	.p2align	2
STATE_CLOSE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_err
	.addrsig_sym twarn
	.addrsig_sym errno
	.addrsig_sym EAGAIN
	.addrsig_sym EINTR
	.addrsig_sym EWOULDBLOCK
	.addrsig_sym STATE_CLOSE
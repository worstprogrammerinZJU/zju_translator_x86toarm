	.text
	.globl	decFloatIsCanonical             # -- Begin function decFloatIsCanonical
	.p2align	4, 0x90
decFloatIsCanonical:                    # @decFloatIsCanonical
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	DFISSPECIAL@PLT
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	DFISINF@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.2:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	DFWORD@PLT
	andl	ECONMASK(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	DFISCCZERO@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_6:
	movl	$1, -4(%rbp)
	jmp	.LBB0_13
.LBB0_7:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	DFWORD@PLT
	andl	ECONNANMASK(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_9
# %bb.8:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_9:
	movq	-16(%rbp), %rdi
	callq	DFISCCZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movl	$1, -4(%rbp)
	jmp	.LBB0_13
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movl	$0, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ECONMASK
	.p2align	2
ECONMASK:
	.long	0                               # 0x0
	.globl	ECONNANMASK
	.p2align	2
ECONNANMASK:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL
	.addrsig_sym DFISINF
	.addrsig_sym DFWORD
	.addrsig_sym DFISCCZERO
	.addrsig_sym ECONMASK
	.addrsig_sym ECONNANMASK
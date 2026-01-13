	.text
	.globl	decFloatSameQuantum             # -- Begin function decFloatSameQuantum
	.p2align	4, 0x90
decFloatSameQuantum:                    # @decFloatSameQuantum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	DFISSPECIAL@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	DFISSPECIAL@PLT
	cmpq	$0, %rax
	je	.LBB0_9
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movl	$1, -4(%rbp)
	jmp	.LBB0_12
.LBB0_5:
	movq	-16(%rbp), %rdi
	callq	DFISINF@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.6:
	movq	-24(%rbp), %rdi
	callq	DFISINF@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:
	movl	$1, -4(%rbp)
	jmp	.LBB0_12
.LBB0_8:
	movl	$0, -4(%rbp)
	jmp	.LBB0_12
.LBB0_9:
	movq	-16(%rbp), %rdi
	callq	GETEXP@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	GETEXP@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB0_11
# %bb.10:
	movl	$1, -4(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movl	$0, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL
	.addrsig_sym DFISNAN
	.addrsig_sym DFISINF
	.addrsig_sym GETEXP
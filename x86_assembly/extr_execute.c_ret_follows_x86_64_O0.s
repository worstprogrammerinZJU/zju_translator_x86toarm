	.text
	.p2align	4, 0x90                         # -- Begin function ret_follows
ret_follows:                            # @ret_follows
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	RET(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	cmpq	JUMP(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	addq	$8, %rdi
	callq	ret_follows
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	RET
	.p2align	3
RET:
	.quad	0                               # 0x0
	.globl	JUMP
	.p2align	3
JUMP:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ret_follows
	.addrsig_sym RET
	.addrsig_sym JUMP
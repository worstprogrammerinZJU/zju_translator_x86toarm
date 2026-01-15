	.text
	.globl	option_find_float_quiet         # -- Begin function option_find_float_quiet
	.p2align	4, 0x90
option_find_float_quiet:                # @option_find_float_quiet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	option_find@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rdi
	callq	atof@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_3:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym atof
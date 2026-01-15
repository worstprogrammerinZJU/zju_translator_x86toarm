	.text
	.globl	option_find_float               # -- Begin function option_find_float
	.p2align	4, 0x90
option_find_float:                      # @option_find_float
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
	movl	stderr(%rip), %edi
	movq	-24(%rbp), %rdx
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_3:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: Using default '%lf'\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym atof
	.addrsig_sym fprintf
	.addrsig_sym stderr
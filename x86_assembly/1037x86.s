	.text
	.p2align	4, 0x90                         # -- Begin function pop_function
pop_function:                           # @pop_function
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, dumpstack(%rip)
	je	.LBB0_2
# %bb.1:
	movl	functions(%rip), %edi
	callq	vec_pop@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	dumpstack
	.p2align	3
dumpstack:
	.quad	0                               # 0x0
	.globl	functions
	.p2align	2
functions:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pop_function
	.addrsig_sym vec_pop
	.addrsig_sym dumpstack
	.addrsig_sym functions
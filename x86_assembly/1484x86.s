	.text
	.p2align	4, 0x90                         # -- Begin function yy_pop_state
yy_pop_state:                           # @yy_pop_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, (%rcx)
	cmpq	$0, %rax
	jge	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	BEGIN@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"start-condition stack underflow"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_pop_state
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym BEGIN
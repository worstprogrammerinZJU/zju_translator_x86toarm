	.text
	.globl	parse_reorg                     # -- Begin function parse_reorg
	.p2align	4, 0x90
parse_reorg:                            # @parse_reorg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_3
# %bb.1:
	cmpl	$0, -52(%rbp)
	je	.LBB0_3
# %bb.2:
	cmpl	$0, -56(%rbp)
	jne	.LBB0_4
.LBB0_3:
	leaq	.L.str.4(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movl	-44(%rbp), %edi
	movl	-52(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	make_reorg_layer@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stride"
.L.str.1:
	.asciz	"reverse"
.L.str.2:
	.asciz	"flatten"
.L.str.3:
	.asciz	"extra"
.L.str.4:
	.asciz	"Layer before reorg layer must output image."
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym error
	.addrsig_sym make_reorg_layer
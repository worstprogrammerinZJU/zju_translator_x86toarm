	.text
	.globl	parse_maxpool                   # -- Begin function parse_maxpool
	.p2align	4, 0x90
parse_maxpool:                          # @parse_maxpool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	leaq	.L.str.1(%rip), %rsi
	callq	option_find_int@PLT
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %edx
	subl	$1, %edx
	leaq	.L.str.2(%rip), %rsi
	callq	option_find_int_quiet@PLT
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_3
# %bb.1:
	cmpl	$0, -48(%rbp)
	je	.LBB0_3
# %bb.2:
	cmpl	$0, -52(%rbp)
	jne	.LBB0_4
.LBB0_3:
	leaq	.L.str.3(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-36(%rbp), %eax
	movl	%eax, (%rsp)
	callq	make_maxpool_layer@PLT
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stride"
.L.str.1:
	.asciz	"size"
.L.str.2:
	.asciz	"padding"
.L.str.3:
	.asciz	"Layer before maxpool layer must output image."
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym error
	.addrsig_sym make_maxpool_layer
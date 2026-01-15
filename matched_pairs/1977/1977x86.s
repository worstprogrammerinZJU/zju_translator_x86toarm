	.text
	.globl	parse_avgpool                   # -- Begin function parse_avgpool
	.p2align	4, 0x90
parse_avgpool:                          # @parse_avgpool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB0_3
# %bb.1:
	cmpl	$0, -32(%rbp)
	je	.LBB0_3
# %bb.2:
	cmpl	$0, -40(%rbp)
	jne	.LBB0_4
.LBB0_3:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	make_avgpool_layer@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Layer before avgpool layer must output image."
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym error
	.addrsig_sym make_avgpool_layer
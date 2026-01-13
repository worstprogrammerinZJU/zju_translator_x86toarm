	.text
	.globl	parse_normalization             # -- Begin function parse_normalization
	.p2align	4, 0x90
parse_normalization:                    # @parse_normalization
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_float@PLT
	movss	%xmm0, -28(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_float@PLT
	movss	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float@PLT
	movss	%xmm0, -36(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$5, %edx
	callq	option_find_int@PLT
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	callq	make_normalization_layer@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alpha"
.L.str.1:
	.asciz	"beta"
.L.str.2:
	.asciz	"kappa"
.L.str.3:
	.asciz	"size"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_float
	.addrsig_sym option_find_int
	.addrsig_sym make_normalization_layer
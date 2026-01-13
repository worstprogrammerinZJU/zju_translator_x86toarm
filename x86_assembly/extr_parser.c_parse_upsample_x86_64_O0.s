	.text
	.globl	parse_upsample                  # -- Begin function parse_upsample
	.p2align	4, 0x90
parse_upsample:                         # @parse_upsample
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$2, %edx
	callq	option_find_int@PLT
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	make_upsample_layer@PLT
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float_quiet@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stride"
.L.str.1:
	.asciz	"scale"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym make_upsample_layer
	.addrsig_sym option_find_float_quiet
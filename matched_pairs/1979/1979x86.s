	.text
	.globl	parse_connected                 # -- Begin function parse_connected
	.p2align	4, 0x90
parse_connected:                        # @parse_connected
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
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	option_find_str@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	get_activation@PLT
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movl	%eax, -48(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	(%rax), %r9d
	callq	make_connected_layer@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output"
.L.str.1:
	.asciz	"activation"
.L.str.2:
	.asciz	"logistic"
.L.str.3:
	.asciz	"batch_normalize"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_connected_layer
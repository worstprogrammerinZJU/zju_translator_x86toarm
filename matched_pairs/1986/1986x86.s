	.text
	.globl	parse_gru                       # -- Begin function parse_gru
	.p2align	4, 0x90
parse_gru:                              # @parse_gru
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -24(%rbp)
	movl	16(%rax), %edi
	movl	12(%rax), %esi
	movl	-20(%rbp), %edx
	movl	8(%rax), %ecx
	movl	-24(%rbp), %r8d
	movq	(%rax), %rax
	movl	(%rax), %r9d
	callq	make_gru_layer@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output"
.L.str.1:
	.asciz	"batch_normalize"
.L.str.2:
	.asciz	"tanh"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_gru_layer
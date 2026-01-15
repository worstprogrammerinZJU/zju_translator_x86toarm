	.text
	.globl	parse_rnn                       # -- Begin function parse_rnn
	.p2align	4, 0x90
parse_rnn:                              # @parse_rnn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	option_find_str@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	get_activation@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -40(%rbp)
	movl	16(%rax), %edi
	movl	12(%rax), %esi
	movl	-20(%rbp), %edx
	movl	8(%rax), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	callq	make_rnn_layer@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
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
.L.str.4:
	.asciz	"shortcut"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_rnn_layer
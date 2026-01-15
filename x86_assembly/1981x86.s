	.text
	.globl	parse_crnn                      # -- Begin function parse_crnn
	.p2align	4, 0x90
parse_crnn:                             # @parse_crnn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
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
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	option_find_str@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	get_activation@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -40(%rbp)
	movl	16(%rax), %edi
	movl	12(%rax), %esi
	movl	8(%rax), %edx
	movl	4(%rax), %ecx
	movl	-24(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	(%rax), %r11d
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %eax
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	make_crnn_layer@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output_filters"
.L.str.1:
	.asciz	"hidden_filters"
.L.str.2:
	.asciz	"activation"
.L.str.3:
	.asciz	"logistic"
.L.str.4:
	.asciz	"batch_normalize"
.L.str.5:
	.asciz	"shortcut"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_crnn_layer
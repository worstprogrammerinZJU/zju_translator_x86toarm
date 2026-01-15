	.text
	.globl	parse_activation                # -- Begin function parse_activation
	.p2align	4, 0x90
parse_activation:                       # @parse_activation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	option_find_str@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_activation@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -20(%rbp)
	movl	16(%rax), %esi
	movl	12(%rax), %edx
	movl	-20(%rbp), %ecx
	callq	make_activation_layer@PLT
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	8(%rcx), %edx
	movl	%edx, 16(%rdi)
	movl	%edx, 20(%rdi)
	movl	4(%rcx), %edx
	movl	%edx, 8(%rdi)
	movl	%edx, 12(%rdi)
	movl	(%rcx), %ecx
	movl	%ecx, (%rdi)
	movl	%ecx, 4(%rdi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"activation"
.L.str.1:
	.asciz	"linear"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym make_activation_layer
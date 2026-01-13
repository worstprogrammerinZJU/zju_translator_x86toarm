	.text
	.globl	parse_softmax                   # -- Begin function parse_softmax
	.p2align	4, 0x90
parse_softmax:                          # @parse_softmax
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int_quiet@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -12(%rbp)
	movl	16(%rax), %esi
	movl	12(%rax), %edx
	movl	-12(%rbp), %ecx
	callq	make_softmax_layer@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float_quiet@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	read_tree@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 28(%rax)
.LBB0_2:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	8(%rcx), %edx
	movl	%edx, 24(%rax)
	movl	4(%rcx), %edx
	movl	%edx, 20(%rax)
	movl	(%rcx), %ecx
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_float_quiet@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rdx, (%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"groups"
.L.str.1:
	.asciz	"temperature"
.L.str.2:
	.asciz	"tree"
.L.str.3:
	.asciz	"spatial"
.L.str.4:
	.asciz	"noloss"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_softmax_layer
	.addrsig_sym option_find_float_quiet
	.addrsig_sym option_find_str
	.addrsig_sym read_tree
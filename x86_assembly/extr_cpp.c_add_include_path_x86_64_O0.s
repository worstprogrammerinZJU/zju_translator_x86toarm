	.text
	.globl	add_include_path                # -- Begin function add_include_path
	.p2align	4, 0x90
add_include_path:                       # @add_include_path
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	std_include_path(%rip), %edi
	movq	-8(%rbp), %rsi
	callq	vec_push@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	std_include_path
	.p2align	2
std_include_path:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_push
	.addrsig_sym std_include_path
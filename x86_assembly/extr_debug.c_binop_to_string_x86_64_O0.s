	.text
	.p2align	4, 0x90                         # -- Begin function binop_to_string
binop_to_string:                        # @binop_to_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	node2s@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	node2s@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-28(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %r8d
	leaq	.L.str(%rip), %rsi
	callq	buf_printf@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(%s %s %s)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym binop_to_string
	.addrsig_sym buf_printf
	.addrsig_sym node2s
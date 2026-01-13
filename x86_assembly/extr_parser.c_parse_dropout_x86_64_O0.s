	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function parse_dropout
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	parse_dropout
	.p2align	4, 0x90
parse_dropout:                          # @parse_dropout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	option_find_float@PLT
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, -28(%rbp)
	movl	12(%rax), %esi
	movl	16(%rax), %edi
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	make_dropout_layer@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	%edx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movl	8(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"probability"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_float
	.addrsig_sym make_dropout_layer
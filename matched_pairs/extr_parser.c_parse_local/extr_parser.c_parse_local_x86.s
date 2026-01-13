	.text
	.globl	parse_local                     # -- Begin function parse_local
	.p2align	4, 0x90
parse_local:                            # @parse_local
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
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
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int@PLT
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	option_find_str@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	get_activation@PLT
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB0_3
# %bb.1:
	cmpl	$0, -64(%rbp)
	je	.LBB0_3
# %bb.2:
	cmpl	$0, -68(%rbp)
	jne	.LBB0_4
.LBB0_3:
	leaq	.L.str.6(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movl	-56(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r11d
	movl	-40(%rbp), %r10d
	movl	-52(%rbp), %eax
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	make_local_layer@PLT
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filters"
.L.str.1:
	.asciz	"size"
.L.str.2:
	.asciz	"stride"
.L.str.3:
	.asciz	"pad"
.L.str.4:
	.asciz	"activation"
.L.str.5:
	.asciz	"logistic"
.L.str.6:
	.asciz	"Layer before local layer must output image."
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym error
	.addrsig_sym make_local_layer
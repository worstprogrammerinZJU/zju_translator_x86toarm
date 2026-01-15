	.text
	.globl	parse_deconvolutional           # -- Begin function parse_deconvolutional
	.p2align	4, 0x90
parse_deconvolutional:                  # @parse_deconvolutional
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
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
	leaq	.L.str.4(%rip), %rdx
	callq	option_find_str@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	get_activation@PLT
	movl	%eax, %ecx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -52(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movl	8(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movl	12(%rax), %eax
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
	leaq	.L.str.5(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movq	-24(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movl	%eax, -72(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movl	%eax, -80(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB0_6
# %bb.5:
	movl	-32(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -80(%rbp)
.LBB0_6:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	-56(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r14d
	movl	-80(%rbp), %ebx
	movl	-52(%rbp), %r11d
	movl	-72(%rbp), %r10d
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%r14d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	make_deconvolutional_layer@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
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
	.asciz	"activation"
.L.str.4:
	.asciz	"logistic"
.L.str.5:
	.asciz	"Layer before deconvolutional layer must output image."
.L.str.6:
	.asciz	"batch_normalize"
.L.str.7:
	.asciz	"pad"
.L.str.8:
	.asciz	"padding"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym error
	.addrsig_sym option_find_int_quiet
	.addrsig_sym make_deconvolutional_layer
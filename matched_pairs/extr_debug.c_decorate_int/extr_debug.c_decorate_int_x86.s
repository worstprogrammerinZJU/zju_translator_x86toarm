	.text
	.p2align	4, 0x90                         # -- Begin function decorate_int
decorate_int:                           # @decorate_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.L.str.1(%rip), %rax
	leaq	.L.str(%rip), %rcx
	cmpq	$0, %rdx
	cmovneq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jle	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %r8
	movq	-24(%rbp), %rax
	addq	(%rax), %r8
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	format@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	format@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"u"
.L.str.1:
	.zero	1
.L.str.2:
	.asciz	"%s%s:%d:%d"
.L.str.3:
	.asciz	"%s%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decorate_int
	.addrsig_sym format
	.text
	.p2align	4, 0x90                         # -- Begin function emit_logor
emit_logor:                             # @emit_logor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	emit_expr@PLT
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-16(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	emit_expr@PLT
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-16(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-16(%rbp), %rdi
	callq	emit_label@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"test #rax, #rax"
.L.str.1:
	.asciz	"mov $1, #rax"
.L.str.2:
	.asciz	"jne %s"
.L.str.3:
	.asciz	"mov $0, #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_logor
	.addrsig_sym make_label
	.addrsig_sym emit_expr
	.addrsig_sym emit
	.addrsig_sym emit_label
	.addrsig_sym SAVE
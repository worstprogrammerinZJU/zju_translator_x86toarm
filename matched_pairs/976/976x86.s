	.text
	.p2align	4, 0x90                         # -- Begin function emit_comp
emit_comp:                              # @emit_comp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	emit_expr@PLT
	xorl	%edi, %edi
	callq	push_xmm@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	emit_expr@PLT
	movl	$1, %edi
	callq	pop_xmm@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	KIND_FLOAT(%rip), %eax
	jne	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_4
.LBB0_3:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_4:
	jmp	.LBB0_10
.LBB0_5:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	emit_expr@PLT
	leaq	.L.str.2(%rip), %rdi
	callq	push@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	emit_expr@PLT
	leaq	.L.str.3(%rip), %rdi
	callq	pop@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	KIND_LONG(%rip), %eax
	je	.LBB0_7
# %bb.6:
	movl	-28(%rbp), %eax
	cmpl	KIND_LLONG(%rip), %eax
	jne	.LBB0_8
.LBB0_7:
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_8:
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	jne	.LBB0_12
# %bb.11:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_13
.LBB0_12:
	movq	-16(%rbp), %rsi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_14
.LBB0_13:
	movq	-8(%rbp), %rsi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_14:
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.globl	KIND_FLOAT
	.p2align	2
KIND_FLOAT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ucomiss #xmm0, #xmm1"
.L.str.1:
	.asciz	"ucomisd #xmm0, #xmm1"
.L.str.2:
	.asciz	"rax"
.L.str.3:
	.asciz	"rcx"
	.bss
	.globl	KIND_LONG
	.p2align	2
KIND_LONG:
	.long	0                               # 0x0
	.globl	KIND_LLONG
	.p2align	2
KIND_LLONG:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"cmp #rax, #rcx"
.L.str.5:
	.asciz	"cmp #eax, #ecx"
.L.str.6:
	.asciz	"%s #al"
.L.str.7:
	.asciz	"movzb #al, #eax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_comp
	.addrsig_sym is_flotype
	.addrsig_sym emit_expr
	.addrsig_sym push_xmm
	.addrsig_sym pop_xmm
	.addrsig_sym emit
	.addrsig_sym push
	.addrsig_sym pop
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_LONG
	.addrsig_sym KIND_LLONG
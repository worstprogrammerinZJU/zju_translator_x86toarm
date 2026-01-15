	.text
	.p2align	4, 0x90                         # -- Begin function read_rectype_def
read_rectype_def:                       # @read_rectype_def
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movb	$0, %al
	callq	read_rectype_tag@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_8
# %bb.1:
	movl	tags(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_5
# %bb.2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ENUM(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-4(%rbp), %eax
	je	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_5:
	cmpq	$0, -24(%rbp)
	jne	.LBB0_7
# %bb.6:
	movl	-4(%rbp), %edi
	callq	make_rectype@PLT
	movq	%rax, -24(%rbp)
	movl	tags(%rip), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	map_put@PLT
.LBB0_7:
	jmp	.LBB0_9
.LBB0_8:
	movl	-4(%rbp), %edi
	callq	make_rectype@PLT
	movq	%rax, -24(%rbp)
.LBB0_9:
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edx
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	read_rectype_fields@PLT
	movq	%rax, -40(%rbp)
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	cmpq	$0, -40(%rbp)
	je	.LBB0_11
# %bb.10:
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
.LBB0_11:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	tags
	.p2align	2
tags:
	.long	0                               # 0x0
	.globl	KIND_ENUM
	.p2align	3
KIND_ENUM:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"declarations of %s does not match"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rectype_def
	.addrsig_sym read_rectype_tag
	.addrsig_sym map_get
	.addrsig_sym error
	.addrsig_sym make_rectype
	.addrsig_sym map_put
	.addrsig_sym read_rectype_fields
	.addrsig_sym tags
	.addrsig_sym KIND_ENUM
	.text
	.p2align	4, 0x90                         # -- Begin function backfill_labels
backfill_labels:                        # @backfill_labels
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	gotos(%rip), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-36(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	gotos(%rip), %edi
	movl	-4(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	labels(%rip), %edi
	movq	-24(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	AST_GOTO(%rip), %rdx
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.1(%rip), %rax
	cmpq	%rdx, %rcx
	cmoveq	%rax, %rsi
	movq	-24(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	gotos
	.p2align	2
gotos:
	.long	0                               # 0x0
	.globl	labels
	.p2align	2
labels:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray %s: %s"
	.bss
	.globl	AST_GOTO
	.p2align	3
AST_GOTO:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"goto"
.L.str.2:
	.asciz	"unary &&"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym backfill_labels
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym map_get
	.addrsig_sym error
	.addrsig_sym make_label
	.addrsig_sym gotos
	.addrsig_sym labels
	.addrsig_sym AST_GOTO
	.text
	.p2align	4, 0x90                         # -- Begin function read_undef
read_undef:                             # @read_undef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_ident@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	expect_newline@PLT
	movl	macros(%rip), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	map_remove@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	macros
	.p2align	2
macros:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_undef
	.addrsig_sym read_ident
	.addrsig_sym expect_newline
	.addrsig_sym map_remove
	.addrsig_sym macros
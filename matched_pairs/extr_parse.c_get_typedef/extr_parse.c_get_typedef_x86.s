	.text
	.p2align	4, 0x90                         # -- Begin function get_typedef
get_typedef:                            # @get_typedef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	env@PLT
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_TYPEDEF(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AST_TYPEDEF
	.p2align	3
AST_TYPEDEF:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_typedef
	.addrsig_sym map_get
	.addrsig_sym env
	.addrsig_sym AST_TYPEDEF
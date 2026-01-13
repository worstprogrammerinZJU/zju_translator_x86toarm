	.text
	.p2align	4, 0x90                         # -- Begin function save_arg_regs
save_arg_regs:                          # @save_arg_regs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$6, -4(%rbp)
	setle	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpl	$8, -8(%rbp)
	setle	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	REGS(%rip), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	push@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$1, -16(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %edi
	callq	push_xmm@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_8:
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
	.globl	REGS
	.p2align	3
REGS:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym save_arg_regs
	.addrsig_sym assert
	.addrsig_sym push
	.addrsig_sym push_xmm
	.addrsig_sym SAVE
	.addrsig_sym REGS
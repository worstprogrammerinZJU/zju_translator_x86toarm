	.text
	.p2align	4, 0x90                         # -- Begin function isheadfail
isheadfail:                             # @isheadfail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	ischeck@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	sizei@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	IEnd(%rip), %rax
	je	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	isnofail@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	sizei@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_8:
	movl	$1, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IEnd
	.p2align	3
IEnd:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isheadfail
	.addrsig_sym ischeck
	.addrsig_sym sizei
	.addrsig_sym isnofail
	.addrsig_sym IEnd
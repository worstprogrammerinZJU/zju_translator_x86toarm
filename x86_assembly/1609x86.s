	.text
	.p2align	4, 0x90                         # -- Begin function printpatt
printpatt:                              # @printpatt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	printinst@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	IEnd(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	jmp	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	sizei@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
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
	.addrsig_sym printpatt
	.addrsig_sym printinst
	.addrsig_sym sizei
	.addrsig_sym IEnd
	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__jpg_writeBits
stbiw__jpg_writeBits:                   # @stbiw__jpg_writeBits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movl	$24, %ecx
	subl	-40(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	orl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -40(%rbp)
	jl	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	sarl	$16, %eax
	andl	$255, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -41(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	-41(%rbp), %esi
	callq	stbiw__putc@PLT
	movzbl	-41(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	stbiw__putc@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_5:
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__jpg_writeBits
	.addrsig_sym stbiw__putc
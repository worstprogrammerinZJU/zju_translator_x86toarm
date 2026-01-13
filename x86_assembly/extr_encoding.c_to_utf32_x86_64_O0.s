	.text
	.globl	to_utf32                        # -- Begin function to_utf32
	.p2align	4, 0x90
to_utf32:                               # @to_utf32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rdi
	callq	read_rune@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	write32@PLT
	jmp	.LBB0_1
.LBB0_3:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_buffer
	.addrsig_sym read_rune
	.addrsig_sym write32
	.text
	.globl	parse_fields                    # -- Begin function parse_fields
	.p2align	4, 0x90
parse_fields:                           # @parse_fields
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_13
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$44, %eax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -56(%rbp)
	je	.LBB0_11
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	strtod@PLT
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	nan@PLT
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	nan@PLT
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_13:
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym strtod
	.addrsig_sym nan
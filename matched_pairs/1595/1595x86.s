	.text
	.p2align	4, 0x90                         # -- Begin function optimizecaptures
optimizecaptures:                       # @optimizecaptures
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	IEnd(%rip), %rax
	je	.LBB0_30
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	isjmp@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	dest@PLT
	cmpl	-16(%rbp), %eax
	jl	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	dest@PLT
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_28
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.LBB0_27
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	ismovablecap@PLT
	cmpq	$0, %rax
	je	.LBB0_27
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	addq	$16, %rdi
	callq	ischeck@PLT
	cmpq	$0, %rax
	je	.LBB0_27
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	getoff@PLT
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-16(%rbp), %ecx
	movb	%al, -37(%rbp)                  # 1-byte Spill
	jle	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	addq	$-16, %rdi
	callq	ismovablecap@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -37(%rbp)                  # 1-byte Spill
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=2
	movb	-37(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_12
	jmp	.LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	getoff@PLT
	cmpl	-32(%rbp), %eax
	jle	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	getoff@PLT
	movl	%eax, -32(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_9
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	addq	$16, %rdi
	movl	-32(%rbp), %esi
	leaq	-24(%rbp), %rdx
	callq	skipchecks@PLT
	addl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	MAXOFF(%rip), %ecx
	movb	%al, -38(%rbp)                  # 1-byte Spill
	jg	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-12(%rbp), %ecx
	movb	%al, -38(%rbp)                  # 1-byte Spill
	jg	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setl	%al
	movb	%al, -38(%rbp)                  # 1-byte Spill
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-38(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_21:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=2
	movl	-24(%rbp), %ecx
	shll	$4, %ecx
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-20(%rbp), %esi
	subl	-36(%rbp), %esi
	movl	-12(%rbp), %edx
	subl	-36(%rbp), %edx
	addl	$1, %edx
	callq	rotate@PLT
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	ischeck@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -39(%rbp)                  # 1-byte Spill
	je	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	iscapture@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -39(%rbp)                  # 1-byte Spill
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-39(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	sizei@PLT
	movq	%rax, %rcx
	movslq	-12(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_30:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IEnd
	.p2align	3
IEnd:
	.quad	0                               # 0x0
	.globl	MAXOFF
	.p2align	2
MAXOFF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optimizecaptures
	.addrsig_sym isjmp
	.addrsig_sym dest
	.addrsig_sym ismovablecap
	.addrsig_sym ischeck
	.addrsig_sym getoff
	.addrsig_sym skipchecks
	.addrsig_sym assert
	.addrsig_sym rotate
	.addrsig_sym iscapture
	.addrsig_sym sizei
	.addrsig_sym IEnd
	.addrsig_sym MAXOFF
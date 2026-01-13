	.text
	.globl	shuffle                         # -- Begin function shuffle
	.p2align	4, 0x90
shuffle:                                # @shuffle
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	$1, %edi
	callq	calloc@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	RAND_MAX(%rip), %rax
	movq	-16(%rbp), %rcx
	subq	-32(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	addq	$1, %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rax
	imulq	-24(%rbp), %rax
	addq	%rax, %rsi
	movq	-24(%rbp), %rdx
	callq	memcpy@PLT
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	imulq	-24(%rbp), %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	imulq	-24(%rbp), %rax
	addq	%rax, %rsi
	movq	-24(%rbp), %rdx
	callq	memcpy@PLT
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	imulq	-24(%rbp), %rax
	addq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	memcpy@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	RAND_MAX
	.p2align	3
RAND_MAX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand
	.addrsig_sym memcpy
	.addrsig_sym RAND_MAX
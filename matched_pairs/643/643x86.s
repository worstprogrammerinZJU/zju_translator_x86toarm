	.text
	.p2align	4, 0x90                         # -- Begin function decGetInt
decGetInt:                              # @decGetInt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	ISZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_45
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jb	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_16
.LBB0_4:
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	8(%rcx), %rax
	movq	%rax, -64(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	jb	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_8
# %bb.7:
	movq	BADINT(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_45
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	DECDPUN(%rip), %rcx
	movq	-64(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_5
.LBB0_10:
	cmpq	$0, -64(%rbp)
	jne	.LBB0_12
# %bb.11:
	movq	$0, -40(%rbp)
	jmp	.LBB0_15
.LBB0_12:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	QUOT10@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	powers(%rip), %rdx
	movq	-64(%rbp), %rsi
	imulq	(%rdx,%rsi,8), %rcx
	subq	%rcx, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_14
# %bb.13:
	movq	BADINT(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_45
.LBB0_14:
	movq	DECDPUN(%rip), %rax
	subq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	cmpq	$0, -40(%rbp)
	jne	.LBB0_18
# %bb.17:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	DECDPUN(%rip), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
.LBB0_18:
	cmpq	$11, -48(%rbp)
	jae	.LBB0_38
# %bb.19:
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	powers(%rip), %rcx
	movq	-40(%rbp), %rdx
	imulq	(%rcx,%rdx,8), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	DECDPUN(%rip), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_20
.LBB0_23:
	cmpq	$10, -48(%rbp)
	jne	.LBB0_37
# %bb.24:
	movq	-24(%rbp), %rax
	movq	powers(%rip), %rcx
	movq	-40(%rbp), %rsi
	subq	DECDPUN(%rip), %rsi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	(%rcx,%rsi,8)
	movq	-32(%rbp), %rcx
	cmpq	-8(%rcx), %rax
	je	.LBB0_26
# %bb.25:
	movq	$11, -48(%rbp)
	jmp	.LBB0_34
.LBB0_26:
	cmpq	$0, -56(%rbp)
	je	.LBB0_29
# %bb.27:
	cmpq	$1999999997, -24(%rbp)          # imm = 0x773593FD
	jbe	.LBB0_29
# %bb.28:
	movq	$11, -48(%rbp)
	jmp	.LBB0_33
.LBB0_29:
	cmpq	$0, -56(%rbp)
	jne	.LBB0_32
# %bb.30:
	cmpq	$999999999, -24(%rbp)           # imm = 0x3B9AC9FF
	jbe	.LBB0_32
# %bb.31:
	movq	$11, -48(%rbp)
.LBB0_32:
	jmp	.LBB0_33
.LBB0_33:
	jmp	.LBB0_34
.LBB0_34:
	cmpq	$11, -48(%rbp)
	jne	.LBB0_36
# %bb.35:
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_36:
	jmp	.LBB0_37
.LBB0_37:
	jmp	.LBB0_38
.LBB0_38:
	cmpq	$10, -48(%rbp)
	jbe	.LBB0_42
# %bb.39:
	movq	-24(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB0_41
# %bb.40:
	movq	BIGODD(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_45
.LBB0_41:
	movq	BIGEVEN(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_45
.LBB0_42:
	cmpq	$0, -56(%rbp)
	je	.LBB0_44
# %bb.43:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_44:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_45:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.quad	0                               # 0x0
	.globl	BADINT
	.p2align	3
BADINT:
	.quad	0                               # 0x0
	.globl	powers
	.p2align	3
powers:
	.quad	0
	.globl	BIGODD
	.p2align	3
BIGODD:
	.quad	0                               # 0x0
	.globl	BIGEVEN
	.p2align	3
BIGEVEN:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decGetInt
	.addrsig_sym decNumberIsNegative
	.addrsig_sym ISZERO
	.addrsig_sym QUOT10
	.addrsig_sym DECDPUN
	.addrsig_sym BADINT
	.addrsig_sym powers
	.addrsig_sym BIGODD
	.addrsig_sym BIGEVEN
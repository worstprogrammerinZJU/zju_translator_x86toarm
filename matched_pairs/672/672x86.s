	.text
	.globl	decNumberOr                     # -- Begin function decNumberOr
	.p2align	4, 0x90
decNumberOr:                            # @decNumberOr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_6
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	decNumberIsSpecial@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.2:
	movq	-24(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.3:
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_6
# %bb.4:
	movq	-32(%rbp), %rdi
	callq	decNumberIsSpecial@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movq	-32(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rdi
	movl	DEC_Invalid_operation(%rip), %esi
	movq	-40(%rbp), %rdx
	callq	decStatus@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_31
.LBB0_7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	24(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-144(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movl	24(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-136(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-128(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	MSUDIGITS@PLT
	movq	%rax, -96(%rbp)
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	ja	.LBB0_30
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jbe	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -100(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jbe	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -104(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -104(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movl	-100(%rbp), %eax
	orl	-104(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB0_28
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	movq	$0, -112(%rbp)
.LBB0_17:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	jae	.LBB0_27
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	movl	-100(%rbp), %eax
	orl	-104(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movq	powers(%rip), %rax
	movq	-112(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
                                        # kill: def $eax killed $eax killed $rax
	addl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	movl	-100(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	movq	%rax, -120(%rbp)
	movl	-100(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	orq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-104(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -104(%rbp)
	cmpq	$1, -120(%rbp)
	jbe	.LBB0_22
# %bb.21:
	movq	-16(%rbp), %rdi
	movl	DEC_Invalid_operation(%rip), %esi
	movq	-40(%rbp), %rdx
	callq	decStatus@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=2
	movq	-112(%rbp), %rax
	movq	-96(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_17 Depth=2
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=2
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB0_17
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB0_8
.LBB0_30:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	movl	%eax, %esi
	callq	decGetDigits@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_31:
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.long	0                               # 0x0
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.quad	0                               # 0x0
	.globl	powers
	.p2align	3
powers:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsSpecial
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decStatus
	.addrsig_sym D2U
	.addrsig_sym MSUDIGITS
	.addrsig_sym decGetDigits
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DECDPUN
	.addrsig_sym powers
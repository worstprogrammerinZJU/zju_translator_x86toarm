	.text
	.globl	decNumberInvert                 # -- Begin function decNumberInvert
	.p2align	4, 0x90
decNumberInvert:                        # @decNumberInvert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	decNumberIsSpecial@PLT
	cmpq	$0, %rax
	jne	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rdi
	movl	DEC_Invalid_operation(%rip), %esi
	movq	-32(%rbp), %rdx
	callq	decStatus@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_23
.LBB0_4:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	24(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-112(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-104(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	MSUDIGITS@PLT
	movq	%rax, -72(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	.LBB0_22
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jbe	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -76(%rbp)
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -88(%rbp)
.LBB0_10:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	jae	.LBB0_20
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	movl	-76(%rbp), %eax
	xorl	$-1, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	powers(%rip), %rax
	movq	-88(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
                                        # kill: def $eax killed $eax killed $rax
	addl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=2
	movl	-76(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	movq	%rax, -96(%rbp)
	movl	-76(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -76(%rbp)
	cmpq	$1, -96(%rbp)
	jbe	.LBB0_15
# %bb.14:
	movq	-16(%rbp), %rdi
	movl	DEC_Invalid_operation(%rip), %esi
	movq	-32(%rbp), %rdx
	callq	decStatus@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_23
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=2
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_5
.LBB0_22:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
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
.LBB0_23:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
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
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
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
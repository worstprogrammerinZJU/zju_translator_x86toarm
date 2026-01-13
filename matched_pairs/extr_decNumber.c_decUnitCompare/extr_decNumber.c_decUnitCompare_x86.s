	.text
	.p2align	4, 0x90                         # -- Begin function decUnitCompare
decUnitCompare:                         # @decUnitCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	DECBUFFER(%rip), %ecx
                                        # implicit-def: $rax
	movl	%ecx, %eax
	leal	1(%rax,%rax), %edi
	callq	SD2U@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	movq	%rsp, %rcx
	movq	%rcx, -64(%rbp)
	leaq	15(,%rax,8), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_14
# %bb.1:
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.LBB0_3
# %bb.2:
	movq	$1, -8(%rbp)
	movl	$1, -148(%rbp)
	jmp	.LBB0_35
.LBB0_3:
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB0_5
# %bb.4:
	movq	$-1, -8(%rbp)
	movl	$1, -148(%rbp)
	jmp	.LBB0_35
.LBB0_5:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -112(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB0_13
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	cmpq	(%rcx), %rax
	jle	.LBB0_9
# %bb.8:
	movq	$1, -8(%rbp)
	movl	$1, -148(%rbp)
	jmp	.LBB0_35
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB0_11
# %bb.10:
	movq	$-1, -8(%rbp)
	movl	$1, -148(%rbp)
	jmp	.LBB0_35
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB0_6
.LBB0_13:
	movq	$0, -8(%rbp)
	movl	$1, -148(%rbp)
	jmp	.LBB0_35
.LBB0_14:
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rdi
	callq	D2U@PLT
	movq	-184(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %rdx
	movq	-176(%rbp), %rax                # 8-byte Reload
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_16
# %bb.15:
	movq	$1, -8(%rbp)
	movl	$1, -148(%rbp)
	jmp	.LBB0_35
.LBB0_16:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)                # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rdi
	callq	D2U@PLT
	movq	-200(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %rdx
	movq	-192(%rbp), %rax                # 8-byte Reload
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_18
# %bb.17:
	movq	$-1, -8(%rbp)
	movl	$1, -148(%rbp)
	jmp	.LBB0_35
.LBB0_18:
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rdi
	callq	D2U@PLT
	movq	%rax, %rcx
	movq	-208(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB0_20
# %bb.19:
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_20:
	movq	-168(%rbp), %rcx                # 8-byte Reload
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	-96(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -96(%rbp)
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	shlq	$3, %rax
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_24
# %bb.21:
	movq	-96(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_23
# %bb.22:
	movq	BADINT(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -148(%rbp)
	jmp	.LBB0_35
.LBB0_23:
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB0_24:
	movq	-48(%rbp), %rax
	cqto
	idivq	DECDPUN(%rip)
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	cqto
	idivq	DECDPUN(%rip)
	movq	%rdx, -136(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-128(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	powers(%rip), %r10
	movq	-136(%rbp), %r11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	(%r10,%r11,8), %rax
	subq	$16, %rsp
	movq	%rax, (%rsp)
	callq	decUnitAddSub@PLT
	addq	$16, %rsp
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jge	.LBB0_26
# %bb.25:
	movq	$-1, -144(%rbp)
	jmp	.LBB0_32
.LBB0_26:
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rdx
	addq	$-8, %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, -209(%rbp)                 # 1-byte Spill
	jae	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	sete	%al
	movb	%al, -209(%rbp)                 # 1-byte Spill
.LBB0_29:                               #   in Loop: Header=BB0_27 Depth=1
	movb	-209(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_30
	jmp	.LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_27 Depth=1
	movq	-120(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB0_27
.LBB0_31:
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmovel	%ecx, %eax
	cltq
	movq	%rax, -144(%rbp)
.LBB0_32:
	cmpq	$0, -80(%rbp)
	je	.LBB0_34
# %bb.33:
	movq	-80(%rbp), %rdi
	callq	free@PLT
.LBB0_34:
	movq	-144(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -148(%rbp)
.LBB0_35:
	movq	-64(%rbp), %rax
	movq	%rax, %rsp
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECBUFFER
	.p2align	2
DECBUFFER:
	.long	0                               # 0x0
	.globl	BADINT
	.p2align	3
BADINT:
	.quad	0                               # 0x0
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
	.addrsig_sym decUnitCompare
	.addrsig_sym SD2U
	.addrsig_sym D2U
	.addrsig_sym malloc
	.addrsig_sym decUnitAddSub
	.addrsig_sym free
	.addrsig_sym DECBUFFER
	.addrsig_sym BADINT
	.addrsig_sym DECDPUN
	.addrsig_sym powers
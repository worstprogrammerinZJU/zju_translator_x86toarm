	.text
	.p2align	4, 0x90                         # -- Begin function decShiftToMost
decShiftToMost:                         # @decShiftToMost
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_2:
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	ja	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	powers(%rip), %rax
	movq	-32(%rbp), %rdx
	imull	(%rax,%rdx,4), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_4:
	movl	$0, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-104(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	DECDPUN(%rip), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	MSUDIGITS@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_10
# %bb.5:
	jmp	.LBB0_6
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_6
.LBB0_9:
	jmp	.LBB0_17
.LBB0_10:
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rdi
	addq	-32(%rbp), %rdi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-112(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -56(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	movq	-64(%rbp), %rsi
	callq	QUOT10@PLT
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	-72(%rbp), %ecx
	movq	powers(%rip), %rdx
	movq	-64(%rbp), %rsi
	imull	(%rdx,%rsi,4), %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-68(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-76(%rbp), %eax
	movq	powers(%rip), %rcx
	movq	DECDPUN(%rip), %rdx
	subq	-64(%rbp), %rdx
	imull	(%rcx,%rdx,4), %eax
	movl	%eax, -68(%rbp)
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_11
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-68(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -68(%rbp)
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-40(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_18
.LBB0_21:
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_22:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
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
	.addrsig_sym decShiftToMost
	.addrsig_sym D2U
	.addrsig_sym MSUDIGITS
	.addrsig_sym QUOT10
	.addrsig_sym DECDPUN
	.addrsig_sym powers
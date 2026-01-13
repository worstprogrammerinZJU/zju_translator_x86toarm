	.text
	.p2align	4, 0x90                         # -- Begin function decTrim
decTrim:                                # @decTrim
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	DECSPECIAL(%rip), %eax
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	ISZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_5:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	$1, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_19
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	QUOT10@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	powers(%rip), %rdx
	movq	-56(%rbp), %rsi
	imulq	(%rdx,%rsi,8), %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:
	jmp	.LBB0_19
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -48(%rbp)
	jg	.LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB0_13
# %bb.12:
	jmp	.LBB0_19
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	jbe	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -64(%rbp)
	movq	$1, -56(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_6
.LBB0_19:
	cmpl	$0, -44(%rbp)
	jne	.LBB0_21
# %bb.20:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_21:
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_28
# %bb.22:
	cmpl	$0, -32(%rbp)
	jne	.LBB0_28
# %bb.23:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	subl	4(%rcx), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	subl	16(%rcx), %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jg	.LBB0_25
# %bb.24:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_25:
	movl	-44(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB0_27
# %bb.26:
	movl	-76(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_27:
	jmp	.LBB0_28
.LBB0_28:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	20(%rax), %edi
	callq	D2U@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	movl	-44(%rbp), %edx
	callq	decShiftToLeast@PLT
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, 20(%rax)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_29:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECSPECIAL
	.p2align	2
DECSPECIAL:
	.long	0                               # 0x0
	.globl	powers
	.p2align	3
powers:
	.quad	0
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.quad	0                               # 0x0
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.long	0                               # 0x0
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decTrim
	.addrsig_sym ISZERO
	.addrsig_sym QUOT10
	.addrsig_sym decShiftToLeast
	.addrsig_sym D2U
	.addrsig_sym DECSPECIAL
	.addrsig_sym powers
	.addrsig_sym DECDPUN
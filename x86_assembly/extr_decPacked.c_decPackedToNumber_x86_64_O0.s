	.text
	.globl	decPackedToNumber               # -- Begin function decPackedToNumber
	.p2align	4, 0x90
decPackedToNumber:                      # @decPackedToNumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$15, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	DECPMINUS(%rip), %eax
	je	.LBB0_2
# %bb.1:
	movl	-60(%rbp), %eax
	cmpl	DECPMINUSALT(%rip), %eax
	jne	.LBB0_3
.LBB0_2:
	movl	DECNEG(%rip), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB0_6
.LBB0_3:
	cmpl	$9, -60(%rbp)
	jg	.LBB0_5
# %bb.4:
	movq	$0, -8(%rbp)
	jmp	.LBB0_44
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_7
.LBB0_9:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	shlq	$1, %rax
	addq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$240, %eax
	cmpl	$0, %eax
	jne	.LBB0_11
# %bb.10:
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
.LBB0_11:
	cmpl	$0, -76(%rbp)
	je	.LBB0_13
# %bb.12:
	movl	-76(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_13:
	movq	-32(%rbp), %rax
	xorl	%ecx, %ecx
	subl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jl	.LBB0_17
# %bb.14:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movq	-32(%rbp), %rcx
	subl	(%rcx), %eax
	subl	$1, %eax
	xorl	%ecx, %ecx
	subl	DECNUMMAXE(%rip), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_16
# %bb.15:
	movq	-40(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_44
.LBB0_16:
	jmp	.LBB0_21
.LBB0_17:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	xorl	%ecx, %ecx
	subl	DECNUMMAXE(%rip), %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_19
# %bb.18:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movq	-32(%rbp), %rcx
	subl	(%rcx), %eax
	subl	$1, %eax
	cmpl	DECNUMMAXE(%rip), %eax
	jle	.LBB0_20
.LBB0_19:
	movq	-40(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_44
.LBB0_20:
	jmp	.LBB0_21
.LBB0_21:
	cmpl	$0, -76(%rbp)
	jne	.LBB0_23
# %bb.22:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_44
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$240, %eax
	shrl	$4, %eax
	movl	%eax, -60(%rbp)
	cmpl	$9, -60(%rbp)
	jle	.LBB0_26
# %bb.25:
	movq	-40(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_44
.LBB0_26:                               #   in Loop: Header=BB0_24 Depth=1
	cmpl	$0, -80(%rbp)
	jne	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_24 Depth=1
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_24 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movl	-60(%rbp), %eax
	movq	DECPOWERS(%rip), %rdx
	movslq	-80(%rbp), %rsi
	imull	(%rdx,%rsi,4), %eax
	cltq
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_29:                               #   in Loop: Header=BB0_24 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB0_31
# %bb.30:
	jmp	.LBB0_43
.LBB0_31:                               #   in Loop: Header=BB0_24 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	DECDPUN(%rip), %eax
	jne	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_24 Depth=1
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -80(%rbp)
.LBB0_33:                               #   in Loop: Header=BB0_24 Depth=1
	movq	-48(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$15, %eax
	movl	%eax, -60(%rbp)
	cmpl	$9, -60(%rbp)
	jle	.LBB0_35
# %bb.34:
	movq	-40(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_44
.LBB0_35:                               #   in Loop: Header=BB0_24 Depth=1
	cmpl	$0, -80(%rbp)
	jne	.LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_24 Depth=1
	movslq	-60(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_24 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movl	-60(%rbp), %eax
	movq	DECPOWERS(%rip), %rdx
	movslq	-80(%rbp), %rsi
	imull	(%rdx,%rsi,4), %eax
	cltq
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_38:                               #   in Loop: Header=BB0_24 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB0_40
# %bb.39:
	jmp	.LBB0_43
.LBB0_40:                               #   in Loop: Header=BB0_24 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	DECDPUN(%rip), %eax
	jne	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_24 Depth=1
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -80(%rbp)
.LBB0_42:                               #   in Loop: Header=BB0_24 Depth=1
	jmp	.LBB0_24
.LBB0_43:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_44:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECPMINUS
	.p2align	2
DECPMINUS:
	.long	0                               # 0x0
	.globl	DECPMINUSALT
	.p2align	2
DECPMINUSALT:
	.long	0                               # 0x0
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.section	.rodata,"a",@progbits
	.globl	DECNUMMAXE
	.p2align	2
DECNUMMAXE:
	.long	0                               # 0x0
	.bss
	.globl	DECPOWERS
	.p2align	3
DECPOWERS:
	.quad	0
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberZero
	.addrsig_sym DECPMINUS
	.addrsig_sym DECPMINUSALT
	.addrsig_sym DECNEG
	.addrsig_sym DECNUMMAXE
	.addrsig_sym DECPOWERS
	.addrsig_sym DECDPUN
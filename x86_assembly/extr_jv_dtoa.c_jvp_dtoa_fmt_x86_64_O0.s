	.text
	.globl	jvp_dtoa_fmt                    # -- Begin function jvp_dtoa_fmt
	.p2align	4, 0x90
jvp_dtoa_fmt:                           # @jvp_dtoa_fmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	xorl	%edx, %edx
	leaq	-44(%rbp), %rcx
	leaq	-52(%rbp), %r8
	leaq	-80(%rbp), %r9
	movl	%edx, %esi
	callq	jvp_dtoa@PLT
	movq	%rax, -72(%rbp)
	movq	%rax, -40(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$45, (%rax)
.LBB0_2:
	cmpl	$9999, -44(%rbp)                # imm = 0x270F
	jne	.LBB0_7
# %bb.3:
	jmp	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	cmpb	$0, %al
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_4
.LBB0_6:
	jmp	.LBB0_48
.LBB0_7:
	cmpl	$-4, -44(%rbp)
	jle	.LBB0_9
# %bb.8:
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rdx
	subq	%rdx, %rcx
	addq	$15, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_26
.LBB0_9:
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_14
# %bb.10:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$46, (%rax)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	cmpb	$0, %al
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_11
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$101, (%rax)
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_16
# %bb.15:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$45, (%rax)
	xorl	%eax, %eax
	subl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_17
.LBB0_16:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$43, (%rax)
.LBB0_17:
	movl	$2, -48(%rbp)
	movl	$10, -32(%rbp)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	imull	$10, -32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	imull	$10, -32(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_18
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$48, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jg	.LBB0_24
# %bb.23:
	jmp	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_22 Depth=1
	movl	-28(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movl	-44(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	imull	$10, -44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_22
.LBB0_25:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB0_47
.LBB0_26:
	cmpl	$0, -44(%rbp)
	jg	.LBB0_35
# %bb.27:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$48, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$46, (%rax)
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jge	.LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$48, (%rax)
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_28
.LBB0_31:
	jmp	.LBB0_32
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	cmpb	$0, %al
	je	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	jmp	.LBB0_32
.LBB0_34:
	jmp	.LBB0_46
.LBB0_35:
	jmp	.LBB0_36
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	cmpb	$0, %al
	je	.LBB0_41
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_36 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$46, (%rax)
.LBB0_40:                               #   in Loop: Header=BB0_36 Depth=1
	jmp	.LBB0_36
.LBB0_41:
	jmp	.LBB0_42
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jle	.LBB0_45
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$48, (%rax)
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_42
.LBB0_45:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
.LBB0_46:
	jmp	.LBB0_47
.LBB0_47:
	jmp	.LBB0_48
.LBB0_48:
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	jvp_freedtoa@PLT
# %bb.49:
	movq	-64(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_dtoa
	.addrsig_sym jvp_freedtoa
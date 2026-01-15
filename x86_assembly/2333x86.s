	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function dtostrf
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_2:
	.quad	0x4024000000000000              # double 10
	.text
	.globl	dtostrf
	.p2align	4, 0x90
dtostrf:                                # @dtostrf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movb	%sil, %al
	movb	%dil, %cl
	movsd	%xmm0, -16(%rbp)
	movb	%cl, -17(%rbp)
	movb	%al, -18(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	isnan@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcpy@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_2:
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	isinf@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcpy@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_4:
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movsbl	-17(%rbp), %eax
	movl	%eax, -52(%rbp)
	movzbl	-18(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB0_6
# %bb.5:
	movzbl	-18(%rbp), %ecx
	addl	$1, %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)
.LBB0_6:
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB0_8
# %bb.7:
	movl	$1, -36(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB0_8:
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movb	$0, -65(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movzbl	-65(%rbp), %eax
	movzbl	-18(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movb	-65(%rbp), %al
	addb	$1, %al
	movb	%al, -65(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0                # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movl	$1, -84(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_13
.LBB0_15:
	movsd	-80(%rbp), %xmm1                # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-84(%rbp), %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	jle	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$32, (%rax)
	jmp	.LBB0_16
.LBB0_18:
	cmpl	$0, -36(%rbp)
	je	.LBB0_20
# %bb.19:
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$45, (%rax)
.LBB0_20:
	movzbl	-18(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	$0, -88(%rbp)
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	jle	.LBB0_28
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	cvttsd2si	-16(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$9, -88(%rbp)
	jle	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	movl	$9, -88(%rbp)
.LBB0_24:                               #   in Loop: Header=BB0_21 Depth=1
	movl	-88(%rbp), %eax
	orl	$48, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movb	%cl, (%rax)
	movl	-84(%rbp), %eax
	movzbl	-18(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_21 Depth=1
	movzbl	-18(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_21 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$46, (%rax)
.LBB0_27:                               #   in Loop: Header=BB0_21 Depth=1
	cvtsi2sdl	-88(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB0_21
.LBB0_28:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_29:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"nan"
.L.str.1:
	.asciz	"inf"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isnan
	.addrsig_sym strcpy
	.addrsig_sym isinf
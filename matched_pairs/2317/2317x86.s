	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function stbiw__jpg_processDU
.LCPI0_0:
	.long	0x3f000000                      # float 0.5
	.text
	.p2align	4, 0x90
stbiw__jpg_processDU:                   # @stbiw__jpg_processDU
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$400, %rsp                      # imm = 0x190
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	24(%rbp), %rax
	movw	(%rax), %ax
	movw	%ax, -56(%rbp)
	movq	24(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -54(%rbp)
	movq	24(%rbp), %rax
	movw	960(%rax), %ax
	movw	%ax, -60(%rbp)
	movq	24(%rbp), %rax
	movw	962(%rax), %ax
	movw	%ax, -58(%rbp)
	movl	$0, -64(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -64(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movl	-64(%rbp), %eax
	addl	$1, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movq	-40(%rbp), %rdx
	movl	-64(%rbp), %eax
	addl	$2, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movl	-64(%rbp), %eax
	addl	$3, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %r8
	movl	-64(%rbp), %eax
	addl	$4, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %r8
	movq	-40(%rbp), %r9
	movl	-64(%rbp), %eax
	addl	$5, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %r9
	movq	-40(%rbp), %r10
	movl	-64(%rbp), %eax
	addl	$6, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %r10
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %r11d
	addl	$7, %r11d
	movslq	%r11d, %r11
	shlq	$2, %r11
	addq	%r11, %rax
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	stbiw__jpg_DCT@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -64(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -64(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movl	-64(%rbp), %eax
	addl	$8, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movq	-40(%rbp), %rdx
	movl	-64(%rbp), %eax
	addl	$16, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movl	-64(%rbp), %eax
	addl	$24, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %r8
	movl	-64(%rbp), %eax
	addl	$32, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %r8
	movq	-40(%rbp), %r9
	movl	-64(%rbp), %eax
	addl	$40, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %r9
	movq	-40(%rbp), %r10
	movl	-64(%rbp), %eax
	addl	$48, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %r10
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %r11d
	addl	$56, %r11d
	movslq	%r11d, %r11
	shlq	$2, %r11
	addq	%r11, %rax
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	stbiw__jpg_DCT@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	$0, -68(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -68(%rbp)
	jge	.LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movslq	-68(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -340(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	-340(%rbp), %xmm0
	jbe	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movss	-340(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -368(%rbp)               # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	-340(%rbp), %xmm0
	movss	%xmm0, -368(%rbp)               # 4-byte Spill
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	movss	-368(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %ecx
	movq	stbiw__jpg_ZigZag(%rip), %rax
	movslq	-68(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movl	%ecx, -336(%rbp,%rax,4)
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_9
.LBB0_15:
	movl	-336(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB0_17
# %bb.16:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	16(%rbp), %rcx
	callq	stbiw__jpg_writeBits@PLT
	jmp	.LBB0_18
.LBB0_17:
	movl	-72(%rbp), %edi
	leaq	-344(%rbp), %rsi
	callq	stbiw__jpg_calcBits@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	16(%rbp), %rcx
	movzwl	-342(%rbp), %eax
                                        # kill: def $rax killed $eax
	shlq	$2, %rax
	addq	%rax, %rcx
	callq	stbiw__jpg_writeBits@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-344(%rbp), %rcx
	callq	stbiw__jpg_writeBits@PLT
.LBB0_18:
	movl	$63, -76(%rbp)
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -76(%rbp)
	movb	%al, -369(%rbp)                 # 1-byte Spill
	jle	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movslq	-76(%rbp), %rax
	cmpl	$0, -336(%rbp,%rax,4)
	sete	%al
	movb	%al, -369(%rbp)                 # 1-byte Spill
.LBB0_21:                               #   in Loop: Header=BB0_19 Depth=1
	movb	-369(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_22
	jmp	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_19
.LBB0_24:
	cmpl	$0, -76(%rbp)
	jne	.LBB0_26
# %bb.25:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	callq	stbiw__jpg_writeBits@PLT
	movl	-336(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_45
.LBB0_26:
	movl	$1, -68(%rbp)
.LBB0_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_36 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB0_42
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -348(%rbp)
.LBB0_29:                               #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-68(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -336(%rbp,%rcx,4)
	movb	%al, -370(%rbp)                 # 1-byte Spill
	jne	.LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=2
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	setle	%al
	movb	%al, -370(%rbp)                 # 1-byte Spill
.LBB0_31:                               #   in Loop: Header=BB0_29 Depth=2
	movb	-370(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_32
	jmp	.LBB0_34
.LBB0_32:                               #   in Loop: Header=BB0_29 Depth=2
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_29 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_29
.LBB0_34:                               #   in Loop: Header=BB0_27 Depth=1
	movl	-68(%rbp), %eax
	subl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	cmpl	$16, -352(%rbp)
	jl	.LBB0_40
# %bb.35:                               #   in Loop: Header=BB0_27 Depth=1
	movl	-352(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -360(%rbp)
	movl	$1, -364(%rbp)
.LBB0_36:                               #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-364(%rbp), %eax
	cmpl	-360(%rbp), %eax
	jg	.LBB0_39
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	callq	stbiw__jpg_writeBits@PLT
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=2
	movl	-364(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -364(%rbp)
	jmp	.LBB0_36
.LBB0_39:                               #   in Loop: Header=BB0_27 Depth=1
	movl	-352(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -352(%rbp)
.LBB0_40:                               #   in Loop: Header=BB0_27 Depth=1
	movslq	-68(%rbp), %rax
	movl	-336(%rbp,%rax,4), %edi
	leaq	-356(%rbp), %rsi
	callq	stbiw__jpg_calcBits@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	24(%rbp), %rcx
	movl	-352(%rbp), %eax
	shll	$4, %eax
	movzwl	-354(%rbp), %r8d
	addl	%r8d, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rcx
	callq	stbiw__jpg_writeBits@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-356(%rbp), %rcx
	callq	stbiw__jpg_writeBits@PLT
# %bb.41:                               #   in Loop: Header=BB0_27 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_27
.LBB0_42:
	cmpl	$63, -76(%rbp)
	je	.LBB0_44
# %bb.43:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	callq	stbiw__jpg_writeBits@PLT
.LBB0_44:
	movl	-336(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_45:
	movl	-4(%rbp), %eax
	addq	$400, %rsp                      # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbiw__jpg_ZigZag
	.p2align	3
stbiw__jpg_ZigZag:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__jpg_processDU
	.addrsig_sym stbiw__jpg_DCT
	.addrsig_sym stbiw__jpg_writeBits
	.addrsig_sym stbiw__jpg_calcBits
	.addrsig_sym stbiw__jpg_ZigZag
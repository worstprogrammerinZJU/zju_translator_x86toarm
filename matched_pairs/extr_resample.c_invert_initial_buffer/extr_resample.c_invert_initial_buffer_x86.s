	.text
	.p2align	4, 0x90                         # -- Begin function invert_initial_buffer
invert_initial_buffer:                  # @invert_initial_buffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	-36(%rbp), %edi
	movq	-56(%rbp), %rax
	addl	(%rax), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	addl	$1, %esi
	callq	FFMIN@PLT
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jl	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_2:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	shll	$1, %esi
	addl	$1, %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_4
# %bb.3:
	movl	-72(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_4:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -64(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	addq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	(%rcx), %eax
	movq	-16(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	addq	%rax, %rsi
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	callq	memcpy@PLT
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_5
.LBB0_12:
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.13:
	movl	-68(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	INT_MAX(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_14:
	movl	$1, -60(%rbp)
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_22
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movl	$0, -64(%rbp)
.LBB0_17:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	addq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	addq	%rax, %rsi
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	callq	memcpy@PLT
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_15
.LBB0_22:
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jge	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	8(%rax), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB0_23
.LBB0_25:
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	addl	(%rax), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	shll	$1, %esi
	addl	$1, %esi
	callq	FFMAX@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	subl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-72(%rbp), %edi
	xorl	%esi, %esi
	callq	FFMAX@PLT
	movl	%eax, -4(%rbp)
.LBB0_26:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym invert_initial_buffer
	.addrsig_sym FFMIN
	.addrsig_sym swri_realloc_audio
	.addrsig_sym memcpy
	.addrsig_sym FFMAX
	.addrsig_sym INT_MAX
	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function swri_get_dither
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	swri_get_dither
	.p2align	4, 0x90
swri_get_dither:                        # @swri_get_dither
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	-28(%rbp), %edi
	addl	$2, %edi
	movl	$8, %esi
	callq	av_malloc_array@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	ENOMEM(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_2:
	movl	$0, -60(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	imull	$1664525, %eax, %eax            # imm = 0x19660D
	addl	$1013904223, %eax               # imm = 0x3C6EF35F
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	subl	$129, %eax
	jne	.LBB0_6
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
                                        # kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm0
	divsd	UINT_MAX(%rip), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	SWR_DITHER_NB(%rip), %ecx
	subl	%ecx, %eax
	setl	%al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movl	-32(%rbp), %eax
                                        # kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm0
	movsd	UINT_MAX(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-32(%rbp), %eax
	imull	$1664525, %eax, %eax            # imm = 0x19660D
	addl	$1013904223, %eax               # imm = 0x3C6EF35F
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
                                        # kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm1
	divsd	UINT_MAX(%rip), %xmm1
	movsd	-72(%rbp), %xmm0                # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movsd	-72(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	movl	$0, -60(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_22
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	subl	$128, %eax
	je	.LBB0_13
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	SWR_DITHER_NB(%rip), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-56(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, %xmm1
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -88(%rbp)                # 8-byte Spill
	movl	$6, %edi
	callq	sqrt@PLT
	movaps	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	movsd	-48(%rbp), %xmm1                # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm0                # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-36(%rbp), %eax
	addl	$-130, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_19
# %bb.24:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-96(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	movsd	-80(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	jmp	.LBB0_20
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	movsd	-80(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	jmp	.LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_10 Depth=1
	movsd	-80(%rbp), %xmm0                # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	jmp	.LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	movsd	-80(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_10 Depth=1
	xorl	%edi, %edi
	callq	av_assert0@PLT
.LBB0_20:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_10
.LBB0_22:
	movq	-56(%rbp), %rdi
	callq	av_free@PLT
	movl	$0, -4(%rbp)
.LBB0_23:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
                                        # -- End function
	.bss
	.globl	ENOMEM
	.p2align	2
ENOMEM:
	.long	0                               # 0x0
	.globl	UINT_MAX
	.p2align	3
UINT_MAX:
	.quad	0x0000000000000000              # double 0
	.globl	SWR_DITHER_NB
	.p2align	2
SWR_DITHER_NB:
	.long	0                               # 0x0
	.globl	TMP_EXTRA
	.p2align	2
TMP_EXTRA:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_malloc_array
	.addrsig_sym AVERROR
	.addrsig_sym av_assert0
	.addrsig_sym sqrt
	.addrsig_sym av_free
	.addrsig_sym ENOMEM
	.addrsig_sym UINT_MAX
	.addrsig_sym SWR_DITHER_NB
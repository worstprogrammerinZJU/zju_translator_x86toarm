	.text
	.globl	swri_realloc_audio              # -- Begin function swri_realloc_audio
	.p2align	4, 0x90
swri_realloc_audio:                     # @swri_realloc_audio
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movl	INT_MAX(%rip), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rcx
	cltd
	idivl	(%rcx)
	movq	-16(%rbp), %rcx
	cltd
	idivl	4(%rcx)
	movl	%eax, %ecx
	movl	-68(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB0_3
.LBB0_2:
	movl	EINVAL(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_3:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_5
# %bb.4:
	movl	$0, -4(%rbp)
	jmp	.LBB0_21
.LBB0_5:
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rax
	imull	(%rax), %edi
	movl	ALIGN(%rip), %esi
	callq	FFALIGN@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	av_assert0@PLT
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	av_assert0@PLT
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	callq	av_mallocz_array@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB0_7
# %bb.6:
	movl	ENOMEM(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_7:
	movl	$0, -24(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_17
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-76(%rbp), %eax                 # 4-byte Reload
	movl	-72(%rbp), %ecx                 # 4-byte Reload
	movl	-80(%rbp), %edx                 # 4-byte Reload
	imull	%edx, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-48(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	imull	(%rax), %edx
	callq	memcpy@PLT
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_8
.LBB0_17:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_20
# %bb.18:
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB0_20
# %bb.19:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	imull	4(%rax), %edx
	movq	-16(%rbp), %rax
	imull	(%rax), %edx
	callq	memcpy@PLT
.LBB0_20:
	leaq	-64(%rbp), %rdi
	addq	$12, %rdi
	callq	av_freep@PLT
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	$1, -4(%rbp)
.LBB0_21:
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
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.globl	ALIGN
	.p2align	2
ALIGN:
	.long	0                               # 0x0
	.globl	ENOMEM
	.p2align	2
ENOMEM:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym AVERROR
	.addrsig_sym FFALIGN
	.addrsig_sym av_assert0
	.addrsig_sym av_mallocz_array
	.addrsig_sym memcpy
	.addrsig_sym av_freep
	.addrsig_sym INT_MAX
	.addrsig_sym EINVAL
	.addrsig_sym ALIGN
	.addrsig_sym ENOMEM
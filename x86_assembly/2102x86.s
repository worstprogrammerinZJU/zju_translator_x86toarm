	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function resample_init
.LCPI0_0:
	.quad	0x3fef0a3d70a3d70a              # double 0.96999999999999997
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.p2align	4, 0x90
resample_init:                          # @resample_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm2, -64(%rbp)
	movsd	-48(%rbp), %xmm0                # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_1
	jp	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:
	movsd	-48(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)               # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)               # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movsd	-112(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	mulsd	-72(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	FFMIN@PLT
	movsd	%xmm0, -80(%rbp)
	movl	-32(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %edi
	callq	ceil@PLT
	movl	%eax, %edi
	movl	$1, %esi
	callq	FFMAX@PLT
	movl	%eax, -92(%rbp)
	cmpl	$1, -92(%rbp)
	jle	.LBB0_5
# %bb.4:
	movl	-92(%rbp), %edi
	movl	$2, %esi
	callq	FFALIGN@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -92(%rbp)
.LBB0_5:
	cmpl	$0, 40(%rbp)
	je	.LBB0_9
# %bb.6:
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	INT_MAX(%rip), %r8d
	leaq	-96(%rbp), %rdi
	leaq	-100(%rbp), %rsi
	callq	av_reduce@PLT
	movl	-96(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jg	.LBB0_8
# %bb.7:
	movl	-96(%rbp), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	movl	-84(%rbp), %eax
	cltd
	idivl	-96(%rbp)
	movl	%eax, %ecx
	movl	-116(%rbp), %eax                # 4-byte Reload
	imull	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	cmpq	$0, -16(%rbp)
	je	.LBB0_17
# %bb.10:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB0_17
# %bb.11:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB0_17
# %bb.12:
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0                  # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB0_17
	jp	.LBB0_17
# %bb.13:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	-92(%rbp), %eax
	jne	.LBB0_17
# %bb.14:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	16(%rbp), %eax
	jne	.LBB0_17
# %bb.15:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	24(%rbp), %eax
	jne	.LBB0_17
# %bb.16:
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0                 # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jne	.LBB0_17
	jp	.LBB0_17
	jmp	.LBB0_31
.LBB0_17:
	leaq	-16(%rbp), %rdi
	callq	resample_free@PLT
	movl	$104, %edi
	callq	av_mallocz@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_19
# %bb.18:
	movq	$0, -8(%rbp)
	jmp	.LBB0_40
.LBB0_19:
	movl	16(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %edi
	callq	av_get_bytes_per_sample@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -120(%rbp)                # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_21
	jmp	.LBB0_41
.LBB0_41:
	movl	-120(%rbp), %eax                # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_20
	jmp	.LBB0_42
.LBB0_42:
	movl	-120(%rbp), %eax                # 4-byte Reload
	addl	$-130, %eax
	subl	$2, %eax
	jb	.LBB0_22
	jmp	.LBB0_23
.LBB0_20:
	movq	-16(%rbp), %rax
	movl	$15, 44(%rax)
	jmp	.LBB0_24
.LBB0_21:
	movq	-16(%rbp), %rax
	movl	$30, 44(%rax)
	jmp	.LBB0_24
.LBB0_22:
	movq	-16(%rbp), %rax
	movl	$0, 44(%rax)
	jmp	.LBB0_24
.LBB0_23:
	movl	AV_LOG_ERROR(%rip), %esi
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L.str(%rip), %rdx
	callq	av_log@PLT
	xorl	%edi, %edi
	callq	av_assert0@PLT
.LBB0_24:
	cvtsi2sdl	-28(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	movl	INT32_MAX(%rip), %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	cvtsi2sd	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_26
# %bb.25:
	movl	AV_LOG_ERROR(%rip), %esi
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L.str.1(%rip), %rdx
	callq	av_log@PLT
	jmp	.LBB0_39
.LBB0_26:
	movl	-84(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movsd	-80(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-92(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movl	$8, %esi
	callq	FFALIGN@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	48(%rax), %edi
	movl	-84(%rbp), %esi
	addl	$1, %esi
	movq	-16(%rbp), %rax
	imull	40(%rax), %esi
	callq	av_calloc@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 80(%rax)
	movl	24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movsd	-56(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movl	-88(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 52(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB0_28
# %bb.27:
	jmp	.LBB0_39
.LBB0_28:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rsi
	movsd	-80(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	movl	-84(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	$1, %r9d
                                        # kill: def $cl killed $ecx
	shll	%cl, %r9d
	movl	-124(%rbp), %ecx                # 4-byte Reload
	movl	24(%rbp), %eax
	movsd	-56(%rbp), %xmm1                # xmm1 = mem[0],zero
	movl	%eax, (%rsp)
	callq	build_filter@PLT
	cmpq	$0, %rax
	je	.LBB0_30
# %bb.29:
	jmp	.LBB0_39
.LBB0_30:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	imull	-84(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	imull	40(%rcx), %eax
	cltq
	addq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	48(%rax), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	imull	40(%rax), %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	imull	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	40(%rcx), %eax
	cltq
	addq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	imull	40(%rcx), %eax
	cltq
	addq	%rax, %rsi
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	callq	memcpy@PLT
.LBB0_31:
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-16(%rbp), %rdi
	addq	$56, %rdi
	movq	-16(%rbp), %rsi
	addq	$60, %rsi
	movl	-20(%rbp), %eax
	movl	%eax, -128(%rbp)                # 4-byte Spill
	movl	-24(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movl	INT32_MAX(%rip), %eax
	movl	$2, %r8d
	cltd
	idivl	%r8d
	movl	-128(%rbp), %edx                # 4-byte Reload
	movl	%eax, %r8d
	callq	av_reduce@PLT
	cmpl	$0, %eax
	jne	.LBB0_33
# %bb.32:
	jmp	.LBB0_39
.LBB0_33:
	jmp	.LBB0_34
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$1048576, 60(%rcx)              # imm = 0x100000
	movb	%al, -129(%rbp)                 # 1-byte Spill
	jge	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$1048576, 56(%rax)              # imm = 0x100000
	setl	%al
	movb	%al, -129(%rbp)                 # 1-byte Spill
.LBB0_36:                               #   in Loop: Header=BB0_34 Depth=1
	movb	-129(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_37
	jmp	.LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_34 Depth=1
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 60(%rax)
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 56(%rax)
	jmp	.LBB0_34
.LBB0_38:
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	56(%rcx)
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 68(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	56(%rcx)
	movq	-16(%rbp), %rax
	movl	%edx, 72(%rax)
	xorl	%ecx, %ecx
	subl	-84(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	imull	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 76(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-16(%rbp), %rdi
	callq	swri_resample_dsp_init@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_40
.LBB0_39:
	movq	-16(%rbp), %rdi
	addq	$80, %rdi
	callq	av_freep@PLT
	movq	-16(%rbp), %rdi
	callq	av_free@PLT
	movq	$0, -8(%rbp)
.LBB0_40:
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.long	0                               # 0x0
	.globl	AV_LOG_ERROR
	.p2align	2
AV_LOG_ERROR:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unsupported sample format\n"
	.bss
	.globl	INT32_MAX
	.p2align	2
INT32_MAX:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Filter length too large\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample_init
	.addrsig_sym FFMIN
	.addrsig_sym FFMAX
	.addrsig_sym ceil
	.addrsig_sym FFALIGN
	.addrsig_sym av_reduce
	.addrsig_sym resample_free
	.addrsig_sym av_mallocz
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym av_log
	.addrsig_sym av_assert0
	.addrsig_sym av_calloc
	.addrsig_sym build_filter
	.addrsig_sym memcpy
	.addrsig_sym swri_resample_dsp_init
	.addrsig_sym av_freep
	.addrsig_sym av_free
	.addrsig_sym INT_MAX
	.addrsig_sym AV_LOG_ERROR
	.addrsig_sym INT32_MAX
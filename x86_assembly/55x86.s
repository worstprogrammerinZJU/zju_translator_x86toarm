	.text
	.globl	swri_audio_convert_alloc        # -- Begin function swri_audio_convert_alloc
	.p2align	4, 0x90
swri_audio_convert_alloc:               # @swri_audio_convert_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	fmt_pair_to_conv_functions(%rip), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %edi
	callq	av_get_packed_sample_fmt@PLT
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	AV_SAMPLE_FMT_NB(%rip), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movl	-16(%rbp), %edi
	callq	av_get_packed_sample_fmt@PLT
	movq	-80(%rbp), %rdx                 # 8-byte Reload
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-64(%rbp), %rax                 # 8-byte Reload
	imulq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_25
.LBB0_2:
	movl	$32, %edi
	callq	av_mallocz@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	$0, -8(%rbp)
	jmp	.LBB0_25
.LBB0_4:
	cmpl	$1, -20(%rbp)
	jne	.LBB0_6
# %bb.5:
	movl	-16(%rbp), %edi
	callq	av_get_planar_sample_fmt@PLT
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %edi
	callq	av_get_planar_sample_fmt@PLT
	movl	%eax, -12(%rbp)
.LBB0_6:
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_U8(%rip), %eax
	je	.LBB0_8
# %bb.7:
	movl	-16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_U8P(%rip), %eax
	jne	.LBB0_9
.LBB0_8:
	movq	-48(%rbp), %rax
	movl	20(%rax), %edi
	movl	$128, %esi
	movl	$4, %edx
	callq	memset@PLT
.LBB0_9:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB0_17
# %bb.10:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_17
# %bb.11:
	movl	-16(%rbp), %edi
	callq	av_get_bytes_per_sample@PLT
	addl	$-1, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)                 # 8-byte Spill
	subl	$7, %eax
	ja	.LBB0_16
# %bb.26:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_12:
	movl	cpy1(%rip), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	jmp	.LBB0_16
.LBB0_13:
	movl	cpy2(%rip), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	jmp	.LBB0_16
.LBB0_14:
	movl	cpy4(%rip), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	jmp	.LBB0_16
.LBB0_15:
	movl	cpy8(%rip), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	cmpq	$0, HAVE_X86ASM(%rip)
	je	.LBB0_20
# %bb.18:
	cmpq	$0, HAVE_MMX(%rip)
	je	.LBB0_20
# %bb.19:
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	swri_audio_convert_init_x86@PLT
.LBB0_20:
	cmpq	$0, ARCH_ARM(%rip)
	je	.LBB0_22
# %bb.21:
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	swri_audio_convert_init_arm@PLT
.LBB0_22:
	cmpq	$0, ARCH_AARCH64(%rip)
	je	.LBB0_24
# %bb.23:
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	swri_audio_convert_init_aarch64@PLT
.LBB0_24:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_25:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
                                        # -- End function
	.bss
	.globl	fmt_pair_to_conv_functions
	.p2align	3
fmt_pair_to_conv_functions:
	.quad	0
	.globl	AV_SAMPLE_FMT_NB
	.p2align	3
AV_SAMPLE_FMT_NB:
	.quad	0                               # 0x0
	.globl	AV_SAMPLE_FMT_U8
	.p2align	2
AV_SAMPLE_FMT_U8:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_U8P
	.p2align	2
AV_SAMPLE_FMT_U8P:
	.long	0                               # 0x0
	.globl	cpy1
	.p2align	2
cpy1:
	.long	0                               # 0x0
	.globl	cpy2
	.p2align	2
cpy2:
	.long	0                               # 0x0
	.globl	cpy4
	.p2align	2
cpy4:
	.long	0                               # 0x0
	.globl	cpy8
	.p2align	2
cpy8:
	.long	0                               # 0x0
	.globl	HAVE_X86ASM
	.p2align	3
HAVE_X86ASM:
	.quad	0                               # 0x0
	.globl	HAVE_MMX
	.p2align	3
HAVE_MMX:
	.quad	0                               # 0x0
	.globl	ARCH_ARM
	.p2align	3
ARCH_ARM:
	.quad	0                               # 0x0
	.globl	ARCH_AARCH64
	.p2align	3
ARCH_AARCH64:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_get_packed_sample_fmt
	.addrsig_sym av_mallocz
	.addrsig_sym av_get_planar_sample_fmt
	.addrsig_sym memset
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym swri_audio_convert_init_x86
	.addrsig_sym swri_audio_convert_init_arm
	.addrsig_sym swri_audio_convert_init_aarch64
	.addrsig_sym fmt_pair_to_conv_functions
	.addrsig_sym AV_SAMPLE_FMT_NB
	.addrsig_sym AV_SAMPLE_FMT_U8
	.addrsig_sym AV_SAMPLE_FMT_U8P
	.addrsig_sym cpy1
	.addrsig_sym cpy2
	.addrsig_sym cpy4
	.addrsig_sym cpy8
	.addrsig_sym HAVE_X86ASM
	.addrsig_sym HAVE_MMX
	.addrsig_sym ARCH_ARM
	.addrsig_sym ARCH_AARCH64
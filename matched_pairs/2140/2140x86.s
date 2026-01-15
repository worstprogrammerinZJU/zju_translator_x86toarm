	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function create
.LCPI0_0:
	.quad	0x4010000000000000              # double 4
.LCPI0_1:
	.quad	0x4000000000000000              # double 2
.LCPI0_2:
	.quad	0x3fe999999999999a              # double 0.80000000000000004
.LCPI0_3:
	.quad	0x3fefd70a3d70a3d7              # double 0.99499999999999999
	.text
	.p2align	4, 0x90
create:                                 # @create
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movl	16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_S16P(%rip), %eax
	jne	.LBB0_2
# %bb.1:
	movl	SOXR_INT16_S(%rip), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_24
.LBB0_2:
	movl	16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_S16(%rip), %eax
	jne	.LBB0_4
# %bb.3:
	movl	SOXR_INT16_I(%rip), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	jmp	.LBB0_23
.LBB0_4:
	movl	16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_S32P(%rip), %eax
	jne	.LBB0_6
# %bb.5:
	movl	SOXR_INT32_S(%rip), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	jmp	.LBB0_22
.LBB0_6:
	movl	16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_S32(%rip), %eax
	jne	.LBB0_8
# %bb.7:
	movl	SOXR_INT32_I(%rip), %eax
	movl	%eax, -104(%rbp)                # 4-byte Spill
	jmp	.LBB0_21
.LBB0_8:
	movl	16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_FLTP(%rip), %eax
	jne	.LBB0_10
# %bb.9:
	movl	SOXR_FLOAT32_S(%rip), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	jmp	.LBB0_20
.LBB0_10:
	movl	16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_FLT(%rip), %eax
	jne	.LBB0_12
# %bb.11:
	movl	SOXR_FLOAT32_I(%rip), %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	jmp	.LBB0_19
.LBB0_12:
	movl	16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_DBLP(%rip), %eax
	jne	.LBB0_14
# %bb.13:
	movl	SOXR_FLOAT64_S(%rip), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	jmp	.LBB0_18
.LBB0_14:
	movl	16(%rbp), %eax
	cmpl	AV_SAMPLE_FMT_DBL(%rip), %eax
	jne	.LBB0_16
# %bb.15:
	movl	SOXR_FLOAT64_I(%rip), %eax
	movl	%eax, -120(%rbp)                # 4-byte Spill
	jmp	.LBB0_17
.LBB0_16:
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movl	%eax, -120(%rbp)                # 4-byte Spill
	jmp	.LBB0_17
.LBB0_17:
	movl	-120(%rbp), %eax                # 4-byte Reload
	movl	%eax, -116(%rbp)                # 4-byte Spill
.LBB0_18:
	movl	-116(%rbp), %eax                # 4-byte Reload
	movl	%eax, -112(%rbp)                # 4-byte Spill
.LBB0_19:
	movl	-112(%rbp), %eax                # 4-byte Reload
	movl	%eax, -108(%rbp)                # 4-byte Spill
.LBB0_20:
	movl	-108(%rbp), %eax                # 4-byte Reload
	movl	%eax, -104(%rbp)                # 4-byte Spill
.LBB0_21:
	movl	-104(%rbp), %eax                # 4-byte Reload
	movl	%eax, -100(%rbp)                # 4-byte Spill
.LBB0_22:
	movl	-100(%rbp), %eax                # 4-byte Reload
	movl	%eax, -96(%rbp)                 # 4-byte Spill
.LBB0_23:
	movl	-96(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -92(%rbp)                 # 4-byte Spill
.LBB0_24:
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %edi
	movl	-64(%rbp), %esi
	callq	soxr_io_spec@PLT
	movl	%eax, -68(%rbp)
	movsd	-56(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	movl	SOXR_HI_PREC_CLOCK(%rip), %esi
	orl	SOXR_ROLLOFF_NONE(%rip), %esi
	cmpl	$0, 32(%rbp)
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	imull	%eax, %esi
	callq	soxr_quality_spec@PLT
	movsd	%xmm0, -88(%rbp)
	movq	%rax, -80(%rbp)
	movsd	-56(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_25
	jp	.LBB0_25
	jmp	.LBB0_26
.LBB0_25:
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	FFMIN@PLT
	movl	%eax, %edi
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	FFMAX@PLT
	imull	$100, %eax, %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	jmp	.LBB0_27
.LBB0_26:
	movl	-80(%rbp), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
.LBB0_27:
	movl	-124(%rbp), %eax                # 4-byte Reload
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	callq	soxr_delete@PLT
	movl	-16(%rbp), %edi
	movl	-12(%rbp), %esi
	xorl	%edx, %edx
	leaq	-60(%rbp), %rcx
	leaq	-68(%rbp), %r8
	leaq	-88(%rbp), %r9
	movl	$0, (%rsp)
	callq	soxr_create@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_29
# %bb.28:
	movl	AV_LOG_ERROR(%rip), %esi
	movl	-60(%rbp), %ecx
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L.str(%rip), %rdx
	callq	av_log@PLT
.LBB0_29:
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AV_SAMPLE_FMT_S16P
	.p2align	2
AV_SAMPLE_FMT_S16P:
	.long	0                               # 0x0
	.globl	SOXR_INT16_S
	.p2align	2
SOXR_INT16_S:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_S16
	.p2align	2
AV_SAMPLE_FMT_S16:
	.long	0                               # 0x0
	.globl	SOXR_INT16_I
	.p2align	2
SOXR_INT16_I:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_S32P
	.p2align	2
AV_SAMPLE_FMT_S32P:
	.long	0                               # 0x0
	.globl	SOXR_INT32_S
	.p2align	2
SOXR_INT32_S:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_S32
	.p2align	2
AV_SAMPLE_FMT_S32:
	.long	0                               # 0x0
	.globl	SOXR_INT32_I
	.p2align	2
SOXR_INT32_I:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_FLTP
	.p2align	2
AV_SAMPLE_FMT_FLTP:
	.long	0                               # 0x0
	.globl	SOXR_FLOAT32_S
	.p2align	2
SOXR_FLOAT32_S:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_FLT
	.p2align	2
AV_SAMPLE_FMT_FLT:
	.long	0                               # 0x0
	.globl	SOXR_FLOAT32_I
	.p2align	2
SOXR_FLOAT32_I:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_DBLP
	.p2align	2
AV_SAMPLE_FMT_DBLP:
	.long	0                               # 0x0
	.globl	SOXR_FLOAT64_S
	.p2align	2
SOXR_FLOAT64_S:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_DBL
	.p2align	2
AV_SAMPLE_FMT_DBL:
	.long	0                               # 0x0
	.globl	SOXR_FLOAT64_I
	.p2align	2
SOXR_FLOAT64_I:
	.long	0                               # 0x0
	.globl	SOXR_HI_PREC_CLOCK
	.p2align	2
SOXR_HI_PREC_CLOCK:
	.long	0                               # 0x0
	.globl	SOXR_ROLLOFF_NONE
	.p2align	2
SOXR_ROLLOFF_NONE:
	.long	0                               # 0x0
	.globl	AV_LOG_ERROR
	.p2align	2
AV_LOG_ERROR:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"soxr_create: %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym create
	.addrsig_sym soxr_io_spec
	.addrsig_sym soxr_quality_spec
	.addrsig_sym FFMAX
	.addrsig_sym FFMIN
	.addrsig_sym soxr_delete
	.addrsig_sym soxr_create
	.addrsig_sym av_log
	.addrsig_sym AV_SAMPLE_FMT_S16P
	.addrsig_sym SOXR_INT16_S
	.addrsig_sym AV_SAMPLE_FMT_S16
	.addrsig_sym SOXR_INT16_I
	.addrsig_sym AV_SAMPLE_FMT_S32P
	.addrsig_sym SOXR_INT32_S
	.addrsig_sym AV_SAMPLE_FMT_S32
	.addrsig_sym SOXR_INT32_I
	.addrsig_sym AV_SAMPLE_FMT_FLTP
	.addrsig_sym SOXR_FLOAT32_S
	.addrsig_sym AV_SAMPLE_FMT_FLT
	.addrsig_sym SOXR_FLOAT32_I
	.addrsig_sym AV_SAMPLE_FMT_DBLP
	.addrsig_sym SOXR_FLOAT64_S
	.addrsig_sym AV_SAMPLE_FMT_DBL
	.addrsig_sym SOXR_FLOAT64_I
	.addrsig_sym SOXR_HI_PREC_CLOCK
	.addrsig_sym SOXR_ROLLOFF_NONE
	.addrsig_sym AV_LOG_ERROR
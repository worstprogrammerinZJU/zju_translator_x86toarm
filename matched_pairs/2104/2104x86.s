	.text
	.globl	swri_resample_dsp_init          # -- Begin function swri_resample_dsp_init
	.p2align	4, 0x90
swri_resample_dsp_init:                 # @swri_resample_dsp_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_5
# %bb.14:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movl	resample_one_int16(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	resample_common_int16(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	resample_linear_int16(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB0_5
.LBB0_2:
	movl	resample_one_int32(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	resample_common_int32(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	resample_linear_int32(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB0_5
.LBB0_3:
	movl	resample_one_float(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	resample_common_float(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	resample_linear_float(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB0_5
.LBB0_4:
	movl	resample_one_double(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	resample_common_double(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	resample_linear_double(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB0_5:
	cmpq	$0, ARCH_X86(%rip)
	je	.LBB0_7
# %bb.6:
	movq	-8(%rbp), %rdi
	callq	swri_resample_dsp_x86_init@PLT
	jmp	.LBB0_13
.LBB0_7:
	cmpq	$0, ARCH_ARM(%rip)
	je	.LBB0_9
# %bb.8:
	movq	-8(%rbp), %rdi
	callq	swri_resample_dsp_arm_init@PLT
	jmp	.LBB0_12
.LBB0_9:
	cmpq	$0, ARCH_AARCH64(%rip)
	je	.LBB0_11
# %bb.10:
	movq	-8(%rbp), %rdi
	callq	swri_resample_dsp_aarch64_init@PLT
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
                                        # -- End function
	.bss
	.globl	resample_one_int16
	.p2align	2
resample_one_int16:
	.long	0                               # 0x0
	.globl	resample_common_int16
	.p2align	2
resample_common_int16:
	.long	0                               # 0x0
	.globl	resample_linear_int16
	.p2align	2
resample_linear_int16:
	.long	0                               # 0x0
	.globl	resample_one_int32
	.p2align	2
resample_one_int32:
	.long	0                               # 0x0
	.globl	resample_common_int32
	.p2align	2
resample_common_int32:
	.long	0                               # 0x0
	.globl	resample_linear_int32
	.p2align	2
resample_linear_int32:
	.long	0                               # 0x0
	.globl	resample_one_float
	.p2align	2
resample_one_float:
	.long	0                               # 0x0
	.globl	resample_common_float
	.p2align	2
resample_common_float:
	.long	0                               # 0x0
	.globl	resample_linear_float
	.p2align	2
resample_linear_float:
	.long	0                               # 0x0
	.globl	resample_one_double
	.p2align	2
resample_one_double:
	.long	0                               # 0x0
	.globl	resample_common_double
	.p2align	2
resample_common_double:
	.long	0                               # 0x0
	.globl	resample_linear_double
	.p2align	2
resample_linear_double:
	.long	0                               # 0x0
	.globl	ARCH_X86
	.p2align	3
ARCH_X86:
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
	.addrsig_sym swri_resample_dsp_x86_init
	.addrsig_sym swri_resample_dsp_arm_init
	.addrsig_sym swri_resample_dsp_aarch64_init
	.addrsig_sym resample_one_int16
	.addrsig_sym resample_common_int16
	.addrsig_sym resample_linear_int16
	.addrsig_sym resample_one_int32
	.addrsig_sym resample_common_int32
	.addrsig_sym resample_linear_int32
	.addrsig_sym resample_one_float
	.addrsig_sym resample_common_float
	.addrsig_sym resample_linear_float
	.addrsig_sym resample_one_double
	.addrsig_sym resample_common_double
	.addrsig_sym resample_linear_double
	.addrsig_sym ARCH_X86
	.addrsig_sym ARCH_ARM
	.addrsig_sym ARCH_AARCH64
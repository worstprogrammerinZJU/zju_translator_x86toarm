	.text
	.globl	load_thread                     # -- Begin function load_thread
	.p2align	4, 0x90
load_thread:                            # @load_thread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rsi
	leaq	-184(%rbp), %rdi
	movl	$136, %edx
	callq	memcpy@PLT
	cmpl	$0, -184(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$1, -184(%rbp)
.LBB0_2:
	cmpl	$0, -180(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	$1, -180(%rbp)
.LBB0_4:
	cmpl	$0, -176(%rbp)
	jne	.LBB0_6
# %bb.5:
	movl	$1, -176(%rbp)
.LBB0_6:
	movq	-168(%rbp), %rax
	cmpq	OLD_CLASSIFICATION_DATA(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	movl	-128(%rbp), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-140(%rbp), %r8d
	movl	-108(%rbp), %r9d
	movl	-112(%rbp), %eax
	movl	%eax, (%rsp)
	callq	load_data_old@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_50
.LBB0_8:
	movq	-168(%rbp), %rax
	cmpq	REGRESSION_DATA(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	movl	-128(%rbp), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %ecx
	movl	-144(%rbp), %r8d
	movl	-148(%rbp), %r9d
	movl	-152(%rbp), %r15d
	movl	-156(%rbp), %r14d
	movl	-176(%rbp), %ebx
	movl	-160(%rbp), %r11d
	movl	-180(%rbp), %r10d
	movl	-184(%rbp), %eax
	movl	%r15d, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%eax, 40(%rsp)
	callq	load_data_regression@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_49
.LBB0_10:
	movq	-168(%rbp), %rax
	cmpq	CLASSIFICATION_DATA(%rip), %rax
	jne	.LBB0_12
# %bb.11:
	movl	-128(%rbp), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-140(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-144(%rbp), %eax
	movl	%eax, -192(%rbp)                # 4-byte Spill
	movl	-148(%rbp), %r13d
	movl	-152(%rbp), %r12d
	movl	-156(%rbp), %r15d
	movl	-176(%rbp), %r14d
	movl	-160(%rbp), %ebx
	movl	-180(%rbp), %r11d
	movl	-184(%rbp), %r10d
	movl	-60(%rbp), %eax
	movl	%eax, -188(%rbp)                # 4-byte Spill
	movl	-192(%rbp), %eax                # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-188(%rbp), %eax                # 4-byte Reload
	movl	%r13d, 8(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%ebx, 40(%rsp)
	movl	%r11d, 48(%rsp)
	movl	%r10d, 56(%rsp)
	movl	%eax, 64(%rsp)
	callq	load_data_augment@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_48
.LBB0_12:
	movq	-168(%rbp), %rax
	cmpq	SUPER_DATA(%rip), %rax
	jne	.LBB0_14
# %bb.13:
	movl	-128(%rbp), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-76(%rbp), %r9d
	callq	load_data_super@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_47
.LBB0_14:
	movq	-168(%rbp), %rax
	cmpq	WRITING_DATA(%rip), %rax
	jne	.LBB0_16
# %bb.15:
	movl	-128(%rbp), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %eax
	movl	%eax, (%rsp)
	callq	load_data_writing@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_46
.LBB0_16:
	movq	-168(%rbp), %rax
	cmpq	ISEG_DATA(%rip), %rax
	jne	.LBB0_18
# %bb.17:
	movl	-132(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-80(%rbp), %eax
	movl	%eax, -200(%rbp)                # 4-byte Spill
	movl	-76(%rbp), %r13d
	movl	-144(%rbp), %r12d
	movl	-148(%rbp), %r15d
	movl	-156(%rbp), %r14d
	movl	-176(%rbp), %ebx
	movl	-160(%rbp), %r11d
	movl	-180(%rbp), %r10d
	movl	-184(%rbp), %eax
	movl	%eax, -196(%rbp)                # 4-byte Spill
	movl	-200(%rbp), %eax                # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-196(%rbp), %eax                # 4-byte Reload
	movl	%r13d, 8(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%ebx, 40(%rsp)
	movl	%r11d, 48(%rsp)
	movl	%r10d, 56(%rsp)
	movl	%eax, 64(%rsp)
	callq	load_data_iseg@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_45
.LBB0_18:
	movq	-168(%rbp), %rax
	cmpq	INSTANCE_DATA(%rip), %rax
	jne	.LBB0_20
# %bb.19:
	movl	-132(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-80(%rbp), %eax
	movl	%eax, -208(%rbp)                # 4-byte Spill
	movl	-72(%rbp), %r13d
	movl	-144(%rbp), %r12d
	movl	-148(%rbp), %r15d
	movl	-156(%rbp), %r14d
	movl	-176(%rbp), %ebx
	movl	-160(%rbp), %r11d
	movl	-180(%rbp), %r10d
	movl	-184(%rbp), %eax
	movl	%eax, -204(%rbp)                # 4-byte Spill
	movl	-208(%rbp), %eax                # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-204(%rbp), %eax                # 4-byte Reload
	movl	%r13d, 8(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%ebx, 40(%rsp)
	movl	%r11d, 48(%rsp)
	movl	%r10d, 56(%rsp)
	movl	%eax, 64(%rsp)
	callq	load_data_mask@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_44
.LBB0_20:
	movq	-168(%rbp), %rax
	cmpq	SEGMENTATION_DATA(%rip), %rax
	jne	.LBB0_22
# %bb.21:
	movl	-132(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-144(%rbp), %r13d
	movl	-148(%rbp), %r12d
	movl	-156(%rbp), %r15d
	movl	-176(%rbp), %r14d
	movl	-160(%rbp), %ebx
	movl	-180(%rbp), %r11d
	movl	-184(%rbp), %r10d
	movl	-76(%rbp), %eax
	movl	%r13d, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%r11d, 40(%rsp)
	movl	%r10d, 48(%rsp)
	movl	%eax, 56(%rsp)
	callq	load_data_seg@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_43
.LBB0_22:
	movq	-168(%rbp), %rax
	cmpq	REGION_DATA(%rip), %rax
	jne	.LBB0_24
# %bb.23:
	movl	-132(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	-140(%rbp), %r14d
	movl	-84(%rbp), %ebx
	movl	-160(%rbp), %r11d
	movl	-180(%rbp), %r10d
	movl	-184(%rbp), %eax
	movl	%r14d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	load_data_region@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_42
.LBB0_24:
	movq	-168(%rbp), %rax
	cmpq	DETECTION_DATA(%rip), %rax
	jne	.LBB0_26
# %bb.25:
	movl	-132(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	-140(%rbp), %r14d
	movl	-84(%rbp), %ebx
	movl	-160(%rbp), %r11d
	movl	-180(%rbp), %r10d
	movl	-184(%rbp), %eax
	movl	%r14d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	load_data_detection@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_41
.LBB0_26:
	movq	-168(%rbp), %rax
	cmpq	SWAG_DATA(%rip), %rax
	jne	.LBB0_28
# %bb.27:
	movl	-128(%rbp), %edi
	movl	-132(%rbp), %esi
	movl	-140(%rbp), %edx
	movl	-84(%rbp), %ecx
	callq	load_data_swag@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_40
.LBB0_28:
	movq	-168(%rbp), %rax
	cmpq	COMPARE_DATA(%rip), %rax
	jne	.LBB0_30
# %bb.29:
	movl	-132(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	callq	load_data_compare@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_39
.LBB0_30:
	movq	-168(%rbp), %rax
	cmpq	IMAGE_DATA(%rip), %rax
	jne	.LBB0_32
# %bb.31:
	movl	-88(%rbp), %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	callq	resize_image@PLT
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_38
.LBB0_32:
	movq	-168(%rbp), %rax
	cmpq	LETTERBOX_DATA(%rip), %rax
	jne	.LBB0_34
# %bb.33:
	movl	-88(%rbp), %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	callq	letterbox_image@PLT
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_37
.LBB0_34:
	movq	-168(%rbp), %rax
	cmpq	TAG_DATA(%rip), %rax
	jne	.LBB0_36
# %bb.35:
	movl	-128(%rbp), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %ecx
	movl	-144(%rbp), %r8d
	movl	-148(%rbp), %r9d
	movl	-152(%rbp), %r15d
	movl	-156(%rbp), %r14d
	movl	-176(%rbp), %ebx
	movl	-160(%rbp), %r11d
	movl	-180(%rbp), %r10d
	movl	-184(%rbp), %eax
	movl	%r15d, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%eax, 40(%rsp)
	callq	load_data_tag@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_36:
	jmp	.LBB0_37
.LBB0_37:
	jmp	.LBB0_38
.LBB0_38:
	jmp	.LBB0_39
.LBB0_39:
	jmp	.LBB0_40
.LBB0_40:
	jmp	.LBB0_41
.LBB0_41:
	jmp	.LBB0_42
.LBB0_42:
	jmp	.LBB0_43
.LBB0_43:
	jmp	.LBB0_44
.LBB0_44:
	jmp	.LBB0_45
.LBB0_45:
	jmp	.LBB0_46
.LBB0_46:
	jmp	.LBB0_47
.LBB0_47:
	jmp	.LBB0_48
.LBB0_48:
	jmp	.LBB0_49
.LBB0_49:
	jmp	.LBB0_50
.LBB0_50:
	movq	-48(%rbp), %rdi
	callq	free@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OLD_CLASSIFICATION_DATA
	.p2align	3
OLD_CLASSIFICATION_DATA:
	.quad	0                               # 0x0
	.globl	REGRESSION_DATA
	.p2align	3
REGRESSION_DATA:
	.quad	0                               # 0x0
	.globl	CLASSIFICATION_DATA
	.p2align	3
CLASSIFICATION_DATA:
	.quad	0                               # 0x0
	.globl	SUPER_DATA
	.p2align	3
SUPER_DATA:
	.quad	0                               # 0x0
	.globl	WRITING_DATA
	.p2align	3
WRITING_DATA:
	.quad	0                               # 0x0
	.globl	ISEG_DATA
	.p2align	3
ISEG_DATA:
	.quad	0                               # 0x0
	.globl	INSTANCE_DATA
	.p2align	3
INSTANCE_DATA:
	.quad	0                               # 0x0
	.globl	SEGMENTATION_DATA
	.p2align	3
SEGMENTATION_DATA:
	.quad	0                               # 0x0
	.globl	REGION_DATA
	.p2align	3
REGION_DATA:
	.quad	0                               # 0x0
	.globl	DETECTION_DATA
	.p2align	3
DETECTION_DATA:
	.quad	0                               # 0x0
	.globl	SWAG_DATA
	.p2align	3
SWAG_DATA:
	.quad	0                               # 0x0
	.globl	COMPARE_DATA
	.p2align	3
COMPARE_DATA:
	.quad	0                               # 0x0
	.globl	IMAGE_DATA
	.p2align	3
IMAGE_DATA:
	.quad	0                               # 0x0
	.globl	LETTERBOX_DATA
	.p2align	3
LETTERBOX_DATA:
	.quad	0                               # 0x0
	.globl	TAG_DATA
	.p2align	3
TAG_DATA:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_data_old
	.addrsig_sym load_data_regression
	.addrsig_sym load_data_augment
	.addrsig_sym load_data_super
	.addrsig_sym load_data_writing
	.addrsig_sym load_data_iseg
	.addrsig_sym load_data_mask
	.addrsig_sym load_data_seg
	.addrsig_sym load_data_region
	.addrsig_sym load_data_detection
	.addrsig_sym load_data_swag
	.addrsig_sym load_data_compare
	.addrsig_sym load_image_color
	.addrsig_sym resize_image
	.addrsig_sym letterbox_image
	.addrsig_sym load_data_tag
	.addrsig_sym free
	.addrsig_sym OLD_CLASSIFICATION_DATA
	.addrsig_sym REGRESSION_DATA
	.addrsig_sym CLASSIFICATION_DATA
	.addrsig_sym SUPER_DATA
	.addrsig_sym WRITING_DATA
	.addrsig_sym ISEG_DATA
	.addrsig_sym INSTANCE_DATA
	.addrsig_sym SEGMENTATION_DATA
	.addrsig_sym REGION_DATA
	.addrsig_sym DETECTION_DATA
	.addrsig_sym SWAG_DATA
	.addrsig_sym COMPARE_DATA
	.addrsig_sym IMAGE_DATA
	.addrsig_sym LETTERBOX_DATA
	.addrsig_sym TAG_DATA
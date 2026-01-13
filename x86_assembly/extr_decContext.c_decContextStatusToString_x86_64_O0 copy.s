	.text
	.globl	decContextStatusToString        # -- Begin function decContextStatusToString
	.p2align	4, 0x90
decContextStatusToString:               # @decContextStatusToString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	DEC_Invalid_operation(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	DEC_Condition_IO(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_2:
	movq	-24(%rbp), %rax
	cmpq	DEC_Division_by_zero(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	DEC_Condition_DZ(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_4:
	movq	-24(%rbp), %rax
	cmpq	DEC_Overflow(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	movq	DEC_Condition_OV(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_6:
	movq	-24(%rbp), %rax
	cmpq	DEC_Underflow(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	movq	DEC_Condition_UN(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_8:
	movq	-24(%rbp), %rax
	cmpq	DEC_Inexact(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	movq	DEC_Condition_IE(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_10:
	movq	-24(%rbp), %rax
	cmpq	DEC_Division_impossible(%rip), %rax
	jne	.LBB0_12
# %bb.11:
	movq	DEC_Condition_DI(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_12:
	movq	-24(%rbp), %rax
	cmpq	DEC_Division_undefined(%rip), %rax
	jne	.LBB0_14
# %bb.13:
	movq	DEC_Condition_DU(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_14:
	movq	-24(%rbp), %rax
	cmpq	DEC_Rounded(%rip), %rax
	jne	.LBB0_16
# %bb.15:
	movq	DEC_Condition_RO(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_16:
	movq	-24(%rbp), %rax
	cmpq	DEC_Clamped(%rip), %rax
	jne	.LBB0_18
# %bb.17:
	movq	DEC_Condition_PA(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_18:
	movq	-24(%rbp), %rax
	cmpq	DEC_Subnormal(%rip), %rax
	jne	.LBB0_20
# %bb.19:
	movq	DEC_Condition_SU(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_20:
	movq	-24(%rbp), %rax
	cmpq	DEC_Conversion_syntax(%rip), %rax
	jne	.LBB0_22
# %bb.21:
	movq	DEC_Condition_CS(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_22:
	movq	-24(%rbp), %rax
	cmpq	DEC_Insufficient_storage(%rip), %rax
	jne	.LBB0_24
# %bb.23:
	movq	DEC_Condition_IS(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_24:
	movq	-24(%rbp), %rax
	cmpq	DEC_Invalid_context(%rip), %rax
	jne	.LBB0_26
# %bb.25:
	movq	DEC_Condition_IC(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_26:
	cmpq	$0, -24(%rbp)
	jne	.LBB0_28
# %bb.27:
	movq	DEC_Condition_ZE(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_28:
	movq	DEC_Condition_MU(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_29:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_Invalid_operation
	.p2align	3
DEC_Invalid_operation:
	.quad	0                               # 0x0
	.globl	DEC_Condition_IO
	.p2align	3
DEC_Condition_IO:
	.quad	0
	.globl	DEC_Division_by_zero
	.p2align	3
DEC_Division_by_zero:
	.quad	0                               # 0x0
	.globl	DEC_Condition_DZ
	.p2align	3
DEC_Condition_DZ:
	.quad	0
	.globl	DEC_Overflow
	.p2align	3
DEC_Overflow:
	.quad	0                               # 0x0
	.globl	DEC_Condition_OV
	.p2align	3
DEC_Condition_OV:
	.quad	0
	.globl	DEC_Underflow
	.p2align	3
DEC_Underflow:
	.quad	0                               # 0x0
	.globl	DEC_Condition_UN
	.p2align	3
DEC_Condition_UN:
	.quad	0
	.globl	DEC_Inexact
	.p2align	3
DEC_Inexact:
	.quad	0                               # 0x0
	.globl	DEC_Condition_IE
	.p2align	3
DEC_Condition_IE:
	.quad	0
	.globl	DEC_Division_impossible
	.p2align	3
DEC_Division_impossible:
	.quad	0                               # 0x0
	.globl	DEC_Condition_DI
	.p2align	3
DEC_Condition_DI:
	.quad	0
	.globl	DEC_Division_undefined
	.p2align	3
DEC_Division_undefined:
	.quad	0                               # 0x0
	.globl	DEC_Condition_DU
	.p2align	3
DEC_Condition_DU:
	.quad	0
	.globl	DEC_Rounded
	.p2align	3
DEC_Rounded:
	.quad	0                               # 0x0
	.globl	DEC_Condition_RO
	.p2align	3
DEC_Condition_RO:
	.quad	0
	.globl	DEC_Clamped
	.p2align	3
DEC_Clamped:
	.quad	0                               # 0x0
	.globl	DEC_Condition_PA
	.p2align	3
DEC_Condition_PA:
	.quad	0
	.globl	DEC_Subnormal
	.p2align	3
DEC_Subnormal:
	.quad	0                               # 0x0
	.globl	DEC_Condition_SU
	.p2align	3
DEC_Condition_SU:
	.quad	0
	.globl	DEC_Conversion_syntax
	.p2align	3
DEC_Conversion_syntax:
	.quad	0                               # 0x0
	.globl	DEC_Condition_CS
	.p2align	3
DEC_Condition_CS:
	.quad	0
	.globl	DEC_Insufficient_storage
	.p2align	3
DEC_Insufficient_storage:
	.quad	0                               # 0x0
	.globl	DEC_Condition_IS
	.p2align	3
DEC_Condition_IS:
	.quad	0
	.globl	DEC_Invalid_context
	.p2align	3
DEC_Invalid_context:
	.quad	0                               # 0x0
	.globl	DEC_Condition_IC
	.p2align	3
DEC_Condition_IC:
	.quad	0
	.globl	DEC_Condition_ZE
	.p2align	3
DEC_Condition_ZE:
	.quad	0
	.globl	DEC_Condition_MU
	.p2align	3
DEC_Condition_MU:
	.quad	0
	.globl	DEC_Condition_LD
	.p2align	3
DEC_Condition_LD:
	.quad	0
	.globl	DEC_Lost_digits
	.p2align	3
DEC_Lost_digits:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_Condition_IO
	.addrsig_sym DEC_Division_by_zero
	.addrsig_sym DEC_Condition_DZ
	.addrsig_sym DEC_Overflow
	.addrsig_sym DEC_Condition_OV
	.addrsig_sym DEC_Underflow
	.addrsig_sym DEC_Condition_UN
	.addrsig_sym DEC_Inexact
	.addrsig_sym DEC_Condition_IE
	.addrsig_sym DEC_Division_impossible
	.addrsig_sym DEC_Condition_DI
	.addrsig_sym DEC_Division_undefined
	.addrsig_sym DEC_Condition_DU
	.addrsig_sym DEC_Rounded
	.addrsig_sym DEC_Condition_RO
	.addrsig_sym DEC_Clamped
	.addrsig_sym DEC_Condition_PA
	.addrsig_sym DEC_Subnormal
	.addrsig_sym DEC_Condition_SU
	.addrsig_sym DEC_Conversion_syntax
	.addrsig_sym DEC_Condition_CS
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DEC_Condition_IS
	.addrsig_sym DEC_Invalid_context
	.addrsig_sym DEC_Condition_IC
	.addrsig_sym DEC_Condition_ZE
	.addrsig_sym DEC_Condition_MU
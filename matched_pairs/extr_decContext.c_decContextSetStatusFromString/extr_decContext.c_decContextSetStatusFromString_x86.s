	.text
	.globl	decContextSetStatusFromString   # -- Begin function decContextSetStatusFromString
	.p2align	4, 0x90
decContextSetStatusFromString:          # @decContextSetStatusFromString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_CS(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movl	DEC_Conversion_syntax(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_2:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_DZ(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movl	DEC_Division_by_zero(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_4:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_DI(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	movl	DEC_Division_impossible(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_6:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_DU(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rdi
	movl	DEC_Division_undefined(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_8:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_IE(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rdi
	movl	DEC_Inexact(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_10:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_IS(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_12
# %bb.11:
	movq	-16(%rbp), %rdi
	movl	DEC_Insufficient_storage(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_12:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_IC(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_14
# %bb.13:
	movq	-16(%rbp), %rdi
	movl	DEC_Invalid_context(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_14:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_IO(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_16
# %bb.15:
	movq	-16(%rbp), %rdi
	movl	DEC_Invalid_operation(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_16:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_OV(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	movl	DEC_Overflow(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_18:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_PA(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_20
# %bb.19:
	movq	-16(%rbp), %rdi
	movl	DEC_Clamped(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_20:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_RO(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_22
# %bb.21:
	movq	-16(%rbp), %rdi
	movl	DEC_Rounded(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_22:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_SU(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_24
# %bb.23:
	movq	-16(%rbp), %rdi
	movl	DEC_Subnormal(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_24:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_UN(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_26
# %bb.25:
	movq	-16(%rbp), %rdi
	movl	DEC_Underflow(%rip), %esi
	callq	decContextSetStatus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_26:
	movq	-24(%rbp), %rdi
	movl	DEC_Condition_ZE(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_28
# %bb.27:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_29
.LBB0_28:
	movq	$0, -8(%rbp)
.LBB0_29:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_Condition_CS
	.p2align	2
DEC_Condition_CS:
	.long	0                               # 0x0
	.globl	DEC_Conversion_syntax
	.p2align	2
DEC_Conversion_syntax:
	.long	0                               # 0x0
	.globl	DEC_Condition_DZ
	.p2align	2
DEC_Condition_DZ:
	.long	0                               # 0x0
	.globl	DEC_Division_by_zero
	.p2align	2
DEC_Division_by_zero:
	.long	0                               # 0x0
	.globl	DEC_Condition_DI
	.p2align	2
DEC_Condition_DI:
	.long	0                               # 0x0
	.globl	DEC_Division_impossible
	.p2align	2
DEC_Division_impossible:
	.long	0                               # 0x0
	.globl	DEC_Condition_DU
	.p2align	2
DEC_Condition_DU:
	.long	0                               # 0x0
	.globl	DEC_Division_undefined
	.p2align	2
DEC_Division_undefined:
	.long	0                               # 0x0
	.globl	DEC_Condition_IE
	.p2align	2
DEC_Condition_IE:
	.long	0                               # 0x0
	.globl	DEC_Inexact
	.p2align	2
DEC_Inexact:
	.long	0                               # 0x0
	.globl	DEC_Condition_IS
	.p2align	2
DEC_Condition_IS:
	.long	0                               # 0x0
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.long	0                               # 0x0
	.globl	DEC_Condition_IC
	.p2align	2
DEC_Condition_IC:
	.long	0                               # 0x0
	.globl	DEC_Invalid_context
	.p2align	2
DEC_Invalid_context:
	.long	0                               # 0x0
	.globl	DEC_Condition_IO
	.p2align	2
DEC_Condition_IO:
	.long	0                               # 0x0
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.long	0                               # 0x0
	.globl	DEC_Condition_OV
	.p2align	2
DEC_Condition_OV:
	.long	0                               # 0x0
	.globl	DEC_Overflow
	.p2align	2
DEC_Overflow:
	.long	0                               # 0x0
	.globl	DEC_Condition_PA
	.p2align	2
DEC_Condition_PA:
	.long	0                               # 0x0
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.long	0                               # 0x0
	.globl	DEC_Condition_RO
	.p2align	2
DEC_Condition_RO:
	.long	0                               # 0x0
	.globl	DEC_Rounded
	.p2align	2
DEC_Rounded:
	.long	0                               # 0x0
	.globl	DEC_Condition_SU
	.p2align	2
DEC_Condition_SU:
	.long	0                               # 0x0
	.globl	DEC_Subnormal
	.p2align	2
DEC_Subnormal:
	.long	0                               # 0x0
	.globl	DEC_Condition_UN
	.p2align	2
DEC_Condition_UN:
	.long	0                               # 0x0
	.globl	DEC_Underflow
	.p2align	2
DEC_Underflow:
	.long	0                               # 0x0
	.globl	DEC_Condition_ZE
	.p2align	2
DEC_Condition_ZE:
	.long	0                               # 0x0
	.globl	DEC_Condition_LD
	.p2align	2
DEC_Condition_LD:
	.long	0                               # 0x0
	.globl	DEC_Lost_digits
	.p2align	2
DEC_Lost_digits:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym decContextSetStatus
	.addrsig_sym DEC_Condition_CS
	.addrsig_sym DEC_Conversion_syntax
	.addrsig_sym DEC_Condition_DZ
	.addrsig_sym DEC_Division_by_zero
	.addrsig_sym DEC_Condition_DI
	.addrsig_sym DEC_Division_impossible
	.addrsig_sym DEC_Condition_DU
	.addrsig_sym DEC_Division_undefined
	.addrsig_sym DEC_Condition_IE
	.addrsig_sym DEC_Inexact
	.addrsig_sym DEC_Condition_IS
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DEC_Condition_IC
	.addrsig_sym DEC_Invalid_context
	.addrsig_sym DEC_Condition_IO
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_Condition_OV
	.addrsig_sym DEC_Overflow
	.addrsig_sym DEC_Condition_PA
	.addrsig_sym DEC_Clamped
	.addrsig_sym DEC_Condition_RO
	.addrsig_sym DEC_Rounded
	.addrsig_sym DEC_Condition_SU
	.addrsig_sym DEC_Subnormal
	.addrsig_sym DEC_Condition_UN
	.addrsig_sym DEC_Underflow
	.addrsig_sym DEC_Condition_ZE
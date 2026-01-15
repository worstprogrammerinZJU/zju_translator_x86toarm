	.text
	.globl	decFloatClass                   # -- Begin function decFloatClass
	.p2align	4, 0x90
decFloatClass:                          # @decFloatClass
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	DFISSPECIAL@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	DFISQNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movl	DEC_CLASS_QNAN(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	DFISSNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movl	DEC_CLASS_SNAN(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_5:
	movq	-16(%rbp), %rdi
	callq	DFISSIGNED@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:
	movl	DEC_CLASS_NEG_INF(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_7:
	movl	DEC_CLASS_POS_INF(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_8:
	movq	-16(%rbp), %rdi
	callq	DFISZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.9:
	movq	-16(%rbp), %rdi
	callq	DFISSIGNED@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movl	DEC_CLASS_NEG_ZERO(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_11:
	movl	DEC_CLASS_POS_ZERO(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_12:
	movq	-16(%rbp), %rdi
	callq	GETEXPUN@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	decFloatDigits@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	DECEMIN(%rip), %rax
	jl	.LBB0_16
# %bb.13:
	movq	-16(%rbp), %rdi
	callq	DFISSIGNED@PLT
	cmpq	$0, %rax
	je	.LBB0_15
# %bb.14:
	movl	DEC_CLASS_NEG_NORMAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_15:
	movl	DEC_CLASS_POS_NORMAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_16:
	movq	-16(%rbp), %rdi
	callq	DFISSIGNED@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	movl	DEC_CLASS_NEG_SUBNORMAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	movl	DEC_CLASS_POS_SUBNORMAL(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_19:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_CLASS_QNAN
	.p2align	2
DEC_CLASS_QNAN:
	.long	0                               # 0x0
	.globl	DEC_CLASS_SNAN
	.p2align	2
DEC_CLASS_SNAN:
	.long	0                               # 0x0
	.globl	DEC_CLASS_NEG_INF
	.p2align	2
DEC_CLASS_NEG_INF:
	.long	0                               # 0x0
	.globl	DEC_CLASS_POS_INF
	.p2align	2
DEC_CLASS_POS_INF:
	.long	0                               # 0x0
	.globl	DEC_CLASS_NEG_ZERO
	.p2align	2
DEC_CLASS_NEG_ZERO:
	.long	0                               # 0x0
	.globl	DEC_CLASS_POS_ZERO
	.p2align	2
DEC_CLASS_POS_ZERO:
	.long	0                               # 0x0
	.globl	DECEMIN
	.p2align	3
DECEMIN:
	.quad	0                               # 0x0
	.globl	DEC_CLASS_NEG_NORMAL
	.p2align	2
DEC_CLASS_NEG_NORMAL:
	.long	0                               # 0x0
	.globl	DEC_CLASS_POS_NORMAL
	.p2align	2
DEC_CLASS_POS_NORMAL:
	.long	0                               # 0x0
	.globl	DEC_CLASS_NEG_SUBNORMAL
	.p2align	2
DEC_CLASS_NEG_SUBNORMAL:
	.long	0                               # 0x0
	.globl	DEC_CLASS_POS_SUBNORMAL
	.p2align	2
DEC_CLASS_POS_SUBNORMAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL
	.addrsig_sym DFISQNAN
	.addrsig_sym DFISSNAN
	.addrsig_sym DFISSIGNED
	.addrsig_sym DFISZERO
	.addrsig_sym GETEXPUN
	.addrsig_sym decFloatDigits
	.addrsig_sym DEC_CLASS_QNAN
	.addrsig_sym DEC_CLASS_SNAN
	.addrsig_sym DEC_CLASS_NEG_INF
	.addrsig_sym DEC_CLASS_POS_INF
	.addrsig_sym DEC_CLASS_NEG_ZERO
	.addrsig_sym DEC_CLASS_POS_ZERO
	.addrsig_sym DECEMIN
	.addrsig_sym DEC_CLASS_NEG_NORMAL
	.addrsig_sym DEC_CLASS_POS_NORMAL
	.addrsig_sym DEC_CLASS_NEG_SUBNORMAL
	.addrsig_sym DEC_CLASS_POS_SUBNORMAL
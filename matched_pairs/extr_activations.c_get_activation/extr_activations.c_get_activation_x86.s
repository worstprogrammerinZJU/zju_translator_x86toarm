	.text
	.globl	get_activation                  # -- Begin function get_activation
	.p2align	4, 0x90
get_activation:                         # @get_activation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movl	LOGISTIC(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_2:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movl	LOGGY(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_4:
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movl	RELU(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_6:
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	movl	ELU(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_8:
	movq	-16(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:
	movl	SELU(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_10:
	movq	-16(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_12
# %bb.11:
	movl	RELIE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_12:
	movq	-16(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_14
# %bb.13:
	movl	PLSE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_14:
	movq	-16(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_16
# %bb.15:
	movl	HARDTAN(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_16:
	movq	-16(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_18
# %bb.17:
	movl	LHTAN(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_18:
	movq	-16(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_20
# %bb.19:
	movl	LINEAR(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_20:
	movq	-16(%rbp), %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_22
# %bb.21:
	movl	RAMP(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_22:
	movq	-16(%rbp), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_24
# %bb.23:
	movl	LEAKY(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_24:
	movq	-16(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_26
# %bb.25:
	movl	TANH(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_26:
	movq	-16(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_28
# %bb.27:
	movl	STAIR(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_28:
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rdx
	leaq	.L.str.14(%rip), %rsi
	callq	fprintf@PLT
	movl	RELU(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_29:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"logistic"
	.bss
	.globl	LOGISTIC
	.p2align	2
LOGISTIC:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"loggy"
	.bss
	.globl	LOGGY
	.p2align	2
LOGGY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"relu"
	.bss
	.globl	RELU
	.p2align	2
RELU:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"elu"
	.bss
	.globl	ELU
	.p2align	2
ELU:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"selu"
	.bss
	.globl	SELU
	.p2align	2
SELU:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"relie"
	.bss
	.globl	RELIE
	.p2align	2
RELIE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"plse"
	.bss
	.globl	PLSE
	.p2align	2
PLSE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"hardtan"
	.bss
	.globl	HARDTAN
	.p2align	2
HARDTAN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"lhtan"
	.bss
	.globl	LHTAN
	.p2align	2
LHTAN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"linear"
	.bss
	.globl	LINEAR
	.p2align	2
LINEAR:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"ramp"
	.bss
	.globl	RAMP
	.p2align	2
RAMP:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"leaky"
	.bss
	.globl	LEAKY
	.p2align	2
LEAKY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"tanh"
	.bss
	.globl	TANH
	.p2align	2
TANH:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"stair"
	.bss
	.globl	STAIR
	.p2align	2
STAIR:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Couldn't find activation function %s, going with ReLU\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym fprintf
	.addrsig_sym LOGISTIC
	.addrsig_sym LOGGY
	.addrsig_sym RELU
	.addrsig_sym ELU
	.addrsig_sym SELU
	.addrsig_sym RELIE
	.addrsig_sym PLSE
	.addrsig_sym HARDTAN
	.addrsig_sym LHTAN
	.addrsig_sym LINEAR
	.addrsig_sym RAMP
	.addrsig_sym LEAKY
	.addrsig_sym TANH
	.addrsig_sym STAIR
	.addrsig_sym stderr
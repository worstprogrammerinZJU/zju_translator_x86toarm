	.text
	.globl	get_policy                      # -- Begin function get_policy
	.p2align	4, 0x90
get_policy:                             # @get_policy
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
	movl	RANDOM(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movl	POLY(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_4:
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movl	CONSTANT(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_6:
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	movl	STEP(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_8:
	movq	-16(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:
	movl	EXP(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_10:
	movq	-16(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_12
# %bb.11:
	movl	SIG(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_12:
	movq	-16(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_14
# %bb.13:
	movl	STEPS(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_14:
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rdx
	leaq	.L.str.7(%rip), %rsi
	callq	fprintf@PLT
	movl	CONSTANT(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_15:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"random"
	.bss
	.globl	RANDOM
	.p2align	2
RANDOM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"poly"
	.bss
	.globl	POLY
	.p2align	2
POLY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"constant"
	.bss
	.globl	CONSTANT
	.p2align	2
CONSTANT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"step"
	.bss
	.globl	STEP
	.p2align	2
STEP:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"exp"
	.bss
	.globl	EXP
	.p2align	2
EXP:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"sigmoid"
	.bss
	.globl	SIG
	.p2align	2
SIG:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"steps"
	.bss
	.globl	STEPS
	.p2align	2
STEPS:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Couldn't find policy %s, going with constant\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym fprintf
	.addrsig_sym RANDOM
	.addrsig_sym POLY
	.addrsig_sym CONSTANT
	.addrsig_sym STEP
	.addrsig_sym EXP
	.addrsig_sym SIG
	.addrsig_sym STEPS
	.addrsig_sym stderr
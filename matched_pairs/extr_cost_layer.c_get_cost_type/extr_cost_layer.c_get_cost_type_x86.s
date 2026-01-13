	.text
	.globl	get_cost_type                   # -- Begin function get_cost_type
	.p2align	4, 0x90
get_cost_type:                          # @get_cost_type
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
	movl	SEG(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_2:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movl	SSE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_4:
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movl	MASKED(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_6:
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	movl	SMOOTH(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_8:
	movq	-16(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:
	movl	L1(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_10:
	movq	-16(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_12
# %bb.11:
	movl	WGAN(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rdx
	leaq	.L.str.6(%rip), %rsi
	callq	fprintf@PLT
	movl	SSE(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"seg"
	.bss
	.globl	SEG
	.p2align	2
SEG:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"sse"
	.bss
	.globl	SSE
	.p2align	2
SSE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"masked"
	.bss
	.globl	MASKED
	.p2align	2
MASKED:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"smooth"
	.bss
	.globl	SMOOTH
	.p2align	2
SMOOTH:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"L1"
	.bss
	.globl	L1
	.p2align	2
L1:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"wgan"
	.bss
	.globl	WGAN
	.p2align	2
WGAN:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Couldn't find cost type %s, going with SSE\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym fprintf
	.addrsig_sym SEG
	.addrsig_sym SSE
	.addrsig_sym MASKED
	.addrsig_sym SMOOTH
	.addrsig_sym L1
	.addrsig_sym WGAN
	.addrsig_sym stderr
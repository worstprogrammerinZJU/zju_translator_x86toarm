	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	DECQUAD_String(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -48(%rbp)
	cmpl	$3, -8(%rbp)
	jge	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$1, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	DEC_INIT_DECQUAD(%rip), %esi
	leaq	-32(%rbp), %rdi
	callq	decContextDefault@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-20(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	callq	decQuadFromString@PLT
	leaq	-20(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rdx, %rdi
	movq	%rdx, %rsi
	callq	decQuadAdd@PLT
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	decQuadToNumber@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	callq	decNumberFromString@PLT
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rsi, %rdi
	callq	decNumberPower@PLT
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	callq	decQuadFromNumber@PLT
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	leaq	-20(%rbp), %rdi
	callq	decQuadToString@PLT
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -4(%rbp)
	movl	$1, -52(%rbp)
.LBB0_3:
	movq	-40(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECQUAD_String
	.p2align	2
DECQUAD_String:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Please supply two numbers for power(2*a, b).\n"
	.bss
	.globl	DEC_INIT_DECQUAD
	.p2align	2
DEC_INIT_DECQUAD:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"power(2*%s, %s) => %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym decContextDefault
	.addrsig_sym decQuadFromString
	.addrsig_sym decQuadAdd
	.addrsig_sym decQuadToNumber
	.addrsig_sym decNumberFromString
	.addrsig_sym decNumberPower
	.addrsig_sym decQuadFromNumber
	.addrsig_sym decQuadToString
	.addrsig_sym DECQUAD_String
	.addrsig_sym DEC_INIT_DECQUAD
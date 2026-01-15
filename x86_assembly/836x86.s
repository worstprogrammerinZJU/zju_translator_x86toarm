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
	movl	DECNUMDIGITS(%rip), %eax
	addl	$14, %eax
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
	movl	$1, -56(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	DEC_INIT_BASE(%rip), %esi
	leaq	-32(%rbp), %rdi
	callq	decContextDefault@PLT
	movl	SIGFPE(%rip), %edi
	movl	signalHandler(%rip), %esi
	callq	signal@PLT
	movl	preserve(%rip), %edi
	callq	setjmp@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	DEC_Errors(%rip), %eax
	andl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	leaq	-32(%rbp), %rdi
	callq	decContextStatusToString@PLT
	movq	%rax, %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$1, -4(%rbp)
	movl	$1, -56(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	DECNUMDIGITS(%rip), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-20(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	callq	decNumberFromString@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	callq	decNumberFromString@PLT
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rsi, %rdi
	callq	decNumberAdd@PLT
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	leaq	-20(%rbp), %rdi
	callq	decNumberToString@PLT
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -4(%rbp)
	movl	$1, -56(%rbp)
.LBB0_5:
	movq	-40(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECNUMDIGITS
	.p2align	2
DECNUMDIGITS:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Please supply two numbers to add.\n"
	.bss
	.globl	DEC_INIT_BASE
	.p2align	2
DEC_INIT_BASE:
	.long	0                               # 0x0
	.globl	SIGFPE
	.p2align	2
SIGFPE:
	.long	0                               # 0x0
	.globl	signalHandler
	.p2align	2
signalHandler:
	.long	0                               # 0x0
	.globl	preserve
	.p2align	2
preserve:
	.long	0                               # 0x0
	.globl	DEC_Errors
	.p2align	2
DEC_Errors:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Signal trapped [%s].\n"
.L.str.2:
	.asciz	"%s + %s => %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym decContextDefault
	.addrsig_sym signal
	.addrsig_sym setjmp
	.addrsig_sym decContextStatusToString
	.addrsig_sym decNumberFromString
	.addrsig_sym decNumberAdd
	.addrsig_sym decNumberToString
	.addrsig_sym DECNUMDIGITS
	.addrsig_sym DEC_INIT_BASE
	.addrsig_sym SIGFPE
	.addrsig_sym signalHandler
	.addrsig_sym preserve
	.addrsig_sym DEC_Errors
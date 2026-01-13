	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp                      # imm = 0x100
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	.L__const.main.startpack(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.L__const.main.startpack+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
	movq	.L__const.main.ratepack(%rip), %rax
	movq	%rax, -92(%rbp)
	movl	$1, -96(%rbp)
	movq	.L__const.main.yearspack(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_2:
	movl	DEC_INIT_BASE(%rip), %esi
	leaq	-64(%rbp), %rdi
	callq	decContextDefault@PLT
	movq	$0, -56(%rbp)
	movl	$25, -64(%rbp)
	leaq	-20(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	-64(%rbp), %rdx
	callq	decNumberFromString@PLT
	leaq	-24(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	leaq	-64(%rbp), %rdx
	callq	decNumberFromString@PLT
	leaq	-28(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	-64(%rbp), %rdx
	callq	decNumberFromString@PLT
	leaq	-80(%rbp), %rdi
	movl	$16, %esi
	leaq	-84(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	callq	decPackedToNumber@PLT
	leaq	-92(%rbp), %rdi
	movl	$8, %esi
	leaq	-96(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	callq	decPackedToNumber@PLT
	leaq	-104(%rbp), %rdi
	movl	$8, %esi
	leaq	-108(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	callq	decPackedToNumber@PLT
	leaq	-36(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rsi, %rdi
	callq	decNumberDivide@PLT
	leaq	-36(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rsi, %rdi
	callq	decNumberAdd@PLT
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rsi, %rdi
	callq	decNumberPower@PLT
	leaq	-44(%rbp), %rdi
	leaq	-36(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	callq	decNumberMultiply@PLT
	leaq	-44(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rsi, %rdi
	callq	decNumberRescale@PLT
	leaq	-176(%rbp), %rdi
	movl	$64, %esi
	leaq	-180(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	callq	decPackedFromNumber@PLT
	movl	$0, -244(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -244(%rbp)
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	imull	$3, -244(%rbp), %eax
	cltq
	leaq	-240(%rbp), %rdi
	addq	%rax, %rdi
	movslq	-244(%rbp), %rax
	movl	-176(%rbp,%rax,4), %edx
	leaq	.L.str.4(%rip), %rsi
	callq	sprintf@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	leaq	-240(%rbp), %rsi
	movslq	-180(%rbp), %rdx
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$256, %rsp                      # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.L__const.main.startpack:
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	12                              # 0xc
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.main.ratepack:
	.long	6                               # 0x6
	.long	92                              # 0x5c
	.p2align	2
.L__const.main.yearspack:
	.long	2                               # 0x2
	.long	12                              # 0xc
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.bss
	.globl	DEC_INIT_BASE
	.p2align	2
DEC_INIT_BASE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"1"
.L.str.2:
	.asciz	"-2"
.L.str.3:
	.asciz	"100"
.L.str.4:
	.asciz	"%02x "
.L.str.5:
	.asciz	"Result: %s (scale=%ld)\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym decContextDefault
	.addrsig_sym decNumberFromString
	.addrsig_sym decPackedToNumber
	.addrsig_sym decNumberDivide
	.addrsig_sym decNumberAdd
	.addrsig_sym decNumberPower
	.addrsig_sym decNumberMultiply
	.addrsig_sym decNumberRescale
	.addrsig_sym decPackedFromNumber
	.addrsig_sym sprintf
	.addrsig_sym DEC_INIT_BASE
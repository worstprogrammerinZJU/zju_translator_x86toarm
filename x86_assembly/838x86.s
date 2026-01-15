	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	DECIMAL64_String(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -96(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -48(%rbp)
	cmpl	$2, -8(%rbp)
	jge	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$1, -4(%rbp)
	movl	$1, -88(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movl	DEC_INIT_DECIMAL64(%rip), %esi
	leaq	-32(%rbp), %rdi
	callq	decContextDefault@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	callq	decimal64FromString@PLT
	movl	$0, -84(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -84(%rbp)
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	imull	$3, -84(%rbp), %eax
	cltq
	leaq	-80(%rbp), %rdi
	addq	%rax, %rdi
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	leaq	.L.str.1(%rip), %rsi
	callq	sprintf@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	leaq	-24(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	decimal64ToNumber@PLT
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	leaq	-28(%rbp), %rdi
	callq	decNumberToString@PLT
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-80(%rbp), %rdx
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -4(%rbp)
	movl	$1, -88(%rbp)
.LBB0_7:
	movq	-40(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECIMAL64_String
	.p2align	2
DECIMAL64_String:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Please supply a number.\n"
	.bss
	.globl	DEC_INIT_DECIMAL64
	.p2align	2
DEC_INIT_DECIMAL64:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%02x "
.L.str.2:
	.asciz	"%s => %s=> %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym decContextDefault
	.addrsig_sym decimal64FromString
	.addrsig_sym sprintf
	.addrsig_sym decimal64ToNumber
	.addrsig_sym decNumberToString
	.addrsig_sym DECIMAL64_String
	.addrsig_sym DEC_INIT_DECIMAL64
	.text
	.globl	make_file                       # -- Begin function make_file
	.p2align	4, 0x90
make_file:                              # @make_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-8(%rbp), %rdi
	callq	fileno@PLT
	movl	%eax, %edi
	leaq	-32(%rbp), %rsi
	callq	fstat@PLT
	cmpl	$-1, %eax
	jne	.LBB0_2
# %bb.1:
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fstat failed: %s"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fstat
	.addrsig_sym fileno
	.addrsig_sym error
	.addrsig_sym strerror
	.addrsig_sym errno
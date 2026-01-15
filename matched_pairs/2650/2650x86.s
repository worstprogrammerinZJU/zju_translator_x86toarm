	.text
	.globl	walinit                         # -- Begin function walinit
	.p2align	4, 0x90
walinit:                                # @walinit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	walscandir@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	walread@PLT
	movq	-8(%rbp), %rdi
	callq	makenextfile@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"makenextfile"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym walscandir
	.addrsig_sym walread
	.addrsig_sym makenextfile
	.addrsig_sym twarnx
	.addrsig_sym exit
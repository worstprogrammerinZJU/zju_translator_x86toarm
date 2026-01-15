	.text
	.p2align	4, 0x90                         # -- Begin function walsync
walsync:                                # @walsync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	nanoseconds@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_5
# %bb.1:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB0_5
# %bb.2:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edi
	callq	fsync@PLT
	cmpl	$-1, %eax
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fsync"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym walsync
	.addrsig_sym nanoseconds
	.addrsig_sym fsync
	.addrsig_sym twarn
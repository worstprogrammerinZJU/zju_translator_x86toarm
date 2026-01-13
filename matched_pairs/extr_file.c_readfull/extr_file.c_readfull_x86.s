	.text
	.p2align	4, 0x90                         # -- Begin function readfull
readfull:                               # @readfull
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	read@PLT
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	xorl	%esi, %esi
	leaq	.L.str.1(%rip), %rdx
	movb	$0, %al
	callq	warnpos@PLT
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	subl	-52(%rbp), %esi
	movl	-28(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %r9
	leaq	.L.str.2(%rip), %rdx
	movb	$0, %al
	callq	warnpos@PLT
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"read"
.L.str.1:
	.asciz	"error reading %s"
.L.str.2:
	.asciz	"unexpected EOF reading %d bytes (got %d): %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readfull
	.addrsig_sym read
	.addrsig_sym twarn
	.addrsig_sym warnpos
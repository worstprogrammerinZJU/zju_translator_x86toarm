	.text
	.globl	tube_dref                       # -- Begin function tube_dref
	.p2align	4, 0x90
tube_dref:                              # @tube_dref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jge	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	jmp	.LBB0_6
.LBB0_4:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jge	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	callq	tube_free@PLT
.LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"refs is zero for tube: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym twarnx
	.addrsig_sym tube_free
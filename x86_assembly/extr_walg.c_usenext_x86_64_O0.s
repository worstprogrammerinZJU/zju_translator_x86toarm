	.text
	.p2align	4, 0x90                         # -- Begin function usenext
usenext:                                # @usenext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rdi
	callq	filewclose@PLT
	movl	$1, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"there is no next wal file"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usenext
	.addrsig_sym twarnx
	.addrsig_sym filewclose
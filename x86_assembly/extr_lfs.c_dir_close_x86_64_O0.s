	.text
	.p2align	4, 0x90                         # -- Begin function dir_close
dir_close:                              # @dir_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_touserdata@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	closedir@PLT
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.LBB0_3:
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dir_close
	.addrsig_sym lua_touserdata
	.addrsig_sym closedir
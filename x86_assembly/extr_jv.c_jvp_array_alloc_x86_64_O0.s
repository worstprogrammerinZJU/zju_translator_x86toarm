	.text
	.p2align	4, 0x90                         # -- Begin function jvp_array_alloc
jvp_array_alloc:                        # @jvp_array_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $rax killed $eax
	shlq	$2, %rax
	addq	$24, %rax
	movl	%eax, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_alloc
	.addrsig_sym jv_mem_alloc
	.text
	.globl	encode_box                      # -- Begin function encode_box
	.p2align	4, 0x90
encode_box:                             # @encode_box
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movl	-32(%rbp), %eax
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	subl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	subl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	movl	-44(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edi
	callq	log2@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	-36(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edi
	callq	log2@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym log2
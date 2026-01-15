	.text
	.globl	update_crnn_layer               # -- Begin function update_crnn_layer
	.p2align	4, 0x90
update_crnn_layer:                      # @update_crnn_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movq	16(%rax), %rax
	movl	(%rax), %edi
	movl	-4(%rbp), %esi
	callq	update_convolutional_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movl	(%rax), %edi
	movl	-4(%rbp), %esi
	callq	update_convolutional_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movl	(%rax), %edi
	movl	-4(%rbp), %esi
	callq	update_convolutional_layer@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym update_convolutional_layer
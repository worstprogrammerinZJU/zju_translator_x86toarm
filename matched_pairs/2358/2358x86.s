	.text
	.p2align	4, 0x90                         # -- Begin function clear_context
clear_context:                          # @clear_context
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	64(%rax), %edi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	movq	-8(%rbp), %rax
	movl	60(%rax), %edi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	movq	-8(%rbp), %rdi
	addq	$56, %rdi
	callq	free_temp@PLT
	movq	-8(%rbp), %rdi
	addq	$52, %rdi
	callq	free_temp@PLT
	movq	-8(%rbp), %rdi
	addq	$48, %rdi
	callq	free_temp@PLT
	movq	-8(%rbp), %rdi
	addq	$44, %rdi
	callq	free_temp@PLT
	movq	-8(%rbp), %rdi
	addq	$40, %rdi
	callq	free_temp@PLT
	movq	-8(%rbp), %rdi
	addq	$36, %rdi
	callq	free_temp@PLT
	movq	-8(%rbp), %rdi
	addq	$28, %rdi
	addq	$4, %rdi
	callq	free_temp@PLT
	movq	-8(%rbp), %rdi
	addq	$28, %rdi
	callq	free_temp@PLT
	movq	-8(%rbp), %rdi
	addq	$24, %rdi
	callq	swri_audio_convert_free@PLT
	movq	-8(%rbp), %rdi
	addq	$20, %rdi
	callq	swri_audio_convert_free@PLT
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	swri_audio_convert_free@PLT
	movq	-8(%rbp), %rdi
	callq	swri_rematrix_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clear_context
	.addrsig_sym memset
	.addrsig_sym free_temp
	.addrsig_sym swri_audio_convert_free
	.addrsig_sym swri_rematrix_free
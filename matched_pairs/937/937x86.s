	.text
	.p2align	4, 0x90                         # -- Begin function local_static
local_static:                           # @local_static
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	local_static2@PLT
	movl	%eax, %esi
	movl	$6, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	local_static2@PLT
	movl	%eax, %esi
	movl	$7, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	local_static3@PLT
	movb	$0, %al
	callq	local_static2@PLT
	movl	%eax, %esi
	movl	$8, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_static
	.addrsig_sym expect
	.addrsig_sym local_static2
	.addrsig_sym local_static3
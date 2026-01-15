	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_find_bucket
jvp_object_find_bucket:                 # @jvp_object_find_bucket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	jvp_object_buckets@PLT
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	-4(%rbp), %edi
	callq	jvp_object_mask@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jvp_string_hash@PLT
	movl	-20(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %edx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	andl	%edx, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_find_bucket
	.addrsig_sym jvp_object_buckets
	.addrsig_sym jvp_object_mask
	.addrsig_sym jvp_string_hash
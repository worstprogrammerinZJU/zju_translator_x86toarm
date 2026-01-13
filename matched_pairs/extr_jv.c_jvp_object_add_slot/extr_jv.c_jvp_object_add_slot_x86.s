	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_add_slot
jvp_object_add_slot:                    # @jvp_object_add_slot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	jvp_object_ptr@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_object_size@PLT
	movl	%eax, %ecx
	movl	-52(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	jvp_object_get_slot@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %edi
	callq	jvp_string_hash@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_add_slot
	.addrsig_sym jvp_object_ptr
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jvp_string_hash
	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_delete
jvp_object_delete:                      # @jvp_object_delete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	jvp_object_unshare@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	-20(%rbp), %esi
	callq	jvp_object_find_bucket@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edi
	callq	jvp_string_hash@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	callq	jvp_object_get_slot@PLT
	movq	%rax, -56(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %edi
	movq	-56(%rbp), %rax
	movl	16(%rax), %esi
	callq	jvp_string_equal@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movl	16(%rax), %edi
	callq	jvp_string_free@PLT
	movl	JV_NULL(%rip), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-56(%rbp), %rax
	movl	12(%rax), %edi
	callq	jv_free@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_8
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-56(%rbp), %rsi
	callq	jvp_object_next_slot@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movl	$0, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.globl	JV_NULL
	.p2align	2
JV_NULL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_delete
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_unshare
	.addrsig_sym jvp_object_find_bucket
	.addrsig_sym jvp_string_hash
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jvp_string_equal
	.addrsig_sym jvp_string_free
	.addrsig_sym jv_free
	.addrsig_sym jvp_object_next_slot
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_NULL
	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_unshare
jvp_object_unshare:                     # @jvp_object_unshare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	%edi, -16(%rbp)
	movl	JV_KIND_OBJECT(%rip), %esi
	movl	-16(%rbp), %edi
	callq	JVP_HAS_KIND@PLT
	movq	%rax, %rdi
	callq	assert@PLT
	movl	-16(%rbp), %edi
	callq	jvp_refcnt_unshared@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movl	-16(%rbp), %edi
	callq	jvp_object_size@PLT
	movl	%eax, %edi
	callq	jvp_object_new@PLT
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %edi
	callq	jvp_object_ptr@PLT
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %edi
	callq	jvp_object_ptr@PLT
	movl	-68(%rbp), %ecx                 # 4-byte Reload
	movl	%ecx, (%rax)
	movl	$0, -28(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %edi
	callq	jvp_object_size@PLT
	movl	%eax, %ecx
	movl	-72(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %esi
	movl	-16(%rbp), %edi
	callq	jvp_object_get_slot@PLT
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edi
	callq	jvp_object_get_slot@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	jv_copy@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	jv_copy@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_3
.LBB0_8:
	movl	-16(%rbp), %edi
	callq	jvp_object_buckets@PLT
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edi
	callq	jvp_object_buckets@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %edi
	callq	jvp_object_size@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	cltq
	shlq	$2, %rax
	shlq	$1, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movl	-16(%rbp), %edi
	callq	jvp_object_free@PLT
	movl	-24(%rbp), %edi
	callq	jvp_refcnt_unshared@PLT
	movq	%rax, %rdi
	callq	assert@PLT
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB0_9:
	movl	-8(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.long	0                               # 0x0
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_unshare
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_refcnt_unshared
	.addrsig_sym jvp_object_new
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_ptr
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_copy
	.addrsig_sym jvp_object_buckets
	.addrsig_sym memcpy
	.addrsig_sym jvp_object_free
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_NULL
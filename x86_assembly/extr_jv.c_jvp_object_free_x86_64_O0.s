	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_free
jvp_object_free:                        # @jvp_object_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	JV_KIND_OBJECT(%rip), %esi
	movl	-8(%rbp), %edi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	callq	jvp_refcnt_dec@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.1:
	movl	$0, -12(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jvp_object_size@PLT
	movl	%eax, %ecx
	movl	-28(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edi
	callq	jvp_object_get_slot@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	jvp_string_free@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_2
.LBB0_7:
	movl	-8(%rbp), %edi
	callq	jvp_object_ptr@PLT
	movl	%eax, %edi
	callq	jv_mem_free@PLT
.LBB0_8:
	addq	$32, %rsp
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
	.addrsig_sym jvp_object_free
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jv_get_kind
	.addrsig_sym jvp_string_free
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym jvp_object_ptr
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_NULL
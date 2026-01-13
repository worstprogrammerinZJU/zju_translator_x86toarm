	.text
	.p2align	4, 0x90                         # -- Begin function jvp_array_free
jvp_array_free:                         # @jvp_array_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	JV_KIND_ARRAY(%rip), %esi
	movl	-8(%rbp), %edi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	callq	jvp_refcnt_dec@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.1:
	movl	-8(%rbp), %edi
	callq	jvp_array_ptr@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	jv_free@PLT
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	movq	-16(%rbp), %rdi
	callq	jv_mem_free@PLT
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_free
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jvp_array_ptr
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_ARRAY
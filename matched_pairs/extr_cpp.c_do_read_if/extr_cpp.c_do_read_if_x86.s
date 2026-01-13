	.text
	.p2align	4, 0x90                         # -- Begin function do_read_if
do_read_if:                             # @do_read_if
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	cond_incl_stack(%rip), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	movl	-4(%rbp), %edi
	callq	make_cond_incl@PLT
	movl	-8(%rbp), %edi                  # 4-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	cmpl	$0, -4(%rbp)
	jne	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	skip_cond_incl@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cond_incl_stack
	.p2align	2
cond_incl_stack:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_read_if
	.addrsig_sym vec_push
	.addrsig_sym make_cond_incl
	.addrsig_sym skip_cond_incl
	.addrsig_sym cond_incl_stack
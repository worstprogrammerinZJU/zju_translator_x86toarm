	.text
	.globl	jq_start                        # -- Begin function jq_start
	.p2align	4, 0x90
jq_start:                               # @jq_start
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	callq	jv_nomem_handler@PLT
	movq	-8(%rbp), %rdi
	callq	jq_reset@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	movq	-24(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	callq	frame_push@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	stack_push@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	stack_get_pos@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	-44(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	stack_save@PLT
	movl	-16(%rbp), %ecx
	andl	JQ_DEBUG_TRACE_ALL(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JQ_DEBUG_TRACE_ALL
	.p2align	2
JQ_DEBUG_TRACE_ALL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_nomem_handler
	.addrsig_sym jq_reset
	.addrsig_sym frame_push
	.addrsig_sym stack_push
	.addrsig_sym stack_save
	.addrsig_sym stack_get_pos
	.addrsig_sym JQ_DEBUG_TRACE_ALL
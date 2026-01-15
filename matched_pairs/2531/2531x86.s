	.text
	.globl	jq_realpath                     # -- Begin function jq_realpath
	.p2align	4, 0x90
jq_realpath:                            # @jq_realpath
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	PATH_MAX(%rip), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -24(%rbp)
.LBB0_2:
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	callq	realpath@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	free@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movq	-32(%rbp), %rdi
	callq	jv_string@PLT
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rdi
	callq	free@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	PATH_MAX
	.p2align	2
PATH_MAX:
	.long	0                               # 0x0
	.globl	_PC_PATH_MAX
	.p2align	2
_PC_PATH_MAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc
	.addrsig_sym realpath
	.addrsig_sym jv_string_value
	.addrsig_sym free
	.addrsig_sym jv_free
	.addrsig_sym jv_string
	.addrsig_sym PATH_MAX
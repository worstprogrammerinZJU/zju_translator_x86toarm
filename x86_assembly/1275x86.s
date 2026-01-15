	.text
	.p2align	4, 0x90                         # -- Begin function jvp_literal_number_alloc
jvp_literal_number_alloc:               # @jvp_literal_number_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	DECDPUN(%rip), %eax
	subl	$1, %eax
	xorl	%edx, %edx
	divl	DECDPUN(%rip)
	movl	%eax, -8(%rbp)
	movslq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$4, %rax
	movl	%eax, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_alloc
	.addrsig_sym jv_mem_alloc
	.addrsig_sym DECDPUN
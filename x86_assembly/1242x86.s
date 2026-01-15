	.text
	.globl	jv_object_iter_valid            # -- Begin function jv_object_iter_valid
	.p2align	4, 0x90
jv_object_iter_valid:                   # @jv_object_iter_valid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	ITER_FINISHED(%rip), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ITER_FINISHED
	.p2align	2
ITER_FINISHED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ITER_FINISHED
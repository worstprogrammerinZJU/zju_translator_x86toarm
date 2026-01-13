	.text
	.globl	jv_object_iter                  # -- Begin function jv_object_iter
	.p2align	4, 0x90
jv_object_iter:                         # @jv_object_iter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_OBJECT(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	jv_object_iter_next@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_object_iter_next
	.addrsig_sym JV_KIND_OBJECT
	.text
	.globl	jq_set_attrs                    # -- Begin function jq_set_attrs
	.p2align	4, 0x90
jq_set_attrs:                           # @jq_set_attrs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_OBJECT
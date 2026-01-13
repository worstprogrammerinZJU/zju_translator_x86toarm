	.text
	.globl	block_module_meta               # -- Begin function block_module_meta
	.p2align	4, 0x90
block_module_meta:                      # @block_module_meta
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	MODULEMETA(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MODULEMETA
	.p2align	3
MODULEMETA:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_copy
	.addrsig_sym jv_null
	.addrsig_sym MODULEMETA
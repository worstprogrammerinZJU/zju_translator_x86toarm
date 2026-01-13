	.text
	.globl	block_is_funcdef                # -- Begin function block_is_funcdef
	.p2align	4, 0x90
block_is_funcdef:                       # @block_is_funcdef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movl	$1, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movl	$0, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CLOSURE_CREATE
	.p2align	3
CLOSURE_CREATE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CLOSURE_CREATE
	.text
	.p2align	4, 0x90                         # -- Begin function emit_global_var
emit_global_var:                        # @emit_global_var
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	emit_data@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	emit_bss@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_global_var
	.addrsig_sym emit_data
	.addrsig_sym emit_bss
	.addrsig_sym SAVE
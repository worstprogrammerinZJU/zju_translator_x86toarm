	.text
	.globl	jvp_utf8_is_valid               # -- Begin function jvp_utf8_is_valid
	.p2align	4, 0x90
jvp_utf8_is_valid:                      # @jvp_utf8_is_valid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	callq	jvp_utf8_next@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$-1, -28(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_5:
	movl	$1, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_utf8_next
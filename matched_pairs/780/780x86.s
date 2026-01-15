	.text
	.globl	xTaskCreateUniversal            # -- Begin function xTaskCreateUniversal
	.p2align	4, 0x90
xTaskCreateUniversal:                   # @xTaskCreateUniversal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$0, 16(%rbp)
	jl	.LBB0_3
# %bb.1:
	cmpl	$2, 16(%rbp)
	jge	.LBB0_3
# %bb.2:
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	-48(%rbp), %r9
	movl	16(%rbp), %eax
	movl	%eax, (%rsp)
	callq	xTaskCreatePinnedToCore@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	-48(%rbp), %r9
	callq	xTaskCreate@PLT
	movl	%eax, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xTaskCreatePinnedToCore
	.addrsig_sym xTaskCreate
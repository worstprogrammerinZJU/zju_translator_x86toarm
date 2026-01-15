	.text
	.globl	swr_convert_frame               # -- Begin function swr_convert_frame
	.p2align	4, 0x90
swr_convert_frame:                      # @swr_convert_frame
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	swr_is_initialized@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	swr_config_frame@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_3
# %bb.2:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	swr_init@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_5
# %bb.4:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_5:
	movl	$1, -40(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	config_changed@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.7:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# %bb.10:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_18
# %bb.11:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	swr_get_delay@PLT
	movl	%eax, %ecx
	addl	$3, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# %bb.12:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	imull	%ecx, %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	(%rcx)
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB0_13:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	av_frame_get_buffer@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_17
# %bb.14:
	cmpl	$0, -40(%rbp)
	je	.LBB0_16
# %bb.15:
	movq	-16(%rbp), %rdi
	callq	swr_close@PLT
.LBB0_16:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_17:
	jmp	.LBB0_21
.LBB0_18:
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_20
# %bb.19:
	movq	-24(%rbp), %rdi
	callq	available_samples@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_20:
	jmp	.LBB0_21
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	convert_frame@PLT
	movl	%eax, -4(%rbp)
.LBB0_23:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_is_initialized
	.addrsig_sym swr_config_frame
	.addrsig_sym swr_init
	.addrsig_sym config_changed
	.addrsig_sym swr_get_delay
	.addrsig_sym av_frame_get_buffer
	.addrsig_sym swr_close
	.addrsig_sym available_samples
	.addrsig_sym convert_frame
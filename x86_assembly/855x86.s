	.text
	.p2align	4, 0x90                         # -- Begin function frame_push
frame_push:                             # @frame_push
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	frame_size@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movl	-68(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	stack_push_block@PLT
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	addq	$4, %rdi
	movl	-40(%rbp), %esi
	callq	stack_block@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-8(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	(%rcx), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-60(%rbp), %eax
	shll	$1, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	callq	make_closure@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -64(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_push
	.addrsig_sym stack_push_block
	.addrsig_sym frame_size
	.addrsig_sym stack_block
	.addrsig_sym assert
	.addrsig_sym make_closure
	.addrsig_sym jv_invalid
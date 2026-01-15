	.text
	.globl	base64_encode_blockend          # -- Begin function base64_encode_blockend
	.p2align	4, 0x90
base64_encode_blockend:                 # @base64_encode_blockend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_2
	jmp	.LBB0_5
.LBB0_5:
	movl	-28(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:
	movl	-28(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	je	.LBB0_3
	jmp	.LBB0_4
.LBB0_1:
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	base64_encode_value@PLT
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$61, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$61, (%rax)
	jmp	.LBB0_4
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	base64_encode_value@PLT
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$61, (%rax)
	jmp	.LBB0_4
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_encode_value
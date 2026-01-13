	.text
	.globl	jvp_utf8_backtrack              # -- Begin function jvp_utf8_backtrack
	.p2align	4, 0x90
jvp_utf8_backtrack:                     # @jvp_utf8_backtrack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_2:
	movl	$0, -36(%rbp)
	movl	$1, -40(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-24(%rbp), %rcx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jb	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	utf8_coding_length(%rip), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -36(%rbp)
	cmpl	UTF8_CONTINUATION_BYTE(%rip), %eax
	sete	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-41(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_7:
	cmpl	$0, -36(%rbp)
	je	.LBB0_10
# %bb.8:
	movl	-36(%rbp), %eax
	cmpl	UTF8_CONTINUATION_BYTE(%rip), %eax
	je	.LBB0_10
# %bb.9:
	movl	-36(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB0_11
.LBB0_10:
	movq	$0, -8(%rbp)
	jmp	.LBB0_14
.LBB0_11:
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# %bb.12:
	movl	-36(%rbp), %ecx
	subl	-40(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_13:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_14:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	utf8_coding_length
	.p2align	3
utf8_coding_length:
	.quad	0
	.globl	UTF8_CONTINUATION_BYTE
	.p2align	2
UTF8_CONTINUATION_BYTE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym utf8_coding_length
	.addrsig_sym UTF8_CONTINUATION_BYTE
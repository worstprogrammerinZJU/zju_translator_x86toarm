	.text
	.globl	jvp_utf8_next                   # -- Begin function jvp_utf8_next
	.p2align	4, 0x90
jvp_utf8_next:                          # @jvp_utf8_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_26
.LBB0_2:
	movl	$-1, -36(%rbp)
	movq	-16(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -37(%rbp)
	movq	utf8_coding_length(%rip), %rax
	movzbl	-37(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
	movzbl	-37(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movzbl	-37(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -44(%rbp)
	jmp	.LBB0_25
.LBB0_4:
	cmpl	$0, -44(%rbp)
	je	.LBB0_6
# %bb.5:
	movl	-44(%rbp), %eax
	cmpl	UTF8_CONTINUATION_BYTE(%rip), %eax
	jne	.LBB0_7
.LBB0_6:
	movl	$1, -44(%rbp)
	jmp	.LBB0_24
.LBB0_7:
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB0_9
# %bb.8:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_23
.LBB0_9:
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	movq	utf8_coding_bits(%rip), %rcx
	movzbl	-37(%rbp), %edx
                                        # kill: def $rdx killed $edx
	andl	(%rcx,%rdx,4), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -48(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	utf8_coding_length(%rip), %rax
	movl	-52(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	cmpl	UTF8_CONTINUATION_BYTE(%rip), %eax
	je	.LBB0_13
# %bb.12:
	movl	$-1, -36(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-36(%rbp), %eax
	shll	$6, %eax
	movl	-52(%rbp), %ecx
	andl	$63, %ecx
	orl	%ecx, %eax
	movl	%eax, -36(%rbp)
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_10
.LBB0_15:
	movl	-36(%rbp), %eax
	movq	utf8_first_codepoint(%rip), %rcx
	movslq	-44(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_17
# %bb.16:
	movl	$-1, -36(%rbp)
.LBB0_17:
	movl	$55296, %eax                    # imm = 0xD800
	cmpl	-36(%rbp), %eax
	jg	.LBB0_20
# %bb.18:
	cmpl	$57343, -36(%rbp)               # imm = 0xDFFF
	jg	.LBB0_20
# %bb.19:
	movl	$-1, -36(%rbp)
.LBB0_20:
	cmpl	$1114111, -36(%rbp)             # imm = 0x10FFFF
	jle	.LBB0_22
# %bb.21:
	movl	$-1, -36(%rbp)
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	cmpl	$0, -44(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB0_26:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
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
	.globl	utf8_coding_bits
	.p2align	3
utf8_coding_bits:
	.quad	0
	.globl	utf8_first_codepoint
	.p2align	3
utf8_first_codepoint:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym utf8_coding_length
	.addrsig_sym UTF8_CONTINUATION_BYTE
	.addrsig_sym utf8_coding_bits
	.addrsig_sym utf8_first_codepoint
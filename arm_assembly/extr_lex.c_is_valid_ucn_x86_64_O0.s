	.text
	.p2align	4, 0x90                         # -- Begin function is_valid_ucn
is_valid_ucn:                           # @is_valid_ucn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	$55296, %eax                    # imm = 0xD800
	cmpl	-8(%rbp), %eax
	ja	.LBB0_3
# %bb.1:
	cmpl	$57343, -8(%rbp)                # imm = 0xDFFF
	ja	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_3:
	movb	$1, %al
	movl	$160, %ecx
	cmpl	-8(%rbp), %ecx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jbe	.LBB0_7
# %bb.4:
	movb	$1, %al
	cmpl	$36, -8(%rbp)
	movb	%al, -9(%rbp)                   # 1-byte Spill
	je	.LBB0_7
# %bb.5:
	movb	$1, %al
	cmpl	$64, -8(%rbp)
	movb	%al, -9(%rbp)                   # 1-byte Spill
	je	.LBB0_7
# %bb.6:
	cmpl	$96, -8(%rbp)
	sete	%al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_7:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_valid_ucn
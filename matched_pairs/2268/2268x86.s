	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pnm_isspace
stbi__pnm_isspace:                      # @stbi__pnm_isspace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %ecx
	movb	$1, %al
	cmpl	$32, %ecx
	movb	%al, -2(%rbp)                   # 1-byte Spill
	je	.LBB0_6
# %bb.1:
	movsbl	-1(%rbp), %ecx
	movb	$1, %al
	cmpl	$9, %ecx
	movb	%al, -2(%rbp)                   # 1-byte Spill
	je	.LBB0_6
# %bb.2:
	movsbl	-1(%rbp), %ecx
	movb	$1, %al
	cmpl	$10, %ecx
	movb	%al, -2(%rbp)                   # 1-byte Spill
	je	.LBB0_6
# %bb.3:
	movsbl	-1(%rbp), %ecx
	movb	$1, %al
	cmpl	$11, %ecx
	movb	%al, -2(%rbp)                   # 1-byte Spill
	je	.LBB0_6
# %bb.4:
	movsbl	-1(%rbp), %ecx
	movb	$1, %al
	cmpl	$12, %ecx
	movb	%al, -2(%rbp)                   # 1-byte Spill
	je	.LBB0_6
# %bb.5:
	movsbl	-1(%rbp), %eax
	cmpl	$13, %eax
	sete	%al
	movb	%al, -2(%rbp)                   # 1-byte Spill
.LBB0_6:
	movb	-2(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_isspace
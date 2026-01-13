	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pnm_isdigit
stbi__pnm_isdigit:                      # @stbi__pnm_isdigit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$48, %ecx
	movb	%al, -2(%rbp)                   # 1-byte Spill
	jl	.LBB0_2
# %bb.1:
	movsbl	-1(%rbp), %eax
	cmpl	$57, %eax
	setle	%al
	movb	%al, -2(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-2(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_isdigit
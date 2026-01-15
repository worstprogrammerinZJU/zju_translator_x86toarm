	.text
	.p2align	4, 0x90                         # -- Begin function is_arithtype
is_arithtype:                           # @is_arithtype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	is_inttype@PLT
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_arithtype
	.addrsig_sym is_inttype
	.addrsig_sym is_flotype
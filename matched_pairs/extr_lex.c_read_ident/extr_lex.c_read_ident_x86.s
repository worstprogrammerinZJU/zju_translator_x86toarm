	.text
	.p2align	4, 0x90                         # -- Begin function read_ident
read_ident:                             # @read_ident
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	-1(%rbp), %esi
	callq	buf_write@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	readc@PLT
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %edi
	callq	isalnum@PLT
	cmpq	$0, %rax
	jne	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-1(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-1(%rbp), %eax
	cmpl	$95, %eax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-1(%rbp), %eax
	cmpl	$36, %eax
	jne	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movsbl	-1(%rbp), %esi
	callq	buf_write@PLT
	jmp	.LBB0_1
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-1(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movzbl	%al, %eax
	cmpl	$117, %eax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movzbl	%al, %eax
	cmpl	$85, %eax
	jne	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	read_escaped_char@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	write_utf8@PLT
	jmp	.LBB0_1
.LBB0_10:
	movsbl	-1(%rbp), %edi
	callq	unreadc@PLT
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	buf_write@PLT
	movq	-16(%rbp), %rdi
	callq	buf_body@PLT
	movl	%eax, %edi
	callq	make_ident@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_ident
	.addrsig_sym make_buffer
	.addrsig_sym buf_write
	.addrsig_sym readc
	.addrsig_sym isalnum
	.addrsig_sym peek
	.addrsig_sym write_utf8
	.addrsig_sym read_escaped_char
	.addrsig_sym unreadc
	.addrsig_sym make_ident
	.addrsig_sym buf_body
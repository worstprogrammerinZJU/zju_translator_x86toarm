	.text
	.p2align	4, 0x90                         # -- Begin function read_number
read_number:                            # @read_number
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
	movb	-1(%rbp), %al
	movb	%al, -17(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -24(%rbp)
	movsbl	-17(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	callq	strchr@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -29(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	strchr@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -29(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-29(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %edi
	callq	isdigit@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %edi
	callq	isalpha@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$46, -24(%rbp)
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB0_8
# %bb.7:
	movl	-24(%rbp), %edi
	callq	unreadc@PLT
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	buf_write@PLT
	movq	-16(%rbp), %rdi
	callq	buf_body@PLT
	movl	%eax, %edi
	callq	make_number@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	buf_write@PLT
	movl	-24(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -17(%rbp)
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"eEpP"
.L.str.1:
	.asciz	"+-"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_number
	.addrsig_sym make_buffer
	.addrsig_sym buf_write
	.addrsig_sym readc
	.addrsig_sym strchr
	.addrsig_sym isdigit
	.addrsig_sym isalpha
	.addrsig_sym unreadc
	.addrsig_sym make_number
	.addrsig_sym buf_body
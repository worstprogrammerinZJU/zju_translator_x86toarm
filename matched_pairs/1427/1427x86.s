	.text
	.globl	read_header_file_name           # -- Begin function read_header_file_name
	.p2align	4, 0x90
read_header_file_name:                  # @read_header_file_name
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, %al
	callq	buffer_empty@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_17
.LBB0_2:
	movb	$0, %al
	callq	skip_space@PLT
	xorl	%edi, %edi
	callq	get_pos@PLT
	movl	%eax, -20(%rbp)
	movl	$34, %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movb	$34, -21(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	movl	$60, %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movb	$62, -21(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movq	$0, -8(%rbp)
	jmp	.LBB0_17
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -32(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movsbl	-21(%rbp), %edi
	callq	next@PLT
	cmpq	$0, %rax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_10
	jmp	.LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	EOF(%rip), %eax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$10, -36(%rbp)
	jne	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-20(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	errorp@PLT
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %esi
	callq	buf_write@PLT
	jmp	.LBB0_9
.LBB0_14:
	movq	-32(%rbp), %rdi
	callq	buf_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_16
# %bb.15:
	movl	-20(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	errorp@PLT
.LBB0_16:
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	buf_write@PLT
	movq	-32(%rbp), %rdi
	callq	buf_body@PLT
	movq	%rax, -8(%rbp)
.LBB0_17:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of header name"
.L.str.1:
	.asciz	"header name should not be empty"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buffer_empty
	.addrsig_sym skip_space
	.addrsig_sym get_pos
	.addrsig_sym next
	.addrsig_sym make_buffer
	.addrsig_sym readc
	.addrsig_sym errorp
	.addrsig_sym buf_write
	.addrsig_sym buf_len
	.addrsig_sym buf_body
	.addrsig_sym EOF
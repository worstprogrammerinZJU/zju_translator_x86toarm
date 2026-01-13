	.text
	.p2align	4, 0x90                         # -- Begin function read_string
read_string:                            # @read_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	pos(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	errorp@PLT
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$34, -20(%rbp)
	jne	.LBB0_5
# %bb.4:
	jmp	.LBB0_12
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$92, -20(%rbp)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %esi
	callq	buf_write@PLT
	jmp	.LBB0_1
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	$117, %ecx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movzbl	%al, %eax
	cmpl	$85, %eax
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movb	$0, %al
	callq	read_escaped_char@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	write_utf8@PLT
	jmp	.LBB0_1
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %esi
	callq	buf_write@PLT
	jmp	.LBB0_1
.LBB0_12:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	buf_write@PLT
	movq	-16(%rbp), %rdi
	callq	buf_body@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	buf_len@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	-4(%rbp), %edx
	callq	make_strtok@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.globl	pos
	.p2align	2
pos:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unterminated string"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_string
	.addrsig_sym make_buffer
	.addrsig_sym readc
	.addrsig_sym errorp
	.addrsig_sym buf_write
	.addrsig_sym peek
	.addrsig_sym read_escaped_char
	.addrsig_sym write_utf8
	.addrsig_sym make_strtok
	.addrsig_sym buf_body
	.addrsig_sym buf_len
	.addrsig_sym EOF
	.addrsig_sym pos
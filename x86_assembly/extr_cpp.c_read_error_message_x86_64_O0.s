	.text
	.p2align	4, 0x90                         # -- Begin function read_error_message
read_error_message:                     # @read_error_message
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	callq	buf_body@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	buf_len@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$32, %esi
	callq	buf_write@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	buf_printf@PLT
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_error_message
	.addrsig_sym make_buffer
	.addrsig_sym lex
	.addrsig_sym buf_body
	.addrsig_sym buf_len
	.addrsig_sym buf_write
	.addrsig_sym buf_printf
	.addrsig_sym tok2s
	.addrsig_sym TNEWLINE
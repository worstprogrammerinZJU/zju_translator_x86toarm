	.text
	.p2align	4, 0x90                         # -- Begin function print
print:                                  # @print
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %edi
	callq	quote@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_6
.LBB0_2:
	movsbl	-9(%rbp), %edi
	callq	isprint@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
.L.str.1:
	.asciz	"%c"
.L.str.2:
	.asciz	"\\x%02x"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym quote
	.addrsig_sym buf_printf
	.addrsig_sym isprint
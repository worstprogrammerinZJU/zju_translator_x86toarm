	.text
	.p2align	4, 0x90                         # -- Begin function read_error
read_error:                             # @read_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	read_error_message@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#error: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_error
	.addrsig_sym errort
	.addrsig_sym read_error_message
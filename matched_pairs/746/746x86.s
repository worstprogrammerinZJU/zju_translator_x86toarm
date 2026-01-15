	.text
	.p2align	4, 0x90                         # -- Begin function print_error
print_error:                            # @print_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	stderr(%rip), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movl	stderr(%rip), %edi
	callq	fileno@PLT
	movl	%eax, %edi
	callq	isatty@PLT
	movl	-40(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rcx
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str(%rip), %rax
	cmpq	$0, %rcx
	cmovneq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf@PLT
	movl	stderr(%rip), %edi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movl	stderr(%rip), %edi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	vfprintf@PLT
	movl	stderr(%rip), %edi
	leaq	.L.str.3(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033[1;31m[%s]\033[0m "
.L.str.1:
	.asciz	"[%s] "
.L.str.2:
	.asciz	"%s: %s: "
.L.str.3:
	.asciz	"\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print_error
	.addrsig_sym fprintf
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym vfprintf
	.addrsig_sym stderr
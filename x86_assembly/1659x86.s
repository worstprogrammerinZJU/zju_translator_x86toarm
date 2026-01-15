	.text
	.p2align	4, 0x90                         # -- Begin function debug_cb
debug_cb:                               # @debug_cb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	movl	-12(%rbp), %esi
	callq	JV_ARRAY@PLT
	movl	%eax, %edi
	movl	stderr(%rip), %esi
	movl	-16(%rbp), %edx
	movl	JV_PRINT_PRETTY(%rip), %eax
	xorl	$-1, %eax
	andl	%eax, %edx
	callq	jv_dumpf@PLT
	movl	stderr(%rip), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	fprintf@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DEBUG:"
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.globl	JV_PRINT_PRETTY
	.p2align	2
JV_PRINT_PRETTY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym debug_cb
	.addrsig_sym jv_dumpf
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_string
	.addrsig_sym fprintf
	.addrsig_sym stderr
	.addrsig_sym JV_PRINT_PRETTY
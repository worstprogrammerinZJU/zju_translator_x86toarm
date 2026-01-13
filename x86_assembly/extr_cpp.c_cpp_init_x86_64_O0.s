	.text
	.globl	cpp_init                        # -- Begin function cpp_init
	.p2align	4, 0x90
cpp_init:                               # @cpp_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	LC_ALL(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	setlocale@PLT
	movb	$0, %al
	callq	init_keywords@PLT
	movb	$0, %al
	callq	init_now@PLT
	movb	$0, %al
	callq	init_predefined_macros@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LC_ALL
	.p2align	2
LC_ALL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"C"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setlocale
	.addrsig_sym init_keywords
	.addrsig_sym init_now
	.addrsig_sym init_predefined_macros
	.addrsig_sym LC_ALL
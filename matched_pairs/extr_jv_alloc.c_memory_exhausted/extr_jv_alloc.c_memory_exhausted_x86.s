	.text
	.p2align	4, 0x90                         # -- Begin function memory_exhausted
memory_exhausted:                       # @memory_exhausted
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	stderr(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movb	$0, %al
	callq	abort@PLT
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
	.asciz	"jq: error: cannot allocate memory\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memory_exhausted
	.addrsig_sym fprintf
	.addrsig_sym abort
	.addrsig_sym stderr
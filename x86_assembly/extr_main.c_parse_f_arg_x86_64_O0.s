	.text
	.p2align	4, 0x90                         # -- Begin function parse_f_arg
parse_f_arg:                            # @parse_f_arg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	$1, dumpast(%rip)
	jmp	.LBB0_9
.LBB0_2:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$1, dumpstack(%rip)
	jmp	.LBB0_8
.LBB0_4:
	movq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	$0, dumpsource(%rip)
	jmp	.LBB0_7
.LBB0_6:
	movl	$1, %edi
	callq	usage@PLT
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dump-ast"
	.bss
	.globl	dumpast
	.p2align	2
dumpast:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"dump-stack"
	.bss
	.globl	dumpstack
	.p2align	2
dumpstack:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"no-dump-source"
	.bss
	.globl	dumpsource
	.p2align	2
dumpsource:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_f_arg
	.addrsig_sym strcmp
	.addrsig_sym usage
	.addrsig_sym dumpast
	.addrsig_sym dumpstack
	.addrsig_sym dumpsource
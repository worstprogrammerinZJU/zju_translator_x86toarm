	.text
	.p2align	4, 0x90                         # -- Begin function parse_warnings_arg
parse_warnings_arg:                     # @parse_warnings_arg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movl	$1, warning_is_error(%rip)
	jmp	.LBB0_5
.LBB0_2:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error"
	.bss
	.globl	warning_is_error
	.p2align	2
warning_is_error:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"all"
.L.str.2:
	.asciz	"unknown -W option: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_warnings_arg
	.addrsig_sym strcmp
	.addrsig_sym error
	.addrsig_sym warning_is_error
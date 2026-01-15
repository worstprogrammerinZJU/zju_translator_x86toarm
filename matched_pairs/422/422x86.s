	.text
	.p2align	4, 0x90                         # -- Begin function parse_pragma_operand
parse_pragma_operand:                   # @parse_pragma_operand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	callq	fullpath@PLT
	movq	%rax, -24(%rbp)
	movl	once(%rip), %edi
	movq	-24(%rbp), %rsi
	movl	$1, %edx
	callq	map_put@PLT
	jmp	.LBB0_9
.LBB0_2:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$1, enable_warning(%rip)
	jmp	.LBB0_8
.LBB0_4:
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	$0, enable_warning(%rip)
	jmp	.LBB0_7
.LBB0_6:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.3(%rip), %rsi
	callq	errort@PLT
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"once"
	.bss
	.globl	once
	.p2align	2
once:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"enable_warning"
	.bss
	.globl	enable_warning
	.p2align	2
enable_warning:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"disable_warning"
.L.str.3:
	.asciz	"unknown #pragma: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_pragma_operand
	.addrsig_sym strcmp
	.addrsig_sym fullpath
	.addrsig_sym map_put
	.addrsig_sym errort
	.addrsig_sym once
	.addrsig_sym enable_warning
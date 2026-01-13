	.text
	.globl	quote_char                      # -- Begin function quote_char
	.p2align	4, 0x90
quote_char:                             # @quote_char
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movsbl	-9(%rbp), %eax
	cmpl	$39, %eax
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	leaq	.L.str.2(%rip), %rdi
	movsbl	-9(%rbp), %esi
	callq	format@PLT
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\\\"
.L.str.1:
	.asciz	"\\'"
.L.str.2:
	.asciz	"%c"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym format
	.text
	.globl	token_pos                       # -- Begin function token_pos
	.p2align	4, 0x90
token_pos:                              # @token_pos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	leaq	.L.str(%rip), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_5:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	leaq	.L.str.1(%rip), %rdi
	callq	format@PLT
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(unknown)"
.L.str.1:
	.asciz	"%s:%d:%d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym format
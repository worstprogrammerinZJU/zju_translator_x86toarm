	.text
	.p2align	4, 0x90                         # -- Begin function emit_post_inc_dec
emit_post_inc_dec:                      # @emit_post_inc_dec
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	emit_expr@PLT
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	$1, %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movl	-28(%rbp), %edx                 # 4-byte Reload
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	emit_store@PLT
	leaq	.L.str(%rip), %rdi
	callq	pop@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rax"
.L.str.1:
	.asciz	"%s $%d, #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_post_inc_dec
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym emit_store
	.addrsig_sym pop
	.addrsig_sym SAVE
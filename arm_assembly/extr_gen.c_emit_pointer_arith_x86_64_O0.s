	.text
	.p2align	4, 0x90                         # -- Begin function emit_pointer_arith
emit_pointer_arith:                     # @emit_pointer_arith
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	emit_expr@PLT
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	push@PLT
	movq	-24(%rbp), %rdi
	callq	emit_expr@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jle	.LBB0_2
# %bb.1:
	movl	-28(%rbp), %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_2:
	leaq	.L.str.3(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	emit@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	pop@PLT
	movsbl	-1(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	subl	$43, %eax
	je	.LBB0_3
	jmp	.LBB0_7
.LBB0_7:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	$45, %eax
	je	.LBB0_4
	jmp	.LBB0_5
.LBB0_3:
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_6
.LBB0_4:
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_6
.LBB0_5:
	leaq	.L.str.6(%rip), %rdi
	movsbl	-1(%rbp), %esi
	callq	error@PLT
.LBB0_6:
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
	.asciz	"rcx"
.L.str.1:
	.asciz	"rax"
.L.str.2:
	.asciz	"imul $%d, #rax"
.L.str.3:
	.asciz	"mov #rax, #rcx"
.L.str.4:
	.asciz	"add #rcx, #rax"
.L.str.5:
	.asciz	"sub #rcx, #rax"
.L.str.6:
	.asciz	"invalid operator '%d'"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_pointer_arith
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym pop
	.addrsig_sym error
	.addrsig_sym SAVE
	.text
	.p2align	4, 0x90                         # -- Begin function emit_binop_int_arith
emit_binop_int_arith:                   # @emit_binop_int_arith
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	subl	$37, %eax
	je	.LBB0_8
	jmp	.LBB0_25
.LBB0_25:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$42, %eax
	je	.LBB0_3
	jmp	.LBB0_26
.LBB0_26:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$43, %eax
	je	.LBB0_1
	jmp	.LBB0_27
.LBB0_27:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$45, %eax
	je	.LBB0_2
	jmp	.LBB0_28
.LBB0_28:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$47, %eax
	je	.LBB0_8
	jmp	.LBB0_29
.LBB0_29:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$94, %eax
	je	.LBB0_4
	jmp	.LBB0_30
.LBB0_30:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$128, %eax
	je	.LBB0_7
	jmp	.LBB0_31
.LBB0_31:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_6
	jmp	.LBB0_32
.LBB0_32:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	je	.LBB0_5
	jmp	.LBB0_9
.LBB0_1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_3:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_5:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_7:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_8:
	jmp	.LBB0_10
.LBB0_9:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str.7(%rip), %rdi
	callq	error@PLT
.LBB0_10:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	emit_expr@PLT
	leaq	.L.str.8(%rip), %rdi
	callq	push@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	emit_expr@PLT
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.8(%rip), %rdi
	callq	pop@PLT
	movq	-8(%rbp), %rax
	cmpl	$47, (%rax)
	je	.LBB0_12
# %bb.11:
	movq	-8(%rbp), %rax
	cmpl	$37, (%rax)
	jne	.LBB0_18
.LBB0_12:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB0_14
# %bb.13:
	leaq	.L.str.10(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.11(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_15
.LBB0_14:
	leaq	.L.str.12(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.13(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_15:
	movq	-8(%rbp), %rax
	cmpl	$37, (%rax)
	jne	.LBB0_17
# %bb.16:
	leaq	.L.str.14(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_17:
	jmp	.LBB0_24
.LBB0_18:
	movq	-8(%rbp), %rax
	cmpl	$130, (%rax)
	je	.LBB0_21
# %bb.19:
	movq	-8(%rbp), %rax
	cmpl	$129, (%rax)
	je	.LBB0_21
# %bb.20:
	movq	-8(%rbp), %rax
	cmpl	$128, (%rax)
	jne	.LBB0_22
.LBB0_21:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	movl	$97, %esi
	callq	get_int_reg@PLT
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.15(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_23
.LBB0_22:
	movq	-16(%rbp), %rsi
	leaq	.L.str.16(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
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
	.asciz	"add"
.L.str.1:
	.asciz	"sub"
.L.str.2:
	.asciz	"imul"
.L.str.3:
	.asciz	"xor"
.L.str.4:
	.asciz	"sal"
.L.str.5:
	.asciz	"sar"
.L.str.6:
	.asciz	"shr"
.L.str.7:
	.asciz	"invalid operator '%d'"
.L.str.8:
	.asciz	"rax"
.L.str.9:
	.asciz	"mov #rax, #rcx"
.L.str.10:
	.asciz	"xor #edx, #edx"
.L.str.11:
	.asciz	"div #rcx"
.L.str.12:
	.asciz	"cqto"
.L.str.13:
	.asciz	"idiv #rcx"
.L.str.14:
	.asciz	"mov #edx, #eax"
.L.str.15:
	.asciz	"%s #cl, #%s"
.L.str.16:
	.asciz	"%s #rcx, #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_binop_int_arith
	.addrsig_sym error
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym pop
	.addrsig_sym get_int_reg
	.addrsig_sym SAVE
	.text
	.p2align	4, 0x90                         # -- Begin function emit_binop
emit_binop:                             # @emit_binop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movl	20(%rax), %esi
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	callq	emit_pointer_arith@PLT
	jmp	.LBB0_13
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	subl	$60, %eax
	je	.LBB0_3
	jmp	.LBB0_14
.LBB0_14:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$128, %eax
	je	.LBB0_6
	jmp	.LBB0_15
.LBB0_15:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_5
	jmp	.LBB0_16
.LBB0_16:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	je	.LBB0_4
	jmp	.LBB0_7
.LBB0_3:
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	emit_comp@PLT
	jmp	.LBB0_13
.LBB0_4:
	movq	-8(%rbp), %rdx
	leaq	.L.str.2(%rip), %rsi
	movq	%rsi, %rdi
	callq	emit_comp@PLT
	jmp	.LBB0_13
.LBB0_5:
	movq	-8(%rbp), %rdx
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	emit_comp@PLT
	jmp	.LBB0_13
.LBB0_6:
	movq	-8(%rbp), %rdx
	leaq	.L.str.5(%rip), %rsi
	movq	%rsi, %rdi
	callq	emit_comp@PLT
	jmp	.LBB0_13
.LBB0_7:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	is_inttype@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:
	movq	-8(%rbp), %rdi
	callq	emit_binop_int_arith@PLT
	jmp	.LBB0_13
.LBB0_9:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movq	-8(%rbp), %rdi
	callq	emit_binop_float_arith@PLT
	jmp	.LBB0_12
.LBB0_11:
	movq	-8(%rbp), %rdi
	callq	node2s@PLT
	movl	%eax, %esi
	leaq	.L.str.6(%rip), %rdi
	callq	error@PLT
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"setl"
.L.str.1:
	.asciz	"setb"
.L.str.2:
	.asciz	"sete"
.L.str.3:
	.asciz	"setle"
.L.str.4:
	.asciz	"setna"
.L.str.5:
	.asciz	"setne"
.L.str.6:
	.asciz	"internal error: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_binop
	.addrsig_sym emit_pointer_arith
	.addrsig_sym emit_comp
	.addrsig_sym is_inttype
	.addrsig_sym emit_binop_int_arith
	.addrsig_sym is_flotype
	.addrsig_sym emit_binop_float_arith
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym SAVE
	.addrsig_sym KIND_PTR
	.text
	.p2align	4, 0x90                         # -- Begin function emit_data_primtype
emit_data_primtype:                     # @emit_data_primtype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	subl	$8, %eax
	ja	.LBB0_25
# %bb.27:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_3:
	movq	-16(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	eval_intexpr@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_4:
	movq	-16(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	eval_intexpr@PLT
	movl	%eax, %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_5:
	movq	-16(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	eval_intexpr@PLT
	movl	%eax, %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_6:
	movq	-16(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	eval_intexpr@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	OP_LABEL_ADDR(%rip), %eax
	jne	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	KIND_ARRAY(%rip), %ecx
	movb	%al, -65(%rbp)                  # 1-byte Spill
	jne	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$135, (%rax)
	sete	%al
	movb	%al, -65(%rbp)                  # 1-byte Spill
.LBB0_11:
	movb	-65(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_13
# %bb.12:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	32(%rax), %edi
	movl	-20(%rbp), %esi
	callq	emit_data_charptr@PLT
	jmp	.LBB0_24
.LBB0_13:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	AST_GVAR(%rip), %eax
	jne	.LBB0_15
# %bb.14:
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_23
.LBB0_15:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	eval_intexpr@PLT
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_17
# %bb.16:
	movl	-44(%rbp), %esi
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_26
.LBB0_17:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	AST_CONV(%rip), %eax
	je	.LBB0_19
# %bb.18:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	AST_ADDR(%rip), %eax
	jne	.LBB0_20
.LBB0_19:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_20:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	AST_GVAR(%rip), %eax
	je	.LBB0_22
# %bb.21:
	movq	-40(%rbp), %rdi
	callq	node2s@PLT
	movq	%rax, %rsi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	error@PLT
.LBB0_22:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	callq	assert@PLT
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	imull	4(%rax), %edx
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	jmp	.LBB0_26
.LBB0_25:
	movq	-8(%rbp), %rdi
	callq	ty2s@PLT
	cltq
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	node2s@PLT
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	error@PLT
.LBB0_26:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".long %d"
.L.str.1:
	.asciz	".quad %ld"
.L.str.2:
	.asciz	".byte %d"
.L.str.3:
	.asciz	".short %d"
	.bss
	.globl	OP_LABEL_ADDR
	.p2align	2
OP_LABEL_ADDR:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	".quad %s"
	.bss
	.globl	KIND_ARRAY
	.p2align	2
KIND_ARRAY:
	.long	0                               # 0x0
	.globl	AST_GVAR
	.p2align	2
AST_GVAR:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	".quad %u"
	.bss
	.globl	AST_CONV
	.p2align	2
AST_CONV:
	.long	0                               # 0x0
	.globl	AST_ADDR
	.p2align	2
AST_ADDR:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"global variable expected, but got %s"
.L.str.7:
	.asciz	".quad %s+%u"
.L.str.8:
	.asciz	"don't know how to handle\n  <%s>\n  <%s>"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_data_primtype
	.addrsig_sym emit
	.addrsig_sym eval_intexpr
	.addrsig_sym emit_data_charptr
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym assert
	.addrsig_sym ty2s
	.addrsig_sym OP_LABEL_ADDR
	.addrsig_sym KIND_ARRAY
	.addrsig_sym AST_GVAR
	.addrsig_sym AST_CONV
	.addrsig_sym AST_ADDR
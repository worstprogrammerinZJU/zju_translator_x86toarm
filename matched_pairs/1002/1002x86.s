	.text
	.p2align	4, 0x90                         # -- Begin function emit_literal
emit_literal:                           # @emit_literal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$9, %eax
	ja	.LBB0_13
# %bb.15:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_14
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_14
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_14
.LBB0_4:
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB0_6
# %bb.5:
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	leaq	.L.str.2(%rip), %rdi
	callq	emit_noindent@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	emit_label@PLT
	movq	-12(%rbp), %rsi
	leaq	.L.str.3(%rip), %rdi
	callq	emit@PLT
	leaq	.L.str.4(%rip), %rdi
	callq	emit_noindent@PLT
.LBB0_6:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.L.str.5(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_14
.LBB0_7:
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB0_9
# %bb.8:
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	leaq	.L.str.2(%rip), %rdi
	callq	emit_noindent@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	emit_label@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.L.str.6(%rip), %rdi
	callq	emit@PLT
	leaq	.L.str.4(%rip), %rdi
	callq	emit_noindent@PLT
.LBB0_9:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	.L.str.7(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_14
.LBB0_10:
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_12
# %bb.11:
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	leaq	.L.str.2(%rip), %rdi
	callq	emit_noindent@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	emit_label@PLT
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %esi
	subl	$1, %esi
	callq	quote_cstring_len@PLT
	movq	%rax, %rsi
	leaq	.L.str.8(%rip), %rdi
	callq	emit@PLT
	leaq	.L.str.4(%rip), %rdi
	callq	emit_noindent@PLT
.LBB0_12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.L.str.9(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_14
.LBB0_13:
	leaq	.L.str.10(%rip), %rdi
	callq	error@PLT
.LBB0_14:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mov $%u, #rax"
.L.str.1:
	.asciz	"mov $%lu, #rax"
.L.str.2:
	.asciz	".data"
.L.str.3:
	.asciz	".long %d"
.L.str.4:
	.asciz	".text"
.L.str.5:
	.asciz	"movss %s(#rip), #xmm0"
.L.str.6:
	.asciz	".quad %lu"
.L.str.7:
	.asciz	"movsd %s(#rip), #xmm0"
.L.str.8:
	.asciz	".string \"%s\""
.L.str.9:
	.asciz	"lea %s(#rip), #rax"
.L.str.10:
	.asciz	"internal error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_literal
	.addrsig_sym emit
	.addrsig_sym make_label
	.addrsig_sym emit_noindent
	.addrsig_sym emit_label
	.addrsig_sym quote_cstring_len
	.addrsig_sym error
	.addrsig_sym SAVE
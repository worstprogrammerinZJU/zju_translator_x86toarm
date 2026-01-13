	.text
	.p2align	4, 0x90                         # -- Begin function emit_addr
emit_addr:                              # @emit_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_6
# %bb.8:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-8(%rbp), %rdi
	callq	ensure_lvar_init@PLT
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_7
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	28(%rax), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_7
.LBB0_3:
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	callq	emit_expr@PLT
	jmp	.LBB0_7
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	emit_addr
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	leaq	.L.str.2(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_7
.LBB0_5:
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_7
.LBB0_6:
	movq	-8(%rbp), %rdi
	callq	node2s@PLT
	movl	%eax, %esi
	leaq	.L.str.3(%rip), %rdi
	callq	error@PLT
.LBB0_7:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lea %d(#rbp), #rax"
.L.str.1:
	.asciz	"lea %s(#rip), #rax"
.L.str.2:
	.asciz	"add $%d, #rax"
.L.str.3:
	.asciz	"internal error: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_addr
	.addrsig_sym ensure_lvar_init
	.addrsig_sym emit
	.addrsig_sym emit_expr
	.addrsig_sym error
	.addrsig_sym node2s
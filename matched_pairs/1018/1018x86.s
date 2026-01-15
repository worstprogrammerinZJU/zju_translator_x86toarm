	.text
	.p2align	4, 0x90                         # -- Begin function emit_save_literal
emit_save_literal:                      # @emit_save_literal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$9, %eax
	ja	.LBB0_8
# %bb.10:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movslq	%eax, %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str.2(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_5:
	movq	-8(%rbp), %rax
	movabsq	$4294967295, %rsi               # imm = 0xFFFFFFFF
	andq	(%rax), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str.3(%rip), %rdi
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	sarq	$32, %rsi
	movl	-20(%rbp), %edx
	addl	$4, %edx
	leaq	.L.str.3(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_6:
	movq	-8(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str.4(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_7:
	movq	-8(%rbp), %rax
	movabsq	$4294967295, %rsi               # imm = 0xFFFFFFFF
	andq	8(%rax), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str.3(%rip), %rdi
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	sarq	$32, %rsi
	movl	-20(%rbp), %edx
	addl	$4, %edx
	leaq	.L.str.3(%rip), %rdi
	callq	emit@PLT
	jmp	.LBB0_9
.LBB0_8:
	movq	-8(%rbp), %rdi
	callq	node2s@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	ty2s@PLT
	movl	-36(%rbp), %esi                 # 4-byte Reload
	movq	%rax, %rdx
	movl	-20(%rbp), %ecx
	leaq	.L.str.5(%rip), %rdi
	callq	error@PLT
.LBB0_9:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movb $%d, %d(#rbp)"
.L.str.1:
	.asciz	"movw $%d, %d(#rbp)"
.L.str.2:
	.asciz	"movl $%d, %d(#rbp)"
.L.str.3:
	.asciz	"movl $%lu, %d(#rbp)"
.L.str.4:
	.asciz	"movl $%u, %d(#rbp)"
.L.str.5:
	.asciz	"internal error: <%s> <%s> <%d>"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_save_literal
	.addrsig_sym emit
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym ty2s
	.text
	.p2align	4, 0x90                         # -- Begin function emit_assign_struct_ref
emit_assign_struct_ref:                 # @emit_assign_struct_ref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_5
# %bb.7:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-8(%rbp), %rdi
	callq	ensure_lvar_init@PLT
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	(%rcx), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movl	%eax, %esi
	callq	emit_lsave@PLT
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movl	%eax, %edx
	callq	emit_gsave@PLT
	jmp	.LBB0_6
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addl	(%rax), %edx
	callq	emit_assign_struct_ref
	jmp	.LBB0_6
.LBB0_4:
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	emit_expr@PLT
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movl	%eax, %esi
	callq	do_emit_assign_deref@PLT
	jmp	.LBB0_6
.LBB0_5:
	movq	-8(%rbp), %rdi
	callq	node2s@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
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
	.asciz	"internal error: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_assign_struct_ref
	.addrsig_sym ensure_lvar_init
	.addrsig_sym emit_lsave
	.addrsig_sym emit_gsave
	.addrsig_sym push
	.addrsig_sym emit_expr
	.addrsig_sym do_emit_assign_deref
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym SAVE
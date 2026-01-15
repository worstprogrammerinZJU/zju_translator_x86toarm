	.text
	.p2align	4, 0x90                         # -- Begin function emit_store
emit_store:                             # @emit_store
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
	subl	$3, %eax
	ja	.LBB0_5
# %bb.7:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-8(%rbp), %rdi
	callq	emit_assign_deref@PLT
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	xorl	%edx, %edx
	callq	emit_assign_struct_ref@PLT
	jmp	.LBB0_6
.LBB0_3:
	movq	-8(%rbp), %rdi
	callq	ensure_lvar_init@PLT
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-8(%rbp), %rax
	movl	12(%rax), %esi
	callq	emit_lsave@PLT
	jmp	.LBB0_6
.LBB0_4:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	xorl	%edx, %edx
	callq	emit_gsave@PLT
	jmp	.LBB0_6
.LBB0_5:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_store
	.addrsig_sym emit_assign_deref
	.addrsig_sym emit_assign_struct_ref
	.addrsig_sym ensure_lvar_init
	.addrsig_sym emit_lsave
	.addrsig_sym emit_gsave
	.addrsig_sym error
	.addrsig_sym SAVE
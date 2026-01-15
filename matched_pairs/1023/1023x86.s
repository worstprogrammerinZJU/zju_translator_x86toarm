	.text
	.globl	emit_toplevel                   # -- Begin function emit_toplevel
	.p2align	4, 0x90
emit_toplevel:                          # @emit_toplevel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$8, stackpos(%rip)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_FUNC(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	emit_func_prologue@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	emit_expr@PLT
	movb	$0, %al
	callq	emit_ret@PLT
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_DECL(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	emit_global_var@PLT
	jmp	.LBB0_5
.LBB0_4:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.long	0                               # 0x0
	.globl	AST_FUNC
	.p2align	3
AST_FUNC:
	.quad	0                               # 0x0
	.globl	AST_DECL
	.p2align	3
AST_DECL:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_func_prologue
	.addrsig_sym emit_expr
	.addrsig_sym emit_ret
	.addrsig_sym emit_global_var
	.addrsig_sym error
	.addrsig_sym stackpos
	.addrsig_sym AST_FUNC
	.addrsig_sym AST_DECL
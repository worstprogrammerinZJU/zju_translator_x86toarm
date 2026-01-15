	.text
	.p2align	4, 0x90                         # -- Begin function emit_args
emit_args:                              # @emit_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-28(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	emit_addr@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edi
	callq	push_struct@PLT
	movq	%rax, %rcx
	movslq	-12(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_8
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	emit_expr@PLT
	xorl	%edi, %edi
	callq	push_xmm@PLT
	movl	-12(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	emit_expr@PLT
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	movl	-12(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -12(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	movl	-12(%rbp), %eax
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
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_args
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym emit_addr
	.addrsig_sym push_struct
	.addrsig_sym is_flotype
	.addrsig_sym emit_expr
	.addrsig_sym push_xmm
	.addrsig_sym push
	.addrsig_sym SAVE
	.addrsig_sym KIND_STRUCT
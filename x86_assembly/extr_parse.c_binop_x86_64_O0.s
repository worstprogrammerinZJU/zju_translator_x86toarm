	.text
	.p2align	4, 0x90                         # -- Begin function binop
binop:                                  # @binop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	jne	.LBB0_7
# %bb.1:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	jne	.LBB0_7
# %bb.2:
	movl	-12(%rbp), %edi
	callq	valid_pointer_binop@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	cmpl	$45, -12(%rbp)
	jne	.LBB0_6
# %bb.5:
	movq	type_long(%rip), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_6:
	movq	type_int(%rip), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_7:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	jne	.LBB0_9
# %bb.8:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_9:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	jne	.LBB0_11
# %bb.10:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_arithtype@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_arithtype@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	usual_arith_conv@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	wrap@PLT
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	wrap@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	-52(%rbp), %esi                 # 4-byte Reload
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
.LBB0_12:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid pointer arith"
	.bss
	.globl	type_long
	.p2align	3
type_long:
	.quad	0
	.globl	type_int
	.p2align	3
type_int:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym binop
	.addrsig_sym valid_pointer_binop
	.addrsig_sym error
	.addrsig_sym ast_binop
	.addrsig_sym assert
	.addrsig_sym is_arithtype
	.addrsig_sym usual_arith_conv
	.addrsig_sym wrap
	.addrsig_sym KIND_PTR
	.addrsig_sym type_long
	.addrsig_sym type_int
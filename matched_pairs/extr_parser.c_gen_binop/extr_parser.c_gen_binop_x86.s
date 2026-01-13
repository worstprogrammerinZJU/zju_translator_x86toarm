	.text
	.p2align	4, 0x90                         # -- Begin function gen_binop
gen_binop:                              # @gen_binop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	constant_fold@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	block_is_noop@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	movq	$0, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$-37, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)                 # 8-byte Spill
	subl	$94, %eax
	ja	.LBB0_14
# %bb.16:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_4:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_5:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_6:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_7:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_8:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_9:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_10:
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_11:
	leaq	.L.str.8(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_12:
	leaq	.L.str.9(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -32(%rbp)
.LBB0_14:
	movq	-32(%rbp), %rdi
	callq	assert@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	-8(%rbp), %edi
	callq	gen_lambda@PLT
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	gen_lambda@PLT
	movl	-52(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	BLOCK@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	gen_call@PLT
	movl	%eax, -4(%rbp)
.LBB0_15:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_plus"
.L.str.1:
	.asciz	"_minus"
.L.str.2:
	.asciz	"_multiply"
.L.str.3:
	.asciz	"_divide"
.L.str.4:
	.asciz	"_mod"
.L.str.5:
	.asciz	"_equal"
.L.str.6:
	.asciz	"_notequal"
.L.str.7:
	.asciz	"_less"
.L.str.8:
	.asciz	"_greater"
.L.str.9:
	.asciz	"_lesseq"
.L.str.10:
	.asciz	"_greatereq"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_binop
	.addrsig_sym constant_fold
	.addrsig_sym block_is_noop
	.addrsig_sym assert
	.addrsig_sym gen_call
	.addrsig_sym BLOCK
	.addrsig_sym gen_lambda
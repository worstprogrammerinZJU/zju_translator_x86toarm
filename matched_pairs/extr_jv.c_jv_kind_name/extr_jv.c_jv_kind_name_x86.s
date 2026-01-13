	.text
	.globl	jv_kind_name                    # -- Begin function jv_kind_name
	.p2align	4, 0x90
jv_kind_name:                           # @jv_kind_name
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$7, %eax
	ja	.LBB0_9
# %bb.11:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_3:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_5:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_7:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_8:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	xorl	%edi, %edi
	callq	assert@PLT
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_10:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<invalid>"
.L.str.1:
	.asciz	"null"
.L.str.2:
	.asciz	"boolean"
.L.str.3:
	.asciz	"number"
.L.str.4:
	.asciz	"string"
.L.str.5:
	.asciz	"array"
.L.str.6:
	.asciz	"object"
.L.str.7:
	.asciz	"<unknown>"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
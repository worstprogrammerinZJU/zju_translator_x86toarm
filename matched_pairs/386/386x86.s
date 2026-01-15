	.text
	.globl	get_cost_string                 # -- Begin function get_cost_string
	.p2align	4, 0x90
get_cost_string:                        # @get_cost_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$5, %eax
	ja	.LBB0_7
# %bb.9:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_3:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_5:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_6:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_8:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"seg"
.L.str.1:
	.asciz	"sse"
.L.str.2:
	.asciz	"masked"
.L.str.3:
	.asciz	"smooth"
.L.str.4:
	.asciz	"L1"
.L.str.5:
	.asciz	"wgan"
	.section	".note.GNU-stack","",@progbits
	.addrsig
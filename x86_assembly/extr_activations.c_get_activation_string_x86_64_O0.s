	.text
	.globl	get_activation_string           # -- Begin function get_activation_string
	.p2align	4, 0x90
get_activation_string:                  # @get_activation_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$13, %eax
	ja	.LBB0_15
# %bb.18:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_2:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_3:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_4:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_5:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_6:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_7:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_8:
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_9:
	leaq	.L.str.8(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_10:
	leaq	.L.str.9(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_11:
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_12:
	leaq	.L.str.11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_13:
	leaq	.L.str.12(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_14:
	leaq	.L.str.13(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_17:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"logistic"
.L.str.1:
	.asciz	"loggy"
.L.str.2:
	.asciz	"relu"
.L.str.3:
	.asciz	"elu"
.L.str.4:
	.asciz	"selu"
.L.str.5:
	.asciz	"relie"
.L.str.6:
	.asciz	"ramp"
.L.str.7:
	.asciz	"linear"
.L.str.8:
	.asciz	"tanh"
.L.str.9:
	.asciz	"plse"
.L.str.10:
	.asciz	"leaky"
.L.str.11:
	.asciz	"stair"
.L.str.12:
	.asciz	"hardtan"
.L.str.13:
	.asciz	"lhtan"
	.section	".note.GNU-stack","",@progbits
	.addrsig
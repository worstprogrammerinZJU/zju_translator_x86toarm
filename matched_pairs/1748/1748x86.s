	.text
	.globl	get_layer_string                # -- Begin function get_layer_string
	.p2align	4, 0x90
get_layer_string:                       # @get_layer_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$22, %eax
	ja	.LBB0_24
# %bb.27:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_2:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_3:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_4:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_5:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_6:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_7:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_8:
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_9:
	leaq	.L.str.8(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_10:
	leaq	.L.str.9(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_11:
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_12:
	leaq	.L.str.11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_13:
	leaq	.L.str.12(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_14:
	leaq	.L.str.13(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_15:
	leaq	.L.str.14(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_16:
	leaq	.L.str.15(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_17:
	leaq	.L.str.16(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_18:
	leaq	.L.str.17(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_19:
	leaq	.L.str.18(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_20:
	leaq	.L.str.19(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_21:
	leaq	.L.str.20(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_22:
	leaq	.L.str.21(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_23:
	leaq	.L.str.22(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	leaq	.L.str.23(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_26:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_21-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_19-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_23-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"convolutional"
.L.str.1:
	.asciz	"activation"
.L.str.2:
	.asciz	"local"
.L.str.3:
	.asciz	"deconvolutional"
.L.str.4:
	.asciz	"connected"
.L.str.5:
	.asciz	"rnn"
.L.str.6:
	.asciz	"gru"
.L.str.7:
	.asciz	"lstm"
.L.str.8:
	.asciz	"crnn"
.L.str.9:
	.asciz	"maxpool"
.L.str.10:
	.asciz	"reorg"
.L.str.11:
	.asciz	"avgpool"
.L.str.12:
	.asciz	"softmax"
.L.str.13:
	.asciz	"detection"
.L.str.14:
	.asciz	"region"
.L.str.15:
	.asciz	"yolo"
.L.str.16:
	.asciz	"dropout"
.L.str.17:
	.asciz	"crop"
.L.str.18:
	.asciz	"cost"
.L.str.19:
	.asciz	"route"
.L.str.20:
	.asciz	"shortcut"
.L.str.21:
	.asciz	"normalization"
.L.str.22:
	.asciz	"batchnorm"
.L.str.23:
	.asciz	"none"
	.section	".note.GNU-stack","",@progbits
	.addrsig
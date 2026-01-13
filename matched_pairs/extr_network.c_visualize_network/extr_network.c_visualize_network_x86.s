	.text
	.globl	visualize_network               # -- Begin function visualize_network
	.p2align	4, 0x90
visualize_network:                      # @visualize_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp                      # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-288(%rbp), %rdi
	movl	-20(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	callq	sprintf@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpq	CONVOLUTIONAL(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-288(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-296(%rbp), %rdi
	callq	visualize_convolutional_layer@PLT
	movq	%rax, -16(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Layer %d"
	.bss
	.globl	CONVOLUTIONAL
	.p2align	3
CONVOLUTIONAL:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym visualize_convolutional_layer
	.addrsig_sym CONVOLUTIONAL
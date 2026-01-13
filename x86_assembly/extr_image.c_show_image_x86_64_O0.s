	.text
	.globl	show_image                      # -- Begin function show_image
	.p2align	4, 0x90
show_image:                             # @show_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	save_image@PLT
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Not compiled with OpenCV, saving to %s.png instead\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym save_image
	.addrsig_sym stderr
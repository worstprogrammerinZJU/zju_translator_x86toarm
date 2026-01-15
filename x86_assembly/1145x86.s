	.text
	.globl	show_image_layers               # -- Begin function show_image_layers
	.p2align	4, 0x90
show_image_layers:                      # @show_image_layers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp                      # imm = 0x130
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-288(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	.L.str(%rip), %rsi
	callq	sprintf@PLT
	movl	-20(%rbp), %esi
	movl	-8(%rbp), %edi
	callq	get_image_layer@PLT
	movl	%eax, -296(%rbp)
	leaq	-288(%rbp), %rsi
	movl	-296(%rbp), %edi
	movl	$1, %edx
	callq	show_image@PLT
	movl	-296(%rbp), %edi
	callq	free_image@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s - Layer %d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym get_image_layer
	.addrsig_sym show_image
	.addrsig_sym free_image
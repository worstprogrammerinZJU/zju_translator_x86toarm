	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pic_test_core
stbi__pic_test_core:                    # @stbi__pic_test_core
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	stbi__pic_is4@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movl	$0, -20(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$84, -20(%rbp)
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__pic_is4@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	$1, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"S\200\3664"
.L.str.1:
	.asciz	"PICT"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_test_core
	.addrsig_sym stbi__pic_is4
	.addrsig_sym stbi__get8
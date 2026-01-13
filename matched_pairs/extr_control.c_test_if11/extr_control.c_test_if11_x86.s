	.text
	.globl	test_if11                       # -- Begin function test_if11
	.p2align	4, 0x90
test_if11:                              # @test_if11
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:
	movl	$107, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
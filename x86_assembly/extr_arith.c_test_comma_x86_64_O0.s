	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function test_comma
.LCPI0_0:
	.quad	0x401c000000000000              # double 7
	.text
	.p2align	4, 0x90
test_comma:                             # @test_comma
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$7, %edi
	callq	expectf@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_comma
	.addrsig_sym expect
	.addrsig_sym expectf
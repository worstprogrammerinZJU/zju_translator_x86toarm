	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function testmain
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_2:
	.long	0x3f800000                      # float 1
	.text
	.globl	testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movss	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	callq	expectf@PLT
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movss	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	callq	expectf@PLT
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm0
	callq	expectd@PLT
	movl	$5, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$5, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	test_signedcast@PLT
	movb	$0, %al
	callq	test_unsignedcast@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cast"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expectf
	.addrsig_sym expectd
	.addrsig_sym expect
	.addrsig_sym test_signedcast
	.addrsig_sym test_unsignedcast
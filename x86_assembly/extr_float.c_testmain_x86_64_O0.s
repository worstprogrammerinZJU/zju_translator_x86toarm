	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function testmain
.LCPI0_0:
	.quad	0x4024000000000000              # double 10
.LCPI0_2:
	.quad	0x3fe6666666666666              # double 0.69999999999999996
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	0x41200000                      # float 10
	.text
	.globl	testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movb	$0, %al
	callq	std@PLT
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm0
	callq	expect@PLT
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"float"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym std
	.addrsig_sym expect
	.addrsig_sym expectf
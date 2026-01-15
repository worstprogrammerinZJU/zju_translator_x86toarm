	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function testmain
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_2:
	.quad	0x4010000000000000              # double 4
.LCPI0_3:
	.quad	0x4020000000000000              # double 8
	.text
	.globl	testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movb	$0, %al
	callq	test_builtin@PLT
	movl	$1, %edi
	movl	$2, %esi
	movl	$3, %edx
	movl	$5, %ecx
	movl	$8, %r8d
	callq	test_int@PLT
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	callq	test_float@PLT
	leaq	.L.str.1(%rip), %rdi
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$4, %esi
	leaq	.L.str.2(%rip), %rdx
	movl	$5, %ecx
	callq	test_mix@PLT
	movb	$0, %al
	callq	test_va_list@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"varargs"
.L.str.1:
	.asciz	"abc"
.L.str.2:
	.asciz	"d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_builtin
	.addrsig_sym test_int
	.addrsig_sym test_float
	.addrsig_sym test_mix
	.addrsig_sym test_va_list
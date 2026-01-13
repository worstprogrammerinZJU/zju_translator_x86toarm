	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function test_va_list
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0x4000000000000000              # double 2
	.text
	.p2align	4, 0x90
test_va_list:                           # @test_va_list
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	fmt@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	expect_string@PLT
	leaq	.L.str.2(%rip), %rdi
	movl	$3, %esi
	movb	$0, %al
	callq	fmt@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	expect_string@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	$3, %esi
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$6, %edx
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	leaq	.L.str.5(%rip), %rcx
	movb	$2, %al
	callq	fmt@PLT
	movl	%eax, %esi
	leaq	.L.str.3(%rip), %rdi
	callq	expect_string@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
.L.str.1:
	.asciz	"3"
.L.str.2:
	.asciz	"%d"
.L.str.3:
	.asciz	"3,1.0,6,2.0,abc"
.L.str.4:
	.asciz	"%d,%.1f,%d,%.1f,%s"
.L.str.5:
	.asciz	"abc"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_va_list
	.addrsig_sym expect_string
	.addrsig_sym fmt
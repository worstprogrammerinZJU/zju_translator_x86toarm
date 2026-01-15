	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function test_dunion
.LCPI0_0:
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	test_dunion
	.p2align	4, 0x90
test_dunion:                            # @test_dunion
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp                      # imm = 0x120
	movq	.L__const.test_dunion.a+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movups	.L__const.test_dunion.a(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	.L__const.test_dunion.dxa+16(%rip), %rax
	movq	%rax, -48(%rbp)
	movups	.L__const.test_dunion.dxa(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	.L__const.test_dunion.dya+16(%rip), %rax
	movq	%rax, -80(%rbp)
	movups	.L__const.test_dunion.dya(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	.L__const.test_dunion.dwa+16(%rip), %rax
	movq	%rax, -112(%rbp)
	movups	.L__const.test_dunion.dwa(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	movq	.L__const.test_dunion.dha+16(%rip), %rax
	movq	%rax, -144(%rbp)
	movups	.L__const.test_dunion.dha(%rip), %xmm0
	movaps	%xmm0, -160(%rbp)
	movq	.L__const.test_dunion.b+16(%rip), %rax
	movq	%rax, -176(%rbp)
	movups	.L__const.test_dunion.b(%rip), %xmm0
	movaps	%xmm0, -192(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rcx, 40(%rax)
	movaps	-192(%rbp), %xmm0
	movups	%xmm0, 24(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movaps	-32(%rbp), %xmm0
	movups	%xmm0, (%rax)
	callq	dunion@PLT
	movlpd	%xmm0, -208(%rbp)
	movlpd	%xmm1, -200(%rbp)
	movss	-208(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-204(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	-200(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	-196(%rbp), %xmm3               # xmm3 = mem[0],zero,zero,zero
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	leaq	-32(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	box_union@PLT
	movss	%xmm0, -212(%rbp)
	leaq	-64(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	box_union@PLT
	movss	%xmm0, -216(%rbp)
	leaq	-96(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	box_union@PLT
	movss	%xmm0, -220(%rbp)
	leaq	-128(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	box_union@PLT
	movss	%xmm0, -224(%rbp)
	leaq	-160(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	box_union@PLT
	movss	%xmm0, -228(%rbp)
	movss	-216(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-212(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -216(%rbp)
	movss	-220(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-212(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -220(%rbp)
	movss	-224(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-212(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -224(%rbp)
	movss	-228(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-212(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -228(%rbp)
	movss	-216(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-220(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	-224(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	-228(%rbp), %xmm3               # xmm3 = mem[0],zero,zero,zero
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	3
.L__const.test_dunion.a:
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_dunion.dxa:
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_dunion.dya:
	.quad	0x0000000000000000              # double 0
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_dunion.dwa:
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_dunion.dha:
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_dunion.b:
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x3fe0000000000000              # double 0.5
	.long	0                               # 0x0
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Union: %f %f %f %f\n"
.L.str.1:
	.asciz	"Union Manual %f %f %f %f\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dunion
	.addrsig_sym printf
	.addrsig_sym box_union
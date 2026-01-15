	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function test_box
.LCPI0_0:
	.quad	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	0x3f800000                      # float 1
	.text
	.globl	test_box
	.p2align	4, 0x90
test_box:                               # @test_box
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp                      # imm = 0x120
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -233(%rbp)                 # 1-byte Spill
	callq	test_dintersect@PLT
                                        # kill: def $ecx killed $eax
	movb	-233(%rbp), %al                 # 1-byte Reload
	callq	test_dunion@PLT
	movq	.L__const.test_box.a+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movups	.L__const.test_box.a(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	.L__const.test_box.dxa+16(%rip), %rax
	movq	%rax, -48(%rbp)
	movups	.L__const.test_box.dxa(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	.L__const.test_box.dya+16(%rip), %rax
	movq	%rax, -80(%rbp)
	movups	.L__const.test_box.dya(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	.L__const.test_box.dwa+16(%rip), %rax
	movq	%rax, -112(%rbp)
	movups	.L__const.test_box.dwa(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	movq	.L__const.test_box.dha+16(%rip), %rax
	movq	%rax, -144(%rbp)
	movups	.L__const.test_box.dha(%rip), %xmm0
	movaps	%xmm0, -160(%rbp)
	movq	.L__const.test_box.b+16(%rip), %rax
	movq	%rax, -176(%rbp)
	movups	.L__const.test_box.b(%rip), %xmm0
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
	callq	box_iou@PLT
	movss	%xmm0, -196(%rbp)
	movss	-196(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -196(%rbp)
	movss	-196(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	leaq	.L.str(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	movq	-176(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rcx, 40(%rax)
	movaps	-192(%rbp), %xmm0
	movups	%xmm0, 24(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movaps	-32(%rbp), %xmm0
	movups	%xmm0, (%rax)
	callq	diou@PLT
	movlpd	%xmm0, -216(%rbp)
	movlpd	%xmm1, -208(%rbp)
	movss	-216(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-212(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-208(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	-204(%rbp), %xmm3               # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	leaq	.L.str.1(%rip), %rdi
	movb	$4, %al
	callq	printf@PLT
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
	callq	box_iou@PLT
	movss	%xmm0, -220(%rbp)
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
	callq	box_iou@PLT
	movss	%xmm0, -224(%rbp)
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
	callq	box_iou@PLT
	movss	%xmm0, -228(%rbp)
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
	callq	box_iou@PLT
	movss	%xmm0, -232(%rbp)
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-220(%rbp), %xmm0
	movss	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	subss	-220(%rbp), %xmm2
	movss	-196(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -220(%rbp)
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-224(%rbp), %xmm0
	movss	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	subss	-224(%rbp), %xmm2
	movss	-196(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -224(%rbp)
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-228(%rbp), %xmm0
	movss	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	subss	-228(%rbp), %xmm2
	movss	-196(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -228(%rbp)
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-232(%rbp), %xmm0
	movss	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	subss	-232(%rbp), %xmm2
	movss	-196(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -232(%rbp)
	movss	-220(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-224(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-228(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	-232(%rbp), %xmm3               # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	leaq	.L.str.2(%rip), %rdi
	movb	$4, %al
	callq	printf@PLT
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	3
.L__const.test_box.a:
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_box.dxa:
	.quad	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_box.dya:
	.quad	0x0000000000000000              # double 0
	.quad	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_box.dwa:
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_box.dha:
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.p2align	3
.L__const.test_box.b:
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f\n"
.L.str.1:
	.asciz	"%f %f %f %f\n"
.L.str.2:
	.asciz	"manual %f %f %f %f\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_dintersect
	.addrsig_sym test_dunion
	.addrsig_sym box_iou
	.addrsig_sym printf
	.addrsig_sym diou
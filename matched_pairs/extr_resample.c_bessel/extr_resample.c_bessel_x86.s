	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function bessel
.LCPI0_0:
	.quad	0x402e000000000000              # double 15
.LCPI0_1:
	.quad	0x3fb1111111111111              # double 0.066666666666666666
.LCPI0_2:
	.quad	0x3ff0000000000000              # double 1
	.text
	.p2align	4, 0x90
bessel:                                 # @bessel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_2
	jp	.LBB0_2
# %bb.1:
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	fabs@PLT
	movsd	%xmm0, -16(%rbp)
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB0_4
# %bb.3:
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	bessel.p1(%rip), %rdi
	callq	FF_ARRAY_ELEMS@PLT
	movl	%eax, %esi
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	bessel.p1(%rip), %rdi
	callq	eval_poly@PLT
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	leaq	bessel.q1(%rip), %rdi
	callq	FF_ARRAY_ELEMS@PLT
	movl	%eax, %esi
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	bessel.q1(%rip), %rdi
	callq	eval_poly@PLT
	movaps	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	bessel.p2(%rip), %rdi
	callq	FF_ARRAY_ELEMS@PLT
	movl	%eax, %esi
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	bessel.p2(%rip), %rdi
	callq	eval_poly@PLT
	movsd	%xmm0, -64(%rbp)                # 8-byte Spill
	leaq	bessel.q2(%rip), %rdi
	callq	FF_ARRAY_ELEMS@PLT
	movl	%eax, %esi
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	bessel.q2(%rip), %rdi
	callq	eval_poly@PLT
	movaps	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	exp@PLT
	movsd	%xmm0, -56(%rbp)                # 8-byte Spill
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	sqrt@PLT
	movaps	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB0_5:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
bessel.p1:
	.quad	0xc31fbda33ba182b6              # double -2233558263947437.5
	.quad	0xc2ff4ae214a88484              # double -550503696730184.25
	.quad	0xc2bdf57638ce8fc0              # double -32940087627407.75
	.quad	0xc268b769c1eee488              # double -849251012471.1416
	.quad	0xc2063070a3c7e1c4              # double -11912746104.985237
	.quad	0xc1989698ac597a18              # double -103130667.08737981
	.quad	0xc1222c008538bc2b              # double -595456.26019847894
	.quad	0xc0a2d90a0762eece              # double -2412.5195876041898
	.quad	0xc01c5fc79279e70c              # double -7.0935347449210546
	.quad	0xbf8fa655c9abb197              # double -0.01545397779178685
	.quad	0xbefa653af846d843              # double -2.5172644670688976E-5
	.quad	0xbe60624173575d24              # double -3.051722645045107E-8
	.quad	0xbdbd83c251e3fb89              # double -2.6843448573468484E-11
	.quad	0xbd11fe902e4c85f5              # double -1.5982226675653185E-14
	.quad	0xbc5834ac6df8a5d9              # double -5.2487866627945701E-18
	.p2align	4
bessel.q1:
	.quad	0xc31fbda33ba182b6              # double -2233558263947437.5
	.quad	0x429cb049be3f8c67              # double 7885869256675.1005
	.quad	0xc206bcc8882e78ca              # double -12207067397.808979
	.quad	0x4163caef21dba530              # double 10377081.058062166
	.quad	0xc0b2f4c18a653933              # double -4852.7560179962775
	.quad	0x3ff0000000000000              # double 1
	.p2align	4
bessel.p2:
	.quad	0xbf2d1c86ffa1268e              # double -2.2210262233306573E-4
	.quad	0x3f8ac313ab94d944              # double 0.013067392038106924
	.quad	0xbfdc9bc7aeb177d8              # double -0.44700805721174453
	.quad	0x40164512182a0319              # double 5.567451837124076
	.quad	0xc037849816897026              # double -23.517945679239482
	.quad	0x403f9c7fa6f99eb1              # double 31.611322818701129
	.quad	0xc02337cf22cd75c0              # double -9.6090021968656174
	.p2align	4
bessel.q2:
	.quad	0xbf4216093761a9a1              # double -5.5194330231005475E-4
	.quad	0x3fa0aa178175aea7              # double 0.032547697594819618
	.quad	0xbff1d7c2b44d9e48              # double -1.1151759188741313
	.quad	0x402bf716bcfc57ba              # double 13.982595353892851
	.quad	0xc04e1d2f2bf60aa2              # double -60.228002066743343
	.quad	0x405562883454d27b              # double 85.539563258012933
	.quad	0xc03f725a4b3b25ef              # double -31.446690275135492
	.quad	0x3ff0000000000000              # double 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bessel
	.addrsig_sym fabs
	.addrsig_sym eval_poly
	.addrsig_sym FF_ARRAY_ELEMS
	.addrsig_sym exp
	.addrsig_sym sqrt
	.addrsig_sym bessel.p1
	.addrsig_sym bessel.q1
	.addrsig_sym bessel.p2
	.addrsig_sym bessel.q2
	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function bessel
.LCPI0_0:
	.xword	0x3fb1111111111111              // double 0.066666666666666666
	.text
	.p2align	2
	.type	bessel,@function
bessel:                                 // @bessel
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	d0, [x29, #-16]
	ldur	d0, [x29, #-16]
	fcmp	d0, #0.0
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	fmov	d0, #1.00000000
	stur	d0, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldur	d0, [x29, #-16]
	bl	fabs
	stur	d0, [x29, #-16]
	ldur	d0, [x29, #-16]
	fmov	d1, #15.00000000
	fcmp	d0, d1
	b.hi	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	d0, [x29, #-16]
	ldur	d1, [x29, #-16]
	fmul	d0, d0, d1
	stur	d0, [x29, #-24]
	adrp	x0, bessel.p1
	add	x0, x0, :lo12:bessel.p1
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	bl	FF_ARRAY_ELEMS
	mov	w1, w0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldur	d0, [x29, #-24]
	bl	eval_poly
	str	d0, [sp, #48]                   // 8-byte Folded Spill
	adrp	x0, bessel.q1
	add	x0, x0, :lo12:bessel.q1
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	bl	FF_ARRAY_ELEMS
	mov	w1, w0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldur	d0, [x29, #-24]
	bl	eval_poly
	fmov	d1, d0
	ldr	d0, [sp, #48]                   // 8-byte Folded Reload
	fdiv	d0, d0, d1
	stur	d0, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldur	d1, [x29, #-16]
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fsub	d0, d0, d1
	stur	d0, [x29, #-24]
	adrp	x0, bessel.p2
	add	x0, x0, :lo12:bessel.p2
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	FF_ARRAY_ELEMS
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	d0, [x29, #-24]
	bl	eval_poly
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	adrp	x0, bessel.q2
	add	x0, x0, :lo12:bessel.q2
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	FF_ARRAY_ELEMS
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	d0, [x29, #-24]
	bl	eval_poly
	fmov	d1, d0
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	fdiv	d0, d0, d1
	stur	d0, [x29, #-32]
	ldur	d0, [x29, #-16]
	bl	exp
	str	d0, [sp, #24]                   // 8-byte Folded Spill
	ldur	d0, [x29, #-16]
	bl	sqrt
	fmov	d1, d0
	ldr	d0, [sp, #24]                   // 8-byte Folded Reload
	fdiv	d0, d0, d1
	stur	d0, [x29, #-40]
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-32]
	fmul	d0, d0, d1
	stur	d0, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	bessel, .Lfunc_end0-bessel
                                        // -- End function
	.type	bessel.p1,@object               // @bessel.p1
	.section	.rodata,"a",@progbits
	.p2align	3
bessel.p1:
	.xword	0xc31fbda33ba182b6              // double -2233558263947437.5
	.xword	0xc2ff4ae214a88484              // double -550503696730184.25
	.xword	0xc2bdf57638ce8fc0              // double -32940087627407.75
	.xword	0xc268b769c1eee488              // double -849251012471.1416
	.xword	0xc2063070a3c7e1c4              // double -11912746104.985237
	.xword	0xc1989698ac597a18              // double -103130667.08737981
	.xword	0xc1222c008538bc2b              // double -595456.26019847894
	.xword	0xc0a2d90a0762eece              // double -2412.5195876041898
	.xword	0xc01c5fc79279e70c              // double -7.0935347449210546
	.xword	0xbf8fa655c9abb197              // double -0.01545397779178685
	.xword	0xbefa653af846d843              // double -2.5172644670688976E-5
	.xword	0xbe60624173575d24              // double -3.051722645045107E-8
	.xword	0xbdbd83c251e3fb89              // double -2.6843448573468484E-11
	.xword	0xbd11fe902e4c85f5              // double -1.5982226675653185E-14
	.xword	0xbc5834ac6df8a5d9              // double -5.2487866627945701E-18
	.size	bessel.p1, 120
	.type	bessel.q1,@object               // @bessel.q1
	.p2align	3
bessel.q1:
	.xword	0xc31fbda33ba182b6              // double -2233558263947437.5
	.xword	0x429cb049be3f8c67              // double 7885869256675.1005
	.xword	0xc206bcc8882e78ca              // double -12207067397.808979
	.xword	0x4163caef21dba530              // double 10377081.058062166
	.xword	0xc0b2f4c18a653933              // double -4852.7560179962775
	.xword	0x3ff0000000000000              // double 1
	.size	bessel.q1, 48
	.type	bessel.p2,@object               // @bessel.p2
	.p2align	3
bessel.p2:
	.xword	0xbf2d1c86ffa1268e              // double -2.2210262233306573E-4
	.xword	0x3f8ac313ab94d944              // double 0.013067392038106924
	.xword	0xbfdc9bc7aeb177d8              // double -0.44700805721174453
	.xword	0x40164512182a0319              // double 5.567451837124076
	.xword	0xc037849816897026              // double -23.517945679239482
	.xword	0x403f9c7fa6f99eb1              // double 31.611322818701129
	.xword	0xc02337cf22cd75c0              // double -9.6090021968656174
	.size	bessel.p2, 56
	.type	bessel.q2,@object               // @bessel.q2
	.p2align	3
bessel.q2:
	.xword	0xbf4216093761a9a1              // double -5.5194330231005475E-4
	.xword	0x3fa0aa178175aea7              // double 0.032547697594819618
	.xword	0xbff1d7c2b44d9e48              // double -1.1151759188741313
	.xword	0x402bf716bcfc57ba              // double 13.982595353892851
	.xword	0xc04e1d2f2bf60aa2              // double -60.228002066743343
	.xword	0x405562883454d27b              // double 85.539563258012933
	.xword	0xc03f725a4b3b25ef              // double -31.446690275135492
	.xword	0x3ff0000000000000              // double 1
	.size	bessel.q2, 64
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
	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function set_tm_wday
.LCPI0_0:
	.xword	0x4004cccccccccccd              // double 2.6000000000000001
.LCPI0_1:
	.xword	0xbfc999999999999a              // double -0.20000000000000001
	.text
	.p2align	2
	.type	set_tm_wday,@function
set_tm_wday:                            // @set_tm_wday
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	add	w8, w8, #1900
	mov	w10, #100
	sdiv	w8, w8, w10
	stur	w8, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	add	w8, w8, #1900
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	subs	w8, w8, #2
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-16]
	subs	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	subs	w8, w8, #1
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-20]
	add	w8, w8, #12
	stur	w8, [x29, #-20]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	s1, [x29, #-20]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	adrp	x8, .LCPI0_1
	ldr	d2, [x8, :lo12:.LCPI0_1]
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmadd	d0, d0, d1, d2
	fcvtzs	w0, d0
	bl	floor
	ldr	w8, [sp]                        // 4-byte Folded Reload
	mov	w9, w0
	add	w8, w8, w9
	ldur	w9, [x29, #-16]
	add	w8, w8, w9
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	s1, [x29, #-16]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fmov	d1, #4.00000000
	str	d1, [sp, #8]                    // 8-byte Folded Spill
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	bl	floor
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	d1, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	add	w8, w8, w9
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	s2, [x29, #-12]
                                        // implicit-def: $d0
	fmov	s0, s2
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	bl	floor
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	mov	w9, w0
	add	w8, w8, w9
	ldur	w10, [x29, #-12]
	mov	w9, #2
	mul	w9, w9, w10
	subs	w8, w8, w9
	mov	w10, #7
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #24]
	add	w8, w8, #7
	str	w8, [sp, #24]
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	set_tm_wday, .Lfunc_end0-set_tm_wday
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_tm_wday
	.addrsig_sym floor
	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function mixed
.LCPI0_0:
	.xword	0x4043800000000000              // double 39
.LCPI0_1:
	.xword	0x4042800000000000              // double 37
.LCPI0_2:
	.xword	0x4041800000000000              // double 35
.LCPI0_3:
	.xword	0x4040800000000000              // double 33
	.text
	.p2align	2
	.type	mixed,@function
mixed:                                  // @mixed
// %bb.0:
	sub	sp, sp, #272
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	stp	x28, x27, [sp, #192]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #208]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #224]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #240]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #256]            // 16-byte Folded Spill
	add	x29, sp, #176
	mov	w30, w2
	mov	w28, w3
	mov	w27, w4
	mov	w26, w5
	mov	w25, w6
	mov	w24, w7
	ldr	w23, [x29, #96]
	ldr	w22, [x29, #104]
	ldr	w21, [x29, #112]
	ldr	w20, [x29, #120]
	ldr	w19, [x29, #128]
	ldr	w7, [x29, #136]
	ldr	w6, [x29, #144]
	ldr	w5, [x29, #152]
	ldr	w4, [x29, #160]
	ldr	w3, [x29, #168]
	ldr	w2, [x29, #176]
	ldr	w8, [x29, #184]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	w8, [x29, #192]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	w18, [x29, #200]
	ldr	w17, [x29, #208]
	ldr	w16, [x29, #216]
	ldr	w15, [x29, #224]
	ldr	w14, [x29, #232]
	ldr	w13, [x29, #240]
	ldr	w12, [x29, #248]
	ldr	w11, [x29, #256]
	ldr	w10, [x29, #264]
	ldr	w9, [x29, #272]
	ldr	w8, [x29, #280]
	stur	s0, [x29, #-12]
	stur	w0, [x29, #-16]
	ldr	w0, [sp]                        // 4-byte Folded Reload
	stur	s1, [x29, #-20]
	stur	w1, [x29, #-24]
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	stur	s2, [x29, #-28]
	stur	w30, [x29, #-32]
	stur	s3, [x29, #-36]
	stur	w28, [x29, #-40]
	stur	s4, [x29, #-44]
	stur	w27, [x29, #-48]
	stur	s5, [x29, #-52]
	stur	w26, [x29, #-56]
	stur	s6, [x29, #-60]
	stur	w25, [x29, #-64]
	stur	s7, [x29, #-68]
	stur	w24, [x29, #-72]
	stur	w23, [x29, #-76]
	stur	w22, [x29, #-80]
	stur	w21, [x29, #-84]
	str	w20, [sp, #88]
	str	w19, [sp, #84]
	str	w7, [sp, #80]
	str	w6, [sp, #76]
	str	w5, [sp, #72]
	str	w4, [sp, #68]
	str	w3, [sp, #64]
	str	w2, [sp, #60]
	str	w1, [sp, #56]
	str	w0, [sp, #52]
	str	w18, [sp, #48]
	str	w17, [sp, #44]
	str	w16, [sp, #40]
	str	w15, [sp, #36]
	str	w14, [sp, #32]
	str	w13, [sp, #28]
	str	w12, [sp, #24]
	str	w11, [sp, #20]
	str	w10, [sp, #16]
	str	w9, [sp, #12]
	str	w8, [sp, #8]
	ldur	s1, [x29, #-12]
	fmov	d0, #1.00000000
	bl	expectf
	ldur	w1, [x29, #-16]
	mov	w0, #2
	bl	expect
	ldur	s1, [x29, #-20]
	fmov	d0, #3.00000000
	bl	expectf
	ldur	w1, [x29, #-24]
	mov	w0, #4
	bl	expect
	ldur	s1, [x29, #-28]
	fmov	d0, #5.00000000
	bl	expectf
	ldur	w1, [x29, #-32]
	mov	w0, #6
	bl	expect
	ldur	s1, [x29, #-36]
	fmov	d0, #7.00000000
	bl	expectf
	ldur	w1, [x29, #-40]
	mov	w0, #8
	bl	expect
	ldur	s1, [x29, #-44]
	fmov	d0, #9.00000000
	bl	expectf
	ldur	w1, [x29, #-48]
	mov	w0, #10
	bl	expect
	ldur	s1, [x29, #-52]
	fmov	d0, #11.00000000
	bl	expectf
	ldur	w1, [x29, #-56]
	mov	w0, #12
	bl	expect
	ldur	s1, [x29, #-60]
	fmov	d0, #13.00000000
	bl	expectf
	ldur	w1, [x29, #-64]
	mov	w0, #14
	bl	expect
	ldur	s1, [x29, #-68]
	fmov	d0, #15.00000000
	bl	expectf
	ldur	w1, [x29, #-72]
	mov	w0, #16
	bl	expect
	ldur	s1, [x29, #-76]
	fmov	d0, #17.00000000
	bl	expectf
	ldur	w1, [x29, #-80]
	mov	w0, #18
	bl	expect
	ldur	s1, [x29, #-84]
	fmov	d0, #19.00000000
	bl	expectf
	ldr	w1, [sp, #88]
	mov	w0, #20
	bl	expect
	ldr	s1, [sp, #84]
	fmov	d0, #21.00000000
	bl	expectf
	ldr	w1, [sp, #80]
	mov	w0, #22
	bl	expect
	ldr	s1, [sp, #76]
	fmov	d0, #23.00000000
	bl	expectf
	ldr	w1, [sp, #72]
	mov	w0, #24
	bl	expect
	ldr	s1, [sp, #68]
	fmov	d0, #25.00000000
	bl	expectf
	ldr	w1, [sp, #64]
	mov	w0, #26
	bl	expect
	ldr	s1, [sp, #60]
	fmov	d0, #27.00000000
	bl	expectf
	ldr	w1, [sp, #56]
	mov	w0, #28
	bl	expect
	ldr	s1, [sp, #52]
	fmov	d0, #29.00000000
	bl	expectf
	ldr	w1, [sp, #48]
	mov	w0, #30
	bl	expect
	ldr	s1, [sp, #44]
	fmov	d0, #31.00000000
	bl	expectf
	ldr	w1, [sp, #40]
	mov	w0, #32
	bl	expect
	ldr	s1, [sp, #36]
	adrp	x8, .LCPI0_3
	ldr	d0, [x8, :lo12:.LCPI0_3]
	bl	expectf
	ldr	w1, [sp, #32]
	mov	w0, #34
	bl	expect
	ldr	s1, [sp, #28]
	adrp	x8, .LCPI0_2
	ldr	d0, [x8, :lo12:.LCPI0_2]
	bl	expectf
	ldr	w1, [sp, #24]
	mov	w0, #36
	bl	expect
	ldr	s1, [sp, #20]
	adrp	x8, .LCPI0_1
	ldr	d0, [x8, :lo12:.LCPI0_1]
	bl	expectf
	ldr	w1, [sp, #16]
	mov	w0, #38
	bl	expect
	ldr	s1, [sp, #12]
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	bl	expectf
	ldr	w1, [sp, #8]
	mov	w0, #40
	bl	expect
	ldp	x20, x19, [sp, #256]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #240]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #224]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #208]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #192]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #272
	ret
.Lfunc_end0:
	.size	mixed, .Lfunc_end0-mixed
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mixed
	.addrsig_sym expectf
	.addrsig_sym expect
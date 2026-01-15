	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function testmain
.LCPI0_0:
	.xword	0x4043800000000000              // double 39
.LCPI0_1:
	.xword	0x4042800000000000              // double 37
.LCPI0_2:
	.xword	0x4041800000000000              // double 35
.LCPI0_3:
	.xword	0x4040800000000000              // double 33
	.text
	.globl	testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	sub	sp, sp, #336
	stp	x29, x30, [sp, #304]            // 16-byte Folded Spill
	str	x28, [sp, #320]                 // 8-byte Folded Spill
	add	x29, sp, #304
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	mov	x9, sp
	mov	w8, #9
	str	w8, [x9]
	mov	w0, #1
	mov	w1, #2
	stur	w1, [x29, #-4]                  // 4-byte Folded Spill
	mov	w2, #3
	mov	w3, #4
	stur	w3, [x29, #-76]                 // 4-byte Folded Spill
	mov	w4, #5
	mov	w5, #6
	stur	w5, [x29, #-60]                 // 4-byte Folded Spill
	mov	w6, #7
	mov	w7, #8
	stur	w7, [x29, #-44]                 // 4-byte Folded Spill
	bl	many_ints
	mov	x8, sp
	fmov	d0, #9.00000000
	stur	d0, [x29, #-40]                 // 8-byte Folded Spill
	str	d0, [x8]
	fmov	d0, #10.00000000
	str	d0, [x8, #8]
	fmov	d0, #11.00000000
	stur	d0, [x29, #-32]                 // 8-byte Folded Spill
	str	d0, [x8, #16]
	fmov	d0, #12.00000000
	str	d0, [x8, #24]
	fmov	d0, #13.00000000
	stur	d0, [x29, #-24]                 // 8-byte Folded Spill
	str	d0, [x8, #32]
	fmov	d0, #14.00000000
	str	d0, [x8, #40]
	fmov	d0, #15.00000000
	stur	d0, [x29, #-16]                 // 8-byte Folded Spill
	str	d0, [x8, #48]
	fmov	d0, #16.00000000
	str	d0, [x8, #56]
	fmov	d0, #17.00000000
	stur	d0, [x29, #-104]                // 8-byte Folded Spill
	str	d0, [x8, #64]
	fmov	d0, #1.00000000
	stur	d0, [x29, #-96]                 // 8-byte Folded Spill
	fmov	d1, #2.00000000
	fmov	d2, #3.00000000
	stur	d2, [x29, #-88]                 // 8-byte Folded Spill
	fmov	d3, #4.00000000
	fmov	d4, #5.00000000
	stur	d4, [x29, #-72]                 // 8-byte Folded Spill
	fmov	d5, #6.00000000
	fmov	d6, #7.00000000
	stur	d6, [x29, #-56]                 // 8-byte Folded Spill
	fmov	d7, #8.00000000
	bl	many_floats
	ldur	d16, [x29, #-104]               // 8-byte Folded Reload
	ldur	d0, [x29, #-96]                 // 8-byte Folded Reload
	ldur	d1, [x29, #-88]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-76]                 // 4-byte Folded Reload
	ldur	d2, [x29, #-72]                 // 8-byte Folded Reload
	ldur	w2, [x29, #-60]                 // 4-byte Folded Reload
	ldur	d3, [x29, #-56]                 // 8-byte Folded Reload
	ldur	w3, [x29, #-44]                 // 4-byte Folded Reload
	ldur	d4, [x29, #-40]                 // 8-byte Folded Reload
	ldur	d5, [x29, #-32]                 // 8-byte Folded Reload
	ldur	d6, [x29, #-24]                 // 8-byte Folded Reload
	ldur	d7, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-4]                  // 4-byte Folded Reload
	mov	x9, sp
	str	d16, [x9]
	mov	w8, #18
	str	w8, [x9, #8]
	fmov	d16, #19.00000000
	str	d16, [x9, #16]
	mov	w8, #20
	str	w8, [x9, #24]
	fmov	d16, #21.00000000
	str	d16, [x9, #32]
	mov	w8, #22
	str	w8, [x9, #40]
	fmov	d16, #23.00000000
	str	d16, [x9, #48]
	mov	w8, #24
	str	w8, [x9, #56]
	fmov	d16, #25.00000000
	str	d16, [x9, #64]
	mov	w8, #26
	str	w8, [x9, #72]
	fmov	d16, #27.00000000
	str	d16, [x9, #80]
	mov	w8, #28
	str	w8, [x9, #88]
	fmov	d16, #29.00000000
	str	d16, [x9, #96]
	mov	w8, #30
	str	w8, [x9, #104]
	fmov	d16, #31.00000000
	str	d16, [x9, #112]
	mov	w8, #32
	str	w8, [x9, #120]
	adrp	x8, .LCPI0_3
	ldr	d16, [x8, :lo12:.LCPI0_3]
	str	d16, [x9, #128]
	mov	w8, #34
	str	w8, [x9, #136]
	adrp	x8, .LCPI0_2
	ldr	d16, [x8, :lo12:.LCPI0_2]
	str	d16, [x9, #144]
	mov	w8, #36
	str	w8, [x9, #152]
	adrp	x8, .LCPI0_1
	ldr	d16, [x8, :lo12:.LCPI0_1]
	str	d16, [x9, #160]
	mov	w8, #38
	str	w8, [x9, #168]
	adrp	x8, .LCPI0_0
	ldr	d16, [x8, :lo12:.LCPI0_0]
	str	d16, [x9, #176]
	mov	w8, #40
	str	w8, [x9, #184]
	mov	w4, #10
	mov	w5, #12
	mov	w6, #14
	mov	w7, #16
	bl	mixed
	ldr	x28, [sp, #320]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #304]            // 16-byte Folded Reload
	add	sp, sp, #336
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"function argument"
	.size	.L.str, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym many_ints
	.addrsig_sym many_floats
	.addrsig_sym mixed
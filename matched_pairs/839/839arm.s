	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #352
	stp	x29, x30, [sp, #320]            // 16-byte Folded Spill
	str	x28, [sp, #336]                 // 8-byte Folded Spill
	add	x29, sp, #320
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, .L__const.main.startpack
	add	x8, x8, :lo12:.L__const.main.startpack
	ldr	q0, [x8]
	stur	q0, [x29, #-80]
	stur	wzr, [x29, #-84]
	adrp	x8, .L__const.main.ratepack
	add	x8, x8, :lo12:.L__const.main.ratepack
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	mov	w8, #1
	stur	w8, [x29, #-100]
	adrp	x8, .L__const.main.yearspack
	add	x8, x8, :lo12:.L__const.main.yearspack
	ldr	x8, [x8]
	stur	x8, [x29, #-112]
	stur	wzr, [x29, #-116]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_2
.LBB0_2:
	adrp	x8, DEC_INIT_BASE
	ldr	w1, [x8, :lo12:DEC_INIT_BASE]
	sub	x0, x29, #64
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	bl	decContextDefault
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	stur	xzr, [x29, #-56]
	mov	w8, #25
	stur	w8, [x29, #-64]
	sub	x0, x29, #20
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	decNumberFromString
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	sub	x0, x29, #24
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	decNumberFromString
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	sub	x0, x29, #28
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	decNumberFromString
	sub	x0, x29, #80
	mov	w1, #16
	sub	x2, x29, #84
	sub	x3, x29, #32
	str	x3, [sp, #48]                   // 8-byte Folded Spill
	bl	decPackedToNumber
	sub	x0, x29, #96
	mov	w1, #8
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	sub	x2, x29, #100
	sub	x3, x29, #36
	str	x3, [sp, #40]                   // 8-byte Folded Spill
	bl	decPackedToNumber
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	sub	x0, x29, #112
	sub	x2, x29, #116
	sub	x3, x29, #40
	str	x3, [sp, #32]                   // 8-byte Folded Spill
	bl	decPackedToNumber
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	mov	x0, x1
	bl	decNumberDivide
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	mov	x0, x1
	bl	decNumberAdd
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	mov	x0, x1
	bl	decNumberPower
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldr	x2, [sp, #48]                   // 8-byte Folded Reload
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	sub	x0, x29, #44
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	bl	decNumberMultiply
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	ldr	x3, [sp, #64]                   // 8-byte Folded Reload
	ldr	x1, [sp, #72]                   // 8-byte Folded Reload
	mov	x0, x1
	bl	decNumberRescale
	ldr	x3, [sp, #72]                   // 8-byte Folded Reload
	add	x0, sp, #140
	mov	w1, #64
	add	x2, sp, #136
	bl	decPackedFromNumber
	str	wzr, [sp, #80]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #80]
	subs	w8, w8, #16
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #80]
	mov	w9, #3
	mul	w9, w8, w9
	add	x8, sp, #87
	add	x0, x8, w9, sxtw
	ldrsw	x9, [sp, #80]
	add	x8, sp, #140
	ldr	w2, [x8, x9, lsl #2]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	sprintf
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #80]
	add	w8, w8, #1
	str	w8, [sp, #80]
	b	.LBB0_3
.LBB0_6:
	ldrsw	x2, [sp, #136]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	add	x1, sp, #87
	bl	printf
	mov	w0, wzr
	ldr	x28, [sp, #336]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #320]            // 16-byte Folded Reload
	add	sp, sp, #352
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	.L__const.main.startpack,@object // @__const.main.startpack
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.L__const.main.startpack:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	12                              // 0xc
	.size	.L__const.main.startpack, 16
	.type	.L__const.main.ratepack,@object // @__const.main.ratepack
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.main.ratepack:
	.word	6                               // 0x6
	.word	92                              // 0x5c
	.size	.L__const.main.ratepack, 8
	.type	.L__const.main.yearspack,@object // @__const.main.yearspack
	.p2align	2
.L__const.main.yearspack:
	.word	2                               // 0x2
	.word	12                              // 0xc
	.size	.L__const.main.yearspack, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.type	DEC_INIT_BASE,@object           // @DEC_INIT_BASE
	.bss
	.globl	DEC_INIT_BASE
	.p2align	2
DEC_INIT_BASE:
	.word	0                               // 0x0
	.size	DEC_INIT_BASE, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"1"
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"-2"
	.size	.L.str.2, 3
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"100"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"%02x "
	.size	.L.str.4, 6
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"Result: %s (scale=%ld)\n"
	.size	.L.str.5, 24
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym decContextDefault
	.addrsig_sym decNumberFromString
	.addrsig_sym decPackedToNumber
	.addrsig_sym decNumberDivide
	.addrsig_sym decNumberAdd
	.addrsig_sym decNumberPower
	.addrsig_sym decNumberMultiply
	.addrsig_sym decNumberRescale
	.addrsig_sym decPackedFromNumber
	.addrsig_sym sprintf
	.addrsig_sym DEC_INIT_BASE
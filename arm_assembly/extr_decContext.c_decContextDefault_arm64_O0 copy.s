	.text
	.globl	decContextDefault               // -- Begin function decContextDefault
	.p2align	2
	.type	decContextDefault,@function
decContextDefault:                      // @decContextDefault
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x9, [x29, #-8]
	mov	w8, #9
	str	w8, [x9]
	adrp	x8, DEC_MAX_EMAX
	ldr	w8, [x8, :lo12:DEC_MAX_EMAX]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	adrp	x8, DEC_MIN_EMIN
	ldr	w8, [x8, :lo12:DEC_MIN_EMIN]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	adrp	x8, DEC_ROUND_HALF_UP
	ldr	x8, [x8, :lo12:DEC_ROUND_HALF_UP]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	adrp	x8, DEC_Errors
	ldr	w8, [x8, :lo12:DEC_Errors]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #20]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #32]
	ldur	x8, [x29, #-8]
	str	wzr, [x8, #12]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_6
// %bb.1:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	b	.LBB0_7
.LBB0_3:
	ldur	x9, [x29, #-8]
	mov	w8, #7
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	mov	w8, #96
	str	w8, [x9, #4]
	ldur	x9, [x29, #-8]
	mov	w8, #-95
	str	w8, [x9, #8]
	adrp	x8, DEC_ROUND_HALF_EVEN
	ldr	x8, [x8, :lo12:DEC_ROUND_HALF_EVEN]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-8]
	str	wzr, [x8, #20]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #12]
	b	.LBB0_7
.LBB0_4:
	ldur	x9, [x29, #-8]
	mov	w8, #16
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	mov	w8, #384
	str	w8, [x9, #4]
	ldur	x9, [x29, #-8]
	mov	w8, #-383
	str	w8, [x9, #8]
	adrp	x8, DEC_ROUND_HALF_EVEN
	ldr	x8, [x8, :lo12:DEC_ROUND_HALF_EVEN]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-8]
	str	wzr, [x8, #20]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #12]
	b	.LBB0_7
.LBB0_5:
	ldur	x9, [x29, #-8]
	mov	w8, #34
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	mov	w8, #6144
	str	w8, [x9, #4]
	ldur	x9, [x29, #-8]
	mov	w8, #-6143
	str	w8, [x9, #8]
	adrp	x8, DEC_ROUND_HALF_EVEN
	ldr	x8, [x8, :lo12:DEC_ROUND_HALF_EVEN]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-8]
	str	wzr, [x8, #20]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #12]
	b	.LBB0_7
.LBB0_6:
	ldur	x0, [x29, #-8]
	adrp	x8, DEC_Invalid_operation
	ldr	w1, [x8, :lo12:DEC_Invalid_operation]
	bl	decContextSetStatus
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decContextDefault, .Lfunc_end0-decContextDefault
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_2-.Ltmp0
                                        // -- End function
	.type	DEC_MAX_EMAX,@object            // @DEC_MAX_EMAX
	.bss
	.globl	DEC_MAX_EMAX
	.p2align	2
DEC_MAX_EMAX:
	.word	0                               // 0x0
	.size	DEC_MAX_EMAX, 4
	.type	DEC_MIN_EMIN,@object            // @DEC_MIN_EMIN
	.globl	DEC_MIN_EMIN
	.p2align	2
DEC_MIN_EMIN:
	.word	0                               // 0x0
	.size	DEC_MIN_EMIN, 4
	.type	DEC_ROUND_HALF_UP,@object       // @DEC_ROUND_HALF_UP
	.globl	DEC_ROUND_HALF_UP
	.p2align	3
DEC_ROUND_HALF_UP:
	.xword	0
	.size	DEC_ROUND_HALF_UP, 8
	.type	DEC_Errors,@object              // @DEC_Errors
	.globl	DEC_Errors
	.p2align	2
DEC_Errors:
	.word	0                               // 0x0
	.size	DEC_Errors, 4
	.type	DEC_ROUND_HALF_EVEN,@object     // @DEC_ROUND_HALF_EVEN
	.globl	DEC_ROUND_HALF_EVEN
	.p2align	3
DEC_ROUND_HALF_EVEN:
	.xword	0
	.size	DEC_ROUND_HALF_EVEN, 8
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.word	0                               // 0x0
	.size	DEC_Invalid_operation, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextSetStatus
	.addrsig_sym DEC_MAX_EMAX
	.addrsig_sym DEC_MIN_EMIN
	.addrsig_sym DEC_ROUND_HALF_UP
	.addrsig_sym DEC_Errors
	.addrsig_sym DEC_ROUND_HALF_EVEN
	.addrsig_sym DEC_Invalid_operation
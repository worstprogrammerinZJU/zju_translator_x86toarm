	.text
	.globl	fileread                        // -- Begin function fileread
	.p2align	2
	.type	fileread,@function
fileread:                               // @fileread
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	add	x3, sp, #20
	str	wzr, [sp, #20]
	ldur	x0, [x29, #-16]
	add	x1, sp, #16
	mov	w2, #4
	adrp	x4, .L.str
	add	x4, x4, :lo12:.L.str
	bl	readfull
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_2:
	ldr	w8, [sp, #16]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_8
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #129
	b.ne	.LBB0_12
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	fileincref
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	add	x2, sp, #20
	bl	readrec
	cbz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_5
.LBB0_7:
	ldur	x0, [x29, #-16]
	bl	filedecref
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_8:
	ldur	x0, [x29, #-16]
	bl	fileincref
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	add	x2, sp, #20
	bl	readrec5
	cbz	w0, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_9
.LBB0_11:
	ldur	x0, [x29, #-16]
	bl	filedecref
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_12:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	ldr	w2, [sp, #16]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	warnx
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	fileread, .Lfunc_end0-fileread
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"version"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s: unknown version: %d"
	.size	.L.str.1, 24
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readfull
	.addrsig_sym fileincref
	.addrsig_sym readrec
	.addrsig_sym filedecref
	.addrsig_sym readrec5
	.addrsig_sym warnx
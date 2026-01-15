	.text
	.p2align	2                               // -- Begin function setTimeZone
	.type	setTimeZone,@function
setTimeZone:                            // @setTimeZone
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	xzr, [x29, #-32]
	stur	xzr, [x29, #-24]
	sturb	wzr, [x29, #-16]
	adrp	x8, .L__const.setTimeZone.cdt
	add	x8, x8, :lo12:.L__const.setTimeZone.cdt
	ldr	q0, [x8]
	stur	q0, [x29, #-64]
	ldrb	w8, [x8, #16]
	sturb	w8, [x29, #-48]
	add	x0, sp, #79
	mov	w1, wzr
	mov	x2, #33
	bl	memset
	ldur	x8, [x29, #-8]
	mov	x10, #3600
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	mov	x10, #3600
	sdiv	x8, x8, x10
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	mov	x9, #60
	str	x9, [sp, #40]                   // 8-byte Folded Spill
	sdiv	x0, x8, x9
	bl	abs
	ldr	x10, [sp, #40]                  // 8-byte Folded Reload
	str	w0, [sp, #60]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x0, x8, x9
	bl	abs
	ldr	x2, [sp, #48]                   // 8-byte Folded Reload
	ldr	w3, [sp, #60]                   // 4-byte Folded Reload
	mov	w4, w0
	sub	x0, x29, #32
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-8]
	mov	x9, #3600
	sdiv	x2, x8, x9
	sub	x0, x29, #32
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	sprintf
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #3600
	b.eq	.LBB0_8
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	mov	x10, #3600
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #64]
	mov	x10, #3600
	sdiv	x8, x8, x10
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	x8, [sp, #64]
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	mov	x9, #60
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	sdiv	x0, x8, x9
	bl	abs
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	str	w0, [sp, #36]                   // 4-byte Folded Spill
	ldr	x8, [sp, #64]
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x0, x8, x9
	bl	abs
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldr	w3, [sp, #36]                   // 4-byte Folded Reload
	mov	w4, w0
	sub	x0, x29, #64
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	sprintf
	b	.LBB0_7
.LBB0_6:
	ldr	x8, [sp, #64]
	mov	x9, #3600
	sdiv	x2, x8, x9
	sub	x0, x29, #64
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	sprintf
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	add	x0, sp, #79
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	sub	x2, x29, #32
	sub	x3, x29, #64
	bl	sprintf
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	mov	w2, #1
	bl	setenv
	bl	tzset
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	setTimeZone, .Lfunc_end0-setTimeZone
                                        // -- End function
	.type	.L__const.setTimeZone.cdt,@object // @__const.setTimeZone.cdt
	.section	.rodata,"a",@progbits
.L__const.setTimeZone.cdt:
	.asciz	"DST\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__const.setTimeZone.cdt, 17
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"UTC%ld:%02u:%02u"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"UTC%ld"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"DST%ld:%02u:%02u"
	.size	.L.str.2, 17
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"DST%ld"
	.size	.L.str.3, 7
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"%s%s"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"TZ"
	.size	.L.str.5, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setTimeZone
	.addrsig_sym sprintf
	.addrsig_sym abs
	.addrsig_sym setenv
	.addrsig_sym tzset
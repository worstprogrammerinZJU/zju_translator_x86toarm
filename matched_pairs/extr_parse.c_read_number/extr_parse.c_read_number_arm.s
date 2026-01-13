	.text
	.p2align	2                               // -- Begin function read_number
	.type	read_number,@function
read_number:                            // @read_number
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	stur	x8, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strpbrk
	mov	w8, #1
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	cbnz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #2
	bl	strncasecmp
	mov	w8, #0
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strpbrk
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	bl	read_float
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_7
.LBB0_6:
	ldur	x0, [x29, #-8]
	bl	read_int
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_number, .Lfunc_end0-read_number
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".pP"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"0x"
	.size	.L.str.1, 3
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"eE"
	.size	.L.str.2, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_number
	.addrsig_sym strpbrk
	.addrsig_sym strncasecmp
	.addrsig_sym read_float
	.addrsig_sym read_int
	.text
	.p2align	2                               // -- Begin function emit_data_addr
	.type	emit_data_addr,@function
emit_data_addr:                         // @emit_data_addr
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_3
	b	.LBB0_4
.LBB0_2:
	bl	make_label
	str	x0, [sp, #24]
	ldur	w8, [x29, #-12]
	add	w1, w8, #1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	emit
	ldr	x0, [sp, #24]
	bl	emit_label
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	w1, [x8]
	ldur	w8, [x29, #-12]
	add	w3, w8, #1
	mov	w2, wzr
	bl	do_emit_data
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]
	bl	emit
	ldr	x1, [sp, #24]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_5
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_5
.LBB0_4:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	error
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	emit_data_addr, .Lfunc_end0-emit_data_addr
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".data %d"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	".quad %s"
	.size	.L.str.1, 9
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"internal error"
	.size	.L.str.2, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_data_addr
	.addrsig_sym make_label
	.addrsig_sym emit
	.addrsig_sym emit_label
	.addrsig_sym do_emit_data
	.addrsig_sym error
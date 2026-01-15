	.text
	.p2align	2                               // -- Begin function maybe_print_source_loc
	.type	maybe_print_source_loc,@function
maybe_print_source_loc:                 // @maybe_print_source_loc
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_7
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	stur	x8, [x29, #-16]
	adrp	x8, source_files
	ldr	w0, [x8, :lo12:source_files]
	ldur	x1, [x29, #-16]
	bl	map_get
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, source_files
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:source_files]
	bl	map_len
	ldr	x8, [sp]                        // 8-byte Folded Reload
	add	w10, w0, #1
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	str	x9, [sp, #24]
	ldr	w0, [x8, :lo12:source_files]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	map_put
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	quote_cstring
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_4
.LBB0_4:
	ldr	x1, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w2, [x8, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	format
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x8, last_loc
	ldr	x1, [x8, :lo12:last_loc]
	bl	strcmp
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w1, [x8, #8]
	bl	maybe_print_source_line
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	adrp	x9, last_loc
	str	x8, [x9, :lo12:last_loc]
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	maybe_print_source_loc, .Lfunc_end0-maybe_print_source_loc
                                        // -- End function
	.type	source_files,@object            // @source_files
	.bss
	.globl	source_files
	.p2align	2
source_files:
	.word	0                               // 0x0
	.size	source_files, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".file %ld \"%s\""
	.size	.L.str, 15
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	".loc %ld %d 0"
	.size	.L.str.1, 14
	.type	last_loc,@object                // @last_loc
	.bss
	.globl	last_loc
	.p2align	3
last_loc:
	.xword	0
	.size	last_loc, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_print_source_loc
	.addrsig_sym map_get
	.addrsig_sym map_len
	.addrsig_sym map_put
	.addrsig_sym emit
	.addrsig_sym quote_cstring
	.addrsig_sym format
	.addrsig_sym strcmp
	.addrsig_sym maybe_print_source_line
	.addrsig_sym source_files
	.addrsig_sym last_loc
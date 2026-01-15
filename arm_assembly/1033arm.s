	.text
	.p2align	2                               // -- Begin function maybe_print_source_line
	.type	maybe_print_source_line,@function
maybe_print_source_line:                // @maybe_print_source_line
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	adrp	x8, dumpsource
	ldr	w8, [x8, :lo12:dumpsource]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_11
.LBB0_2:
	adrp	x8, source_lines
	ldr	w0, [x8, :lo12:source_lines]
	ldur	x1, [x29, #-8]
	bl	map_get
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	bl	read_source_file
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_11
.LBB0_5:
	adrp	x8, source_lines
	ldr	w0, [x8, :lo12:source_lines]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #24]
	bl	map_put
	b	.LBB0_6
.LBB0_6:
	str	wzr, [sp, #20]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	.LBB0_7
.LBB0_10:
	ldr	x8, [sp, #24]
	ldur	w9, [x29, #-12]
	subs	w9, w9, #1
	ldr	x1, [x8, w9, sxtw #3]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit_nostack
	b	.LBB0_11
.LBB0_11:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	maybe_print_source_line, .Lfunc_end0-maybe_print_source_line
                                        // -- End function
	.type	dumpsource,@object              // @dumpsource
	.bss
	.globl	dumpsource
	.p2align	2
dumpsource:
	.word	0                               // 0x0
	.size	dumpsource, 4
	.type	source_lines,@object            // @source_lines
	.globl	source_lines
	.p2align	2
source_lines:
	.word	0                               // 0x0
	.size	source_lines, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"# %s"
	.size	.L.str, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_print_source_line
	.addrsig_sym map_get
	.addrsig_sym read_source_file
	.addrsig_sym map_put
	.addrsig_sym emit_nostack
	.addrsig_sym dumpsource
	.addrsig_sym source_lines
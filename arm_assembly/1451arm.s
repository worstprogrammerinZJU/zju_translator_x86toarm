	.text
	.globl	yy_scan_bytes                   // -- Begin function yy_scan_bytes
	.p2align	2
	.type	yy_scan_bytes,@function
yy_scan_bytes:                          // @yy_scan_bytes
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w8, [x29, #-12]
	add	w9, w8, #2
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	w1, [x29, #-16]
	bl	yyalloc
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_6:
	adrp	x8, YY_END_OF_BUFFER_CHAR
	ldrb	w8, [x8, :lo12:YY_END_OF_BUFFER_CHAR]
	ldr	x9, [sp, #16]
	ldur	w10, [x29, #-12]
	add	w10, w10, #1
	add	x9, x9, w10, sxtw
	strb	w8, [x9]
	ldr	x9, [sp, #16]
	ldursw	x10, [x29, #-12]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldur	w2, [x29, #-16]
	bl	yy_scan_buffer
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	YY_FATAL_ERROR
	b	.LBB0_8
.LBB0_8:
	ldr	x9, [sp, #24]
	mov	w8, #1
	str	w8, [x9]
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	yy_scan_bytes, .Lfunc_end0-yy_scan_bytes
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of dynamic memory in yy_scan_bytes()"
	.size	.L.str, 41
	.type	YY_END_OF_BUFFER_CHAR,@object   // @YY_END_OF_BUFFER_CHAR
	.bss
	.globl	YY_END_OF_BUFFER_CHAR
YY_END_OF_BUFFER_CHAR:
	.byte	0                               // 0x0
	.size	YY_END_OF_BUFFER_CHAR, 1
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"bad buffer in yy_scan_bytes()"
	.size	.L.str.1, 30
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyalloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym yy_scan_buffer
	.addrsig_sym YY_END_OF_BUFFER_CHAR
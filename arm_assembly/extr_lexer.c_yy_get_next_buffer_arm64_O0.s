	.text
	.p2align	2                               // -- Begin function yy_get_next_buffer
	.type	yy_get_next_buffer,@function
yy_get_next_buffer:                     // @yy_get_next_buffer
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-24]
	adrp	x9, YY_CURRENT_BUFFER_LVALUE
	ldr	x8, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x9, [x9]
	ldur	x10, [x29, #-24]
	ldr	w10, [x10, #16]
	add	w10, w10, #1
	add	x9, x9, w10, sxtw
	subs	x8, x8, x9
	b.ls	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_2
.LBB0_2:
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	adrp	x9, YY_MORE_ADJ
	ldrsw	x9, [x9, :lo12:YY_MORE_ADJ]
	subs	x8, x8, x9
	subs	x8, x8, #1
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, EOB_ACT_END_OF_FILE
	ldr	w8, [x8, :lo12:EOB_ACT_END_OF_FILE]
	stur	w8, [x29, #-4]
	b	.LBB0_37
.LBB0_5:
	adrp	x8, EOB_ACT_LAST_MATCH
	ldr	w8, [x8, :lo12:EOB_ACT_LAST_MATCH]
	stur	w8, [x29, #-4]
	b	.LBB0_37
.LBB0_6:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	subs	x8, x8, #1
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-44]
	str	wzr, [sp, #48]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #48]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-40]
	add	x9, x8, #1
	stur	x9, [x29, #-40]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-32]
	add	x10, x9, #1
	stur	x10, [x29, #-32]
	strb	w8, [x9]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	.LBB0_7
.LBB0_10:
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x8, [x8, #16]
	adrp	x9, YY_BUFFER_EOF_PENDING
	ldr	x9, [x9, :lo12:YY_BUFFER_EOF_PENDING]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #16]
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	str	wzr, [x8, #24]
	b	.LBB0_26
.LBB0_12:
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	w8, [x8, #28]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	subs	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_13
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	b.gt	.LBB0_23
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=1
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #32]
	ldr	x9, [x9]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #28]
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_19
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #28]
	lsl	w8, w8, #1
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	b.gt	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #28]
	mov	w9, #8
	sdiv	w10, w8, w9
	ldr	x9, [sp, #32]
	ldr	w8, [x9, #28]
	add	w8, w8, w10
	str	w8, [x9, #28]
	b	.LBB0_18
.LBB0_17:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x9, [sp, #32]
	ldr	w8, [x9, #28]
	lsl	w8, w8, #1
	str	w8, [x9, #28]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #28]
	add	w1, w8, #2
	ldur	x2, [x29, #-16]
	bl	yyrealloc
	ldr	x8, [sp, #32]
	str	x0, [x8]
	b	.LBB0_20
.LBB0_19:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #32]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_13 Depth=1
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	YY_FATAL_ERROR
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	add	x8, x8, x9
	ldur	x9, [x29, #-24]
	str	x8, [x9, #8]
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	w8, [x8, #28]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	subs	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_13
.LBB0_23:
	ldr	w8, [sp, #40]
	adrp	x9, YY_READ_BUF_SIZE
	ldr	w9, [x9, :lo12:YY_READ_BUF_SIZE]
	subs	w8, w8, w9
	b.le	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	adrp	x8, YY_READ_BUF_SIZE
	ldr	w8, [x8, :lo12:YY_READ_BUF_SIZE]
	str	w8, [sp, #40]
	b	.LBB0_25
.LBB0_25:
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	add	x0, x8, x9
	ldur	x8, [x29, #-24]
	ldr	w1, [x8, #16]
	ldr	w2, [sp, #40]
	bl	YY_INPUT
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #16]
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	str	w8, [x9, #24]
	b	.LBB0_26
.LBB0_26:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #16]
	cbnz	w8, .LBB0_31
	b	.LBB0_27
.LBB0_27:
	ldur	w8, [x29, #-44]
	adrp	x9, YY_MORE_ADJ
	ldr	w9, [x9, :lo12:YY_MORE_ADJ]
	subs	w8, w8, w9
	b.ne	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x8, EOB_ACT_END_OF_FILE
	ldr	w8, [x8, :lo12:EOB_ACT_END_OF_FILE]
	str	w8, [sp, #44]
	adrp	x8, yyin
	ldr	w0, [x8, :lo12:yyin]
	ldur	x1, [x29, #-16]
	bl	yyrestart
	b	.LBB0_30
.LBB0_29:
	adrp	x8, EOB_ACT_LAST_MATCH
	ldr	w8, [x8, :lo12:EOB_ACT_LAST_MATCH]
	str	w8, [sp, #44]
	adrp	x8, YY_BUFFER_EOF_PENDING
	ldr	x8, [x8, :lo12:YY_BUFFER_EOF_PENDING]
	adrp	x9, YY_CURRENT_BUFFER_LVALUE
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	str	x8, [x9, #16]
	b	.LBB0_30
.LBB0_30:
	b	.LBB0_32
.LBB0_31:
	adrp	x8, EOB_ACT_CONTINUE_SCAN
	ldr	w8, [x8, :lo12:EOB_ACT_CONTINUE_SCAN]
	str	w8, [sp, #44]
	b	.LBB0_32
.LBB0_32:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #16]
	ldur	w9, [x29, #-44]
	add	w8, w8, w9
	adrp	x9, YY_CURRENT_BUFFER_LVALUE
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	w9, [x9, #28]
	subs	w8, w8, w9
	b.le	.LBB0_36
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #16]
	ldur	w9, [x29, #-44]
	add	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #16]
	add	w8, w8, w9, asr #1
	str	w8, [sp, #20]
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x0, [x8]
	ldr	w1, [sp, #20]
	ldur	x2, [x29, #-16]
	bl	yyrealloc
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	str	x0, [x9]
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	YY_FATAL_ERROR
	b	.LBB0_35
.LBB0_35:
	ldr	w8, [sp, #20]
	subs	w8, w8, #2
	adrp	x9, YY_CURRENT_BUFFER_LVALUE
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	str	w8, [x9, #28]
	b	.LBB0_36
.LBB0_36:
	ldur	w10, [x29, #-44]
	ldur	x9, [x29, #-24]
	ldr	w8, [x9, #16]
	add	w8, w8, w10
	str	w8, [x9, #16]
	adrp	x9, YY_END_OF_BUFFER_CHAR
	ldr	x8, [x9, :lo12:YY_END_OF_BUFFER_CHAR]
	mov	w10, w8
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	ldr	x11, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x11, [x11]
	ldur	x12, [x29, #-24]
	ldrsw	x12, [x12, #16]
	add	x11, x11, x12
	strb	w10, [x11]
	ldr	x9, [x9, :lo12:YY_END_OF_BUFFER_CHAR]
                                        // kill: def $w9 killed $w9 killed $x9
	ldr	x10, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x10, [x10]
	ldur	x11, [x29, #-24]
	ldr	w11, [x11, #16]
	add	w11, w11, #1
	add	x10, x10, w11, sxtw
	strb	w9, [x10]
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	str	x8, [x9]
	ldr	w8, [sp, #44]
	stur	w8, [x29, #-4]
	b	.LBB0_37
.LBB0_37:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	yy_get_next_buffer, .Lfunc_end0-yy_get_next_buffer
                                        // -- End function
	.type	YY_CURRENT_BUFFER_LVALUE,@object // @YY_CURRENT_BUFFER_LVALUE
	.bss
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	3
YY_CURRENT_BUFFER_LVALUE:
	.xword	0
	.size	YY_CURRENT_BUFFER_LVALUE, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.size	.L.str, 56
	.type	YY_MORE_ADJ,@object             // @YY_MORE_ADJ
	.bss
	.globl	YY_MORE_ADJ
	.p2align	2
YY_MORE_ADJ:
	.word	0                               // 0x0
	.size	YY_MORE_ADJ, 4
	.type	EOB_ACT_END_OF_FILE,@object     // @EOB_ACT_END_OF_FILE
	.globl	EOB_ACT_END_OF_FILE
	.p2align	2
EOB_ACT_END_OF_FILE:
	.word	0                               // 0x0
	.size	EOB_ACT_END_OF_FILE, 4
	.type	EOB_ACT_LAST_MATCH,@object      // @EOB_ACT_LAST_MATCH
	.globl	EOB_ACT_LAST_MATCH
	.p2align	2
EOB_ACT_LAST_MATCH:
	.word	0                               // 0x0
	.size	EOB_ACT_LAST_MATCH, 4
	.type	YY_BUFFER_EOF_PENDING,@object   // @YY_BUFFER_EOF_PENDING
	.globl	YY_BUFFER_EOF_PENDING
	.p2align	3
YY_BUFFER_EOF_PENDING:
	.xword	0                               // 0x0
	.size	YY_BUFFER_EOF_PENDING, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"fatal error - scanner input buffer overflow"
	.size	.L.str.1, 44
	.type	YY_READ_BUF_SIZE,@object        // @YY_READ_BUF_SIZE
	.bss
	.globl	YY_READ_BUF_SIZE
	.p2align	2
YY_READ_BUF_SIZE:
	.word	0                               // 0x0
	.size	YY_READ_BUF_SIZE, 4
	.type	yyin,@object                    // @yyin
	.globl	yyin
	.p2align	2
yyin:
	.word	0                               // 0x0
	.size	yyin, 4
	.type	EOB_ACT_CONTINUE_SCAN,@object   // @EOB_ACT_CONTINUE_SCAN
	.globl	EOB_ACT_CONTINUE_SCAN
	.p2align	2
EOB_ACT_CONTINUE_SCAN:
	.word	0                               // 0x0
	.size	EOB_ACT_CONTINUE_SCAN, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"out of dynamic memory in yy_get_next_buffer()"
	.size	.L.str.2, 46
	.type	YY_END_OF_BUFFER_CHAR,@object   // @YY_END_OF_BUFFER_CHAR
	.bss
	.globl	YY_END_OF_BUFFER_CHAR
	.p2align	3
YY_END_OF_BUFFER_CHAR:
	.xword	0
	.size	YY_END_OF_BUFFER_CHAR, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_get_next_buffer
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym yyrealloc
	.addrsig_sym YY_INPUT
	.addrsig_sym yyrestart
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE
	.addrsig_sym YY_MORE_ADJ
	.addrsig_sym EOB_ACT_END_OF_FILE
	.addrsig_sym EOB_ACT_LAST_MATCH
	.addrsig_sym YY_BUFFER_EOF_PENDING
	.addrsig_sym YY_READ_BUF_SIZE
	.addrsig_sym yyin
	.addrsig_sym EOB_ACT_CONTINUE_SCAN
	.addrsig_sym YY_END_OF_BUFFER_CHAR
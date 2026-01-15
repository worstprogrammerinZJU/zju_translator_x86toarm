	.text
	.p2align	2                               // -- Begin function quote
	.type	quote,@function
quote:                                  // @quote
// %bb.0:
	sub	sp, sp, #16
	strb	w0, [sp, #7]
	ldrb	w8, [sp, #7]
	str	w8, [sp]                        // 4-byte Folded Spill
	subs	w8, w8, #8
	b.eq	.LBB0_9
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #9
	b.eq	.LBB0_13
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #10
	b.eq	.LBB0_11
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #12
	b.eq	.LBB0_10
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #13
	b.eq	.LBB0_12
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #34
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #92
	b.eq	.LBB0_8
	b	.LBB0_14
.LBB0_7:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #8]
	b	.LBB0_15
.LBB0_8:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #8]
	b	.LBB0_15
.LBB0_9:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	str	x8, [sp, #8]
	b	.LBB0_15
.LBB0_10:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	str	x8, [sp, #8]
	b	.LBB0_15
.LBB0_11:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	str	x8, [sp, #8]
	b	.LBB0_15
.LBB0_12:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	str	x8, [sp, #8]
	b	.LBB0_15
.LBB0_13:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	str	x8, [sp, #8]
	b	.LBB0_15
.LBB0_14:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_15
.LBB0_15:
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	quote, .Lfunc_end0-quote
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\\""
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\\\\"
	.size	.L.str.1, 3
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\b"
	.size	.L.str.2, 3
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\\f"
	.size	.L.str.3, 3
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\\n"
	.size	.L.str.4, 3
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\\r"
	.size	.L.str.5, 3
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\\t"
	.size	.L.str.6, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym quote
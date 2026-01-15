	.text
	.p2align	2                               // -- Begin function encoding_prefix
	.type	encoding_prefix,@function
encoding_prefix:                        // @encoding_prefix
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
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
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_3:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_4:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_5:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_6:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	encoding_prefix, .Lfunc_end0-encoding_prefix
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_2-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"u"
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"U"
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"u8"
	.size	.L.str.2, 3
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"L"
	.size	.L.str.3, 2
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.zero	1
	.size	.L.str.4, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym encoding_prefix
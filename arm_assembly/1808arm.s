	.text
	.p2align	2                               // -- Begin function char_type
	.type	char_type,@function
char_type:                              // @char_type
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        // 4-byte Folded Spill
	subs	w8, w8, #128
	subs	w8, w8, #1
	b.ls	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #130
	b.eq	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #131
	b.eq	.LBB0_4
	b	.LBB0_6
.LBB0_3:
	adrp	x8, type_int
	ldr	x8, [x8, :lo12:type_int]
	str	x8, [sp, #8]
	b	.LBB0_7
.LBB0_4:
	adrp	x8, type_ushort
	ldr	x8, [x8, :lo12:type_ushort]
	str	x8, [sp, #8]
	b	.LBB0_7
.LBB0_5:
	adrp	x8, type_uint
	ldr	x8, [x8, :lo12:type_uint]
	str	x8, [sp, #8]
	b	.LBB0_7
.LBB0_6:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	char_type, .Lfunc_end0-char_type
                                        // -- End function
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.xword	0
	.size	type_int, 8
	.type	type_ushort,@object             // @type_ushort
	.globl	type_ushort
	.p2align	3
type_ushort:
	.xword	0
	.size	type_ushort, 8
	.type	type_uint,@object               // @type_uint
	.globl	type_uint
	.p2align	3
type_uint:
	.xword	0
	.size	type_uint, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.size	.L.str, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym char_type
	.addrsig_sym error
	.addrsig_sym type_int
	.addrsig_sym type_ushort
	.addrsig_sym type_uint
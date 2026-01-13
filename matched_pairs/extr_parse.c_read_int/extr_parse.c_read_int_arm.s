	.text
	.p2align	2                               // -- Begin function read_int
	.type	read_int,@function
read_int:                               // @read_int
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #2
	bl	strncasecmp
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	add	x0, x8, #2
	sub	x1, x29, #32
	mov	w2, #2
	bl	strtoul
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-24]
	sub	x1, x29, #32
	mov	w2, wzr
	bl	strtoul
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	stur	x8, [x29, #-40]
	ldur	x0, [x29, #-32]
	bl	read_int_suffix
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-40]
	bl	ast_inttype
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_5:
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-32]
	ldrb	w2, [x8]
	ldur	x3, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	subs	w8, w8, #48
	cset	w8, ne
	and	w8, w8, #0x1
	str	w8, [sp, #44]
	ldr	w8, [sp, #44]
	cbz	w8, .LBB0_12
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-40]
	adrp	x9, INT_MAX
	ldr	x9, [x9, :lo12:INT_MAX]
	bic	x8, x8, x9
	cbnz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, type_int
	ldr	x8, [x8, :lo12:type_int]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	b	.LBB0_11
.LBB0_10:
	adrp	x8, type_long
	ldr	x8, [x8, :lo12:type_long]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-40]
	bl	ast_inttype
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_12:
	ldur	x8, [x29, #-40]
	adrp	x9, INT_MAX
	ldr	x9, [x9, :lo12:INT_MAX]
	bic	x8, x8, x9
	cbnz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, type_int
	ldr	x8, [x8, :lo12:type_int]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_21
.LBB0_14:
	ldur	x8, [x29, #-40]
	adrp	x9, UINT_MAX
	ldr	x9, [x9, :lo12:UINT_MAX]
	bic	x8, x8, x9
	cbnz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x8, type_uint
	ldr	x8, [x8, :lo12:type_uint]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_20
.LBB0_16:
	ldur	x8, [x29, #-40]
	adrp	x9, LONG_MAX
	ldr	x9, [x9, :lo12:LONG_MAX]
	bic	x8, x8, x9
	cbnz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, type_long
	ldr	x8, [x8, :lo12:type_long]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_19
.LBB0_18:
	adrp	x8, type_ulong
	ldr	x8, [x8, :lo12:type_ulong]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_19
.LBB0_19:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_20
.LBB0_20:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_21
.LBB0_21:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-40]
	bl	ast_inttype
	stur	x0, [x29, #-8]
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_int, .Lfunc_end0-read_int
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0b"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"invalid character '%c': %s"
	.size	.L.str.1, 27
	.type	INT_MAX,@object                 // @INT_MAX
	.bss
	.globl	INT_MAX
	.p2align	3
INT_MAX:
	.xword	0                               // 0x0
	.size	INT_MAX, 8
	.type	type_int,@object                // @type_int
	.globl	type_int
	.p2align	3
type_int:
	.xword	0
	.size	type_int, 8
	.type	type_long,@object               // @type_long
	.globl	type_long
	.p2align	3
type_long:
	.xword	0
	.size	type_long, 8
	.type	UINT_MAX,@object                // @UINT_MAX
	.globl	UINT_MAX
	.p2align	3
UINT_MAX:
	.xword	0                               // 0x0
	.size	UINT_MAX, 8
	.type	type_uint,@object               // @type_uint
	.globl	type_uint
	.p2align	3
type_uint:
	.xword	0
	.size	type_uint, 8
	.type	LONG_MAX,@object                // @LONG_MAX
	.globl	LONG_MAX
	.p2align	3
LONG_MAX:
	.xword	0                               // 0x0
	.size	LONG_MAX, 8
	.type	type_ulong,@object              // @type_ulong
	.globl	type_ulong
	.p2align	3
type_ulong:
	.xword	0
	.size	type_ulong, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_int
	.addrsig_sym strncasecmp
	.addrsig_sym strtoul
	.addrsig_sym read_int_suffix
	.addrsig_sym ast_inttype
	.addrsig_sym errort
	.addrsig_sym INT_MAX
	.addrsig_sym type_int
	.addrsig_sym type_long
	.addrsig_sym UINT_MAX
	.addrsig_sym type_uint
	.addrsig_sym LONG_MAX
	.addrsig_sym type_ulong
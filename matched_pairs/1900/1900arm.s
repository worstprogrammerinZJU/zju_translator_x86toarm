	.text
	.p2align	2                               // -- Begin function read_int_suffix
	.type	read_int_suffix,@function
read_int_suffix:                        // @read_int_suffix
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcasecmp
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, type_uint
	ldr	x8, [x8, :lo12:type_uint]
	str	x8, [sp, #8]
	b	.LBB0_13
.LBB0_2:
	ldr	x0, [sp]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcasecmp
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, type_long
	ldr	x8, [x8, :lo12:type_long]
	str	x8, [sp, #8]
	b	.LBB0_13
.LBB0_4:
	ldr	x0, [sp]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcasecmp
	cbz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	strcasecmp
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, type_ulong
	ldr	x8, [x8, :lo12:type_ulong]
	str	x8, [sp, #8]
	b	.LBB0_13
.LBB0_7:
	ldr	x0, [sp]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcasecmp
	cbnz	w0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, type_llong
	ldr	x8, [x8, :lo12:type_llong]
	str	x8, [sp, #8]
	b	.LBB0_13
.LBB0_9:
	ldr	x0, [sp]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	strcasecmp
	cbz	w0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	strcasecmp
	cbnz	w0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, type_ullong
	ldr	x8, [x8, :lo12:type_ullong]
	str	x8, [sp, #8]
	b	.LBB0_13
.LBB0_12:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_13
.LBB0_13:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_int_suffix, .Lfunc_end0-read_int_suffix
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"u"
	.size	.L.str, 2
	.type	type_uint,@object               // @type_uint
	.bss
	.globl	type_uint
	.p2align	3
type_uint:
	.xword	0
	.size	type_uint, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"l"
	.size	.L.str.1, 2
	.type	type_long,@object               // @type_long
	.bss
	.globl	type_long
	.p2align	3
type_long:
	.xword	0
	.size	type_long, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ul"
	.size	.L.str.2, 3
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"lu"
	.size	.L.str.3, 3
	.type	type_ulong,@object              // @type_ulong
	.bss
	.globl	type_ulong
	.p2align	3
type_ulong:
	.xword	0
	.size	type_ulong, 8
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"ll"
	.size	.L.str.4, 3
	.type	type_llong,@object              // @type_llong
	.bss
	.globl	type_llong
	.p2align	3
type_llong:
	.xword	0
	.size	type_llong, 8
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ull"
	.size	.L.str.5, 4
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"llu"
	.size	.L.str.6, 4
	.type	type_ullong,@object             // @type_ullong
	.bss
	.globl	type_ullong
	.p2align	3
type_ullong:
	.xword	0
	.size	type_ullong, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_int_suffix
	.addrsig_sym strcasecmp
	.addrsig_sym type_uint
	.addrsig_sym type_long
	.addrsig_sym type_ulong
	.addrsig_sym type_llong
	.addrsig_sym type_ullong
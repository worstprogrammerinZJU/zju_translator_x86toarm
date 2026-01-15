	.text
	.p2align	2                               // -- Begin function read_float
	.type	read_float,@function
read_float:                             // @read_float
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	add	x1, sp, #16
	bl	strtod
	str	d0, [sp, #8]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcasecmp
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, type_ldouble
	ldr	w0, [x8, :lo12:type_ldouble]
	ldr	d0, [sp, #8]
	bl	ast_floattype
	stur	x0, [x29, #-8]
	b	.LBB0_7
.LBB0_2:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcasecmp
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, type_float
	ldr	w0, [x8, :lo12:type_float]
	ldr	d0, [sp, #8]
	bl	ast_floattype
	stur	x0, [x29, #-8]
	b	.LBB0_7
.LBB0_4:
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldrb	w2, [x8]
	ldr	x3, [sp, #24]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	errort
	b	.LBB0_6
.LBB0_6:
	adrp	x8, type_double
	ldr	w0, [x8, :lo12:type_double]
	ldr	d0, [sp, #8]
	bl	ast_floattype
	stur	x0, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_float, .Lfunc_end0-read_float
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"l"
	.size	.L.str, 2
	.type	type_ldouble,@object            // @type_ldouble
	.bss
	.globl	type_ldouble
	.p2align	2
type_ldouble:
	.word	0                               // 0x0
	.size	type_ldouble, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"f"
	.size	.L.str.1, 2
	.type	type_float,@object              // @type_float
	.bss
	.globl	type_float
	.p2align	2
type_float:
	.word	0                               // 0x0
	.size	type_float, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"invalid character '%c': %s"
	.size	.L.str.2, 27
	.type	type_double,@object             // @type_double
	.bss
	.globl	type_double
	.p2align	2
type_double:
	.word	0                               // 0x0
	.size	type_double, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_float
	.addrsig_sym strtod
	.addrsig_sym strcasecmp
	.addrsig_sym ast_floattype
	.addrsig_sym errort
	.addrsig_sym type_ldouble
	.addrsig_sym type_float
	.addrsig_sym type_double
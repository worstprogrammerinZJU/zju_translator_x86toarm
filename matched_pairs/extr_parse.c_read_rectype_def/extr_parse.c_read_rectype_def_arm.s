	.text
	.p2align	2                               // -- Begin function read_rectype_def
	.type	read_rectype_def,@function
read_rectype_def:                       // @read_rectype_def
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	bl	read_rectype_tag
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_8
	b	.LBB0_1
.LBB0_1:
	adrp	x8, tags
	ldr	w0, [x8, :lo12:tags]
	ldur	x1, [x29, #-16]
	bl	map_get
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, KIND_ENUM
	ldr	x9, [x9, :lo12:KIND_ENUM]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x1, [x29, #-16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	bl	make_rectype
	str	x0, [sp, #24]
	adrp	x8, tags
	ldr	w0, [x8, :lo12:tags]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	map_put
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_9
.LBB0_8:
	ldur	w0, [x29, #-4]
	bl	make_rectype
	str	x0, [sp, #24]
	b	.LBB0_9
.LBB0_9:
	add	x0, sp, #20
	str	wzr, [sp, #20]
	add	x1, sp, #16
	mov	w8, #1
	str	w8, [sp, #16]
	ldur	w2, [x29, #-4]
	bl	read_rectype_fields
	str	x0, [sp, #8]
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9, #12]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	str	x8, [x9, #24]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	str	w8, [x9, #16]
	b	.LBB0_11
.LBB0_11:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_rectype_def, .Lfunc_end0-read_rectype_def
                                        // -- End function
	.type	tags,@object                    // @tags
	.bss
	.globl	tags
	.p2align	2
tags:
	.word	0                               // 0x0
	.size	tags, 4
	.type	KIND_ENUM,@object               // @KIND_ENUM
	.globl	KIND_ENUM
	.p2align	3
KIND_ENUM:
	.xword	0                               // 0x0
	.size	KIND_ENUM, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"declarations of %s does not match"
	.size	.L.str, 34
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rectype_def
	.addrsig_sym read_rectype_tag
	.addrsig_sym map_get
	.addrsig_sym error
	.addrsig_sym make_rectype
	.addrsig_sym map_put
	.addrsig_sym read_rectype_fields
	.addrsig_sym tags
	.addrsig_sym KIND_ENUM
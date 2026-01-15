	.text
	.p2align	2                               // -- Begin function value
	.type	value,@function
value:                                  // @value
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	adrp	x9, JV_PARSE_STREAMING
	ldr	w9, [x9, :lo12:JV_PARSE_STREAMING]
	and	w8, w8, w9
	cbz	w8, .LBB0_8
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #24]
	bl	jv_is_valid
	cbnz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	adrp	x9, JV_LAST_VALUE
	ldr	x9, [x9, :lo12:JV_LAST_VALUE]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	bl	jv_free
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_12
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, JV_LAST_VALUE
	ldr	x8, [x8, :lo12:JV_LAST_VALUE]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	b	.LBB0_7
.LBB0_6:
	adrp	x8, JV_LAST_NONE
	ldr	x8, [x8, :lo12:JV_LAST_NONE]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_11
.LBB0_8:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #24]
	bl	jv_is_valid
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #12]
	bl	jv_free
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_12
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #24]
	bl	jv_free
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	str	w8, [x9, #24]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	value, .Lfunc_end0-value
                                        // -- End function
	.type	JV_PARSE_STREAMING,@object      // @JV_PARSE_STREAMING
	.bss
	.globl	JV_PARSE_STREAMING
	.p2align	2
JV_PARSE_STREAMING:
	.word	0                               // 0x0
	.size	JV_PARSE_STREAMING, 4
	.type	JV_LAST_VALUE,@object           // @JV_LAST_VALUE
	.globl	JV_LAST_VALUE
	.p2align	3
JV_LAST_VALUE:
	.xword	0                               // 0x0
	.size	JV_LAST_VALUE, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Expected separator between values"
	.size	.L.str, 34
	.type	JV_LAST_NONE,@object            // @JV_LAST_NONE
	.bss
	.globl	JV_LAST_NONE
	.p2align	3
JV_LAST_NONE:
	.xword	0                               // 0x0
	.size	JV_LAST_NONE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym value
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym JV_PARSE_STREAMING
	.addrsig_sym JV_LAST_VALUE
	.addrsig_sym JV_LAST_NONE
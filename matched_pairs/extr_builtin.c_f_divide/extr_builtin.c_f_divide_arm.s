	.text
	.p2align	2                               // -- Begin function f_divide
	.type	f_divide,@function
f_divide:                               // @f_divide
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	str	w3, [sp, #20]
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldr	w0, [sp, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #20]
	bl	jv_number_value
	fcmp	d0, #0.0
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_9
.LBB0_4:
	ldr	w0, [sp, #24]
	bl	jv_number_value
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [sp, #20]
	bl	jv_number_value
	fmov	d1, d0
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	fdiv	d0, d0, d1
	bl	jv_number
	str	w0, [sp, #16]
	ldr	w0, [sp, #24]
	bl	jv_free
	ldr	w0, [sp, #20]
	bl	jv_free
	ldr	w8, [sp, #16]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_5:
	ldr	w0, [sp, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp, #20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	jv_string_split
	stur	w0, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	f_divide, .Lfunc_end0-f_divide
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be divided because the divisor is zero"
	.size	.L.str, 46
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"cannot be divided"
	.size	.L.str.1, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_divide
	.addrsig_sym jv_free
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_number_value
	.addrsig_sym type_error2
	.addrsig_sym jv_number
	.addrsig_sym jv_string_split
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING
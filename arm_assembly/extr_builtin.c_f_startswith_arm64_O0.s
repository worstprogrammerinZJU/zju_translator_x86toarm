	.text
	.p2align	2                               // -- Begin function f_startswith
	.type	f_startswith,@function
f_startswith:                           // @f_startswith
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldr	w8, [sp, #24]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	ret_error2
	stur	w0, [x29, #-4]
	b	.LBB0_8
.LBB0_3:
	ldur	w0, [x29, #-20]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	w0, [sp, #20]
	ldr	w0, [sp, #24]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.gt	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-20]
	bl	jv_string_value
	str	w0, [sp]                        // 4-byte Folded Spill
	ldr	w0, [sp, #24]
	bl	jv_string_value
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldr	w2, [sp, #16]
	bl	memcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	jv_true
	str	w0, [sp, #12]
	b	.LBB0_7
.LBB0_6:
	bl	jv_false
	str	w0, [sp, #12]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldr	w0, [sp, #24]
	bl	jv_free
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	f_startswith, .Lfunc_end0-f_startswith
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"startswith() requires string inputs"
	.size	.L.str, 36
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_startswith
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error2
	.addrsig_sym jv_string
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym memcmp
	.addrsig_sym jv_string_value
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING
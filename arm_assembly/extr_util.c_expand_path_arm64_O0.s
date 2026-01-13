	.text
	.globl	expand_path                     // -- Begin function expand_path
	.p2align	2
	.type	expand_path,@function
expand_path:                            // @expand_path
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	stur	x0, [x29, #-16]
	ldur	w8, [x29, #-4]
	stur	w8, [x29, #-20]
	ldur	w0, [x29, #-4]
	bl	jv_copy
	bl	jv_string_length_bytes
	subs	w8, w0, #1
	b.le	.LBB0_7
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	subs	w8, w8, #126
	b.ne	.LBB0_7
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #47
	b.ne	.LBB0_7
	b	.LBB0_3
.LBB0_3:
	bl	get_home
	str	w0, [sp, #24]
	ldr	w0, [sp, #24]
	bl	jv_is_valid
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #24]
	bl	jv_string_value
	mov	x1, x0
	ldur	x8, [x29, #-16]
	add	x2, x8, #2
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	stur	w0, [x29, #-20]
	ldr	w0, [sp, #24]
	bl	jv_free
	b	.LBB0_6
.LBB0_5:
	ldr	w0, [sp, #24]
	bl	jv_invalid_get_msg
	str	w0, [sp, #20]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [sp, #20]
	bl	jv_string_value
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	x2, x0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-20]
	ldr	w0, [sp, #20]
	bl	jv_free
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	bl	jv_free
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	expand_path, .Lfunc_end0-expand_path
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
	.asciz	"%s/%s"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Could not expand %s. (%s)"
	.size	.L.str.1, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym get_home
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym JV_KIND_STRING
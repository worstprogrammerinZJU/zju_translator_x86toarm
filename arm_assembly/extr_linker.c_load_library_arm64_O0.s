	.text
	.p2align	2                               // -- Begin function load_library
	.type	load_library,@function
load_library:                           // @load_library
// %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	x5, [x29, #-32]
	stur	x6, [x29, #-40]
	stur	x7, [x29, #-48]
	stur	wzr, [x29, #-52]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-64]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	mov	w1, wzr
	bl	jv_load_file
	str	w0, [sp, #68]
	b	.LBB0_4
.LBB0_3:
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	mov	w1, #1
	bl	jv_load_file
	str	w0, [sp, #68]
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #68]
	bl	jv_is_valid
	cbnz	w0, .LBB0_11
	b	.LBB0_5
.LBB0_5:
	bl	gen_noop
	str	x0, [sp, #72]
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_10
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp, #68]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #68]
	bl	jv_invalid_get_msg
	str	w0, [sp, #68]
	b	.LBB0_9
.LBB0_8:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	str	w0, [sp, #68]
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	str	w0, [sp, #44]                   // 4-byte Folded Spill
	ldr	w0, [sp, #68]
	bl	jv_string_value
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string_fmt
	mov	w1, w0
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	bl	jq_report_error
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_18
.LBB0_11:
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w0, [sp, #68]
	bl	jv_copy
	ldur	x1, [x29, #-32]
	bl	gen_const_global
	str	x0, [sp, #72]
	b	.LBB0_16
.LBB0_13:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldr	w0, [sp, #68]
	bl	jv_string_value
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	ldr	w0, [sp, #68]
	bl	jv_copy
	bl	jv_string_length_bytes
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	locfile_init
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	add	x1, sp, #72
	bl	jq_parse_library
	ldursw	x8, [x29, #-52]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-52]
	ldur	x0, [x29, #-64]
	bl	locfile_free
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	bl	strdup
	str	x0, [sp, #56]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	jq_get_jq_origin
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldr	x0, [sp, #56]
	bl	dirname
	bl	jv_string
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldur	x4, [x29, #-48]
	add	x3, sp, #72
	bl	process_dependencies
	ldursw	x8, [x29, #-52]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-52]
	ldr	x0, [sp, #56]
	bl	free
	ldr	x0, [sp, #72]
	adrp	x8, OP_IS_CALL_PSEUDO
	ldr	w1, [x8, :lo12:OP_IS_CALL_PSEUDO]
	bl	block_bind_self
	str	x0, [sp, #72]
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	ldur	x10, [x29, #-48]
	ldr	w8, [x10]
	add	w9, w8, #1
	str	w9, [x10]
	str	w8, [sp, #64]
	ldur	x8, [x29, #-48]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-48]
	ldrsw	x8, [x8]
	lsl	x8, x8, #3
	mov	w1, w8
	bl	jv_mem_realloc
	ldur	x8, [x29, #-48]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-48]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-48]
	ldrsw	x8, [x8]
	lsl	x8, x8, #3
	mov	w1, w8
	bl	jv_mem_realloc
	ldur	x8, [x29, #-48]
	str	x0, [x8, #8]
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	bl	strdup
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #64]
	str	x0, [x8, x9, lsl #3]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-48]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #64]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_18
.LBB0_18:
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-40]
	str	x8, [x9]
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldr	w0, [sp, #68]
	bl	jv_free
	ldur	w0, [x29, #-52]
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	load_library, .Lfunc_end0-load_library
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown error"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"jq: error loading data file %s: %s\n"
	.size	.L.str.1, 36
	.type	OP_IS_CALL_PSEUDO,@object       // @OP_IS_CALL_PSEUDO
	.bss
	.globl	OP_IS_CALL_PSEUDO
	.p2align	2
OP_IS_CALL_PSEUDO:
	.word	0                               // 0x0
	.size	OP_IS_CALL_PSEUDO, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_library
	.addrsig_sym jv_load_file
	.addrsig_sym jv_string_value
	.addrsig_sym jv_is_valid
	.addrsig_sym gen_noop
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_string
	.addrsig_sym jq_report_error
	.addrsig_sym jv_string_fmt
	.addrsig_sym gen_const_global
	.addrsig_sym locfile_init
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jq_parse_library
	.addrsig_sym locfile_free
	.addrsig_sym strdup
	.addrsig_sym process_dependencies
	.addrsig_sym jq_get_jq_origin
	.addrsig_sym dirname
	.addrsig_sym free
	.addrsig_sym block_bind_self
	.addrsig_sym jv_mem_realloc
	.addrsig_sym jv_free
	.addrsig_sym OP_IS_CALL_PSEUDO
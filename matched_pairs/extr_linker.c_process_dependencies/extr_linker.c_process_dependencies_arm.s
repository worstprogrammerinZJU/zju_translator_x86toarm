	.text
	.p2align	2                               // -- Begin function process_dependencies
	.type	process_dependencies,@function
process_dependencies:                   // @process_dependencies
// %bb.0:
	sub	sp, sp, #256
	stp	x29, x30, [sp, #240]            // 16-byte Folded Spill
	add	x29, sp, #240
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	ldur	x0, [x29, #-32]
	bl	block_take_imports
	stur	w0, [x29, #-44]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	stur	w8, [x29, #-48]
	stur	wzr, [x29, #-52]
	ldur	w0, [x29, #-44]
	bl	jv_copy
	bl	jv_array_length
	stur	w0, [x29, #-56]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_19 Depth 2
	ldur	w8, [x29, #-56]
	subs	w8, w8, #0
	b.le	.LBB0_31
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-56]
	subs	w8, w8, #1
	stur	w8, [x29, #-56]
	ldur	w0, [x29, #-44]
	bl	jv_copy
	ldur	w1, [x29, #-56]
	bl	jv_array_get
	stur	w0, [x29, #-60]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-72]
	ldur	w0, [x29, #-60]
	bl	jv_copy
	str	w0, [sp, #96]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #96]                   // 4-byte Folded Reload
	bl	jv_object_get
	bl	jv_get_kind
	adrp	x8, JV_KIND_TRUE
	str	x8, [sp, #104]                  // 8-byte Folded Spill
	ldr	x8, [x8, :lo12:JV_KIND_TRUE]
	subs	x8, x0, x8
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-76]
	stur	wzr, [x29, #-80]
	ldur	w0, [x29, #-60]
	bl	jv_copy
	str	w0, [sp, #100]                  // 4-byte Folded Spill
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #100]                  // 4-byte Folded Reload
	bl	jv_object_get
	stur	w0, [x29, #-84]
	ldur	w0, [x29, #-84]
	bl	jv_get_kind
	ldr	x8, [sp, #104]                  // 8-byte Folded Reload
	ldr	x8, [x8, :lo12:JV_KIND_TRUE]
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-80]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-88]
	ldur	w0, [x29, #-60]
	bl	jv_copy
	str	w0, [sp, #92]                   // 4-byte Folded Spill
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #92]                   // 4-byte Folded Reload
	bl	jv_object_get
	bl	jv_get_kind
	adrp	x8, JV_KIND_TRUE
	ldr	x8, [x8, :lo12:JV_KIND_TRUE]
	subs	x8, x0, x8
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-88]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-84]
	bl	jv_free
	ldur	w0, [x29, #-60]
	bl	jv_copy
	str	w0, [sp, #80]                   // 4-byte Folded Spill
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #80]                   // 4-byte Folded Reload
	bl	jv_object_get
	bl	validate_relpath
	stur	w0, [x29, #-92]
	ldur	w0, [x29, #-60]
	bl	jv_copy
	str	w0, [sp, #84]                   // 4-byte Folded Spill
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #84]                   // 4-byte Folded Reload
	bl	jv_object_get
	stur	w0, [x29, #-96]
	ldur	w0, [x29, #-96]
	bl	jv_is_valid
	mov	w8, #1
	str	w8, [sp, #88]                   // 4-byte Folded Spill
	cbz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-96]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	cset	w8, eq
	str	w8, [sp, #88]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #88]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-96]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-96]
	bl	jv_string_value
	stur	x0, [x29, #-72]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-60]
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	bl	jv_object_get
	mov	w1, w0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	bl	default_search
	stur	w0, [x29, #-100]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #72]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-92]
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-100]
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	ldur	w10, [x29, #-76]
	adrp	x9, .L.str.7
	add	x9, x9, :lo12:.L.str.7
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	subs	w10, w10, #0
	csel	x8, x8, x9, ne
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-20]
	bl	jv_copy
	str	w0, [sp, #68]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	jv_copy
	ldr	w1, [sp, #48]                   // 4-byte Folded Reload
	ldr	w2, [sp, #52]                   // 4-byte Folded Reload
	ldr	x3, [sp, #56]                   // 8-byte Folded Reload
	ldr	w4, [sp, #68]                   // 4-byte Folded Reload
	mov	w5, w0
	ldr	x0, [sp, #72]                   // 8-byte Folded Reload
	bl	find_lib
	stur	w0, [x29, #-104]
	ldur	w0, [x29, #-104]
	bl	jv_is_valid
	cbnz	w0, .LBB0_14
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-96]
	bl	jv_free
	ldur	w8, [x29, #-88]
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-104]
	bl	jv_free
	b	.LBB0_1
.LBB0_13:
	ldur	w0, [x29, #-104]
	bl	jv_invalid_get_msg
	stur	w0, [x29, #-108]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-108]
	bl	jv_string_value
	mov	x1, x0
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	jv_string_fmt
	mov	w1, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	jq_report_error
	ldur	w0, [x29, #-108]
	bl	jv_free
	ldur	w0, [x29, #-44]
	bl	jv_free
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	w0, [x29, #-24]
	bl	jv_free
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_32
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-76]
	cbz	w8, .LBB0_18
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-104]
	ldur	w2, [x29, #-76]
	ldur	w3, [x29, #-80]
	ldur	w4, [x29, #-88]
	ldur	x5, [x29, #-72]
	ldur	x7, [x29, #-40]
	sub	x6, x29, #112
	bl	load_library
	ldursw	x8, [x29, #-52]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-112]
	ldur	w1, [x29, #-48]
	adrp	x8, OP_IS_CALL_PSEUDO
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w2, [x8, :lo12:OP_IS_CALL_PSEUDO]
	ldur	x3, [x29, #-72]
	bl	block_bind_library
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	stur	w0, [x29, #-48]
	ldur	w0, [x29, #-112]
	ldur	w1, [x29, #-48]
	ldr	w2, [x8, :lo12:OP_IS_CALL_PSEUDO]
	mov	x3, xzr
	bl	block_bind_library
	stur	w0, [x29, #-48]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_30
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	str	xzr, [sp, #120]
	b	.LBB0_19
.LBB0_19:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #120]
	ldur	x9, [x29, #-40]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_24
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=2
	ldur	x8, [x29, #-40]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #120]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-104]
	bl	jv_string_value
	mov	x1, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	strcmp
	cbnz	x0, .LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_24
.LBB0_22:                               //   in Loop: Header=BB0_19 Depth=2
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_19 Depth=2
	ldr	x8, [sp, #120]
	add	x8, x8, #1
	str	x8, [sp, #120]
	b	.LBB0_19
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #120]
	ldur	x9, [x29, #-40]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-104]
	bl	jv_free
	ldur	x8, [x29, #-40]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #120]
	ldr	w0, [x8, x9, lsl #2]
	ldur	w1, [x29, #-48]
	adrp	x8, OP_IS_CALL_PSEUDO
	ldr	w2, [x8, :lo12:OP_IS_CALL_PSEUDO]
	ldur	x3, [x29, #-72]
	bl	block_bind_library
	stur	w0, [x29, #-48]
	b	.LBB0_29
.LBB0_26:                               //   in Loop: Header=BB0_1 Depth=1
	bl	gen_noop
	add	x6, sp, #116
	str	w0, [sp, #116]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-104]
	ldur	w2, [x29, #-76]
	ldur	w3, [x29, #-80]
	ldur	w4, [x29, #-88]
	ldur	x5, [x29, #-72]
	ldur	x7, [x29, #-40]
	bl	load_library
	ldursw	x8, [x29, #-52]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #116]
	ldur	w1, [x29, #-48]
	adrp	x8, OP_IS_CALL_PSEUDO
	ldr	w2, [x8, :lo12:OP_IS_CALL_PSEUDO]
	ldur	x3, [x29, #-72]
	bl	block_bind_library
	stur	w0, [x29, #-48]
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-96]
	bl	jv_free
	b	.LBB0_1
.LBB0_31:
	ldur	w0, [x29, #-24]
	bl	jv_free
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	w0, [x29, #-44]
	bl	jv_free
	ldur	w8, [x29, #-52]
	stur	w8, [x29, #-4]
	b	.LBB0_32
.LBB0_32:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #240]            // 16-byte Folded Reload
	add	sp, sp, #256
	ret
.Lfunc_end0:
	.size	process_dependencies, .Lfunc_end0-process_dependencies
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"is_data"
	.size	.L.str, 8
	.type	JV_KIND_TRUE,@object            // @JV_KIND_TRUE
	.bss
	.globl	JV_KIND_TRUE
	.p2align	3
JV_KIND_TRUE:
	.xword	0                               // 0x0
	.size	JV_KIND_TRUE, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"raw"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"optional"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"relpath"
	.size	.L.str.3, 8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"as"
	.size	.L.str.4, 3
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"search"
	.size	.L.str.5, 7
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	".json"
	.size	.L.str.6, 6
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	".jq"
	.size	.L.str.7, 4
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"jq: error: %s\n"
	.size	.L.str.8, 15
	.type	OP_IS_CALL_PSEUDO,@object       // @OP_IS_CALL_PSEUDO
	.bss
	.globl	OP_IS_CALL_PSEUDO
	.p2align	2
OP_IS_CALL_PSEUDO:
	.word	0                               // 0x0
	.size	OP_IS_CALL_PSEUDO, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym process_dependencies
	.addrsig_sym block_take_imports
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_get
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object_get
	.addrsig_sym jv_string
	.addrsig_sym jv_free
	.addrsig_sym validate_relpath
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_string_value
	.addrsig_sym default_search
	.addrsig_sym find_lib
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jq_report_error
	.addrsig_sym jv_string_fmt
	.addrsig_sym load_library
	.addrsig_sym block_bind_library
	.addrsig_sym strcmp
	.addrsig_sym gen_noop
	.addrsig_sym JV_KIND_TRUE
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym OP_IS_CALL_PSEUDO
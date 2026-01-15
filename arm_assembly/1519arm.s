	.text
	.globl	load_module_meta                // -- Begin function load_module_meta
	.p2align	2
	.type	load_module_meta,@function
load_module_meta:                       // @load_module_meta
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-20]
	bl	validate_relpath
	str	w0, [sp, #36]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	jq_get_lib_dirs
	str	w0, [sp, #40]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	jq_get_jq_origin
	str	w0, [sp, #44]                   // 4-byte Folded Spill
	bl	jv_null
	ldr	w1, [sp, #36]                   // 4-byte Folded Reload
	ldr	w2, [sp, #40]                   // 4-byte Folded Reload
	ldr	w4, [sp, #44]                   // 4-byte Folded Reload
	mov	w5, w0
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	adrp	x3, .L.str
	add	x3, x3, :lo12:.L.str
	bl	find_lib
	stur	w0, [x29, #-24]
	ldur	w0, [x29, #-24]
	bl	jv_is_valid
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	bl	jv_null
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-24]
	bl	jv_string_value
	mov	w1, #1
	bl	jv_load_file
	stur	w0, [x29, #-32]
	ldur	w0, [x29, #-32]
	bl	jv_is_valid
	cbz	x0, .LBB0_8
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	jv_string_value
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-32]
	bl	jv_string_value
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-32]
	bl	jv_copy
	bl	jv_string_length_bytes
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	locfile_init
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-48]
	sub	x1, x29, #36
	bl	jq_parse_library
	stur	w0, [x29, #-52]
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_7
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-36]
	bl	block_module_meta
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-28]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	jv_object
	stur	w0, [x29, #-28]
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-28]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	sub	x0, x29, #36
	bl	block_take_imports
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_object_set
	stur	w0, [x29, #-28]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-48]
	bl	locfile_free
	ldur	w0, [x29, #-36]
	bl	block_free
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-24]
	bl	jv_free
	ldur	w0, [x29, #-32]
	bl	jv_free
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	load_module_meta, .Lfunc_end0-load_module_meta
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".jq"
	.size	.L.str, 4
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"deps"
	.size	.L.str.1, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_lib
	.addrsig_sym validate_relpath
	.addrsig_sym jq_get_lib_dirs
	.addrsig_sym jq_get_jq_origin
	.addrsig_sym jv_null
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_load_file
	.addrsig_sym jv_string_value
	.addrsig_sym locfile_init
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jq_parse_library
	.addrsig_sym block_module_meta
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string
	.addrsig_sym block_take_imports
	.addrsig_sym locfile_free
	.addrsig_sym block_free
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_NULL
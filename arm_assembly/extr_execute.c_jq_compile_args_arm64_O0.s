	.text
	.globl	jq_compile_args                 // -- Begin function jq_compile_args
	.p2align	2
	.type	jq_compile_args,@function
jq_compile_args:                        // @jq_compile_args
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #8]
	bl	jv_nomem_handler
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x9, [x8, :lo12:JV_KIND_ARRAY]
	mov	w8, #1
	subs	x9, x0, x9
	stur	w8, [x29, #-44]                 // 4-byte Folded Spill
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	x8, [x8, :lo12:JV_KIND_OBJECT]
	subs	x8, x0, x8
	cset	w8, eq
	stur	w8, [x29, #-44]                 // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-44]                 // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-8]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	strlen
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	locfile_init
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-8]
	bl	jq_reset
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	bytecode_free
	ldur	x8, [x29, #-8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-32]
	sub	x2, x29, #36
	bl	load_program
	stur	w0, [x29, #-40]
	ldur	w8, [x29, #-40]
	cbnz	w8, .LBB0_8
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	sub	x1, x29, #36
	bl	builtins_bind
	stur	w0, [x29, #-40]
	ldur	w8, [x29, #-40]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-36]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-20]
	bl	args2obj
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	mov	w3, w0
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	stur	w3, [x29, #-20]
	bl	block_compile
	stur	w0, [x29, #-40]
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_9
.LBB0_8:
	ldur	w0, [x29, #-20]
	bl	jv_free
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-40]
	cbz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	w1, [x29, #-40]
	ldur	w10, [x29, #-40]
	adrp	x9, .L.str.3
	add	x9, x9, :lo12:.L.str.3
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	subs	w10, w10, #1
	csel	x2, x8, x9, gt
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string_fmt
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	jq_report_error
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	optimize
	ldur	x8, [x29, #-8]
	str	x0, [x8]
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-32]
	bl	locfile_free
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	jq_compile_args, .Lfunc_end0-jq_compile_args
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.xword	0                               // 0x0
	.size	JV_KIND_OBJECT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<top-level>"
	.size	.L.str, 12
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"jq: %d compile %s"
	.size	.L.str.1, 18
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"errors"
	.size	.L.str.2, 7
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"error"
	.size	.L.str.3, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_nomem_handler
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym locfile_init
	.addrsig_sym strlen
	.addrsig_sym jq_reset
	.addrsig_sym bytecode_free
	.addrsig_sym load_program
	.addrsig_sym builtins_bind
	.addrsig_sym block_compile
	.addrsig_sym args2obj
	.addrsig_sym jv_free
	.addrsig_sym jq_report_error
	.addrsig_sym jv_string_fmt
	.addrsig_sym optimize
	.addrsig_sym locfile_free
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_OBJECT
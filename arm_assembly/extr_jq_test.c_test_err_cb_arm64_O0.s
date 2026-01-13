	.text
	.p2align	2                               // -- Begin function test_err_cb
	.type	test_err_cb,@function
test_err_cb:                            // @test_err_cb
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldur	w0, [x29, #-12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-12]
	adrp	x8, JV_PRINT_INVALID
	ldr	w1, [x8, :lo12:JV_PRINT_INVALID]
	bl	jv_dump_string
	stur	w0, [x29, #-12]
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #9
	bl	strncmp
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_string_value
	mov	x3, x0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	mov	w1, #4
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	snprintf
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	mov	w1, #10
	bl	strchr
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	mov	w1, #10
	bl	strchr
	strb	wzr, [x0]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_err_cb, .Lfunc_end0-test_err_cb
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	JV_PRINT_INVALID,@object        // @JV_PRINT_INVALID
	.globl	JV_PRINT_INVALID
	.p2align	2
JV_PRINT_INVALID:
	.word	0                               // 0x0
	.size	JV_PRINT_INVALID, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_err_cb
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_dump_string
	.addrsig_sym strncmp
	.addrsig_sym jv_string_value
	.addrsig_sym snprintf
	.addrsig_sym strchr
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_PRINT_INVALID
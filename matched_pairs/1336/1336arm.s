	.text
	.p2align	2                               // -- Begin function parse_slice
	.type	parse_slice,@function
parse_slice:                            // @parse_slice
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	w0, [x29, #-12]
	bl	jv_copy
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	bl	jv_object_get
	stur	w0, [x29, #-36]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	jv_object_get
	stur	w0, [x29, #-40]
	ldur	w0, [x29, #-36]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-36]
	bl	jv_free
	mov	w0, wzr
	bl	jv_number
	stur	w0, [x29, #-36]
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-8]
	bl	jv_array_length
	stur	w0, [x29, #-44]
	b	.LBB0_8
.LBB0_4:
	ldur	w0, [x29, #-8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-8]
	bl	jv_string_length_codepoints
	stur	w0, [x29, #-44]
	b	.LBB0_7
.LBB0_6:
	ldur	w0, [x29, #-8]
	bl	jv_free
	stur	wzr, [x29, #-4]
	b	.LBB0_34
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldur	w0, [x29, #-40]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-40]
	bl	jv_free
	ldur	w0, [x29, #-44]
	bl	jv_number
	stur	w0, [x29, #-40]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-36]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-40]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-36]
	bl	jv_free
	ldur	w0, [x29, #-40]
	bl	jv_free
	stur	wzr, [x29, #-4]
	b	.LBB0_34
.LBB0_13:
	ldur	w0, [x29, #-36]
	bl	jv_number_value
	str	d0, [sp, #40]
	ldur	w0, [x29, #-40]
	bl	jv_number_value
	str	d0, [sp, #32]
	ldur	w0, [x29, #-36]
	bl	jv_free
	ldur	w0, [x29, #-40]
	bl	jv_free
	ldr	d0, [sp, #40]
	fcmp	d0, #0.0
	b.pl	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	s1, [x29, #-44]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	ldr	d0, [sp, #40]
	fadd	d0, d0, d1
	str	d0, [sp, #40]
	b	.LBB0_15
.LBB0_15:
	ldr	d0, [sp, #32]
	fcmp	d0, #0.0
	b.pl	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	s1, [x29, #-44]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	ldr	d0, [sp, #32]
	fadd	d0, d0, d1
	str	d0, [sp, #32]
	b	.LBB0_17
.LBB0_17:
	ldr	d0, [sp, #40]
	fcmp	d0, #0.0
	b.pl	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	movi	d0, #0000000000000000
	str	d0, [sp, #40]
	b	.LBB0_19
.LBB0_19:
	ldr	d0, [sp, #40]
	ldur	s2, [x29, #-44]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fcmp	d0, d1
	b.le	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldur	s1, [x29, #-44]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	str	d0, [sp, #40]
	b	.LBB0_21
.LBB0_21:
	ldr	d0, [sp, #40]
	fcvtzs	w8, d0
	str	w8, [sp, #28]
	ldr	d0, [sp, #32]
	ldur	s2, [x29, #-44]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fcmp	d0, d1
	b.le	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_24
.LBB0_23:
	ldr	d0, [sp, #32]
	fcvtzs	w8, d0
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_24
.LBB0_24:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	str	w8, [sp, #24]
	ldr	s1, [sp, #24]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	d1, [sp, #32]
	fcmp	d0, d1
	b.pl	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_26
.LBB0_26:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	b.le	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #24]
	b	.LBB0_28
.LBB0_28:
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldr	w8, [sp, #28]
	str	w8, [sp, #24]
	b	.LBB0_30
.LBB0_30:
	ldr	w10, [sp, #28]
	mov	w9, wzr
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.gt	.LBB0_33
	b	.LBB0_31
.LBB0_31:
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #24]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.gt	.LBB0_33
	b	.LBB0_32
.LBB0_32:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	cset	w8, le
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_33
.LBB0_33:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_34
.LBB0_34:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	parse_slice, .Lfunc_end0-parse_slice
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"start"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"end"
	.size	.L.str.1, 4
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_slice
	.addrsig_sym jv_object_get
	.addrsig_sym jv_copy
	.addrsig_sym jv_string
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym jv_array_length
	.addrsig_sym jv_string_length_codepoints
	.addrsig_sym jv_number_value
	.addrsig_sym assert
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_NUMBER
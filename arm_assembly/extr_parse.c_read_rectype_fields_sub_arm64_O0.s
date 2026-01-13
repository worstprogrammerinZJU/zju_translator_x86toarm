	.text
	.p2align	2                               // -- Begin function read_rectype_fields_sub
	.type	read_rectype_fields_sub,@function
read_rectype_fields_sub:                // @read_rectype_fields_sub
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	bl	make_vector
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
	adrp	x8, KSTATIC_ASSERT
	ldrb	w0, [x8, :lo12:KSTATIC_ASSERT]
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	read_static_assert
	b	.LBB0_1
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	bl	is_type
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_19
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	mov	x0, xzr
	bl	read_decl_spec
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #59
	bl	next_token
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	mov	x0, xzr
	bl	make_pair
	mov	w1, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_1
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	sub	x0, x29, #24
	mov	x2, xzr
	stur	xzr, [x29, #-24]
	ldur	x1, [x29, #-16]
	adrp	x8, DECL_PARAM_TYPEONLY
	ldr	w3, [x8, :lo12:DECL_PARAM_TYPEONLY]
	bl	read_declarator
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	ensure_not_void
	ldr	x0, [sp, #32]
	bl	copy_type
	str	x0, [sp, #32]
	mov	w0, #58
	bl	next_token
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	read_bitsize
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=2
	mov	w8, #-1
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	ldr	x9, [sp, #32]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	make_pair
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	mov	w0, #44
	bl	next_token
	cbz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_9
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	mov	w1, #125
	bl	is_keyword
	cbz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	warnt
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #59
	bl	expect
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_19:
	mov	w0, #125
	bl	expect
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_rectype_fields_sub, .Lfunc_end0-read_rectype_fields_sub
                                        // -- End function
	.type	KSTATIC_ASSERT,@object          // @KSTATIC_ASSERT
	.bss
	.globl	KSTATIC_ASSERT
KSTATIC_ASSERT:
	.byte	0                               // 0x0
	.size	KSTATIC_ASSERT, 1
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.type	DECL_PARAM_TYPEONLY,@object     // @DECL_PARAM_TYPEONLY
	.globl	DECL_PARAM_TYPEONLY
	.p2align	2
DECL_PARAM_TYPEONLY:
	.word	0                               // 0x0
	.size	DECL_PARAM_TYPEONLY, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"missing ';' at the end of field list"
	.size	.L.str, 37
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rectype_fields_sub
	.addrsig_sym make_vector
	.addrsig_sym next_token
	.addrsig_sym read_static_assert
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_decl_spec
	.addrsig_sym vec_push
	.addrsig_sym make_pair
	.addrsig_sym read_declarator
	.addrsig_sym ensure_not_void
	.addrsig_sym copy_type
	.addrsig_sym read_bitsize
	.addrsig_sym is_keyword
	.addrsig_sym warnt
	.addrsig_sym expect
	.addrsig_sym KSTATIC_ASSERT
	.addrsig_sym KIND_STRUCT
	.addrsig_sym DECL_PARAM_TYPEONLY
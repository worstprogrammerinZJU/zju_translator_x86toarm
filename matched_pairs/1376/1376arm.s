	.text
	.p2align	2                               // -- Begin function parse_token
	.type	parse_token,@function
parse_token:                            // @parse_token
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	sturb	w1, [x29, #-17]
	ldurb	w8, [x29, #-17]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	subs	w8, w8, #44
	b.eq	.LBB0_24
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	subs	w8, w8, #58
	b.eq	.LBB0_16
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	subs	w8, w8, #91
	b.eq	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	subs	w8, w8, #93
	b.eq	.LBB0_37
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	subs	w8, w8, #123
	b.eq	.LBB0_11
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	subs	w8, w8, #125
	b.eq	.LBB0_46
	b	.LBB0_60
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adrp	x9, MAX_PARSING_DEPTH
	ldr	w9, [x9, :lo12:MAX_PARSING_DEPTH]
	subs	w8, w8, w9
	b.lt	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbz	w0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_10:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	bl	jv_array
	mov	x1, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	push
	b	.LBB0_60
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adrp	x9, MAX_PARSING_DEPTH
	ldr	w9, [x9, :lo12:MAX_PARSING_DEPTH]
	subs	w8, w8, w9
	b.lt	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_13:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbz	w0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_15:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	jv_object
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	push
	b	.LBB0_60
.LBB0_16:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbnz	w0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_18:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbz	w8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	w8, [x8, :lo12:JV_KIND_OBJECT]
	subs	w8, w0, w8
	b.eq	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_21:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	w8, [x8, :lo12:JV_KIND_STRING]
	subs	w8, w0, w8
	b.eq	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_23:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	bl	push
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_60
.LBB0_24:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbnz	w0, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_26:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_28:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	w8, [x8, :lo12:JV_KIND_ARRAY]
	subs	w8, w0, w8
	b.ne	.LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	bl	jv_array_append
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	str	x0, [x8, w9, sxtw #3]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_36
.LBB0_30:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	w8, [x8, :lo12:JV_KIND_STRING]
	subs	w8, w0, w8
	b.ne	.LBB0_34
	b	.LBB0_31
.LBB0_31:
	ldur	x8, [x29, #-16]
	ldr	w9, [x8]
	mov	w8, #0
	subs	w9, w9, #1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.le	.LBB0_33
	b	.LBB0_32
.LBB0_32:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #2
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	w8, [x8, :lo12:JV_KIND_OBJECT]
	subs	w8, w0, w8
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_33
.LBB0_33:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #2
	ldr	x0, [x8, w9, sxtw #3]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x1, [x8, w9, sxtw #3]
	ldur	x8, [x29, #-16]
	ldr	x2, [x8, #16]
	bl	jv_object_set
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #2
	str	x0, [x8, w9, sxtw #3]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_35
.LBB0_34:
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_35:
	b	.LBB0_36
.LBB0_36:
	b	.LBB0_60
.LBB0_37:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbz	w8, .LBB0_39
	b	.LBB0_38
.LBB0_38:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	w8, [x8, :lo12:JV_KIND_ARRAY]
	subs	w8, w0, w8
	b.eq	.LBB0_40
	b	.LBB0_39
.LBB0_39:
	adrp	x8, .L.str.8
	add	x8, x8, :lo12:.L.str.8
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_40:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbz	w0, .LBB0_42
	b	.LBB0_41
.LBB0_41:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	bl	jv_array_append
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	str	x0, [x8, w9, sxtw #3]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_45
.LBB0_42:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_copy
	bl	jv_array_length
	cbz	w0, .LBB0_44
	b	.LBB0_43
.LBB0_43:
	adrp	x8, .L.str.9
	add	x8, x8, :lo12:.L.str.9
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_44:
	b	.LBB0_45
.LBB0_45:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_free
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x10, [x29, #-16]
	ldr	w9, [x10]
	subs	w9, w9, #1
	str	w9, [x10]
	ldr	x8, [x8, w9, sxtw #3]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #16]
	b	.LBB0_60
.LBB0_46:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_48
	b	.LBB0_47
.LBB0_47:
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_48:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_is_valid
	cbz	w0, .LBB0_54
	b	.LBB0_49
.LBB0_49:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	w8, [x8, :lo12:JV_KIND_STRING]
	subs	w8, w0, w8
	b.eq	.LBB0_51
	b	.LBB0_50
.LBB0_50:
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_51:
	ldur	x8, [x29, #-16]
	ldr	w9, [x8]
	mov	w8, #0
	subs	w9, w9, #1
	str	w8, [sp]                        // 4-byte Folded Spill
	b.le	.LBB0_53
	b	.LBB0_52
.LBB0_52:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #2
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	w8, [x8, :lo12:JV_KIND_OBJECT]
	subs	w8, w0, w8
	cset	w8, eq
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_53
.LBB0_53:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #2
	ldr	x0, [x8, w9, sxtw #3]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x1, [x8, w9, sxtw #3]
	ldur	x8, [x29, #-16]
	ldr	x2, [x8, #16]
	bl	jv_object_set
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #2
	str	x0, [x8, w9, sxtw #3]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	bl	jv_invalid
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_59
.LBB0_54:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	w8, [x8, :lo12:JV_KIND_OBJECT]
	subs	w8, w0, w8
	b.eq	.LBB0_56
	b	.LBB0_55
.LBB0_55:
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_56:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	jv_copy
	bl	jv_object_length
	cbz	w0, .LBB0_58
	b	.LBB0_57
.LBB0_57:
	adrp	x8, .L.str.11
	add	x8, x8, :lo12:.L.str.11
	stur	x8, [x29, #-8]
	b	.LBB0_61
.LBB0_58:
	b	.LBB0_59
.LBB0_59:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	jv_free
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x10, [x29, #-16]
	ldr	w9, [x10]
	subs	w9, w9, #1
	str	w9, [x10]
	ldr	x8, [x8, w9, sxtw #3]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #16]
	b	.LBB0_60
.LBB0_60:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_61
.LBB0_61:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	parse_token, .Lfunc_end0-parse_token
                                        // -- End function
	.type	MAX_PARSING_DEPTH,@object       // @MAX_PARSING_DEPTH
	.bss
	.globl	MAX_PARSING_DEPTH
	.p2align	2
MAX_PARSING_DEPTH:
	.word	0                               // 0x0
	.size	MAX_PARSING_DEPTH, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Exceeds depth limit for parsing"
	.size	.L.str, 32
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Expected separator between values"
	.size	.L.str.1, 34
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"Expected string key before ':'"
	.size	.L.str.2, 31
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.word	0                               // 0x0
	.size	JV_KIND_OBJECT, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"':' not as part of an object"
	.size	.L.str.3, 29
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Object keys must be strings"
	.size	.L.str.4, 28
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"Expected value before ','"
	.size	.L.str.5, 26
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"',' not as part of an object or array"
	.size	.L.str.6, 38
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.type	.L.str.7,@object                // @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Objects must consist of key:value pairs"
	.size	.L.str.7, 40
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"Unmatched ']'"
	.size	.L.str.8, 14
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"Expected another array element"
	.size	.L.str.9, 31
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"Unmatched '}'"
	.size	.L.str.10, 14
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"Expected another key-value pair"
	.size	.L.str.11, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_token
	.addrsig_sym jv_is_valid
	.addrsig_sym push
	.addrsig_sym jv_array
	.addrsig_sym jv_object
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_invalid
	.addrsig_sym jv_array_append
	.addrsig_sym assert
	.addrsig_sym jv_object_set
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym jv_object_length
	.addrsig_sym MAX_PARSING_DEPTH
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_ARRAY
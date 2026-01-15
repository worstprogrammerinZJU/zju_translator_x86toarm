	.text
	.p2align	2                               // -- Begin function read_func_param_list
	.type	read_func_param_list,@function
read_func_param_list:                   // @read_func_param_list
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	bl	get
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	adrp	x8, KVOID
	ldrb	w1, [x8, :lo12:KVOID]
	bl	is_keyword
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	mov	w0, #41
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	bl	make_vector
	mov	x1, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	mov	w3, wzr
	mov	w2, w3
	bl	make_func_type
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_3:
	ldur	x0, [x29, #-32]
	mov	w1, #41
	bl	is_keyword
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	make_vector
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w3, #1
	mov	w2, w3
	bl	make_func_type
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_5:
	ldur	x0, [x29, #-32]
	bl	unget_token
	bl	peek
	stur	x0, [x29, #-40]
	adrp	x8, KELLIPSIS
	ldrb	w0, [x8, :lo12:KELLIPSIS]
	bl	next_token
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-40]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_7
.LBB0_7:
	bl	peek
	bl	is_type
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	bl	make_vector
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-16]
	sub	x2, x29, #44
	bl	read_declarator_params
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #40]
	ldur	w2, [x29, #-44]
	mov	w3, wzr
	bl	make_func_type
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_9:
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-32]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-16]
	bl	read_declarator_params_oldstyle
	bl	make_vector
	str	x0, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	x0, [sp, #32]
	adrp	x8, type_int
	ldr	w1, [x8, :lo12:type_int]
	bl	vec_push
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_12
.LBB0_15:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	mov	w2, wzr
	mov	w3, #1
	bl	make_func_type
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_func_param_list, .Lfunc_end0-read_func_param_list
                                        // -- End function
	.type	KVOID,@object                   // @KVOID
	.bss
	.globl	KVOID
KVOID:
	.byte	0                               // 0x0
	.size	KVOID, 1
	.type	KELLIPSIS,@object               // @KELLIPSIS
	.globl	KELLIPSIS
KELLIPSIS:
	.byte	0                               // 0x0
	.size	KELLIPSIS, 1
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"at least one parameter is required before \"...\""
	.size	.L.str, 48
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"invalid function definition"
	.size	.L.str.1, 28
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_func_param_list
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym next_token
	.addrsig_sym make_func_type
	.addrsig_sym make_vector
	.addrsig_sym unget_token
	.addrsig_sym peek
	.addrsig_sym errort
	.addrsig_sym is_type
	.addrsig_sym read_declarator_params
	.addrsig_sym read_declarator_params_oldstyle
	.addrsig_sym vec_len
	.addrsig_sym vec_push
	.addrsig_sym KVOID
	.addrsig_sym KELLIPSIS
	.addrsig_sym type_int
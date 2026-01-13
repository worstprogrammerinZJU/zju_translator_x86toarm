	.text
	.p2align	2                               // -- Begin function read_generic_list
	.type	read_generic_list,@function
read_generic_list:                      // @read_generic_list
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	bl	make_vector
	stur	x0, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #41
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	str	x0, [sp, #24]
	adrp	x8, KDEFAULT
	ldrb	w0, [x8, :lo12:KDEFAULT]
	bl	next_token
	cbz	x0, .LBB0_7
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #58
	bl	expect
	bl	read_assignment_expr
	ldur	x8, [x29, #-8]
	str	x0, [x8]
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	bl	read_cast_type
	str	x0, [sp, #16]
	mov	w0, #58
	bl	expect
	bl	read_assignment_expr
	str	x0, [sp, #8]
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	make_pair
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #44
	bl	next_token
	b	.LBB0_1
.Lfunc_end0:
	.size	read_generic_list, .Lfunc_end0-read_generic_list
                                        // -- End function
	.type	KDEFAULT,@object                // @KDEFAULT
	.bss
	.globl	KDEFAULT
KDEFAULT:
	.byte	0                               // 0x0
	.size	KDEFAULT, 1
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"default expression specified twice"
	.size	.L.str, 35
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_generic_list
	.addrsig_sym make_vector
	.addrsig_sym next_token
	.addrsig_sym peek
	.addrsig_sym errort
	.addrsig_sym expect
	.addrsig_sym read_assignment_expr
	.addrsig_sym read_cast_type
	.addrsig_sym vec_push
	.addrsig_sym make_pair
	.addrsig_sym KDEFAULT
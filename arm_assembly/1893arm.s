	.text
	.p2align	2                               // -- Begin function read_generic
	.type	read_generic,@function
read_generic:                           // @read_generic
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	mov	w0, #40
	bl	expect
	bl	peek
	stur	x0, [x29, #-16]
	bl	read_assignment_expr
	stur	x0, [x29, #-24]
	mov	w0, #44
	bl	expect
	sub	x0, x29, #32
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-32]
	bl	read_generic_list
	stur	x0, [x29, #-40]
	stur	wzr, [x29, #-44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	vec_len
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-40]
	ldur	w1, [x29, #-44]
	bl	vec_get
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	ldr	w0, [x8]
	ldr	x1, [sp, #32]
	bl	type_compatible
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_1
.LBB0_6:
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	node2s
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w0, [x8]
	bl	ty2s
	ldr	w2, [sp, #4]                    // 4-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_generic, .Lfunc_end0-read_generic
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no matching generic selection for %s: %s"
	.size	.L.str, 41
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_generic
	.addrsig_sym expect
	.addrsig_sym peek
	.addrsig_sym read_assignment_expr
	.addrsig_sym read_generic_list
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym type_compatible
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym ty2s
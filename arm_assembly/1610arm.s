	.text
	.p2align	2                               // -- Begin function printpat_l
	.type	printpat_l,@function
printpat_l:                             // @printpat_l
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	mov	x2, xzr
	bl	getpatt
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	lua_getfenv
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	bl	lua_objlen
	stur	w0, [x29, #-20]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.gt	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #24]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldur	x0, [x29, #-8]
	ldr	w2, [sp, #24]
	mov	w1, #-1
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	bl	lua_rawgeti
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	lua_isstring
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	bl	lua_tostring
	mov	x1, x0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	mov	w1, #-1
	bl	lua_type
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	lua_typename
	mov	x1, x0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, #1
	bl	lua_pop
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_7:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	ldur	x0, [x29, #-16]
	bl	printpatt
	mov	w0, wzr
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	printpat_l, .Lfunc_end0-printpat_l
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"["
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%d = "
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s  "
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"]\n"
	.size	.L.str.3, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printpat_l
	.addrsig_sym getpatt
	.addrsig_sym lua_getfenv
	.addrsig_sym lua_objlen
	.addrsig_sym printf
	.addrsig_sym lua_rawgeti
	.addrsig_sym lua_isstring
	.addrsig_sym lua_tostring
	.addrsig_sym lua_typename
	.addrsig_sym lua_type
	.addrsig_sym lua_pop
	.addrsig_sym printpatt
	.text
	.p2align	2                               // -- Begin function check_file
	.type	check_file,@function
check_file:                             // @check_file
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	luaL_checkudata
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	luaL_error
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	luaL_error
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	check_file, .Lfunc_end0-check_file
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FILE*"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s: not a file"
	.size	.L.str.1, 15
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s: closed file"
	.size	.L.str.2, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_file
	.addrsig_sym luaL_checkudata
	.addrsig_sym luaL_error
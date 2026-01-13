	.text
	.p2align	2                               // -- Begin function doublecap
	.type	doublecap,@function
doublecap:                              // @doublecap
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	w3, [sp, #24]
	ldur	w8, [x29, #-20]
	adrp	x9, INT_MAX
	ldr	w9, [x9, :lo12:INT_MAX]
	mov	w10, #8
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	b.lt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-20]
	lsl	w9, w8, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	lua_newuserdata
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	ldursw	x8, [x29, #-20]
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [sp, #24]
	bl	caplistidx
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	lua_replace
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	doublecap, .Lfunc_end0-doublecap
                                        // -- End function
	.type	INT_MAX,@object                 // @INT_MAX
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.word	0                               // 0x0
	.size	INT_MAX, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many captures"
	.size	.L.str, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym doublecap
	.addrsig_sym luaL_error
	.addrsig_sym lua_newuserdata
	.addrsig_sym memcpy
	.addrsig_sym lua_replace
	.addrsig_sym caplistidx
	.addrsig_sym INT_MAX
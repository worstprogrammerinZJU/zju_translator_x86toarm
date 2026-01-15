	.text
	.p2align	2                               // -- Begin function stringcap
	.type	stringcap,@function
stringcap:                              // @stringcap
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, MAXSTRCAPS
	ldr	w8, [x8, :lo12:MAXSTRCAPS]
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-24]
	lsl	x9, x8, #4
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x9, x9, x10
	mov	sp, x9
	stur	x9, [x29, #-80]                 // 8-byte Folded Spill
	stur	x8, [x29, #-32]
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	updatecache
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-84]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #4]
	bl	subscache
	mov	w1, w0
	ldur	w0, [x29, #-84]                 // 4-byte Folded Reload
	sub	x2, x29, #48
	bl	lua_tolstring
	ldur	x1, [x29, #-80]                 // 8-byte Folded Reload
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-16]
	mov	w2, wzr
	bl	getstrcaps
	subs	w8, w0, #1
	stur	w8, [x29, #-36]
	stur	xzr, [x29, #-56]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-56]
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	b.hs	.LBB0_11
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-56]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #37
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-56]
	add	x9, x9, #1
	stur	x9, [x29, #-56]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #48
	b.lt	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-56]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #57
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-56]
	ldrb	w1, [x8, x9]
	bl	luaL_addchar
	b	.LBB0_9
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-56]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #48
	stur	w8, [x29, #-68]
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.le	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-56]
	ldrb	w2, [x8, x9]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x9, [x29, #-80]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldursw	x8, [x29, #-68]
	lsl	x8, x8, #4
	ldr	x1, [x9, x8]
	ldursw	x10, [x29, #-68]
	mov	x8, x9
	add	x8, x8, x10, lsl #4
	ldr	x8, [x8, #8]
	ldursw	x10, [x29, #-68]
	lsl	x10, x10, #4
	ldr	x9, [x9, x10]
	subs	x2, x8, x9
	bl	luaL_addlstring
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	add	x8, x8, #1
	stur	x8, [x29, #-56]
	b	.LBB0_1
.LBB0_11:
	ldur	x8, [x29, #-24]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	stringcap, .Lfunc_end0-stringcap
                                        // -- End function
	.type	MAXSTRCAPS,@object              // @MAXSTRCAPS
	.bss
	.globl	MAXSTRCAPS
	.p2align	2
MAXSTRCAPS:
	.word	0                               // 0x0
	.size	MAXSTRCAPS, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid capture index (%c)"
	.size	.L.str, 27
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stringcap
	.addrsig_sym updatecache
	.addrsig_sym lua_tolstring
	.addrsig_sym subscache
	.addrsig_sym getstrcaps
	.addrsig_sym luaL_addchar
	.addrsig_sym luaL_error
	.addrsig_sym luaL_addlstring
	.addrsig_sym MAXSTRCAPS
	.text
	.p2align	2                               // -- Begin function updatecache_
	.type	updatecache_,@function
updatecache_:                           // @updatecache_
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	bl	penvidx
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	w2, [x29, #-12]
	bl	lua_rawgeti
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	bl	subscache
	mov	w1, w0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	bl	lua_replace
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	updatecache_, .Lfunc_end0-updatecache_
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym updatecache_
	.addrsig_sym lua_rawgeti
	.addrsig_sym penvidx
	.addrsig_sym lua_replace
	.addrsig_sym subscache
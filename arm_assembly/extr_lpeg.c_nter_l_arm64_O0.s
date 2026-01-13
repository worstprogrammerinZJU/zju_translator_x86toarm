	.text
	.p2align	2                               // -- Begin function nter_l
	.type	nter_l,@function
nter_l:                                 // @nter_l
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	mov	w1, #1
	stur	w1, [x29, #-20]                 // 4-byte Folded Spill
	bl	lua_isnoneornil
	ldur	w2, [x29, #-20]                 // 4-byte Folded Reload
	mov	w8, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	and	w1, w8, #0x1
	adrp	x3, .L.str
	add	x3, x3, :lo12:.L.str
	bl	luaL_argcheck
	ldur	w1, [x29, #-20]                 // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	newpatt
	ldur	w1, [x29, #-20]                 // 4-byte Folded Reload
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, IOpenCall
	ldr	w8, [x8, :lo12:IOpenCall]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	value2fenv
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	setinst
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	nter_l, .Lfunc_end0-nter_l
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"non-nil value expected"
	.size	.L.str, 23
	.type	IOpenCall,@object               // @IOpenCall
	.bss
	.globl	IOpenCall
	.p2align	2
IOpenCall:
	.word	0                               // 0x0
	.size	IOpenCall, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nter_l
	.addrsig_sym luaL_argcheck
	.addrsig_sym lua_isnoneornil
	.addrsig_sym newpatt
	.addrsig_sym setinst
	.addrsig_sym value2fenv
	.addrsig_sym IOpenCall
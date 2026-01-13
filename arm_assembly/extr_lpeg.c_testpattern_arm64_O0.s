	.text
	.p2align	2                               // -- Begin function testpattern
	.type	testpattern,@function
testpattern:                            // @testpattern
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	lua_touserdata
	cbz	x0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	lua_getmetatable
	cbz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	adrp	x8, PATTERN_T
	ldr	w1, [x8, :lo12:PATTERN_T]
	bl	luaL_getmetatable
	ldr	x0, [sp, #16]
	mov	w1, #-1
	mov	w2, #-2
	bl	lua_rawequal
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	mov	w1, #2
	bl	lua_pop
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	testpattern, .Lfunc_end0-testpattern
                                        // -- End function
	.type	PATTERN_T,@object               // @PATTERN_T
	.bss
	.globl	PATTERN_T
	.p2align	2
PATTERN_T:
	.word	0                               // 0x0
	.size	PATTERN_T, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym testpattern
	.addrsig_sym lua_touserdata
	.addrsig_sym lua_getmetatable
	.addrsig_sym luaL_getmetatable
	.addrsig_sym lua_rawequal
	.addrsig_sym lua_pop
	.addrsig_sym PATTERN_T
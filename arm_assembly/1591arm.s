	.text
	.p2align	2                               // -- Begin function newpatt
	.type	newpatt,@function
newpatt:                                // @newpatt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	adrp	x9, MAXPATTSIZE
	ldr	w9, [x9, :lo12:MAXPATTSIZE]
	subs	w9, w9, #1
	subs	x8, x8, w9, sxtw
	b.lo	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	lsl	x1, x8, #2
	bl	lua_newuserdata
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	adrp	x8, PATTERN_T
	ldr	w1, [x8, :lo12:PATTERN_T]
	bl	luaL_getmetatable
	ldur	x0, [x29, #-8]
	mov	w1, #-2
	bl	lua_setmetatable
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	add	x0, x8, x9, lsl #2
	adrp	x8, IEnd
	ldr	w1, [x8, :lo12:IEnd]
	mov	w2, wzr
	bl	setinst
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	newpatt, .Lfunc_end0-newpatt
                                        // -- End function
	.type	MAXPATTSIZE,@object             // @MAXPATTSIZE
	.bss
	.globl	MAXPATTSIZE
	.p2align	2
MAXPATTSIZE:
	.word	0                               // 0x0
	.size	MAXPATTSIZE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pattern too big"
	.size	.L.str, 16
	.type	PATTERN_T,@object               // @PATTERN_T
	.bss
	.globl	PATTERN_T
	.p2align	2
PATTERN_T:
	.word	0                               // 0x0
	.size	PATTERN_T, 4
	.type	IEnd,@object                    // @IEnd
	.globl	IEnd
	.p2align	2
IEnd:
	.word	0                               // 0x0
	.size	IEnd, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym newpatt
	.addrsig_sym luaL_error
	.addrsig_sym lua_newuserdata
	.addrsig_sym luaL_getmetatable
	.addrsig_sym lua_setmetatable
	.addrsig_sym setinst
	.addrsig_sym MAXPATTSIZE
	.addrsig_sym PATTERN_T
	.addrsig_sym IEnd
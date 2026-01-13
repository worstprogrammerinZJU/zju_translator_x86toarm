	.text
	.p2align	2                               // -- Begin function runtimecap
	.type	runtimecap,@function
runtimecap:                             // @runtimecap
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	w5, [x29, #-44]
	ldur	x0, [x29, #-16]
	bl	findopen
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	captype
	adrp	x8, Cruntime
	ldr	x8, [x8, :lo12:Cruntime]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	adrp	x8, Cclose
	ldr	w8, [x8, :lo12:Cclose]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x8, [x29, #-24]
	add	x9, sp, #32
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	str	x8, [sp, #72]
	ldr	x8, [sp, #16]
	str	x8, [sp, #64]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #56]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #32]
	str	xzr, [sp, #48]
	ldur	w8, [x29, #-44]
	str	w8, [sp, #40]
	ldur	x0, [x29, #-8]
	mov	w1, #4
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	luaL_checkstack
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	pushluaval
	ldur	x0, [x29, #-8]
	adrp	x8, SUBJIDX
	ldr	w1, [x8, :lo12:SUBJIDX]
	bl	lua_pushvalue
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	add	x8, x8, #1
	mov	w1, w8
	bl	lua_pushinteger
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w1, wzr
	bl	pushallcaptures
	str	w0, [sp, #28]
	ldur	x0, [x29, #-8]
	ldr	w8, [sp, #28]
	add	w1, w8, #2
	adrp	x8, LUA_MULTRET
	ldr	w2, [x8, :lo12:LUA_MULTRET]
	bl	lua_call
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	mov	x9, #16
	sdiv	x8, x8, x9
	mov	w0, w8
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	runtimecap, .Lfunc_end0-runtimecap
                                        // -- End function
	.type	Cruntime,@object                // @Cruntime
	.bss
	.globl	Cruntime
	.p2align	3
Cruntime:
	.xword	0                               // 0x0
	.size	Cruntime, 8
	.type	Cclose,@object                  // @Cclose
	.globl	Cclose
	.p2align	2
Cclose:
	.word	0                               // 0x0
	.size	Cclose, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many runtime captures"
	.size	.L.str, 26
	.type	SUBJIDX,@object                 // @SUBJIDX
	.bss
	.globl	SUBJIDX
	.p2align	2
SUBJIDX:
	.word	0                               // 0x0
	.size	SUBJIDX, 4
	.type	LUA_MULTRET,@object             // @LUA_MULTRET
	.globl	LUA_MULTRET
	.p2align	2
LUA_MULTRET:
	.word	0                               // 0x0
	.size	LUA_MULTRET, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym runtimecap
	.addrsig_sym findopen
	.addrsig_sym assert
	.addrsig_sym captype
	.addrsig_sym luaL_checkstack
	.addrsig_sym pushluaval
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_pushinteger
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_call
	.addrsig_sym Cruntime
	.addrsig_sym Cclose
	.addrsig_sym SUBJIDX
	.addrsig_sym LUA_MULTRET
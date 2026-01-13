	.text
	.globl	proxy_tick                      // -- Begin function proxy_tick
	.p2align	2
	.type	proxy_tick,@function
proxy_tick:                             // @proxy_tick
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	mov	x0, sp
	mov	w1, wzr
	bl	gettimeofday
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	lua_pushnumber
	ldr	x0, [sp, #8]
	ldr	w1, [sp]
	bl	lua_pushnumber
	mov	w0, #2
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	proxy_tick, .Lfunc_end0-proxy_tick
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gettimeofday
	.addrsig_sym lua_pushnumber
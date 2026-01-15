	.text
	.p2align	2                               // -- Begin function matchtime_l
	.type	matchtime_l,@function
matchtime_l:                            // @matchtime_l
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #28]                   // 4-byte Folded Spill
	bl	getpattl
	stur	w0, [x29, #-12]
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	add	w1, w8, #1
	bl	newpatt
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #32]
	ldur	x0, [x29, #-8]
	adrp	x8, LUA_TFUNCTION
	ldr	w2, [x8, :lo12:LUA_TFUNCTION]
	mov	w1, #2
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	luaL_checktype
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	add	x8, x8, #4
	str	x8, [sp, #32]
	adrp	x8, IOpenCapture
	ldr	w8, [x8, :lo12:IOpenCapture]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	value2fenv
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, Cruntime
	ldr	w3, [x8, :lo12:Cruntime]
	mov	w4, wzr
	str	w4, [sp, #24]                   // 4-byte Folded Spill
	bl	setinstcap
	ldr	w2, [sp, #28]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	bl	addpatt
	ldr	w4, [sp, #24]                   // 4-byte Folded Reload
	ldr	x8, [sp, #32]
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #32]
	ldr	x0, [sp, #32]
	adrp	x8, ICloseRunTime
	ldr	w1, [x8, :lo12:ICloseRunTime]
	adrp	x8, Cclose
	ldr	w3, [x8, :lo12:Cclose]
	mov	w2, w4
	bl	setinstcap
	ldur	x0, [x29, #-24]
	bl	optimizecaptures
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	matchtime_l, .Lfunc_end0-matchtime_l
                                        // -- End function
	.type	LUA_TFUNCTION,@object           // @LUA_TFUNCTION
	.bss
	.globl	LUA_TFUNCTION
	.p2align	2
LUA_TFUNCTION:
	.word	0                               // 0x0
	.size	LUA_TFUNCTION, 4
	.type	IOpenCapture,@object            // @IOpenCapture
	.globl	IOpenCapture
	.p2align	2
IOpenCapture:
	.word	0                               // 0x0
	.size	IOpenCapture, 4
	.type	Cruntime,@object                // @Cruntime
	.globl	Cruntime
	.p2align	2
Cruntime:
	.word	0                               // 0x0
	.size	Cruntime, 4
	.type	ICloseRunTime,@object           // @ICloseRunTime
	.globl	ICloseRunTime
	.p2align	2
ICloseRunTime:
	.word	0                               // 0x0
	.size	ICloseRunTime, 4
	.type	Cclose,@object                  // @Cclose
	.globl	Cclose
	.p2align	2
Cclose:
	.word	0                               // 0x0
	.size	Cclose, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym matchtime_l
	.addrsig_sym getpattl
	.addrsig_sym newpatt
	.addrsig_sym luaL_checktype
	.addrsig_sym setinstcap
	.addrsig_sym value2fenv
	.addrsig_sym addpatt
	.addrsig_sym optimizecaptures
	.addrsig_sym LUA_TFUNCTION
	.addrsig_sym IOpenCapture
	.addrsig_sym Cruntime
	.addrsig_sym ICloseRunTime
	.addrsig_sym Cclose
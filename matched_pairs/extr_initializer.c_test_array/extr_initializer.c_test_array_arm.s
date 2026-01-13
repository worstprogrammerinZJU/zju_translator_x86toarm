	.text
	.p2align	2                               // -- Begin function test_array
	.type	test_array,@function
test_array:                             // @test_array
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #480
	adrp	x8, .L__const.test_array.x
	add	x8, x8, :lo12:.L__const.test_array.x
	ldr	x9, [x8]
	stur	x9, [x29, #-16]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-8]
	ldur	w1, [x29, #-16]
	mov	w0, #1
	str	w0, [sp, #44]                   // 4-byte Folded Spill
	bl	expect
	ldur	w1, [x29, #-12]
	mov	w0, #3
	str	w0, [sp, #120]                  // 4-byte Folded Spill
	bl	expect
	ldur	w1, [x29, #-8]
	mov	w0, #5
	bl	expect
	sub	x0, x29, #64
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	adrp	x1, .L__const.test_array.ye
	add	x1, x1, :lo12:.L__const.test_array.ye
	mov	x2, #48
	str	x2, [sp, #72]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x2, [sp, #72]                   // 8-byte Folded Reload
	sub	x0, x29, #112
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	adrp	x1, .L__const.test_array.y1
	add	x1, x1, :lo12:.L__const.test_array.y1
	bl	memcpy
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	w2, #12
	str	w2, [sp, #64]                   // 4-byte Folded Spill
	bl	verify
	ldr	x2, [sp, #72]                   // 8-byte Folded Reload
	sub	x0, x29, #160
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	adrp	x1, .L__const.test_array.y2
	add	x1, x1, :lo12:.L__const.test_array.y2
	bl	memcpy
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	w2, [sp, #64]                   // 4-byte Folded Reload
	bl	verify
	ldr	x2, [sp, #72]                   // 8-byte Folded Reload
	sub	x0, x29, #208
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	w1, wzr
	str	w1, [sp, #68]                   // 4-byte Folded Spill
	bl	memset
	ldr	w9, [sp, #44]                   // 4-byte Folded Reload
	ldr	w1, [sp, #68]                   // 4-byte Folded Reload
	ldr	x2, [sp, #72]                   // 8-byte Folded Reload
	ldr	w8, [sp, #120]                  // 4-byte Folded Reload
	stur	w9, [x29, #-208]
	mov	w9, #2
	str	w9, [sp, #48]                   // 4-byte Folded Spill
	stur	w9, [x29, #-196]
	stur	w8, [x29, #-184]
	mov	w8, #4
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	stur	w8, [x29, #-172]
	add	x0, sp, #224
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	bl	memset
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldr	w11, [sp, #44]                  // 4-byte Folded Reload
	ldr	w10, [sp, #48]                  // 4-byte Folded Reload
	ldr	w8, [sp, #52]                   // 4-byte Folded Reload
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	ldr	w2, [sp, #64]                   // 4-byte Folded Reload
	ldr	w9, [sp, #120]                  // 4-byte Folded Reload
	str	w11, [sp, #224]
	str	w10, [sp, #236]
	str	w9, [sp, #248]
	str	w8, [sp, #260]
	bl	verify
	ldr	w1, [sp, #68]                   // 4-byte Folded Reload
	ldr	x2, [sp, #72]                   // 8-byte Folded Reload
	add	x0, sp, #176
	str	x0, [sp, #80]                   // 8-byte Folded Spill
	bl	memset
	ldr	w1, [sp, #68]                   // 4-byte Folded Reload
	ldr	x2, [sp, #72]                   // 8-byte Folded Reload
	mov	w8, #1
	str	w8, [sp, #88]                   // 4-byte Folded Spill
	strh	w8, [sp, #176]
	mov	w8, #2
	str	w8, [sp, #92]                   // 4-byte Folded Spill
	strh	w8, [sp, #188]
	mov	w8, #3
	str	w8, [sp, #96]                   // 4-byte Folded Spill
	strh	w8, [sp, #190]
	mov	w8, #4
	str	w8, [sp, #100]                  // 4-byte Folded Spill
	strh	w8, [sp, #200]
	mov	w8, #5
	str	w8, [sp, #104]                  // 4-byte Folded Spill
	strh	w8, [sp, #202]
	mov	w8, #6
	str	w8, [sp, #108]                  // 4-byte Folded Spill
	strh	w8, [sp, #204]
	add	x0, sp, #128
	str	x0, [sp, #112]                  // 8-byte Folded Spill
	bl	memset
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	ldr	w13, [sp, #88]                  // 4-byte Folded Reload
	ldr	w12, [sp, #92]                  // 4-byte Folded Reload
	ldr	w11, [sp, #96]                  // 4-byte Folded Reload
	ldr	w10, [sp, #100]                 // 4-byte Folded Reload
	ldr	w9, [sp, #104]                  // 4-byte Folded Reload
	ldr	w8, [sp, #108]                  // 4-byte Folded Reload
	ldr	x1, [sp, #112]                  // 8-byte Folded Reload
	strh	w13, [sp, #128]
	strh	w12, [sp, #140]
	strh	w11, [sp, #142]
	strh	w10, [sp, #152]
	strh	w9, [sp, #154]
	strh	w8, [sp, #156]
	mov	w2, #24
	bl	verify_short
	ldr	w0, [sp, #120]                  // 4-byte Folded Reload
	adrp	x8, .L__const.test_array.a
	ldr	w8, [x8, :lo12:.L__const.test_array.a]
	str	w8, [sp, #124]
	ldr	w1, [sp, #124]
	bl	expect
	add	sp, sp, #480
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_array, .Lfunc_end0-test_array
                                        // -- End function
	.type	.L__const.test_array.x,@object  // @__const.test_array.x
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_array.x:
	.word	1                               // 0x1
	.word	3                               // 0x3
	.word	5                               // 0x5
	.size	.L__const.test_array.x, 12
	.type	.L__const.test_array.ye,@object // @__const.test_array.ye
	.p2align	2
.L__const.test_array.ye:
	.word	1                               // 0x1
	.word	3                               // 0x3
	.word	5                               // 0x5
	.word	2                               // 0x2
	.word	4                               // 0x4
	.word	6                               // 0x6
	.word	3                               // 0x3
	.word	5                               // 0x5
	.word	7                               // 0x7
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.size	.L__const.test_array.ye, 48
	.type	.L__const.test_array.y1,@object // @__const.test_array.y1
	.p2align	2
.L__const.test_array.y1:
	.word	1                               // 0x1
	.word	3                               // 0x3
	.word	5                               // 0x5
	.word	2                               // 0x2
	.word	4                               // 0x4
	.word	6                               // 0x6
	.word	3                               // 0x3
	.word	5                               // 0x5
	.word	7                               // 0x7
	.zero	12
	.size	.L__const.test_array.y1, 48
	.type	.L__const.test_array.y2,@object // @__const.test_array.y2
	.p2align	2
.L__const.test_array.y2:
	.word	1                               // 0x1
	.word	3                               // 0x3
	.word	5                               // 0x5
	.word	2                               // 0x2
	.word	4                               // 0x4
	.word	6                               // 0x6
	.word	3                               // 0x3
	.word	5                               // 0x5
	.word	7                               // 0x7
	.zero	12
	.size	.L__const.test_array.y2, 48
	.type	.L__const.test_array.a,@object  // @__const.test_array.a
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__const.test_array.a:
	.word	3                               // 0x3
	.size	.L__const.test_array.a, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_array
	.addrsig_sym expect
	.addrsig_sym verify
	.addrsig_sym verify_short
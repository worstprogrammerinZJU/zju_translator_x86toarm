	.text
	.p2align	2                               // -- Begin function test_set
	.type	test_set,@function
test_set:                               // @test_set
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	set_has
	mov	w1, w0
	mov	w0, wzr
	stur	w0, [x29, #-20]                 // 4-byte Folded Spill
	bl	assert_int
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	set_add
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	bl	set_add
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	set_has
	mov	w1, w0
	mov	w0, #1
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	bl	assert_int
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	set_has
	mov	w1, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	set_has
	mov	w1, w0
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	bl	assert_int
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	stur	xzr, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	set_add
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	str	x1, [sp, #32]                   // 8-byte Folded Spill
	bl	set_add
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	set_union
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	bl	set_has
	mov	w1, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	set_union
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	bl	set_has
	mov	w1, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	set_union
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	bl	set_has
	mov	w1, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	set_intersection
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	bl	set_has
	mov	w1, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	set_intersection
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	bl	set_has
	mov	w1, w0
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	set_intersection
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	bl	set_has
	mov	w1, w0
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	bl	assert_int
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	test_set, .Lfunc_end0-test_set
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"def"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"xyz"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"DEF"
	.size	.L.str.3, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_set
	.addrsig_sym assert_int
	.addrsig_sym set_has
	.addrsig_sym set_add
	.addrsig_sym set_union
	.addrsig_sym set_intersection
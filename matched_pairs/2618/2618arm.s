	.text
	.p2align	2                               // -- Begin function test_map_stack
	.type	test_map_stack,@function
test_map_stack:                         // @test_map_stack
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	make_map
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp]                        // 8-byte Folded Spill
	mov	x2, #1
	bl	map_put
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	x2, #2
	bl	map_put
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	map_get
	mov	w1, w0
	mov	w0, #1
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	assert_int
	ldur	x0, [x29, #-8]
	bl	make_map_parent
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	map_get
	mov	x8, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	mov	w1, w8
	bl	assert_int
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x0, [sp, #16]
	mov	x2, #3
	bl	map_put
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x0, [sp, #16]
	bl	map_get
	mov	w1, w0
	mov	w0, #3
	bl	assert_int
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	map_get
	mov	x8, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	mov	w1, w8
	bl	assert_int
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_map_stack, .Lfunc_end0-test_map_stack
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x"
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"y"
	.size	.L.str.1, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_map_stack
	.addrsig_sym make_map
	.addrsig_sym map_put
	.addrsig_sym assert_int
	.addrsig_sym map_get
	.addrsig_sym make_map_parent
	.text
	.p2align	2                               // -- Begin function test_list
	.type	test_list,@function
test_list:                              // @test_list
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	bl	make_vector
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	vec_len
	mov	x1, x0
	mov	w0, wzr
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	bl	assert_int
	ldur	x0, [x29, #-8]
	mov	x1, #1
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	vec_push
	ldur	x0, [x29, #-8]
	bl	vec_len
	mov	x1, x0
	mov	w0, #1
	str	w0, [sp, #32]                   // 4-byte Folded Spill
	bl	assert_int
	ldur	x0, [x29, #-8]
	mov	x1, #2
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	vec_push
	ldur	x0, [x29, #-8]
	bl	vec_len
	mov	x1, x0
	mov	w0, #2
	str	w0, [sp, #36]                   // 4-byte Folded Spill
	bl	assert_int
	ldur	x0, [x29, #-8]
	bl	vec_copy
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	vec_len
	mov	x1, x0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	bl	assert_int
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	vec_get
	mov	x1, x0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	assert_int
	ldr	w1, [sp, #32]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	vec_get
	mov	x1, x0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-8]
	bl	vec_reverse
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	vec_len
	mov	x1, x0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-24]
	bl	vec_pop
	mov	x1, x0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-24]
	bl	vec_len
	mov	x1, x0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-24]
	bl	vec_pop
	mov	x1, x0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-24]
	bl	vec_len
	mov	x1, x0
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	bl	assert_int
	bl	make_vector
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	vec_push
	ldur	x0, [x29, #-32]
	bl	vec_head
	mov	x1, x0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-32]
	bl	vec_tail
	mov	x1, x0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	assert_int
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-32]
	bl	vec_push
	ldur	x0, [x29, #-32]
	bl	vec_head
	mov	x1, x0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	assert_int
	ldur	x0, [x29, #-32]
	bl	vec_tail
	mov	x1, x0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	bl	assert_int
	bl	make_vector
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	vec_push
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [sp, #40]
	bl	vec_push
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	ldr	x0, [sp, #40]
	bl	vec_get
	mov	x1, x0
	ldr	w0, [sp, #32]                   // 4-byte Folded Reload
	bl	assert_int
	ldr	w1, [sp, #32]                   // 4-byte Folded Reload
	ldr	x0, [sp, #40]
	bl	vec_get
	mov	x1, x0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	bl	assert_int
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	test_list, .Lfunc_end0-test_list
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_list
	.addrsig_sym make_vector
	.addrsig_sym assert_int
	.addrsig_sym vec_len
	.addrsig_sym vec_push
	.addrsig_sym vec_copy
	.addrsig_sym vec_get
	.addrsig_sym vec_reverse
	.addrsig_sym vec_pop
	.addrsig_sym vec_head
	.addrsig_sym vec_tail
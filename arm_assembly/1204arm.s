	.text
	.p2align	2                               // -- Begin function jv_test
	.type	jv_test,@function
jv_test:                                // @jv_test
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #5, lsl #12             // =20480
	sub	sp, sp, #864
	add	x8, sp, #5, lsl #12             // =20480
	add	x8, x8, #88
	str	x8, [sp, #136]                  // 8-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_parse
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_INVALID
	ldr	x8, [x8, :lo12:JV_KIND_INVALID]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-8]
	bl	jv_invalid_get_msg
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	jv_string_value
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-8]
	bl	jv_free
	bl	jv_array
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	bl	jv_array_length
	mov	w8, wzr
	str	w8, [sp, #132]                  // 4-byte Folded Spill
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	bl	jv_array_length
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	mov	w0, #42
	str	w0, [sp, #128]                  // 4-byte Folded Spill
	bl	jv_number
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-56]
	bl	jv_array_append
	stur	x0, [x29, #-48]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	jv_array_length
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	ldr	w1, [sp, #132]                  // 4-byte Folded Reload
	stur	x0, [x29, #-80]
	ldur	x0, [x29, #-80]
	bl	jv_array_get
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-72]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	bl	jv_array
	mov	x8, x0
	ldr	w0, [sp, #128]                  // 4-byte Folded Reload
	stur	x8, [x29, #-96]
	bl	jv_number
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-96]
	ldur	x1, [x29, #-104]
	bl	jv_array_append
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-112]
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-120]
	bl	jv_equal
	bl	assert
	ldur	x0, [x29, #-88]
	bl	jv_copy
	stur	x0, [x29, #-128]
	ldur	x0, [x29, #-88]
	bl	jv_copy
	stur	x0, [x29, #-136]
	ldur	x0, [x29, #-128]
	ldur	x1, [x29, #-136]
	bl	jv_equal
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-144]
	ldur	x0, [x29, #-88]
	bl	jv_copy
	stur	x0, [x29, #-152]
	ldur	x0, [x29, #-144]
	ldur	x1, [x29, #-152]
	bl	jv_equal
	bl	assert
	ldur	x0, [x29, #-88]
	bl	jv_copy
	stur	x0, [x29, #-160]
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-168]
	ldur	x0, [x29, #-160]
	ldur	x1, [x29, #-168]
	bl	jv_equal
	bl	assert
	ldur	x0, [x29, #-88]
	bl	jv_free
	bl	jv_array
	stur	x0, [x29, #-184]
	mov	w0, #19
	bl	jv_number
	stur	x0, [x29, #-192]
	ldur	x0, [x29, #-184]
	ldur	x1, [x29, #-192]
	bl	jv_array_append
	stur	x0, [x29, #-176]
	ldur	x8, [x29, #-176]
	stur	x8, [x29, #-88]
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-200]
	ldur	x0, [x29, #-88]
	bl	jv_copy
	stur	x0, [x29, #-208]
	ldur	x0, [x29, #-200]
	ldur	x1, [x29, #-208]
	bl	jv_equal
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-88]
	bl	jv_copy
	stur	x0, [x29, #-216]
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-224]
	ldur	x0, [x29, #-216]
	ldur	x1, [x29, #-224]
	bl	jv_equal
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-88]
	bl	jv_free
	ldur	x0, [x29, #-24]
	bl	jv_get_refcnt
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-240]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-240]
	bl	jv_array_append
	stur	x0, [x29, #-232]
	ldur	x8, [x29, #-232]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	jv_get_refcnt
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	stur	x0, [x29, #-248]
	ldur	x0, [x29, #-248]
	bl	jv_array_length
	subs	w8, w0, #2
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	ldr	w1, [sp, #132]                  // 4-byte Folded Reload
	str	x0, [sp, #21080]
	ldr	x0, [sp, #21080]
	bl	jv_array_get
	stur	x0, [x29, #-256]
	ldur	x0, [x29, #-256]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	str	wzr, [x8, #508]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	w8, [x8, #508]
	subs	w8, w8, #10
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-24]
	bl	jv_copy
	str	x0, [sp, #21056]
	ldr	x0, [sp, #21056]
	mov	w1, #1
	bl	jv_array_get
	str	x0, [sp, #21064]
	ldr	x0, [sp, #21064]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21064]
	bl	jv_copy
	str	x0, [sp, #21048]
	ldr	x0, [sp, #21048]
	bl	jv_array_length
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21064]
	bl	jv_copy
	str	x0, [sp, #21032]
	ldr	x0, [sp, #21032]
	mov	w1, wzr
	bl	jv_array_get
	str	x0, [sp, #21040]
	ldr	x0, [sp, #21040]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21064]
	bl	jv_free
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #136]                  // 8-byte Folded Reload
	ldr	w8, [x9, #508]
	add	w8, w8, #1
	str	w8, [x9, #508]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-24]
	bl	jv_copy
	str	x0, [sp, #21016]
	ldr	x0, [sp, #21016]
	mov	w1, #1
	str	w1, [sp, #48]                   // 4-byte Folded Spill
	bl	jv_array_get
	str	x0, [sp, #21024]
	ldr	x0, [sp, #21024]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21024]
	bl	jv_copy
	str	x0, [sp, #21008]
	ldr	x0, [sp, #21008]
	bl	jv_array_length
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21024]
	bl	jv_copy
	str	x0, [sp, #20992]
	ldr	x0, [sp, #20992]
	mov	w1, wzr
	str	w1, [sp, #44]                   // 4-byte Folded Spill
	bl	jv_array_get
	str	x0, [sp, #21000]
	ldr	x0, [sp, #21000]
	bl	jv_number_value
	mov	w8, #42
	str	w8, [sp, #124]                  // 4-byte Folded Spill
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21024]
	bl	jv_copy
	str	x0, [sp, #20984]
	mov	w0, #19
	str	w0, [sp, #36]                   // 4-byte Folded Spill
	bl	jv_number
	str	x0, [sp, #20968]
	ldr	x0, [sp, #20984]
	ldr	x1, [sp, #20968]
	bl	jv_array_append
	str	x0, [sp, #20976]
	ldr	x8, [sp, #20976]
	str	x8, [sp, #20984]
	ldr	x0, [sp, #20984]
	bl	jv_get_kind
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20984]
	bl	jv_copy
	str	x0, [sp, #20960]
	ldr	x0, [sp, #20960]
	bl	jv_array_length
	mov	w8, #2
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	subs	w8, w0, #2
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20984]
	bl	jv_copy
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	str	x0, [sp, #20944]
	ldr	x0, [sp, #20944]
	bl	jv_array_get
	str	x0, [sp, #20952]
	ldr	x0, [sp, #20952]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20984]
	bl	jv_copy
	ldr	w1, [sp, #48]                   // 4-byte Folded Reload
	str	x0, [sp, #20928]
	ldr	x0, [sp, #20928]
	bl	jv_array_get
	str	x0, [sp, #20936]
	ldr	x0, [sp, #20936]
	bl	jv_number_value
	subs	w8, w0, #19
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21024]
	bl	jv_get_kind
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21024]
	bl	jv_copy
	str	x0, [sp, #20920]
	ldr	x0, [sp, #20920]
	bl	jv_array_length
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21024]
	bl	jv_copy
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	str	x0, [sp, #20904]
	ldr	x0, [sp, #20904]
	bl	jv_array_get
	str	x0, [sp, #20912]
	ldr	x0, [sp, #20912]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #21024]
	bl	jv_free
	ldr	x8, [sp, #20984]
	str	x8, [sp, #20896]
	mov	w0, #200
	bl	jv_number
	str	x0, [sp, #20880]
	ldr	x0, [sp, #20984]
	ldr	x1, [sp, #20880]
	bl	jv_array_append
	str	x0, [sp, #20888]
	ldr	x8, [sp, #20888]
	str	x8, [sp, #20984]
	ldr	x8, [sp, #20984]
	str	x8, [sp, #20872]
	ldr	x8, [sp, #20896]
	ldr	x9, [sp, #20872]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20984]
	bl	jv_free
	ldur	x0, [x29, #-24]
	bl	jv_copy
	mov	x8, x0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	str	x8, [sp, #20856]
	bl	jv_number
	str	x0, [sp, #20848]
	ldr	x0, [sp, #20856]
	ldr	x1, [sp, #20848]
	bl	jv_array_append
	str	x0, [sp, #20864]
	ldr	x0, [sp, #20864]
	bl	jv_copy
	str	x0, [sp, #20840]
	ldr	x0, [sp, #20840]
	bl	jv_array_length
	mov	w8, #3
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	subs	w8, w0, #3
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20864]
	bl	jv_copy
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	str	x0, [sp, #20824]
	ldr	x0, [sp, #20824]
	bl	jv_array_get
	str	x0, [sp, #20832]
	ldr	x0, [sp, #20832]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20864]
	bl	jv_copy
	ldr	w1, [sp, #48]                   // 4-byte Folded Reload
	str	x0, [sp, #20808]
	ldr	x0, [sp, #20808]
	bl	jv_array_get
	str	x0, [sp, #20816]
	ldr	x0, [sp, #20816]
	bl	jv_array_length
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20864]
	bl	jv_copy
	ldr	w1, [sp, #40]                   // 4-byte Folded Reload
	str	x0, [sp, #20792]
	ldr	x0, [sp, #20792]
	bl	jv_array_get
	str	x0, [sp, #20800]
	ldr	x0, [sp, #20800]
	bl	jv_number_value
	subs	w8, w0, #19
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20864]
	bl	jv_free
	bl	jv_array
	mov	x8, x0
	ldr	w0, [sp, #48]                   // 4-byte Folded Reload
	str	x8, [sp, #20784]
	bl	jv_number
	str	x0, [sp, #20768]
	ldr	x0, [sp, #20784]
	ldr	x1, [sp, #20768]
	bl	jv_array_append
	mov	x8, x0
	ldr	w0, [sp, #40]                   // 4-byte Folded Reload
	str	x8, [sp, #20776]
	ldr	x8, [sp, #20776]
	str	x8, [sp, #20784]
	bl	jv_number
	str	x0, [sp, #20752]
	ldr	x0, [sp, #20784]
	ldr	x1, [sp, #20752]
	bl	jv_array_append
	str	x0, [sp, #20760]
	ldr	x8, [sp, #20760]
	str	x8, [sp, #20784]
	ldr	x0, [sp, #20784]
	bl	jv_copy
	mov	x8, x0
	ldr	w0, [sp, #52]                   // 4-byte Folded Reload
	str	x8, [sp, #20744]
	bl	jv_number
	str	x0, [sp, #20728]
	ldr	x0, [sp, #20784]
	ldr	x1, [sp, #20728]
	bl	jv_array_append
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	w2, [sp, #48]                   // 4-byte Folded Reload
	str	x0, [sp, #20736]
	ldr	x8, [sp, #20736]
	str	x8, [sp, #20784]
	ldr	x0, [sp, #20784]
	bl	jv_array_slice
	str	x0, [sp, #20720]
	ldr	x8, [sp, #20720]
	str	x8, [sp, #20784]
	ldr	x0, [sp, #20784]
	bl	jv_copy
	str	x0, [sp, #20712]
	ldr	x0, [sp, #20712]
	bl	jv_array_length
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	mov	w0, #4
	bl	jv_number
	str	x0, [sp, #20696]
	ldr	x0, [sp, #20784]
	ldr	x1, [sp, #20696]
	bl	jv_array_append
	str	x0, [sp, #20704]
	ldr	x8, [sp, #20704]
	str	x8, [sp, #20784]
	ldr	x0, [sp, #20784]
	bl	jv_copy
	str	x0, [sp, #20688]
	ldr	x0, [sp, #20688]
	bl	jv_array_length
	subs	w8, w0, #2
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20744]
	bl	jv_copy
	str	x0, [sp, #20680]
	ldr	x0, [sp, #20680]
	bl	jv_array_length
	subs	w8, w0, #2
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20784]
	bl	jv_free
	ldr	x0, [sp, #20744]
	bl	jv_free
	ldur	x0, [x29, #-24]
	bl	jv_copy
	str	x0, [sp, #20672]
	ldr	x0, [sp, #20672]
	bl	jv_array_length
	subs	w8, w0, #2
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	str	x0, [sp, #20656]
	ldr	x0, [sp, #20656]
	bl	jv_array_get
	str	x0, [sp, #20664]
	ldr	x0, [sp, #20664]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_copy
	ldr	w1, [sp, #48]                   // 4-byte Folded Reload
	str	x0, [sp, #20640]
	ldr	x0, [sp, #20640]
	bl	jv_array_get
	str	x0, [sp, #20648]
	ldr	x0, [sp, #20648]
	bl	jv_array_length
	subs	w8, w0, #1
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-24]
	bl	jv_free
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	bl	jv_string
	ldr	w1, [sp, #52]                   // 4-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	str	x8, [sp, #20632]
	bl	jv_string_sized
	str	x0, [sp, #20624]
	ldr	x0, [sp, #20632]
	ldr	x1, [sp, #20624]
	bl	jv_equal
	bl	assert
	ldr	x9, [sp, #136]                  // 8-byte Folded Reload
	adrp	x8, .L__const.jv_test.nasty
	add	x8, x8, :lo12:.L__const.jv_test.nasty
	ldr	w10, [x8]
	add	x0, sp, #5, lsl #12             // =20480
	add	x0, x0, #136
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	str	w10, [x9, #48]
	ldrb	w8, [x8, #4]
	strb	w8, [x9, #52]
	bl	jv_string
	mov	x8, x0
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	str	x8, [sp, #20608]
	mov	w1, #5
	bl	jv_string_sized
	str	x0, [sp, #20600]
	ldr	x0, [sp, #20608]
	bl	jv_copy
	str	x0, [sp, #20592]
	ldr	x0, [sp, #20592]
	bl	jv_string_length_bytes
	mov	w8, w0
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	str	w8, [sp, #76]                   // 4-byte Folded Spill
	bl	strlen
	mov	x8, x0
	ldr	w0, [sp, #76]                   // 4-byte Folded Reload
                                        // kill: def $w8 killed $w8 killed $x8
	subs	w8, w0, w8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20600]
	bl	jv_copy
	str	x0, [sp, #20584]
	ldr	x0, [sp, #20584]
	bl	jv_string_length_bytes
	subs	w8, w0, #5
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20608]
	bl	jv_free
	ldr	x0, [sp, #20600]
	bl	jv_free
	ldr	x9, [sp, #136]                  // 8-byte Folded Reload
	adrp	x8, .L__const.jv_test.a1s
	add	x8, x8, :lo12:.L__const.jv_test.a1s
	ldr	w10, [x8]
	add	x0, sp, #5, lsl #12             // =20480
	add	x0, x0, #96
	str	w10, [x9, #8]
	ldrh	w8, [x8, #4]
	strh	w8, [x9, #12]
	adrp	x8, .L__const.jv_test.a2s
	add	x8, x8, :lo12:.L__const.jv_test.a2s
	ldr	w10, [x8]
	add	x11, sp, #5, lsl #12            // =20480
	add	x11, x11, #88
	str	x11, [sp, #80]                  // 8-byte Folded Spill
	str	w10, [x9]
	ldrh	w8, [x8, #4]
	strh	w8, [x9, #4]
	adrp	x8, .L__const.jv_test.bs
	add	x8, x8, :lo12:.L__const.jv_test.bs
	ldr	x8, [x8]
	add	x9, sp, #5, lsl #12             // =20480
	add	x9, x9, #80
	str	x9, [sp, #88]                   // 8-byte Folded Spill
	str	x8, [sp, #20560]
	bl	jv_string
	mov	x8, x0
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	str	x8, [sp, #20552]
	bl	jv_string
	mov	x8, x0
	ldr	x0, [sp, #88]                   // 8-byte Folded Reload
	str	x8, [sp, #20544]
	bl	jv_string
	str	x0, [sp, #20536]
	ldr	x0, [sp, #20552]
	bl	jv_copy
	str	x0, [sp, #20528]
	ldr	x0, [sp, #20544]
	bl	jv_copy
	str	x0, [sp, #20520]
	ldr	x0, [sp, #20528]
	ldr	x1, [sp, #20520]
	bl	jv_equal
	bl	assert
	ldr	x0, [sp, #20544]
	bl	jv_copy
	str	x0, [sp, #20512]
	ldr	x0, [sp, #20552]
	bl	jv_copy
	str	x0, [sp, #20504]
	ldr	x0, [sp, #20512]
	ldr	x1, [sp, #20504]
	bl	jv_equal
	bl	assert
	ldr	x0, [sp, #20552]
	bl	jv_copy
	str	x0, [sp, #20496]
	ldr	x0, [sp, #20536]
	bl	jv_copy
	str	x0, [sp, #20488]
	ldr	x0, [sp, #20496]
	ldr	x1, [sp, #20488]
	bl	jv_equal
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20552]
	bl	jv_copy
	str	x0, [sp, #20480]
	ldr	x0, [sp, #20480]
	bl	jv_string_hash
	str	x0, [sp, #96]                   // 8-byte Folded Spill
	ldr	x0, [sp, #20552]
	bl	jv_copy
	str	x0, [sp, #20472]
	ldr	x0, [sp, #20472]
	bl	jv_string_hash
	mov	x8, x0
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20552]
	bl	jv_copy
	str	x0, [sp, #20464]
	ldr	x0, [sp, #20464]
	bl	jv_string_hash
	str	x0, [sp, #104]                  // 8-byte Folded Spill
	ldr	x0, [sp, #20544]
	bl	jv_copy
	str	x0, [sp, #20456]
	ldr	x0, [sp, #20456]
	bl	jv_string_hash
	mov	x8, x0
	ldr	x0, [sp, #104]                  // 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20536]
	bl	jv_copy
	str	x0, [sp, #20448]
	ldr	x0, [sp, #20448]
	bl	jv_string_hash
	str	x0, [sp, #112]                  // 8-byte Folded Spill
	ldr	x0, [sp, #20552]
	bl	jv_copy
	str	x0, [sp, #20440]
	ldr	x0, [sp, #20440]
	bl	jv_string_hash
	mov	x8, x0
	ldr	x0, [sp, #112]                  // 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #20552]
	bl	jv_free
	ldr	x0, [sp, #20544]
	bl	jv_free
	ldr	x0, [sp, #20536]
	bl	jv_free
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	jv_string
	ldr	w1, [sp, #124]                  // 4-byte Folded Reload
	str	x0, [sp, #20432]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x2, .L.str.5
	add	x2, x2, :lo12:.L.str.5
	bl	jv_string_fmt
	str	x0, [sp, #20424]
	ldr	x0, [sp, #20432]
	ldr	x1, [sp, #20424]
	bl	jv_equal
	bl	assert
	str	wzr, [sp, #420]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #420]
	mov	w9, #20000
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldrsw	x9, [sp, #420]
	add	x8, sp, #424
	add	x9, x8, x9
	mov	w8, #97
	strb	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #420]
	add	w8, w8, #1
	str	w8, [sp, #420]
	b	.LBB0_5
.LBB0_8:
	mov	x9, #19999
	add	x1, sp, #424
	str	x1, [sp]                        // 8-byte Folded Spill
	mov	x8, x1
	add	x8, x8, x9
	strb	wzr, [x8]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	jv_string_fmt
	str	x0, [sp, #408]
	ldr	x0, [sp, #408]
	bl	jv_copy
	str	x0, [sp, #400]
	ldr	x0, [sp, #400]
	bl	jv_string_length_bytes
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	mov	x9, #19999
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #408]
	bl	jv_string_value
	mov	x1, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	strcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #408]
	bl	jv_free
	bl	jv_object
	str	x0, [sp, #392]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	jv_string
	str	x0, [sp, #376]
	mov	w0, #42
	bl	jv_number
	str	x0, [sp, #368]
	ldr	x0, [sp, #392]
	ldr	x1, [sp, #376]
	ldr	x2, [sp, #368]
	bl	jv_object_set
	str	x0, [sp, #384]
	ldr	x8, [sp, #384]
	str	x8, [sp, #392]
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	jv_string
	str	x0, [sp, #352]
	mov	w0, #24
	bl	jv_number
	str	x0, [sp, #344]
	ldr	x0, [sp, #392]
	ldr	x1, [sp, #352]
	ldr	x2, [sp, #344]
	bl	jv_object_set
	str	x0, [sp, #360]
	ldr	x8, [sp, #360]
	str	x8, [sp, #392]
	ldr	x0, [sp, #392]
	bl	jv_copy
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #328]
	bl	jv_string
	str	x0, [sp, #320]
	ldr	x0, [sp, #328]
	ldr	x1, [sp, #320]
	bl	jv_object_get
	str	x0, [sp, #336]
	ldr	x0, [sp, #336]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #392]
	bl	jv_copy
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #304]
	bl	jv_string
	str	x0, [sp, #296]
	ldr	x0, [sp, #304]
	ldr	x1, [sp, #296]
	bl	jv_object_get
	str	x0, [sp, #312]
	ldr	x0, [sp, #312]
	bl	jv_number_value
	subs	w8, w0, #24
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #392]
	bl	jv_copy
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #280]
	bl	jv_string
	str	x0, [sp, #272]
	mov	w0, #420
	bl	jv_number
	str	x0, [sp, #264]
	ldr	x0, [sp, #280]
	ldr	x1, [sp, #272]
	ldr	x2, [sp, #264]
	bl	jv_object_set
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #288]
	bl	jv_string
	str	x0, [sp, #248]
	mov	w0, #240
	bl	jv_number
	str	x0, [sp, #240]
	ldr	x0, [sp, #288]
	ldr	x1, [sp, #248]
	ldr	x2, [sp, #240]
	bl	jv_object_set
	str	x0, [sp, #256]
	ldr	x8, [sp, #256]
	str	x8, [sp, #288]
	ldr	x0, [sp, #392]
	bl	jv_copy
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #224]
	bl	jv_string
	str	x0, [sp, #216]
	ldr	x0, [sp, #224]
	ldr	x1, [sp, #216]
	bl	jv_object_get
	str	x0, [sp, #232]
	ldr	x0, [sp, #232]
	bl	jv_number_value
	subs	w8, w0, #42
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #392]
	bl	jv_copy
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #200]
	bl	jv_string
	str	x0, [sp, #192]
	ldr	x0, [sp, #200]
	ldr	x1, [sp, #192]
	bl	jv_object_get
	str	x0, [sp, #208]
	ldr	x0, [sp, #208]
	bl	jv_number_value
	subs	w8, w0, #24
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #288]
	bl	jv_copy
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #176]
	bl	jv_string
	str	x0, [sp, #168]
	ldr	x0, [sp, #176]
	ldr	x1, [sp, #168]
	bl	jv_object_get
	str	x0, [sp, #184]
	ldr	x0, [sp, #184]
	bl	jv_number_value
	subs	w8, w0, #420
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #392]
	bl	jv_free
	ldr	x0, [sp, #288]
	bl	jv_copy
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #152]
	bl	jv_string
	str	x0, [sp, #144]
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #144]
	bl	jv_object_get
	str	x0, [sp, #160]
	ldr	x0, [sp, #160]
	bl	jv_number_value
	subs	w8, w0, #240
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #288]
	bl	jv_free
	add	sp, sp, #5, lsl #12             // =20480
	add	sp, sp, #864
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	jv_test, .Lfunc_end0-jv_test
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"{\"a':\"12\"}"
	.size	.L.str, 11
	.type	JV_KIND_INVALID,@object         // @JV_KIND_INVALID
	.bss
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.xword	0                               // 0x0
	.size	JV_KIND_INVALID, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Expected separator between values at line 1, column 9 (while parsing '{\"a':\"12\"}')"
	.size	.L.str.1, 83
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"foo"
	.size	.L.str.2, 4
	.type	.L__const.jv_test.nasty,@object // @__const.jv_test.nasty
	.section	.rodata,"a",@progbits
.L__const.jv_test.nasty:
	.asciz	"foo\000"
	.size	.L__const.jv_test.nasty, 5
	.type	.L__const.jv_test.a1s,@object   // @__const.jv_test.a1s
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.jv_test.a1s:
	.asciz	"hello"
	.size	.L__const.jv_test.a1s, 6
	.type	.L__const.jv_test.a2s,@object   // @__const.jv_test.a2s
.L__const.jv_test.a2s:
	.asciz	"hello"
	.size	.L__const.jv_test.a2s, 6
	.type	.L__const.jv_test.bs,@object    // @__const.jv_test.bs
.L__const.jv_test.bs:
	.asciz	"goodbye"
	.size	.L__const.jv_test.bs, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"hello42!"
	.size	.L.str.3, 9
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"hello%d%s"
	.size	.L.str.4, 10
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"!"
	.size	.L.str.5, 2
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"%s"
	.size	.L.str.6, 3
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"bar"
	.size	.L.str.7, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_test
	.addrsig_sym jv_parse
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym strcmp
	.addrsig_sym jv_string_value
	.addrsig_sym jv_free
	.addrsig_sym jv_array
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_append
	.addrsig_sym jv_number
	.addrsig_sym jv_number_value
	.addrsig_sym jv_array_get
	.addrsig_sym jv_equal
	.addrsig_sym jv_get_refcnt
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_string
	.addrsig_sym jv_string_sized
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym strlen
	.addrsig_sym jv_string_hash
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_object
	.addrsig_sym jv_object_set
	.addrsig_sym jv_object_get
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym JV_KIND_ARRAY
	.text
	.p2align	2                               // -- Begin function read_include
	.type	read_include,@function
read_include:                           // @read_include
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x0, [x29, #-8]
	sub	x1, x29, #24
	bl	read_cpp_header_name
	str	x0, [sp, #32]
	bl	expect_newline
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	subs	w8, w8, #47
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #32]
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	try_include
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_19
.LBB0_3:
	b	.LBB0_18
.LBB0_4:
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_11
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	strdup
	bl	dirname
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	ldur	w2, [x29, #-20]
	bl	try_include
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_19
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	str	wzr, [sp, #20]
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	adrp	x8, std_include_path
	ldr	w0, [x8, :lo12:std_include_path]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_17
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	adrp	x8, std_include_path
	ldr	w0, [x8, :lo12:std_include_path]
	ldr	w1, [sp, #20]
	bl	vec_get
	ldr	x1, [sp, #32]
	ldur	w2, [x29, #-20]
	bl	try_include
	cbz	x0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_19
.LBB0_15:                               //   in Loop: Header=BB0_12 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_12
.LBB0_17:
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-8]
	ldr	x2, [sp, #32]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	errort
	b	.LBB0_19
.LBB0_19:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_include, .Lfunc_end0-read_include
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/"
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"."
	.size	.L.str.1, 2
	.type	std_include_path,@object        // @std_include_path
	.bss
	.globl	std_include_path
	.p2align	2
std_include_path:
	.word	0                               // 0x0
	.size	std_include_path, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cannot find header file: %s"
	.size	.L.str.2, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_include
	.addrsig_sym read_cpp_header_name
	.addrsig_sym expect_newline
	.addrsig_sym try_include
	.addrsig_sym dirname
	.addrsig_sym strdup
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym errort
	.addrsig_sym std_include_path
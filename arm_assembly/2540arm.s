	.text
	.p2align	2                               // -- Begin function jq_util_input_read_more
	.type	jq_util_input_read_more,@function
jq_util_input_read_more:                // @jq_util_input_read_more
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	feof
	cbnz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	ferror
	cbz	x0, .LBB0_19
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	ferror
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	adrp	x8, errno
	ldr	x0, [x8, :lo12:errno]
	bl	strerror
	mov	x2, x0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_11
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	adrp	x9, stdin
	ldr	x9, [x9, :lo12:stdin]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, stdin
	ldr	x0, [x8, :lo12:stdin]
	bl	clearerr
	b	.LBB0_10
.LBB0_9:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	fclose
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #72]
	bl	jv_free
	bl	jv_invalid
	ldur	x8, [x29, #-8]
	str	x0, [x8, #72]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #48]
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-8]
	bl	next_file
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_18
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	w0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, stdin
	ldr	x8, [x8, :lo12:stdin]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #32]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string
	ldur	x8, [x29, #-8]
	str	x0, [x8, #72]
	b	.LBB0_17
.LBB0_14:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	fopen
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	ldur	x0, [x29, #-16]
	bl	jv_string
	ldur	x8, [x29, #-8]
	str	x0, [x8, #72]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbnz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9, #60]
	ldur	x1, [x29, #-16]
	blr	x8
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #56]
	add	w8, w8, #1
	str	w8, [x9, #56]
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #48]
	b	.LBB0_18
.LBB0_18:
	b	.LBB0_19
.LBB0_19:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	strb	wzr, [x8]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_51
	b	.LBB0_20
.LBB0_20:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	mov	w1, #255
	mov	w2, #8
	bl	memset
	b	.LBB0_21
.LBB0_21:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldur	x8, [x29, #-8]
	ldr	x2, [x8, #32]
	mov	w1, #8
	bl	fgets
	stur	x0, [x29, #-24]
	mov	w8, #0
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	cbnz	x0, .LBB0_24
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	ferror
	mov	w8, #0
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	cbz	x0, .LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_21 Depth=1
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, EINTR
	ldr	x9, [x9, :lo12:EINTR]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_21 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	clearerr
	b	.LBB0_21
.LBB0_26:
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_30
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	strb	wzr, [x8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	ferror
	cbz	x0, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #56]
	add	w8, w8, #1
	str	w8, [x9, #56]
	b	.LBB0_29
.LBB0_29:
	b	.LBB0_50
.LBB0_30:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	mov	w1, #10
	mov	w2, #8
	bl	memchr
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #48]
	add	x8, x8, #1
	str	x8, [x9, #48]
	b	.LBB0_32
.LBB0_32:
	ldr	x8, [sp, #32]
	cbnz	x8, .LBB0_35
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #40]
	cbz	x8, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	strlen
	ldur	x8, [x29, #-8]
	str	x0, [x8, #8]
	b	.LBB0_49
.LBB0_35:
	ldr	x8, [sp, #32]
	cbnz	x8, .LBB0_44
	b	.LBB0_36
.LBB0_36:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	feof
	cbz	x0, .LBB0_44
	b	.LBB0_37
.LBB0_37:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	mov	x8, #7
	str	x8, [sp, #24]
	b	.LBB0_38
.LBB0_38:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	b.ls	.LBB0_43
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_38 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	ldrb	w8, [x8, x9]
	cbnz	w8, .LBB0_41
	b	.LBB0_40
.LBB0_40:
	b	.LBB0_43
.LBB0_41:                               //   in Loop: Header=BB0_38 Depth=1
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_38 Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_38
.LBB0_43:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	b	.LBB0_48
.LBB0_44:
	ldr	x8, [sp, #32]
	cbnz	x8, .LBB0_46
	b	.LBB0_45
.LBB0_45:
	ldur	x9, [x29, #-8]
	mov	x8, #7
	str	x8, [x9, #8]
	b	.LBB0_47
.LBB0_46:
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	add	x8, x8, #1
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	b	.LBB0_47
.LBB0_47:
	b	.LBB0_48
.LBB0_48:
	b	.LBB0_49
.LBB0_49:
	b	.LBB0_50
.LBB0_50:
	b	.LBB0_51
.LBB0_51:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #16]
	ldur	x8, [x29, #-8]
	ldr	x10, [x8, #24]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB0_56
	b	.LBB0_52
.LBB0_52:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	mov	w9, #1
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	cbz	x8, .LBB0_55
	b	.LBB0_53
.LBB0_53:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	feof
	mov	w8, #1
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	cbnz	x0, .LBB0_55
	b	.LBB0_54
.LBB0_54:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	ferror
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_55
.LBB0_55:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_56
.LBB0_56:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jq_util_input_read_more, .Lfunc_end0-jq_util_input_read_more
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error: %s\n"
	.size	.L.str, 15
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	3
errno:
	.xword	0                               // 0x0
	.size	errno, 8
	.type	stdin,@object                   // @stdin
	.globl	stdin
	.p2align	3
stdin:
	.xword	0
	.size	stdin, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"-"
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"<stdin>"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2
	.type	EINTR,@object                   // @EINTR
	.bss
	.globl	EINTR
	.p2align	3
EINTR:
	.xword	0                               // 0x0
	.size	EINTR, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_util_input_read_more
	.addrsig_sym feof
	.addrsig_sym ferror
	.addrsig_sym fprintf
	.addrsig_sym strerror
	.addrsig_sym clearerr
	.addrsig_sym fclose
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid
	.addrsig_sym next_file
	.addrsig_sym strcmp
	.addrsig_sym jv_string
	.addrsig_sym fopen
	.addrsig_sym memset
	.addrsig_sym fgets
	.addrsig_sym memchr
	.addrsig_sym strlen
	.addrsig_sym stderr
	.addrsig_sym errno
	.addrsig_sym stdin
	.addrsig_sym EINTR
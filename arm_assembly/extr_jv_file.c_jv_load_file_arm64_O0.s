	.text
	.globl	jv_load_file                    // -- Begin function jv_load_file
	.p2align	2
	.type	jv_load_file,@function
jv_load_file:                           // @jv_load_file
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #144
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x0, [x29, #-16]
	adrp	x8, O_RDONLY
	ldr	w1, [x8, :lo12:O_RDONLY]
	bl	open
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-28]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-96]                 // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	ldur	x1, [x29, #-96]                 // 8-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_2:
	ldur	w0, [x29, #-28]
	sub	x1, x29, #24
	bl	fstat
	adds	w8, w0, #1
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-24]
	bl	S_ISDIR
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-28]
	bl	close
	ldur	x1, [x29, #-16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_5:
	ldur	w0, [x29, #-28]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fdopen
	stur	x0, [x29, #-40]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-48]
	ldur	x8, [x29, #-40]
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-28]
	bl	close
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-104]                // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	ldur	x1, [x29, #-104]                // 8-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_37
.LBB0_7:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	jv_string
	stur	w0, [x29, #-52]
	b	.LBB0_10
.LBB0_9:
	bl	jv_array
	stur	w0, [x29, #-52]
	mov	w0, wzr
	bl	jv_parser_new
	stur	x0, [x29, #-48]
	b	.LBB0_10
.LBB0_10:
	mov	w8, #4
	stur	w8, [x29, #-56]
	mov	x8, sp
	stur	x8, [x29, #-64]
	mov	x9, #4112
	mov	x8, sp
	subs	x8, x8, x9
	mov	sp, x8
	stur	x8, [x29, #-112]                // 8-byte Folded Spill
	b	.LBB0_11
.LBB0_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_24 Depth 2
	ldur	x0, [x29, #-40]
	bl	feof
	mov	w8, #0
	stur	w8, [x29, #-116]                // 4-byte Folded Spill
	cbnz	w0, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x0, [x29, #-40]
	bl	ferror
	subs	w8, w0, #0
	cset	w8, eq
	stur	w8, [x29, #-116]                // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-116]                // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_30
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x0, [x29, #-112]                // 8-byte Folded Reload
	ldur	x3, [x29, #-40]
	mov	w1, #1
	mov	w2, #4096
	bl	fread
	stur	x0, [x29, #-72]
	stur	wzr, [x29, #-76]
	ldur	x8, [x29, #-72]
	cbnz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_11
.LBB0_16:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x1, [x29, #-112]                // 8-byte Folded Reload
	ldur	x8, [x29, #-72]
	subs	x8, x8, #1
	add	x0, x1, x8
	sub	x2, x29, #76
	bl	jvp_utf8_backtrack
	cbz	x0, .LBB0_21
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-76]
	subs	w8, w8, #0
	b.le	.LBB0_21
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x0, [x29, #-40]
	bl	feof
	cbnz	w0, .LBB0_21
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x0, [x29, #-40]
	bl	ferror
	cbnz	w0, .LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-112]                // 8-byte Folded Reload
	ldur	x9, [x29, #-72]
	add	x0, x8, x9
	ldur	w2, [x29, #-76]
	ldur	x3, [x29, #-40]
	mov	w1, #1
	bl	fread
	ldur	x8, [x29, #-72]
	add	x8, x8, x0
	stur	x8, [x29, #-72]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_23
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x1, [x29, #-112]                // 8-byte Folded Reload
	ldur	w0, [x29, #-52]
	ldur	x2, [x29, #-72]
	bl	jv_string_append_buf
	stur	w0, [x29, #-52]
	b	.LBB0_29
.LBB0_23:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-128]                // 8-byte Folded Spill
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-136]                // 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	feof
	ldur	x1, [x29, #-112]                // 8-byte Folded Reload
	ldur	x2, [x29, #-136]                // 8-byte Folded Reload
	mov	w8, w0
	ldur	x0, [x29, #-128]                // 8-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	and	w3, w8, #0x1
	bl	jv_parser_set_buf
	b	.LBB0_24
.LBB0_24:                               //   Parent Loop BB0_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x0, [x29, #-48]
	bl	jv_parser_next
	stur	w0, [x29, #-80]
	bl	jv_is_valid
	cbz	x0, .LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_24 Depth=2
	ldur	w0, [x29, #-52]
	ldur	w1, [x29, #-80]
	bl	jv_array_append
	stur	w0, [x29, #-52]
	b	.LBB0_24
.LBB0_26:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w0, [x29, #-80]
	bl	jv_copy
	bl	jv_invalid_has_msg
	cbz	x0, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldur	w0, [x29, #-52]
	bl	jv_free
	ldur	w8, [x29, #-80]
	stur	w8, [x29, #-52]
	b	.LBB0_30
.LBB0_28:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_11
.LBB0_30:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	ldur	x0, [x29, #-48]
	bl	jv_parser_free
	b	.LBB0_32
.LBB0_32:
	ldur	x0, [x29, #-40]
	bl	ferror
	stur	w0, [x29, #-84]
	ldur	x0, [x29, #-40]
	bl	fclose
	cbnz	x0, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	w8, [x29, #-84]
	cbz	w8, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	ldur	w0, [x29, #-52]
	bl	jv_free
	ldur	x1, [x29, #-16]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	jv_string_fmt
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-88]
	b	.LBB0_36
.LBB0_35:
	ldur	w8, [x29, #-52]
	stur	w8, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-88]
	b	.LBB0_36
.LBB0_36:
	ldur	x8, [x29, #-64]
	mov	sp, x8
	b	.LBB0_37
.LBB0_37:
	ldur	w0, [x29, #-4]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	jv_load_file, .Lfunc_end0-jv_load_file
                                        // -- End function
	.type	O_RDONLY,@object                // @O_RDONLY
	.bss
	.globl	O_RDONLY
	.p2align	2
O_RDONLY:
	.word	0                               // 0x0
	.size	O_RDONLY, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not open %s: %s"
	.size	.L.str, 22
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"It's a directory"
	.size	.L.str.1, 17
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"r"
	.size	.L.str.2, 2
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"Error reading from %s"
	.size	.L.str.4, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym strerror
	.addrsig_sym fstat
	.addrsig_sym S_ISDIR
	.addrsig_sym close
	.addrsig_sym fdopen
	.addrsig_sym jv_string
	.addrsig_sym jv_array
	.addrsig_sym jv_parser_new
	.addrsig_sym feof
	.addrsig_sym ferror
	.addrsig_sym fread
	.addrsig_sym jvp_utf8_backtrack
	.addrsig_sym jv_string_append_buf
	.addrsig_sym jv_parser_set_buf
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_parser_next
	.addrsig_sym jv_array_append
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym jv_parser_free
	.addrsig_sym fclose
	.addrsig_sym O_RDONLY
	.addrsig_sym errno
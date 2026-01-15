	.text
	.p2align	2                               // -- Begin function printinst
	.type	printinst,@function
printinst:                              // @printinst
// %bb.0:
	sub	sp, sp, #304
	stp	x29, x30, [sp, #272]            // 16-byte Folded Spill
	str	x28, [sp, #288]                 // 8-byte Folded Spill
	add	x29, sp, #272
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	adrp	x1, .L__const.printinst.names
	add	x1, x1, :lo12:.L__const.printinst.names
	mov	x2, #232
	bl	memcpy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-8]
	subs	x9, x9, x10
	mov	x10, #24
	sdiv	x1, x9, x10
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldr	x2, [x8, x9, lsl #3]
	adrp	x0, .L.str.29
	add	x0, x0, :lo12:.L.str.29
	bl	printf
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
                                        // kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	subs	x8, x8, #22
	b.hi	.LBB0_12
// %bb.1:
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str.30
	add	x0, x0, :lo12:.L.str.30
	bl	printf
	b	.LBB0_13
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str.30
	add	x0, x0, :lo12:.L.str.30
	bl	printf
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	printjmp
	b	.LBB0_13
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str.31
	add	x0, x0, :lo12:.L.str.31
	bl	printf
	b	.LBB0_13
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str.31
	add	x0, x0, :lo12:.L.str.31
	bl	printf
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	printjmp
	b	.LBB0_13
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	getkind
	bl	printcapkind
	ldur	x0, [x29, #-16]
	bl	getoff
	mov	w1, w0
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #12]
	adrp	x0, .L.str.32
	add	x0, x0, :lo12:.L.str.32
	bl	printf
	b	.LBB0_13
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #40]
	bl	printcharset
	b	.LBB0_13
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #40]
	bl	printcharset
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	printjmp
	b	.LBB0_13
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #12]
	adrp	x0, .L.str.33
	add	x0, x0, :lo12:.L.str.33
	bl	printf
	b	.LBB0_13
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	printjmp
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str.34
	add	x0, x0, :lo12:.L.str.34
	bl	printf
	b	.LBB0_13
.LBB0_11:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	printjmp
	b	.LBB0_13
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	adrp	x0, .L.str.35
	add	x0, x0, :lo12:.L.str.35
	bl	printf
	ldr	x28, [sp, #288]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #272]            // 16-byte Folded Reload
	add	sp, sp, #304
	ret
.Lfunc_end0:
	.size	printinst, .Lfunc_end0-printinst
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"any"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"char"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"set"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"zset"
	.size	.L.str.3, 5
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"testany"
	.size	.L.str.4, 8
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"testchar"
	.size	.L.str.5, 9
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"testset"
	.size	.L.str.6, 8
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"testzset"
	.size	.L.str.7, 9
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"span"
	.size	.L.str.8, 5
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"spanz"
	.size	.L.str.9, 6
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"ret"
	.size	.L.str.10, 4
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"end"
	.size	.L.str.11, 4
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"choice"
	.size	.L.str.12, 7
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"jmp"
	.size	.L.str.13, 4
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"call"
	.size	.L.str.14, 5
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"open_call"
	.size	.L.str.15, 10
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"commit"
	.size	.L.str.16, 7
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"partial_commit"
	.size	.L.str.17, 15
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"back_commit"
	.size	.L.str.18, 12
	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"failtwice"
	.size	.L.str.19, 10
	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"fail"
	.size	.L.str.20, 5
	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"giveup"
	.size	.L.str.21, 7
	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"func"
	.size	.L.str.22, 5
	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	"fullcapture"
	.size	.L.str.23, 12
	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"emptycapture"
	.size	.L.str.24, 13
	.type	.L.str.25,@object               // @.str.25
.L.str.25:
	.asciz	"emptycaptureidx"
	.size	.L.str.25, 16
	.type	.L.str.26,@object               // @.str.26
.L.str.26:
	.asciz	"opencapture"
	.size	.L.str.26, 12
	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	"closecapture"
	.size	.L.str.27, 13
	.type	.L.str.28,@object               // @.str.28
.L.str.28:
	.asciz	"closeruntime"
	.size	.L.str.28, 13
	.type	.L__const.printinst.names,@object // @__const.printinst.names
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.printinst.names:
	.xword	.L.str
	.xword	.L.str.1
	.xword	.L.str.2
	.xword	.L.str.3
	.xword	.L.str.4
	.xword	.L.str.5
	.xword	.L.str.6
	.xword	.L.str.7
	.xword	.L.str.8
	.xword	.L.str.9
	.xword	.L.str.10
	.xword	.L.str.11
	.xword	.L.str.12
	.xword	.L.str.13
	.xword	.L.str.14
	.xword	.L.str.15
	.xword	.L.str.16
	.xword	.L.str.17
	.xword	.L.str.18
	.xword	.L.str.19
	.xword	.L.str.20
	.xword	.L.str.21
	.xword	.L.str.22
	.xword	.L.str.23
	.xword	.L.str.24
	.xword	.L.str.25
	.xword	.L.str.26
	.xword	.L.str.27
	.xword	.L.str.28
	.size	.L__const.printinst.names, 232
	.type	.L.str.29,@object               // @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"%02ld: %s "
	.size	.L.str.29, 11
	.type	.L.str.30,@object               // @.str.30
.L.str.30:
	.asciz	"'%c'"
	.size	.L.str.30, 5
	.type	.L.str.31,@object               // @.str.31
.L.str.31:
	.asciz	"* %d"
	.size	.L.str.31, 5
	.type	.L.str.32,@object               // @.str.32
.L.str.32:
	.asciz	"(n = %d)  (off = %d)"
	.size	.L.str.32, 21
	.type	.L.str.33,@object               // @.str.33
.L.str.33:
	.asciz	"-> %d"
	.size	.L.str.33, 6
	.type	.L.str.34,@object               // @.str.34
.L.str.34:
	.asciz	" (%d)"
	.size	.L.str.34, 6
	.type	.L.str.35,@object               // @.str.35
.L.str.35:
	.asciz	"\n"
	.size	.L.str.35, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printinst
	.addrsig_sym printf
	.addrsig_sym printjmp
	.addrsig_sym printcapkind
	.addrsig_sym getkind
	.addrsig_sym getoff
	.addrsig_sym printcharset
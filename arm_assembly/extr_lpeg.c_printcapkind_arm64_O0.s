	.text
	.p2align	2                               // -- Begin function printcapkind
	.type	printcapkind,@function
printcapkind:                           // @printcapkind
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	w0, [x29, #-4]
	add	x0, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	adrp	x1, .L__const.printcapkind.modes
	add	x1, x1, :lo12:.L__const.printcapkind.modes
	mov	x2, #104
	bl	memcpy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldursw	x9, [x29, #-4]
	ldr	x1, [x8, x9, lsl #3]
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	bl	printf
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	printcapkind, .Lfunc_end0-printcapkind
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"close"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"position"
	.size	.L.str.1, 9
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"constant"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"backref"
	.size	.L.str.3, 8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"argument"
	.size	.L.str.4, 9
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"simple"
	.size	.L.str.5, 7
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"table"
	.size	.L.str.6, 6
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"function"
	.size	.L.str.7, 9
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"query"
	.size	.L.str.8, 6
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"string"
	.size	.L.str.9, 7
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"substitution"
	.size	.L.str.10, 13
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"accumulator"
	.size	.L.str.11, 12
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"runtime"
	.size	.L.str.12, 8
	.type	.L__const.printcapkind.modes,@object // @__const.printcapkind.modes
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.printcapkind.modes:
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
	.size	.L__const.printcapkind.modes, 104
	.type	.L.str.13,@object               // @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"%s"
	.size	.L.str.13, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printcapkind
	.addrsig_sym printf
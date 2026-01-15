	.text
	.globl	optparse                        // -- Begin function optparse
	.p2align	2
	.type	optparse,@function
optparse:                               // @optparse
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
	ldur	x8, [x29, #-16]
	add	x9, x8, #8
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	mov	w9, #0
	stur	w9, [x29, #-48]                 // 4-byte Folded Spill
	cbz	x8, .LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	add	x9, x8, #1
	stur	x9, [x29, #-32]
	ldrb	w9, [x8]
	mov	w8, #0
	subs	w9, w9, #45
	stur	w8, [x29, #-48]                 // 4-byte Folded Spill
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	stur	w8, [x29, #-48]                 // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-48]                 // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_69
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-32]
	add	x9, x8, #1
	stur	x9, [x29, #-32]
	ldrb	w8, [x8]
	sturb	w8, [x29, #-41]
	cbz	w8, .LBB0_68
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=2
	ldurb	w8, [x29, #-41]
	subs	w8, w8, #70
                                        // kill: def $x8 killed $w8
	stur	x8, [x29, #-56]                 // 8-byte Folded Spill
	subs	x8, x8, #52
	b.hi	.LBB0_66
// %bb.8:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x11, [x29, #-56]                // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-40]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-64]                 // 8-byte Folded Spill
	b	.LBB0_15
.LBB0_11:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	add	x9, x8, #8
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-72]                 // 8-byte Folded Spill
	b	.LBB0_14
.LBB0_13:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	flagusage
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-72]                 // 8-byte Folded Spill
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-72]                 // 8-byte Folded Reload
	stur	x8, [x29, #-64]                 // 8-byte Folded Spill
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-64]                 // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #48]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	warn_systemd_ignored_option
	b	.LBB0_67
.LBB0_16:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-40]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-80]                 // 8-byte Folded Spill
	b	.LBB0_22
.LBB0_18:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	add	x9, x8, #8
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #88]                   // 8-byte Folded Spill
	b	.LBB0_21
.LBB0_20:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	flagusage
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp, #88]                   // 8-byte Folded Spill
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #88]                   // 8-byte Folded Reload
	stur	x8, [x29, #-80]                 // 8-byte Folded Spill
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-80]                 // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x8, [x9, #40]
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #40]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	warn_systemd_ignored_option
	b	.LBB0_67
.LBB0_23:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-40]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #80]                   // 8-byte Folded Spill
	b	.LBB0_29
.LBB0_25:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_27
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	add	x9, x8, #8
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #72]                   // 8-byte Folded Spill
	b	.LBB0_28
.LBB0_27:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	flagusage
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp, #72]                   // 8-byte Folded Spill
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #72]                   // 8-byte Folded Reload
	str	x8, [sp, #80]                   // 8-byte Folded Spill
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	bl	parse_size_t
	adrp	x8, job_data_size_limit
	str	x0, [x8, :lo12:job_data_size_limit]
	ldr	x8, [x8, :lo12:job_data_size_limit]
	adrp	x9, JOB_DATA_SIZE_LIMIT_MAX
	ldr	x9, [x9, :lo12:JOB_DATA_SIZE_LIMIT_MAX]
	subs	x8, x8, x9
	b.ls	.LBB0_31
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x8, JOB_DATA_SIZE_LIMIT_MAX
	str	x8, [sp, #64]                   // 8-byte Folded Spill
	ldr	x1, [x8, :lo12:JOB_DATA_SIZE_LIMIT_MAX]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	warnx
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x8, [x8, :lo12:JOB_DATA_SIZE_LIMIT_MAX]
	adrp	x9, job_data_size_limit
	str	x8, [x9, :lo12:job_data_size_limit]
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_6 Depth=2
	b	.LBB0_67
.LBB0_32:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_34
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-40]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	b	.LBB0_38
.LBB0_34:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_36
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	add	x9, x8, #8
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	b	.LBB0_37
.LBB0_36:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	flagusage
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	bl	parse_size_t
	ldur	x8, [x29, #-8]
	str	x0, [x8, #24]
	b	.LBB0_67
.LBB0_39:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	warnx
	b	.LBB0_67
.LBB0_40:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	warnx
	b	.LBB0_67
.LBB0_41:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_43
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-40]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	b	.LBB0_47
.LBB0_43:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_45
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	add	x9, x8, #8
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	b	.LBB0_46
.LBB0_45:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	flagusage
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	bl	parse_size_t
	mov	w8, w0
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]
	mov	w9, #16960
	movk	w9, #15, lsl #16
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #4]
	b	.LBB0_67
.LBB0_48:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-8]
	str	wzr, [x8, #4]
	b	.LBB0_67
.LBB0_49:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_51
	b	.LBB0_50
.LBB0_50:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-40]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	b	.LBB0_55
.LBB0_51:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_53
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	add	x9, x8, #8
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_54
.LBB0_53:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	flagusage
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x8, [x9, #32]
	b	.LBB0_67
.LBB0_56:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_58
	b	.LBB0_57
.LBB0_57:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-40]
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_62
.LBB0_58:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_60
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-16]
	add	x9, x8, #8
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_61
.LBB0_60:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	bl	flagusage
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x8, [x9, #16]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_67
.LBB0_63:                               //   in Loop: Header=BB0_6 Depth=2
	mov	w0, wzr
	bl	usage
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x8, version
	ldr	x1, [x8, :lo12:version]
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	printf
	mov	w0, wzr
	bl	exit
	b	.LBB0_65
.LBB0_65:                               //   in Loop: Header=BB0_6 Depth=2
	adrp	x9, verbose
	ldr	w8, [x9, :lo12:verbose]
	add	w8, w8, #1
	str	w8, [x9, :lo12:verbose]
	b	.LBB0_67
.LBB0_66:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-32]
	subs	x1, x8, #2
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	bl	warnx
	mov	w0, #5
	bl	usage
	b	.LBB0_67
.LBB0_67:                               //   in Loop: Header=BB0_6 Depth=2
	b	.LBB0_6
.LBB0_68:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_69:
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_71
	b	.LBB0_70
.LBB0_70:
	ldur	x8, [x29, #-32]
	subs	x1, x8, #1
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	bl	warnx
	mov	w0, #5
	bl	usage
	b	.LBB0_71
.LBB0_71:
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	optparse, .Lfunc_end0-optparse
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_48-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_65-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_56-.Ltmp0
	.word	.LBB0_39-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_41-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_63-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_40-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_32-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_49-.Ltmp0
	.word	.LBB0_64-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_66-.Ltmp0
	.word	.LBB0_23-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"-p"
	.size	.L.str.1, 3
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"-l"
	.size	.L.str.2, 3
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"-z"
	.size	.L.str.3, 3
	.type	job_data_size_limit,@object     // @job_data_size_limit
	.bss
	.globl	job_data_size_limit
	.p2align	3
job_data_size_limit:
	.xword	0
	.size	job_data_size_limit, 8
	.type	JOB_DATA_SIZE_LIMIT_MAX,@object // @JOB_DATA_SIZE_LIMIT_MAX
	.globl	JOB_DATA_SIZE_LIMIT_MAX
	.p2align	3
JOB_DATA_SIZE_LIMIT_MAX:
	.xword	0
	.size	JOB_DATA_SIZE_LIMIT_MAX, 8
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"maximum job size was set to %d"
	.size	.L.str.4, 31
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"-s"
	.size	.L.str.5, 3
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"-c flag was removed. binlog is always compacted."
	.size	.L.str.6, 49
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"-n flag was removed. binlog is always compacted."
	.size	.L.str.7, 49
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"-f"
	.size	.L.str.8, 3
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"-u"
	.size	.L.str.9, 3
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"-b"
	.size	.L.str.10, 3
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"beanstalkd %s\n"
	.size	.L.str.11, 15
	.type	version,@object                 // @version
	.bss
	.globl	version
	.p2align	3
version:
	.xword	0
	.size	version, 8
	.type	verbose,@object                 // @verbose
	.globl	verbose
	.p2align	2
verbose:
	.word	0                               // 0x0
	.size	verbose, 4
	.type	.L.str.12,@object               // @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"unknown flag: %s"
	.size	.L.str.12, 17
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"unknown argument: %s"
	.size	.L.str.13, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flagusage
	.addrsig_sym warn_systemd_ignored_option
	.addrsig_sym parse_size_t
	.addrsig_sym warnx
	.addrsig_sym usage
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym job_data_size_limit
	.addrsig_sym JOB_DATA_SIZE_LIMIT_MAX
	.addrsig_sym version
	.addrsig_sym verbose
	.text
	.globl	free_layer                      // -- Begin function free_layer
	.p2align	2
	.type	free_layer,@function
free_layer:                             // @free_layer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [x0]
	adrp	x9, DROPOUT
	ldr	x9, [x9, :lo12:DROPOUT]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #584]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #584]
	bl	free
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_84
.LBB0_4:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #624]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #624]
	bl	free
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #616]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #616]
	bl	free
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #608]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #608]
	bl	free
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #600]
	cbz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #600]
	bl	free
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #592]
	cbz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #592]
	bl	free
	b	.LBB0_14
.LBB0_14:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #584]
	cbz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #584]
	bl	free
	b	.LBB0_16
.LBB0_16:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #576]
	cbz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #576]
	bl	free
	b	.LBB0_18
.LBB0_18:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #568]
	cbz	x8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #568]
	bl	free
	b	.LBB0_20
.LBB0_20:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #560]
	cbz	x8, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #560]
	bl	free
	b	.LBB0_22
.LBB0_22:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #552]
	cbz	x8, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #552]
	bl	free
	b	.LBB0_24
.LBB0_24:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #544]
	cbz	x8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #544]
	bl	free
	b	.LBB0_26
.LBB0_26:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #536]
	cbz	x8, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #536]
	bl	free
	b	.LBB0_28
.LBB0_28:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #528]
	cbz	x8, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #528]
	bl	free
	b	.LBB0_30
.LBB0_30:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #520]
	cbz	x8, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #520]
	bl	free
	b	.LBB0_32
.LBB0_32:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #512]
	cbz	x8, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #512]
	bl	free
	b	.LBB0_34
.LBB0_34:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #504]
	cbz	x8, .LBB0_36
	b	.LBB0_35
.LBB0_35:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #504]
	bl	free
	b	.LBB0_36
.LBB0_36:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #496]
	cbz	x8, .LBB0_38
	b	.LBB0_37
.LBB0_37:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #496]
	bl	free
	b	.LBB0_38
.LBB0_38:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #488]
	cbz	x8, .LBB0_40
	b	.LBB0_39
.LBB0_39:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #488]
	bl	free
	b	.LBB0_40
.LBB0_40:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #480]
	cbz	x8, .LBB0_42
	b	.LBB0_41
.LBB0_41:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #480]
	bl	free
	b	.LBB0_42
.LBB0_42:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #472]
	cbz	x8, .LBB0_44
	b	.LBB0_43
.LBB0_43:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #472]
	bl	free
	b	.LBB0_44
.LBB0_44:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #464]
	cbz	x8, .LBB0_46
	b	.LBB0_45
.LBB0_45:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #464]
	bl	free
	b	.LBB0_46
.LBB0_46:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #456]
	cbz	x8, .LBB0_48
	b	.LBB0_47
.LBB0_47:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #456]
	bl	free
	b	.LBB0_48
.LBB0_48:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #448]
	cbz	x8, .LBB0_50
	b	.LBB0_49
.LBB0_49:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #448]
	bl	free
	b	.LBB0_50
.LBB0_50:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #440]
	cbz	x8, .LBB0_52
	b	.LBB0_51
.LBB0_51:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #440]
	bl	free
	b	.LBB0_52
.LBB0_52:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #432]
	cbz	x8, .LBB0_54
	b	.LBB0_53
.LBB0_53:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #432]
	bl	free
	b	.LBB0_54
.LBB0_54:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #424]
	cbz	x8, .LBB0_56
	b	.LBB0_55
.LBB0_55:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #424]
	bl	free
	b	.LBB0_56
.LBB0_56:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #416]
	cbz	x8, .LBB0_58
	b	.LBB0_57
.LBB0_57:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #416]
	bl	free
	b	.LBB0_58
.LBB0_58:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #408]
	cbz	x8, .LBB0_60
	b	.LBB0_59
.LBB0_59:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #408]
	bl	free
	b	.LBB0_60
.LBB0_60:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #400]
	cbz	x8, .LBB0_62
	b	.LBB0_61
.LBB0_61:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #400]
	bl	free
	b	.LBB0_62
.LBB0_62:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #392]
	cbz	x8, .LBB0_64
	b	.LBB0_63
.LBB0_63:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #392]
	bl	free
	b	.LBB0_64
.LBB0_64:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #384]
	cbz	x8, .LBB0_66
	b	.LBB0_65
.LBB0_65:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #384]
	bl	free
	b	.LBB0_66
.LBB0_66:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #376]
	cbz	x8, .LBB0_68
	b	.LBB0_67
.LBB0_67:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #376]
	bl	free
	b	.LBB0_68
.LBB0_68:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #368]
	cbz	x8, .LBB0_70
	b	.LBB0_69
.LBB0_69:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #368]
	bl	free
	b	.LBB0_70
.LBB0_70:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #360]
	cbz	x8, .LBB0_72
	b	.LBB0_71
.LBB0_71:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #360]
	bl	free
	b	.LBB0_72
.LBB0_72:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #352]
	cbz	x8, .LBB0_74
	b	.LBB0_73
.LBB0_73:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #352]
	bl	free
	b	.LBB0_74
.LBB0_74:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #344]
	cbz	x8, .LBB0_76
	b	.LBB0_75
.LBB0_75:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #344]
	bl	free
	b	.LBB0_76
.LBB0_76:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #336]
	cbz	x8, .LBB0_78
	b	.LBB0_77
.LBB0_77:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #336]
	bl	free
	b	.LBB0_78
.LBB0_78:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #328]
	cbz	x8, .LBB0_80
	b	.LBB0_79
.LBB0_79:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #328]
	bl	free
	b	.LBB0_80
.LBB0_80:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #320]
	cbz	x8, .LBB0_82
	b	.LBB0_81
.LBB0_81:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #320]
	bl	free
	b	.LBB0_82
.LBB0_82:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #312]
	cbz	x8, .LBB0_84
	b	.LBB0_83
.LBB0_83:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #312]
	bl	free
	b	.LBB0_84
.LBB0_84:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	free_layer, .Lfunc_end0-free_layer
                                        // -- End function
	.type	DROPOUT,@object                 // @DROPOUT
	.bss
	.globl	DROPOUT
	.p2align	3
DROPOUT:
	.xword	0                               // 0x0
	.size	DROPOUT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free
	.addrsig_sym DROPOUT
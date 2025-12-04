L_80000000:    /* _start */
L_80000000:
L_80000004:
L_80000008:
L_8000000c:
L_80000010:
L_80000014:
L_80000018:
L_8000001c:
L_80000020:
L_80000024:
L_80000028:
L_8000002c:
L_80000030:
L_80000034:
L_80000038:
L_8000003c:
L_80000040:
L_80000044:
L_80000048:
L_8000004c:
L_80000050:
L_80000054:
L_80000058:
L_8000005c:
L_80000060:
L_80000064:
L_80000068:
L_8000006c:
L_80000070:
L_80000074:
L_80000078:
L_8000007c:
L_80000080:
L_80000084:
L_80000088:
L_8000008c:    /* _start+0xa0 */
L_80000090:
L_80000094:
L_80000098:    /* tohost */
L_8000009c:    /* _start+0x90 */
L_800000a0:
L_800000a4:    /* trap_entry */
L_800000a8:
L_800000ac:
L_800000b0:    /* __global_pointer$ */
L_800000b4:
L_800000b8:    /* _end+0x3f */
L_800000bc:
L_800000c0:
L_800000c4:
L_800000c8:    /* _start+0xc8 */
L_800000cc:
L_800000d0:
L_800000d4:
L_800000d8:
L_800000dc:
L_800000e0:    /* _init */
L_800000e4:    /* trap_entry */
L_800000e4:
    addi sp,sp,-272
L_800000e8:
    sw ra,4(sp)
L_800000ec:
    sw sp,8(sp)
L_800000f0:
    sw gp,12(sp)
L_800000f4:
    sw tp,16(sp)
L_800000f8:
    sw t0,20(sp)
L_800000fc:
    sw t1,24(sp)
L_80000100:
    sw t2,28(sp)
L_80000104:
    sw s0,32(sp)
L_80000108:
    sw s1,36(sp)
L_8000010c:
    sw a0,40(sp)
L_80000110:
    sw a1,44(sp)
L_80000114:
    sw a2,48(sp)
L_80000118:
    sw a3,52(sp)
L_8000011c:
    sw a4,56(sp)
L_80000120:
    sw a5,60(sp)
L_80000124:
    sw a6,64(sp)
L_80000128:
    sw a7,68(sp)
L_8000012c:
    sw s2,72(sp)
L_80000130:
    sw s3,76(sp)
L_80000134:
    sw s4,80(sp)
L_80000138:
    sw s5,84(sp)
L_8000013c:
    sw s6,88(sp)
L_80000140:
    sw s7,92(sp)
L_80000144:
    sw s8,96(sp)
L_80000148:
    sw s9,100(sp)
L_8000014c:
    sw s10,104(sp)
L_80000150:
    sw s11,108(sp)
L_80000154:
    sw t3,112(sp)
L_80000158:
    sw t4,116(sp)
L_8000015c:
    sw t5,120(sp)
L_80000160:
    sw t6,124(sp)
L_80000164:
    addi x0, x0, 0   # removed csrr
L_80000168:
    addi x0, x0, 0   # removed csrr
L_8000016c:
    addi a2, sp, 0   # pseudo mv
L_80000170:    /* handle_trap */
    jal L_80003b0c
L_80000174:
    addi x0, x0, 0   # removed csrw
L_80000178:
    lui t0,0x2
L_8000017c:    /* _tbss_end+0x17bc */
    addi t0,t0,-2048  # 1800 # <_tbss_end+0x17bc>
L_80000180:
    addi x0, x0, 0   # removed csrs
L_80000184:
    lw ra,4(sp)
L_80000188:
    lw sp,8(sp)
L_8000018c:
    lw gp,12(sp)
L_80000190:
    lw tp,16(sp)
L_80000194:
    lw t0,20(sp)
L_80000198:
    lw t1,24(sp)
L_8000019c:
    lw t2,28(sp)
L_800001a0:
    lw s0,32(sp)
L_800001a4:
    lw s1,36(sp)
L_800001a8:
    lw a0,40(sp)
L_800001ac:
    lw a1,44(sp)
L_800001b0:
    lw a2,48(sp)
L_800001b4:
    lw a3,52(sp)
L_800001b8:
    lw a4,56(sp)
L_800001bc:
    lw a5,60(sp)
L_800001c0:
    lw a6,64(sp)
L_800001c4:
    lw a7,68(sp)
L_800001c8:
    lw s2,72(sp)
L_800001cc:
    lw s3,76(sp)
L_800001d0:
    lw s4,80(sp)
L_800001d4:
    lw s5,84(sp)
L_800001d8:
    lw s6,88(sp)
L_800001dc:
    lw s7,92(sp)
L_800001e0:
    lw s8,96(sp)
L_800001e4:
    lw s9,100(sp)
L_800001e8:
    lw s10,104(sp)
L_800001ec:
    lw s11,108(sp)
L_800001f0:
    lw t3,112(sp)
L_800001f4:
    lw t4,116(sp)
L_800001f8:
    lw t5,120(sp)
L_800001fc:
    lw t6,124(sp)
L_80000200:
    addi sp,sp,272
L_80000204:
    addi x0, x0, 0   # removed mret
L_80001048:    /* cmp_idx */
L_80001048:    /* cmp_idx+0x14 */
    beqz a2,L_8000105c
L_8000104c:
    lh a0,2(a0)
L_80001050:
    lh a5,2(a1)
L_80001054:
    sub a0,a0,a5
L_80001058:
    jalr x0, 0(ra)   # pseudo ret
L_8000105c:
    lh a5,0(a0)
L_80001060:
    slli a3,a5,0x10
L_80001064:
    andi a4,a5,-256
L_80001068:
    srli a5,a3,0x18
L_8000106c:
    or a5,a4,a5
L_80001070:
    sh a5,0(a0)
L_80001074:
    lh a5,0(a1)
L_80001078:
    lh a0,2(a0)
L_8000107c:
    slli a3,a5,0x10
L_80001080:
    andi a4,a5,-256
L_80001084:
    srli a5,a3,0x18
L_80001088:
    or a5,a4,a5
L_8000108c:
    sh a5,0(a1)
L_80001090:
    lh a5,2(a1)
L_80001094:
    sub a0,a0,a5
L_80001098:
    jalr x0, 0(ra)   # pseudo ret
L_8000109c:    /* calc_func */
L_8000109c:
    lh a6,0(a0)
L_800010a0:
    srai a5,a6,0x7
L_800010a4:
    andi a5,a5,1
L_800010a8:    /* calc_func+0x18 */
    beqz a5,L_800010b4
L_800010ac:
    andi a0,a6,127
L_800010b0:
    jalr x0, 0(ra)   # pseudo ret
L_800010b4:
    srai a4,a6,0x3
L_800010b8:
    andi a4,a4,15
L_800010bc:
    addi sp,sp,-32
L_800010c0:
    slli a5,a4,0x4
L_800010c4:
    add a2,a4,a5
L_800010c8:
    sw s0,24(sp)
L_800010cc:
    sw ra,28(sp)
L_800010d0:
    sw s1,20(sp)
L_800010d4:
    andi a3,a6,7
L_800010d8:
    lhu a5,56(a1)
L_800010dc:
    addi a7, a1, 0   # pseudo mv
L_800010e0:
    addi s0, a0, 0   # pseudo mv
L_800010e4:
    addi a4, a2, 0   # pseudo mv
L_800010e8:    /* calc_func+0xe8 */
    beqz a3,L_80001184
L_800010ec:
    addi a2, x0, 1   # pseudo li
L_800010f0:    /* calc_func+0xd8 */
    bne a3,a2,L_80001174
L_800010f4:
    addi a2, a5, 0   # pseudo mv
L_800010f8:
    addi a0,a7,40
L_800010fc:
    addi a1, a4, 0   # pseudo mv
L_80001100:
    sw a6,12(sp)
L_80001104:
    sw a7,8(sp)
L_80001108:    /* core_bench_matrix */
    jal L_8000243c
L_8000110c:
    lw a7,8(sp)
L_80001110:
    slli s1,a0,0x10
L_80001114:
    lw a6,12(sp)
L_80001118:
    lhu a5,60(a7)
L_8000111c:
    srai s1,s1,0x10
L_80001120:    /* calc_func+0x12c */
    bnez a5,L_800011c8
L_80001124:
    lhu a5,56(a7)
L_80001128:
    sh a0,60(a7)
L_8000112c:
    addi a1, a5, 0   # pseudo mv
L_80001130:
    sw a7,12(sp)
L_80001134:
    sw a6,8(sp)
L_80001138:    /* crcu16 */
    jal L_80002be4
L_8000113c:
    lw a6,8(sp)
L_80001140:
    lw a7,12(sp)
L_80001144:
    addi a5, a0, 0   # pseudo mv
L_80001148:
    andi a6,a6,-256
L_8000114c:
    andi a0,s1,127
L_80001150:
    or a6,a0,a6
L_80001154:
    sh a5,56(a7)
L_80001158:
    ori a6,a6,128
L_8000115c:
    lw ra,28(sp)
L_80001160:
    sh a6,0(s0)
L_80001164:
    lw s0,24(sp)
L_80001168:
    lw s1,20(sp)
L_8000116c:
    addi sp,sp,32
L_80001170:
    jalr x0, 0(ra)   # pseudo ret
L_80001174:
    slli a0,a6,0x10
L_80001178:
    srli a0,a0,0x10
L_8000117c:
    addi s1, a6, 0   # pseudo mv
L_80001180:    /* calc_func+0x90 */
    jal x0, L_8000112c   # pseudo j
L_80001184:
    addi a3, x0, 33   # pseudo li
L_80001188:    /* calc_func+0xf4 */
    bltu a3,a2,L_80001190
L_8000118c:
    addi a4, x0, 34   # pseudo li
L_80001190:
    lh a3,2(a7)
L_80001194:
    lh a2,0(a7)
L_80001198:
    lw a1,20(a7)
L_8000119c:
    lw a0,24(a7)
L_800011a0:
    sw a6,12(sp)
L_800011a4:
    sw a7,8(sp)
L_800011a8:    /* core_bench_state */
    jal L_800028b4
L_800011ac:
    lw a7,8(sp)
L_800011b0:
    slli s1,a0,0x10
L_800011b4:
    lw a6,12(sp)
L_800011b8:
    lhu a5,62(a7)
L_800011bc:
    srai s1,s1,0x10
L_800011c0:    /* calc_func+0x12c */
    bnez a5,L_800011c8
L_800011c4:
    sh a0,62(a7)
L_800011c8:
    lhu a5,56(a7)
L_800011cc:    /* calc_func+0x90 */
    jal x0, L_8000112c   # pseudo j
L_800011d0:    /* cmp_complex */
L_800011d0:
    addi sp,sp,-32
L_800011d4:
    sw s1,20(sp)
L_800011d8:
    addi s1, a1, 0   # pseudo mv
L_800011dc:
    addi a1, a2, 0   # pseudo mv
L_800011e0:
    sw ra,28(sp)
L_800011e4:
    sw s0,24(sp)
L_800011e8:
    sw a2,12(sp)
L_800011ec:    /* calc_func */
    jal L_8000109c
L_800011f0:
    lw a1,12(sp)
L_800011f4:
    addi s0, a0, 0   # pseudo mv
L_800011f8:
    addi a0, s1, 0   # pseudo mv
L_800011fc:    /* calc_func */
    jal L_8000109c
L_80001200:
    lw ra,28(sp)
L_80001204:
    sub a0,s0,a0
L_80001208:
    lw s0,24(sp)
L_8000120c:
    lw s1,20(sp)
L_80001210:
    addi sp,sp,32
L_80001214:
    jalr x0, 0(ra)   # pseudo ret
L_80001218:    /* copy_info */
L_80001218:
    lh a4,0(a1)
L_8000121c:
    lh a5,2(a1)
L_80001220:
    sh a4,0(a0)
L_80001224:
    sh a5,2(a0)
L_80001228:
    jalr x0, 0(ra)   # pseudo ret
L_8000122c:    /* core_list_insert_new */
L_8000122c:
    lw a6,0(a2)
L_80001230:
    addi a7,a6,8
L_80001234:    /* core_list_insert_new+0x54 */
    bgeu a7,a4,L_80001280
L_80001238:
    lw a4,0(a3)
L_8000123c:
    addi t1,a4,4
L_80001240:    /* core_list_insert_new+0x54 */
    bgeu t1,a5,L_80001280
L_80001244:
    sw a7,0(a2)
L_80001248:
    lw a5,0(a0)
L_8000124c:
    lh a7,0(a1)
L_80001250:
    lh a2,2(a1)
L_80001254:
    sw a5,0(a6)
L_80001258:
    sw a6,0(a0)
L_8000125c:
    sw a4,4(a6)
L_80001260:
    lw a5,0(a3)
L_80001264:
    addi a0, a6, 0   # pseudo mv
L_80001268:
    addi a5,a5,4
L_8000126c:
    sw a5,0(a3)
L_80001270:
    lw a5,4(a6)
L_80001274:
    sh a7,0(a5)
L_80001278:
    sh a2,2(a5)
L_8000127c:
    jalr x0, 0(ra)   # pseudo ret
L_80001280:
    addi a6, x0, 0   # pseudo li
L_80001284:
    addi a0, a6, 0   # pseudo mv
L_80001288:
    jalr x0, 0(ra)   # pseudo ret
L_8000128c:    /* core_list_remove */
L_8000128c:
    addi a5, a0, 0   # pseudo mv
L_80001290:
    lw a0,0(a0)
L_80001294:
    lw a3,4(a5)
L_80001298:
    lw a2,4(a0)
L_8000129c:
    lw a4,0(a0)
L_800012a0:
    sw a2,4(a5)
L_800012a4:
    sw a3,4(a0)
L_800012a8:
    sw a4,0(a5)
L_800012ac:
    sw zero,0(a0)
L_800012b0:
    jalr x0, 0(ra)   # pseudo ret
L_800012b4:    /* core_list_undo_remove */
L_800012b4:
    lw a3,4(a1)
L_800012b8:
    lw a4,4(a0)
L_800012bc:
    lw a5,0(a1)
L_800012c0:
    sw a3,4(a0)
L_800012c4:
    sw a4,4(a1)
L_800012c8:
    sw a5,0(a0)
L_800012cc:
    sw a0,0(a1)
L_800012d0:
    jalr x0, 0(ra)   # pseudo ret
L_800012d4:    /* core_list_find */
L_800012d4:
    lh a4,2(a1)
L_800012d8:    /* core_list_find+0x28 */
    bltz a4,L_800012fc
L_800012dc:    /* core_list_find+0x18 */
    bnez a0,L_800012ec
L_800012e0:
    jalr x0, 0(ra)   # pseudo ret
L_800012e4:
    lw a0,0(a0)
L_800012e8:    /* core_list_find+0x48 */
    beqz a0,L_8000131c
L_800012ec:
    lw a5,4(a0)
L_800012f0:
    lh a5,2(a5)
L_800012f4:    /* core_list_find+0x10 */
    bne a5,a4,L_800012e4
L_800012f8:
    jalr x0, 0(ra)   # pseudo ret
L_800012fc:    /* core_list_find+0x48 */
    beqz a0,L_8000131c
L_80001300:
    lh a4,0(a1)
L_80001304:    /* core_list_find+0x3c */
    jal x0, L_80001310   # pseudo j
L_80001308:
    lw a0,0(a0)
L_8000130c:    /* core_list_find+0x48 */
    beqz a0,L_8000131c
L_80001310:
    lw a5,4(a0)
L_80001314:
    lbu a5,0(a5)
L_80001318:    /* core_list_find+0x34 */
    bne a5,a4,L_80001308
L_8000131c:
    jalr x0, 0(ra)   # pseudo ret
L_80001320:    /* core_list_reverse */
L_80001320:    /* core_list_reverse+0x20 */
    beqz a0,L_80001340
L_80001324:
    addi a4, x0, 0   # pseudo li
L_80001328:    /* core_list_reverse+0x10 */
    jal x0, L_80001330   # pseudo j
L_8000132c:
    addi a0, a5, 0   # pseudo mv
L_80001330:
    lw a5,0(a0)
L_80001334:
    sw a4,0(a0)
L_80001338:
    addi a4, a0, 0   # pseudo mv
L_8000133c:    /* core_list_reverse+0xc */
    bnez a5,L_8000132c
L_80001340:
    jalr x0, 0(ra)   # pseudo ret
L_80001344:    /* core_list_mergesort */
L_80001344:
    addi sp,sp,-48
L_80001348:
    sw s2,32(sp)
L_8000134c:
    sw s5,20(sp)
L_80001350:
    sw s6,16(sp)
L_80001354:
    sw s7,12(sp)
L_80001358:
    sw s10,0(sp)
L_8000135c:
    addi s5, x0, 1   # pseudo li
L_80001360:
    sw ra,44(sp)
L_80001364:
    sw s0,40(sp)
L_80001368:
    sw s1,36(sp)
L_8000136c:
    sw s3,28(sp)
L_80001370:
    sw s4,24(sp)
L_80001374:
    sw s8,8(sp)
L_80001378:
    sw s9,4(sp)
L_8000137c:
    addi s2, a0, 0   # pseudo mv
L_80001380:
    addi s7, a1, 0   # pseudo mv
L_80001384:
    addi s6, a2, 0   # pseudo mv
L_80001388:
    addi s10, s5, 0   # pseudo mv
L_8000138c:    /* core_list_mergesort+0x138 */
    beqz s2,L_8000147c
L_80001390:
    addi s9, x0, 0   # pseudo li
L_80001394:
    addi s1, x0, 0   # pseudo li
L_80001398:
    addi s8, x0, 0   # pseudo li
L_8000139c:
    addi s9,s9,1
L_800013a0:
    addi a5, s2, 0   # pseudo mv
L_800013a4:
    addi s0, x0, 0   # pseudo li
L_800013a8:    /* core_list_mergesort+0x74 */
    bge s0,s5,L_800013b8
L_800013ac:
    lw a5,0(a5)
L_800013b0:
    addi s0,s0,1
L_800013b4:    /* core_list_mergesort+0x64 */
    bnez a5,L_800013a8
L_800013b8:
    addi s3, s2, 0   # pseudo mv
L_800013bc:
    addi s4, s5, 0   # pseudo mv
L_800013c0:
    addi s2, a5, 0   # pseudo mv
L_800013c4:    /* core_list_mergesort+0xa8 */
    blez s0,L_800013ec
L_800013c8:    /* core_list_mergesort+0x8c */
    beqz s4,L_800013d0
L_800013cc:    /* core_list_mergesort+0xb8 */
    bnez s2,L_800013fc
L_800013d0:
    addi a5, s1, 0   # pseudo mv
L_800013d4:
    addi s0,s0,-1
L_800013d8:
    addi s1, s3, 0   # pseudo mv
L_800013dc:
    lw s3,0(s3)
L_800013e0:    /* core_list_mergesort+0xe0 */
    beqz a5,L_80001424
L_800013e4:
    sw s1,0(a5)
L_800013e8:    /* core_list_mergesort+0x84 */
    bgtz s0,L_800013c8
L_800013ec:
    snez a5,s2
L_800013f0:    /* core_list_mergesort+0x120 */
    blez s4,L_80001464
L_800013f4:    /* core_list_mergesort+0x124 */
    beqz a5,L_80001468
L_800013f8:    /* core_list_mergesort+0xfc */
    beqz s0,L_80001440
L_800013fc:
    lw a1,4(s2)
L_80001400:
    lw a0,4(s3)
L_80001404:
    addi a2, s6, 0   # pseudo mv
L_80001408:
    jalr s7
L_8000140c:    /* core_list_mergesort+0x140 */
    blez a0,L_80001484
L_80001410:
    addi a5, s1, 0   # pseudo mv
L_80001414:
    addi s4,s4,-1
L_80001418:
    addi s1, s2, 0   # pseudo mv
L_8000141c:
    lw s2,0(s2)
L_80001420:    /* core_list_mergesort+0xa0 */
    bnez a5,L_800013e4
L_80001424:
    addi s8, s1, 0   # pseudo mv
L_80001428:    /* core_list_mergesort+0x80 */
    jal x0, L_800013c4   # pseudo j
L_8000142c:
    sw a4,0(s1)
L_80001430:
    snez a5,s2
L_80001434:
    addi s1, a4, 0   # pseudo mv
L_80001438:    /* core_list_mergesort+0x11c */
    beqz s4,L_80001460
L_8000143c:    /* core_list_mergesort+0x11c */
    beqz a5,L_80001460
L_80001440:
    addi a4, s2, 0   # pseudo mv
L_80001444:
    addi s4,s4,-1
L_80001448:
    lw s2,0(s2)
L_8000144c:    /* core_list_mergesort+0xe8 */
    bnez s1,L_8000142c
L_80001450:
    addi s8, a4, 0   # pseudo mv
L_80001454:
    snez a5,s2
L_80001458:
    addi s1, a4, 0   # pseudo mv
L_8000145c:    /* core_list_mergesort+0xf8 */
    bnez s4,L_8000143c
L_80001460:
    addi s1, a4, 0   # pseudo mv
L_80001464:    /* core_list_mergesort+0x58 */
    bnez a5,L_8000139c
L_80001468:
    sw zero,0(s1)
L_8000146c:    /* core_list_mergesort+0x174 */
    beq s9,s10,L_800014b8
L_80001470:
    addi s2, s8, 0   # pseudo mv
L_80001474:
    slli s5,s5,0x1
L_80001478:    /* core_list_mergesort+0x4c */
    bnez s2,L_80001390
L_8000147c:    /* _tdata_begin */
    sw zero,0(zero)  # 0 # <_tdata_begin>
L_80001480:
    addi x0, x0, 0   # removed ebreak
L_80001484:
    lw a4,0(s3)
L_80001488:
    addi s0,s0,-1
L_8000148c:    /* core_list_mergesort+0x160 */
    beqz s1,L_800014a4
L_80001490:
    addi a5, s1, 0   # pseudo mv
L_80001494:
    addi s1, s3, 0   # pseudo mv
L_80001498:
    sw s1,0(a5)
L_8000149c:
    addi s3, a4, 0   # pseudo mv
L_800014a0:    /* core_list_mergesort+0xa4 */
    jal x0, L_800013e8   # pseudo j
L_800014a4:
    addi s8, s3, 0   # pseudo mv
L_800014a8:
    addi s1, s3, 0   # pseudo mv
L_800014ac:
    addi s3, a4, 0   # pseudo mv
L_800014b0:    /* core_list_mergesort+0xb8 */
    bgtz s0,L_800013fc
L_800014b4:    /* core_list_mergesort+0xa8 */
    jal x0, L_800013ec   # pseudo j
L_800014b8:
    lw ra,44(sp)
L_800014bc:
    lw s0,40(sp)
L_800014c0:
    lw s1,36(sp)
L_800014c4:
    lw s2,32(sp)
L_800014c8:
    lw s3,28(sp)
L_800014cc:
    lw s4,24(sp)
L_800014d0:
    lw s5,20(sp)
L_800014d4:
    lw s6,16(sp)
L_800014d8:
    lw s7,12(sp)
L_800014dc:
    lw s9,4(sp)
L_800014e0:
    lw s10,0(sp)
L_800014e4:
    addi a0, s8, 0   # pseudo mv
L_800014e8:
    lw s8,8(sp)
L_800014ec:
    addi sp,sp,48
L_800014f0:
    jalr x0, 0(ra)   # pseudo ret
L_800014f4:    /* core_bench_list */
L_800014f4:
    lh a2,4(a0)
L_800014f8:
    addi sp,sp,-48
L_800014fc:
    sw s0,40(sp)
L_80001500:
    sw ra,44(sp)
L_80001504:
    sw s1,36(sp)
L_80001508:
    sw s2,32(sp)
L_8000150c:
    sw s3,28(sp)
L_80001510:
    lw s0,36(a0)
L_80001514:
    addi t1, x0, 0   # pseudo li
L_80001518:    /* core_bench_list+0x2c4 */
    blez a2,L_800017b8
L_8000151c:    /* core_bench_list+0x2d0 */
    bltz a1,L_800017c4
L_80001520:    /* core_bench_list+0x2f4 */
    beqz s0,L_800017e8
L_80001524:
    addi a3, a1, 0   # pseudo mv
L_80001528:
    addi t3, x0, 0   # pseudo li
L_8000152c:
    addi t5, x0, 0   # pseudo li
L_80001530:
    addi t4, x0, 0   # pseudo li
L_80001534:
    addi a7, x0, 0   # pseudo li
L_80001538:
    addi a5, s0, 0   # pseudo mv
L_8000153c:    /* core_bench_list+0x54 */
    jal x0, L_80001548   # pseudo j
L_80001540:
    lw a5,0(a5)
L_80001544:    /* core_bench_list+0x138 */
    beqz a5,L_8000162c
L_80001548:
    lw a4,4(a5)
L_8000154c:
    lh a6,2(a4)
L_80001550:    /* core_bench_list+0x4c */
    bne a6,a3,L_80001540
L_80001554:
    addi a3, x0, 0   # pseudo li
L_80001558:    /* core_bench_list+0x6c */
    jal x0, L_80001560   # pseudo j
L_8000155c:
    addi s0, a4, 0   # pseudo mv
L_80001560:
    lw a4,0(s0)
L_80001564:
    sw a3,0(s0)
L_80001568:
    addi a3, s0, 0   # pseudo mv
L_8000156c:    /* core_bench_list+0x68 */
    bnez a4,L_8000155c
L_80001570:    /* core_bench_list+0x140 */
    beqz a5,L_80001634
L_80001574:
    lw a4,4(a5)
L_80001578:
    addi t4,t4,1
L_8000157c:
    lh a4,0(a4)
L_80001580:
    andi a3,a4,1
L_80001584:    /* core_bench_list+0xa0 */
    beqz a3,L_80001594
L_80001588:
    srai a4,a4,0x9
L_8000158c:
    andi a4,a4,1
L_80001590:
    add a7,a7,a4
L_80001594:
    lw a4,0(a5)
L_80001598:    /* core_bench_list+0xbc */
    beqz a4,L_800015b0
L_8000159c:
    lw a3,0(a4)
L_800015a0:
    sw a3,0(a5)
L_800015a4:
    lw a5,0(s0)
L_800015a8:
    sw a5,0(a4)
L_800015ac:
    sw a4,0(s0)
L_800015b0:    /* core_bench_list+0xfc */
    bltz a6,L_800015f0
L_800015b4:
    addi a5,t3,1
L_800015b8:
    slli t3,a5,0x10
L_800015bc:
    addi a3,a6,1
L_800015c0:
    slli a3,a3,0x10
L_800015c4:
    slli a5,a5,0x10
L_800015c8:
    srai t3,t3,0x10
L_800015cc:
    srai a3,a3,0x10
L_800015d0:
    srli a5,a5,0x10
L_800015d4:    /* core_bench_list+0x168 */
    beq a2,t3,L_8000165c
L_800015d8:
    andi t1, a5, 255   # zext.b
L_800015dc:    /* core_bench_list+0x44 */
    bgez a3,L_80001538
L_800015e0:
    addi a3, t1, 0   # pseudo mv
L_800015e4:
    addi a5, s0, 0   # pseudo mv
L_800015e8:
    lui a6,0xffff8
L_800015ec:    /* core_bench_list+0x128 */
    jal x0, L_8000161c   # pseudo j
L_800015f0:
    addi a3,t3,1
L_800015f4:
    slli t3,a3,0x10
L_800015f8:
    srai t3,t3,0x10
L_800015fc:
    slli a3,a3,0x10
L_80001600:
    srli a3,a3,0x10
L_80001604:    /* core_bench_list+0x164 */
    beq a2,t3,L_80001658
L_80001608:
    andi a3, a3, 255   # zext.b
L_8000160c:
    addi a5, s0, 0   # pseudo mv
L_80001610:    /* core_bench_list+0x128 */
    jal x0, L_8000161c   # pseudo j
L_80001614:
    lw a5,0(a5)
L_80001618:    /* core_bench_list+0x15c */
    beqz a5,L_80001650
L_8000161c:
    lw a4,4(a5)
L_80001620:
    lbu t1,0(a4)
L_80001624:    /* core_bench_list+0x120 */
    bne t1,a3,L_80001614
L_80001628:    /* core_bench_list+0x60 */
    jal x0, L_80001554   # pseudo j
L_8000162c:
    addi a6, a3, 0   # pseudo mv
L_80001630:    /* core_bench_list+0x60 */
    jal x0, L_80001554   # pseudo j
L_80001634:
    lw a5,0(s0)
L_80001638:
    addi t5,t5,1
L_8000163c:
    lw a5,4(a5)
L_80001640:
    lb a5,1(a5)
L_80001644:
    andi a5,a5,1
L_80001648:
    add a7,a7,a5
L_8000164c:    /* core_bench_list+0xbc */
    jal x0, L_800015b0   # pseudo j
L_80001650:
    addi t1, a3, 0   # pseudo mv
L_80001654:    /* core_bench_list+0x60 */
    jal x0, L_80001554   # pseudo j
L_80001658:
    addi a3, a6, 0   # pseudo mv
L_8000165c:
    slli a5,t4,0x2
L_80001660:
    sub a5,a5,t5
L_80001664:
    add a7,a7,a5
L_80001668:
    slli s1,a7,0x10
L_8000166c:
    srli s1,s1,0x10
L_80001670:    /* core_bench_list+0x1a8 */
    blez a1,L_8000169c
L_80001674:
    lui a1,0x80001
L_80001678:
    addi a2, a0, 0   # pseudo mv
L_8000167c:    /* cmp_complex */
    addi a1,a1,464  # L_800011d0 # <cmp_complex>
L_80001680:
    addi a0, s0, 0   # pseudo mv
L_80001684:
    sw t1,12(sp)
L_80001688:
    sw a3,8(sp)
L_8000168c:    /* core_list_mergesort */
    jal L_80001344
L_80001690:
    lw t1,12(sp)
L_80001694:
    lw a3,8(sp)
L_80001698:
    addi s0, a0, 0   # pseudo mv
L_8000169c:
    lw a5,0(s0)
L_800016a0:
    addi s2, s0, 0   # pseudo mv
L_800016a4:
    lw s3,0(a5)
L_800016a8:
    lw a4,4(a5)
L_800016ac:
    lw a1,4(s3)
L_800016b0:
    lw a2,0(s3)
L_800016b4:
    sw a1,4(a5)
L_800016b8:
    sw a4,4(s3)
L_800016bc:
    sw a2,0(a5)
L_800016c0:
    sw zero,0(s3)
L_800016c4:    /* core_bench_list+0x1e0 */
    bgez a3,L_800016d4
L_800016c8:    /* core_bench_list+0x28c */
    jal x0, L_80001780   # pseudo j
L_800016cc:
    lw s2,0(s2)
L_800016d0:    /* core_bench_list+0x29c */
    beqz s2,L_80001790
L_800016d4:
    lw a5,4(s2)
L_800016d8:
    lh a5,2(a5)
L_800016dc:    /* core_bench_list+0x1d8 */
    bne a5,a3,L_800016cc
L_800016e0:
    lw a5,4(s0)
L_800016e4:
    addi a1, s1, 0   # pseudo mv
L_800016e8:
    lh a0,0(a5)
L_800016ec:    /* crc16 */
    jal L_8000322c
L_800016f0:
    lw s2,0(s2)
L_800016f4:
    addi s1, a0, 0   # pseudo mv
L_800016f8:    /* core_bench_list+0x1ec */
    bnez s2,L_800016e0
L_800016fc:
    lw s2,0(s0)
L_80001700:
    lw a4,4(s3)
L_80001704:
    lw a3,4(s2)
L_80001708:
    lw a5,0(s2)
L_8000170c:
    lui a1,0x80001
L_80001710:
    sw a3,4(s3)
L_80001714:
    sw a4,4(s2)
L_80001718:
    sw a5,0(s3)
L_8000171c:
    addi a0, s0, 0   # pseudo mv
L_80001720:
    sw s3,0(s2)
L_80001724:    /* cmp_idx */
    addi a1,a1,72  # L_80001048 # <cmp_idx>
L_80001728:
    addi a2, x0, 0   # pseudo li
L_8000172c:    /* core_list_mergesort */
    jal L_80001344
L_80001730:
    lw s0,0(a0)
L_80001734:
    addi s2, a0, 0   # pseudo mv
L_80001738:    /* core_bench_list+0x264 */
    beqz s0,L_80001758
L_8000173c:
    lw a5,4(s2)
L_80001740:
    addi a1, s1, 0   # pseudo mv
L_80001744:
    lh a0,0(a5)
L_80001748:    /* crc16 */
    jal L_8000322c
L_8000174c:
    lw s0,0(s0)
L_80001750:
    addi s1, a0, 0   # pseudo mv
L_80001754:    /* core_bench_list+0x248 */
    bnez s0,L_8000173c
L_80001758:
    lw ra,44(sp)
L_8000175c:
    lw s0,40(sp)
L_80001760:
    lw s2,32(sp)
L_80001764:
    lw s3,28(sp)
L_80001768:
    addi a0, s1, 0   # pseudo mv
L_8000176c:
    lw s1,36(sp)
L_80001770:
    addi sp,sp,48
L_80001774:
    jalr x0, 0(ra)   # pseudo ret
L_80001778:
    lw s2,0(s2)
L_8000177c:    /* core_bench_list+0x29c */
    beqz s2,L_80001790
L_80001780:
    lw a5,4(s2)
L_80001784:
    lbu a5,0(a5)
L_80001788:    /* core_bench_list+0x284 */
    bne t1,a5,L_80001778
L_8000178c:    /* core_bench_list+0x1ec */
    jal x0, L_800016e0   # pseudo j
L_80001790:
    lw s2,0(s0)
L_80001794:    /* core_bench_list+0x210 */
    beqz s2,L_80001704
L_80001798:
    lw a5,4(s0)
L_8000179c:
    addi a1, s1, 0   # pseudo mv
L_800017a0:
    lh a0,0(a5)
L_800017a4:    /* crc16 */
    jal L_8000322c
L_800017a8:
    lw s2,0(s2)
L_800017ac:
    addi s1, a0, 0   # pseudo mv
L_800017b0:    /* core_bench_list+0x1ec */
    bnez s2,L_800016e0
L_800017b4:    /* core_bench_list+0x208 */
    jal x0, L_800016fc   # pseudo j
L_800017b8:
    addi a3, a1, 0   # pseudo mv
L_800017bc:
    addi s1, x0, 0   # pseudo li
L_800017c0:    /* core_bench_list+0x17c */
    jal x0, L_80001670   # pseudo j
L_800017c4:    /* core_bench_list+0x2f4 */
    beqz s0,L_800017e8
L_800017c8:
    addi a6, a1, 0   # pseudo mv
L_800017cc:
    addi a5, s0, 0   # pseudo mv
L_800017d0:
    addi a7, x0, 0   # pseudo li
L_800017d4:
    addi a3, x0, 0   # pseudo li
L_800017d8:
    addi t5, x0, 0   # pseudo li
L_800017dc:
    addi t3, x0, 0   # pseudo li
L_800017e0:
    addi t4, x0, 0   # pseudo li
L_800017e4:    /* core_bench_list+0x128 */
    jal x0, L_8000161c   # pseudo j
L_800017e8:    /* _tdata_begin */
    lw a5,0(zero)  # 0 # <_tdata_begin>
L_800017ec:
    addi x0, x0, 0   # removed ebreak
L_800017f0:    /* core_list_init */
L_800017f0:
    addi sp,sp,-32
L_800017f4:
    sw s0,24(sp)
L_800017f8:
    addi s0, a1, 0   # pseudo mv
L_800017fc:
    addi a1, x0, 20   # pseudo li
L_80001800:
    sw s1,20(sp)
L_80001804:
    sw ra,28(sp)
L_80001808:
    addi s1, a2, 0   # pseudo mv
L_8000180c:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80001810:
    addi a0,a0,-2
L_80001814:
    slli t1,a0,0x3
L_80001818:
    add t1,s0,t1
L_8000181c:
    lui a5,0xffff8
L_80001820:
    sw zero,0(s0)
L_80001824:
    sw t1,4(s0)
L_80001828:    /* _end+0x7fff1940 */
    addi a5,a5,128  # L_ffff8080 # <_end+0x7fff1940>
L_8000182c:
    slli t3,a0,0x2
L_80001830:
    sh a5,0(t1)
L_80001834:
    sh zero,2(t1)
L_80001838:
    addi a3,s0,16
L_8000183c:
    add t3,t1,t3
L_80001840:
    addi a2,t1,4
L_80001844:
    addi a4,s0,8
L_80001848:    /* core_list_init+0x17c */
    bgeu a3,t1,L_8000196c
L_8000184c:
    addi a1,t1,8
L_80001850:    /* core_list_init+0x17c */
    bgeu a1,t3,L_8000196c
L_80001854:
    lui a5,0xffff8
L_80001858:
    sw a4,0(s0)
L_8000185c:
    sw zero,8(s0)
L_80001860:
    sw a2,12(s0)
L_80001864:
    not a5,a5
L_80001868:
    addi a4, x0, -1   # pseudo li
L_8000186c:
    sh a5,6(t1)
L_80001870:
    sh a4,4(t1)
L_80001874:
    lui t4,0xffff8
L_80001878:
    not t4,t4
L_8000187c:
    addi a4, x0, 0   # pseudo li
L_80001880:    /* core_list_init+0xe8 */
    beqz a0,L_800018d8
L_80001884:
    xor a5,a4,s1
L_80001888:
    slli a5,a5,0x3
L_8000188c:
    andi a2,a4,7
L_80001890:
    andi a5,a5,120
L_80001894:
    or a5,a5,a2
L_80001898:
    slli a2,a5,0x8
L_8000189c:
    addi a6,a3,8
L_800018a0:
    addi a4,a4,1
L_800018a4:
    addi a7,a1,4
L_800018a8:
    add a5,a5,a2
L_800018ac:    /* core_list_init+0xe4 */
    bgeu a6,t1,L_800018d4
L_800018b0:    /* core_list_init+0xe4 */
    bgeu a7,t3,L_800018d4
L_800018b4:
    lw a2,0(s0)
L_800018b8:
    sw a2,0(a3)
L_800018bc:
    sw a3,0(s0)
L_800018c0:
    sw a1,4(a3)
L_800018c4:
    sh a5,0(a1)
L_800018c8:
    sh t4,2(a1)
L_800018cc:
    addi a3, a6, 0   # pseudo mv
L_800018d0:
    addi a1, a7, 0   # pseudo mv
L_800018d4:    /* core_list_init+0x94 */
    bne a0,a4,L_80001884
L_800018d8:
    lw a7,0(s0)
L_800018dc:
    lw a3,0(a7)
L_800018e0:    /* core_list_init+0x158 */
    beqz a3,L_80001948
L_800018e4:
    addi a1, x0, 5   # pseudo li
L_800018e8:
    sw a7,12(sp)
L_800018ec:
    sw a3,8(sp)
L_800018f0:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800018f4:
    lui t1,0x4
L_800018f8:
    lw a3,8(sp)
L_800018fc:
    lw a7,12(sp)
L_80001900:    /* _tbss_end+0x3fbb */
    addi t1,t1,-1  # 3fff # <_tbss_end+0x3fbb>
L_80001904:
    addi a1, x0, 512   # pseudo li
L_80001908:
    addi a4, x0, 1   # pseudo li
L_8000190c:    /* core_list_init+0x124 */
    jal x0, L_80001914   # pseudo j
L_80001910:
    addi a3, a6, 0   # pseudo mv
L_80001914:
    xor a2,s1,a4
L_80001918:
    andi a5,a1,1792
L_8000191c:
    or a5,a5,a2
L_80001920:
    and a5,a5,t1
L_80001924:
    lw a2,4(a7)
L_80001928:    /* core_list_init+0x140 */
    bgeu a4,a0,L_80001930
L_8000192c:
    addi a5, a4, 0   # pseudo mv
L_80001930:
    lw a6,0(a3)
L_80001934:
    sh a5,2(a2)
L_80001938:
    addi a4,a4,1
L_8000193c:
    addi a1,a1,256
L_80001940:
    addi a7, a3, 0   # pseudo mv
L_80001944:    /* core_list_init+0x120 */
    bnez a6,L_80001910
L_80001948:
    addi a0, s0, 0   # pseudo mv
L_8000194c:
    lw s0,24(sp)
L_80001950:
    lw ra,28(sp)
L_80001954:
    lw s1,20(sp)
L_80001958:
    lui a1,0x80001
L_8000195c:    /* cmp_idx */
    addi a1,a1,72  # L_80001048 # <cmp_idx>
L_80001960:
    addi a2, x0, 0   # pseudo li
L_80001964:
    addi sp,sp,32
L_80001968:    /* core_list_mergesort */
    jal x0, L_80001344   # pseudo j
L_8000196c:
    addi a1, a2, 0   # pseudo mv
L_80001970:
    addi a3, a4, 0   # pseudo mv
L_80001974:    /* core_list_init+0x84 */
    jal x0, L_80001874   # pseudo j
L_80001978:    /* iterate */
L_80001978:
    addi sp,sp,-16
L_8000197c:
    sw s2,0(sp)
L_80001980:
    lw s2,28(a0)
L_80001984:
    sw ra,12(sp)
L_80001988:
    sw zero,56(a0)
L_8000198c:
    sw zero,60(a0)
L_80001990:    /* iterate+0x74 */
    beqz s2,L_800019ec
L_80001994:
    sw s0,8(sp)
L_80001998:
    sw s1,4(sp)
L_8000199c:
    addi s0, a0, 0   # pseudo mv
L_800019a0:
    addi s1, x0, 0   # pseudo li
L_800019a4:
    addi a1, x0, 1   # pseudo li
L_800019a8:
    addi a0, s0, 0   # pseudo mv
L_800019ac:    /* core_bench_list */
    jal L_800014f4
L_800019b0:
    lhu a1,56(s0)
L_800019b4:    /* crcu16 */
    jal L_80002be4
L_800019b8:
    sh a0,56(s0)
L_800019bc:
    addi a1, x0, -1   # pseudo li
L_800019c0:
    addi a0, s0, 0   # pseudo mv
L_800019c4:    /* core_bench_list */
    jal L_800014f4
L_800019c8:
    lhu a1,56(s0)
L_800019cc:    /* crcu16 */
    jal L_80002be4
L_800019d0:
    sh a0,56(s0)
L_800019d4:    /* iterate+0x64 */
    bnez s1,L_800019dc
L_800019d8:
    sh a0,58(s0)
L_800019dc:
    addi s1,s1,1
L_800019e0:    /* iterate+0x2c */
    bne s2,s1,L_800019a4
L_800019e4:
    lw s0,8(sp)
L_800019e8:
    lw s1,4(sp)
L_800019ec:
    lw ra,12(sp)
L_800019f0:
    lw s2,0(sp)
L_800019f4:
    addi a0, x0, 0   # pseudo li
L_800019f8:
    addi sp,sp,16
L_800019fc:
    jalr x0, 0(ra)   # pseudo ret
L_80001a00:    /* core_init_matrix */
L_80001a00:
    addi sp,sp,-80
L_80001a04:
    sw s1,68(sp)
L_80001a08:
    sw s6,48(sp)
L_80001a0c:
    sw s9,36(sp)
L_80001a10:
    sw ra,76(sp)
L_80001a14:
    sw s0,72(sp)
L_80001a18:
    sw s2,64(sp)
L_80001a1c:
    sw s7,44(sp)
L_80001a20:
    addi s1, a0, 0   # pseudo mv
L_80001a24:
    addi s9, a3, 0   # pseudo mv
L_80001a28:
    addi s6, a2, 0   # pseudo mv
L_80001a2c:    /* core_init_matrix+0x34 */
    bnez a2,L_80001a34
L_80001a30:
    addi s6, x0, 1   # pseudo li
L_80001a34:
    addi s7,a1,-1
L_80001a38:
    andi s7,s7,-4
L_80001a3c:
    addi a5,s7,4
L_80001a40:
    sw a5,4(sp)
L_80001a44:
    addi s0, x0, 0   # pseudo li
L_80001a48:    /* core_init_matrix+0x194 */
    beqz s1,L_80001b94
L_80001a4c:
    addi s2, s0, 0   # pseudo mv
L_80001a50:
    addi s0,s0,1
L_80001a54:
    addi a1, s0, 0   # pseudo mv
L_80001a58:
    addi a0, s0, 0   # pseudo mv
L_80001a5c:    /* __mulsi3 */
    jal L_80004b68
L_80001a60:
    slli a0,a0,0x3
L_80001a64:    /* core_init_matrix+0x4c */
    bltu a0,s1,L_80001a4c
L_80001a68:
    addi a1, s2, 0   # pseudo mv
L_80001a6c:
    addi a0, s2, 0   # pseudo mv
L_80001a70:    /* __mulsi3 */
    jal L_80004b68
L_80001a74:
    slli a5,a0,0x1
L_80001a78:
    sw a5,8(sp)
L_80001a7c:
    lw a4,8(sp)
L_80001a80:
    lw a5,4(sp)
L_80001a84:
    add s7,a5,a4
L_80001a88:    /* core_init_matrix+0x1c8 */
    beqz s2,L_80001bc8
L_80001a8c:
    sw s3,60(sp)
L_80001a90:
    sw s4,56(sp)
L_80001a94:
    sw s5,52(sp)
L_80001a98:
    sw s8,40(sp)
L_80001a9c:
    sw s10,32(sp)
L_80001aa0:
    sw s11,28(sp)
L_80001aa4:
    sw s2,12(sp)
L_80001aa8:
    lw a5,4(sp)
L_80001aac:
    addi s0,s2,1
L_80001ab0:
    slli s8,s2,0x1
L_80001ab4:
    addi s4, s7, 0   # pseudo mv
L_80001ab8:
    addi s3, x0, 0   # pseudo li
L_80001abc:
    addi s11, x0, 1   # pseudo li
L_80001ac0:
    sub s1,a5,s7
L_80001ac4:
    addi s5, s11, 0   # pseudo mv
L_80001ac8:
    addi s10, s4, 0   # pseudo mv
L_80001acc:
    addi a0, s6, 0   # pseudo mv
L_80001ad0:
    addi a1, s11, 0   # pseudo mv
L_80001ad4:    /* __mulsi3 */
    jal L_80004b68
L_80001ad8:
    srai a5,a0,0x1f
L_80001adc:
    srli a5,a5,0x10
L_80001ae0:
    add a2,a0,a5
L_80001ae4:
    slli a2,a2,0x10
L_80001ae8:
    srli a2,a2,0x10
L_80001aec:
    sub s6,a2,a5
L_80001af0:
    add a3,s11,s6
L_80001af4:
    add a5,a3,s11
L_80001af8:
    add a0,s1,s10
L_80001afc:
    sh a3,0(s10)
L_80001b00:
    andi a5, a5, 255   # zext.b
L_80001b04:
    addi s11,s11,1
L_80001b08:
    sh a5,0(a0)
L_80001b0c:
    addi s10,s10,2
L_80001b10:    /* core_init_matrix+0xcc */
    bne s11,s0,L_80001acc
L_80001b14:
    addi s3,s3,1
L_80001b18:
    add s11,s2,s5
L_80001b1c:
    add s0,s0,s2
L_80001b20:
    add s4,s4,s8
L_80001b24:    /* core_init_matrix+0xc4 */
    bne s3,s2,L_80001ac4
L_80001b28:
    lw s3,60(sp)
L_80001b2c:
    lw s4,56(sp)
L_80001b30:
    lw s5,52(sp)
L_80001b34:
    lw s8,40(sp)
L_80001b38:
    lw s10,32(sp)
L_80001b3c:
    lw s11,28(sp)
L_80001b40:
    lw a5,8(sp)
L_80001b44:
    lw ra,76(sp)
L_80001b48:
    lw s0,72(sp)
L_80001b4c:
    add a5,s7,a5
L_80001b50:    /* _end+0x7fff18bf */
    addi a5,a5,-1  # L_ffff7fff # <_end+0x7fff18bf>
L_80001b54:
    andi a5,a5,-4
L_80001b58:
    addi a5,a5,4
L_80001b5c:
    sw a5,12(s9)
L_80001b60:
    lw a5,4(sp)
L_80001b64:
    sw s7,8(s9)
L_80001b68:
    lw s1,68(sp)
L_80001b6c:
    sw a5,4(s9)
L_80001b70:
    lw a5,12(sp)
L_80001b74:
    lw s6,48(sp)
L_80001b78:
    lw s7,44(sp)
L_80001b7c:
    sw a5,0(s9)
L_80001b80:
    addi a0, s2, 0   # pseudo mv
L_80001b84:
    lw s9,36(sp)
L_80001b88:
    lw s2,64(sp)
L_80001b8c:
    addi sp,sp,80
L_80001b90:
    jalr x0, 0(ra)   # pseudo ret
L_80001b94:
    addi a5, x0, -1   # pseudo li
L_80001b98:
    sw a5,12(sp)
L_80001b9c:
    addi s2, a5, 0   # pseudo mv
L_80001ba0:
    addi a5, x0, 2   # pseudo li
L_80001ba4:
    sw s3,60(sp)
L_80001ba8:
    sw s4,56(sp)
L_80001bac:
    sw s5,52(sp)
L_80001bb0:
    sw s8,40(sp)
L_80001bb4:
    sw s10,32(sp)
L_80001bb8:
    sw s11,28(sp)
L_80001bbc:
    addi s7,s7,6
L_80001bc0:
    sw a5,8(sp)
L_80001bc4:    /* core_init_matrix+0xa8 */
    jal x0, L_80001aa8   # pseudo j
L_80001bc8:
    sw zero,8(sp)
L_80001bcc:
    sw zero,12(sp)
L_80001bd0:    /* core_init_matrix+0x140 */
    jal x0, L_80001b40   # pseudo j
L_80001bd4:    /* matrix_sum */
L_80001bd4:
    addi t4, a0, 0   # pseudo mv
L_80001bd8:    /* matrix_sum+0x78 */
    beqz a0,L_80001c4c
L_80001bdc:
    slli t3,a0,0x2
L_80001be0:
    add a7,a1,t3
L_80001be4:
    addi t1, x0, 0   # pseudo li
L_80001be8:
    addi a0, x0, 0   # pseudo li
L_80001bec:
    addi a4, x0, 0   # pseudo li
L_80001bf0:
    addi a3, x0, 0   # pseudo li
L_80001bf4:
    sub a5,a7,t3
L_80001bf8:    /* matrix_sum+0x3c */
    jal x0, L_80001c10   # pseudo j
L_80001bfc:
    add a6,a0,a1
L_80001c00:
    slli a0,a6,0x10
L_80001c04:
    addi a5,a5,4
L_80001c08:
    srai a0,a0,0x10
L_80001c0c:    /* matrix_sum+0x68 */
    beq a7,a5,L_80001c3c
L_80001c10:
    addi a1, a4, 0   # pseudo mv
L_80001c14:
    lw a4,0(a5)
L_80001c18:
    addi a6,a0,10
L_80001c1c:
    add a3,a3,a4
L_80001c20:
    slt a1,a1,a4
L_80001c24:    /* matrix_sum+0x28 */
    bge a2,a3,L_80001bfc
L_80001c28:
    slli a0,a6,0x10
L_80001c2c:
    addi a5,a5,4
L_80001c30:
    addi a3, x0, 0   # pseudo li
L_80001c34:
    srai a0,a0,0x10
L_80001c38:    /* matrix_sum+0x3c */
    bne a7,a5,L_80001c10
L_80001c3c:
    addi t1,t1,1
L_80001c40:
    add a7,a7,t3
L_80001c44:    /* matrix_sum+0x20 */
    bne t4,t1,L_80001bf4
L_80001c48:
    jalr x0, 0(ra)   # pseudo ret
L_80001c4c:
    addi a0, x0, 0   # pseudo li
L_80001c50:
    jalr x0, 0(ra)   # pseudo ret
L_80001c54:    /* matrix_mul_const */
L_80001c54:    /* matrix_mul_const+0xb4 */
    beqz a0,L_80001d08
L_80001c58:
    addi sp,sp,-48
L_80001c5c:
    sw s8,8(sp)
L_80001c60:
    slli s8,a0,0x1
L_80001c64:
    sw s2,32(sp)
L_80001c68:
    sw s3,28(sp)
L_80001c6c:
    sw s4,24(sp)
L_80001c70:
    sw s5,20(sp)
L_80001c74:
    sw s6,16(sp)
L_80001c78:
    sw s7,12(sp)
L_80001c7c:
    sw ra,44(sp)
L_80001c80:
    sw s0,40(sp)
L_80001c84:
    sw s1,36(sp)
L_80001c88:
    addi s3, a3, 0   # pseudo mv
L_80001c8c:
    addi s7, a1, 0   # pseudo mv
L_80001c90:
    addi s6, a0, 0   # pseudo mv
L_80001c94:
    add s2,a2,s8
L_80001c98:
    addi s5, x0, 0   # pseudo li
L_80001c9c:
    addi s4, x0, 0   # pseudo li
L_80001ca0:
    slli s1,s5,0x2
L_80001ca4:
    add s1,s7,s1
L_80001ca8:
    sub s0,s2,s8
L_80001cac:
    lh a0,0(s0)
L_80001cb0:
    addi a1, s3, 0   # pseudo mv
L_80001cb4:
    addi s0,s0,2
L_80001cb8:    /* __mulsi3 */
    jal L_80004b68
L_80001cbc:
    sw a0,0(s1)
L_80001cc0:
    addi s1,s1,4
L_80001cc4:    /* matrix_mul_const+0x58 */
    bne s2,s0,L_80001cac
L_80001cc8:
    addi s4,s4,1
L_80001ccc:
    add s5,s5,s6
L_80001cd0:
    add s2,s2,s8
L_80001cd4:    /* matrix_mul_const+0x4c */
    bne s6,s4,L_80001ca0
L_80001cd8:
    lw ra,44(sp)
L_80001cdc:
    lw s0,40(sp)
L_80001ce0:
    lw s1,36(sp)
L_80001ce4:
    lw s2,32(sp)
L_80001ce8:
    lw s3,28(sp)
L_80001cec:
    lw s4,24(sp)
L_80001cf0:
    lw s5,20(sp)
L_80001cf4:
    lw s6,16(sp)
L_80001cf8:
    lw s7,12(sp)
L_80001cfc:
    lw s8,8(sp)
L_80001d00:
    addi sp,sp,48
L_80001d04:
    jalr x0, 0(ra)   # pseudo ret
L_80001d08:
    jalr x0, 0(ra)   # pseudo ret
L_80001d0c:    /* matrix_add_const */
L_80001d0c:    /* matrix_add_const+0x34 */
    beqz a0,L_80001d40
L_80001d10:
    slli a6,a0,0x1
L_80001d14:
    add a3,a1,a6
L_80001d18:
    addi a1, x0, 0   # pseudo li
L_80001d1c:
    sub a5,a3,a6
L_80001d20:
    lhu a4,0(a5)
L_80001d24:
    addi a5,a5,2
L_80001d28:
    add a4,a2,a4
L_80001d2c:
    sh a4,-2(a5)
L_80001d30:    /* matrix_add_const+0x14 */
    bne a3,a5,L_80001d20
L_80001d34:
    addi a1,a1,1
L_80001d38:
    add a3,a3,a6
L_80001d3c:    /* matrix_add_const+0x10 */
    bne a0,a1,L_80001d1c
L_80001d40:
    jalr x0, 0(ra)   # pseudo ret
L_80001d44:    /* matrix_mul_vect */
L_80001d44:    /* matrix_mul_vect+0xc8 */
    beqz a0,L_80001e0c
L_80001d48:
    addi sp,sp,-48
L_80001d4c:
    sw s3,28(sp)
L_80001d50:
    sw s8,8(sp)
L_80001d54:
    slli s3,a0,0x1
L_80001d58:
    slli s8,a0,0x2
L_80001d5c:
    sw s4,24(sp)
L_80001d60:
    sw s5,20(sp)
L_80001d64:
    sw s6,16(sp)
L_80001d68:
    sw s7,12(sp)
L_80001d6c:
    sw s9,4(sp)
L_80001d70:
    sw ra,44(sp)
L_80001d74:
    sw s0,40(sp)
L_80001d78:
    sw s1,36(sp)
L_80001d7c:
    sw s2,32(sp)
L_80001d80:
    addi s6, a3, 0   # pseudo mv
L_80001d84:
    addi s7, a2, 0   # pseudo mv
L_80001d88:
    addi s5, a0, 0   # pseudo mv
L_80001d8c:
    addi s4, a1, 0   # pseudo mv
L_80001d90:
    add s8,a1,s8
L_80001d94:
    add s3,a3,s3
L_80001d98:
    addi s9, x0, 0   # pseudo li
L_80001d9c:
    slli s1,s9,0x1
L_80001da0:
    add s1,s7,s1
L_80001da4:
    addi s0, s6, 0   # pseudo mv
L_80001da8:
    addi s2, x0, 0   # pseudo li
L_80001dac:
    lh a1,0(s0)
L_80001db0:
    lh a0,0(s1)
L_80001db4:
    addi s0,s0,2
L_80001db8:
    addi s1,s1,2
L_80001dbc:    /* __mulsi3 */
    jal L_80004b68
L_80001dc0:
    add s2,s2,a0
L_80001dc4:    /* matrix_mul_vect+0x68 */
    bne s3,s0,L_80001dac
L_80001dc8:
    sw s2,0(s4)
L_80001dcc:
    addi s4,s4,4
L_80001dd0:
    add s9,s9,s5
L_80001dd4:    /* matrix_mul_vect+0x58 */
    bne s8,s4,L_80001d9c
L_80001dd8:
    lw ra,44(sp)
L_80001ddc:
    lw s0,40(sp)
L_80001de0:
    lw s1,36(sp)
L_80001de4:
    lw s2,32(sp)
L_80001de8:
    lw s3,28(sp)
L_80001dec:
    lw s4,24(sp)
L_80001df0:
    lw s5,20(sp)
L_80001df4:
    lw s6,16(sp)
L_80001df8:
    lw s7,12(sp)
L_80001dfc:
    lw s8,8(sp)
L_80001e00:
    lw s9,4(sp)
L_80001e04:
    addi sp,sp,48
L_80001e08:
    jalr x0, 0(ra)   # pseudo ret
L_80001e0c:
    jalr x0, 0(ra)   # pseudo ret
L_80001e10:    /* matrix_mul_matrix */
L_80001e10:    /* matrix_mul_matrix+0x108 */
    beqz a0,L_80001f18
L_80001e14:
    addi sp,sp,-80
L_80001e18:
    sw s1,68(sp)
L_80001e1c:
    slli s1,a0,0x1
L_80001e20:
    sw s2,64(sp)
L_80001e24:
    sw s6,48(sp)
L_80001e28:
    sw s7,44(sp)
L_80001e2c:
    sw s8,40(sp)
L_80001e30:
    sw s9,36(sp)
L_80001e34:
    sw ra,76(sp)
L_80001e38:
    sw s0,72(sp)
L_80001e3c:
    sw s3,60(sp)
L_80001e40:
    sw s4,56(sp)
L_80001e44:
    sw s5,52(sp)
L_80001e48:
    sw s10,32(sp)
L_80001e4c:
    sw s11,28(sp)
L_80001e50:
    sw a3,12(sp)
L_80001e54:
    sw a1,8(sp)
L_80001e58:
    addi s7, a0, 0   # pseudo mv
L_80001e5c:
    addi s6, a2, 0   # pseudo mv
L_80001e60:
    add s2,a2,s1
L_80001e64:
    addi s8, x0, 0   # pseudo li
L_80001e68:
    addi s9, x0, 0   # pseudo li
L_80001e6c:
    lw a5,8(sp)
L_80001e70:
    lw s4,12(sp)
L_80001e74:
    slli s3,s8,0x2
L_80001e78:
    add s3,a5,s3
L_80001e7c:
    addi s5, x0, 0   # pseudo li
L_80001e80:
    addi s11, s4, 0   # pseudo mv
L_80001e84:
    addi s0, s6, 0   # pseudo mv
L_80001e88:
    addi s10, x0, 0   # pseudo li
L_80001e8c:
    lh a1,0(s11)
L_80001e90:
    lh a0,0(s0)
L_80001e94:
    addi s0,s0,2
L_80001e98:
    add s11,s11,s1
L_80001e9c:    /* __mulsi3 */
    jal L_80004b68
L_80001ea0:
    add s10,s10,a0
L_80001ea4:    /* matrix_mul_matrix+0x7c */
    bne s2,s0,L_80001e8c
L_80001ea8:
    sw s10,0(s3)
L_80001eac:
    addi a5,s5,1
L_80001eb0:
    addi s3,s3,4
L_80001eb4:
    addi s4,s4,2
L_80001eb8:    /* matrix_mul_matrix+0xb4 */
    beq s7,a5,L_80001ec4
L_80001ebc:
    addi s5, a5, 0   # pseudo mv
L_80001ec0:    /* matrix_mul_matrix+0x70 */
    jal x0, L_80001e80   # pseudo j
L_80001ec4:
    add s6,s6,s1
L_80001ec8:
    add s8,s8,s7
L_80001ecc:
    add s2,s2,s1
L_80001ed0:    /* matrix_mul_matrix+0xcc */
    beq s9,s5,L_80001edc
L_80001ed4:
    addi s9,s9,1
L_80001ed8:    /* matrix_mul_matrix+0x5c */
    jal x0, L_80001e6c   # pseudo j
L_80001edc:
    lw ra,76(sp)
L_80001ee0:
    lw s0,72(sp)
L_80001ee4:
    lw s1,68(sp)
L_80001ee8:
    lw s2,64(sp)
L_80001eec:
    lw s3,60(sp)
L_80001ef0:
    lw s4,56(sp)
L_80001ef4:
    lw s5,52(sp)
L_80001ef8:
    lw s6,48(sp)
L_80001efc:
    lw s7,44(sp)
L_80001f00:
    lw s8,40(sp)
L_80001f04:
    lw s9,36(sp)
L_80001f08:
    lw s10,32(sp)
L_80001f0c:
    lw s11,28(sp)
L_80001f10:
    addi sp,sp,80
L_80001f14:
    jalr x0, 0(ra)   # pseudo ret
L_80001f18:
    jalr x0, 0(ra)   # pseudo ret
L_80001f1c:    /* matrix_mul_matrix_bitextract */
L_80001f1c:    /* matrix_mul_matrix_bitextract+0x11c */
    beqz a0,L_80002038
L_80001f20:
    addi sp,sp,-80
L_80001f24:
    sw s0,72(sp)
L_80001f28:
    slli s0,a0,0x1
L_80001f2c:
    sw s1,68(sp)
L_80001f30:
    sw s5,52(sp)
L_80001f34:
    sw s6,48(sp)
L_80001f38:
    sw s7,44(sp)
L_80001f3c:
    sw s8,40(sp)
L_80001f40:
    sw ra,76(sp)
L_80001f44:
    sw s2,64(sp)
L_80001f48:
    sw s3,60(sp)
L_80001f4c:
    sw s4,56(sp)
L_80001f50:
    sw s9,36(sp)
L_80001f54:
    sw s10,32(sp)
L_80001f58:
    sw s11,28(sp)
L_80001f5c:
    sw a3,12(sp)
L_80001f60:
    sw a1,8(sp)
L_80001f64:
    addi s6, a0, 0   # pseudo mv
L_80001f68:
    addi s5, a2, 0   # pseudo mv
L_80001f6c:
    add s1,a2,s0
L_80001f70:
    addi s7, x0, 0   # pseudo li
L_80001f74:
    addi s8, x0, 0   # pseudo li
L_80001f78:
    lw a5,8(sp)
L_80001f7c:
    lw s3,12(sp)
L_80001f80:
    slli s2,s7,0x2
L_80001f84:
    add s2,a5,s2
L_80001f88:
    addi s4, x0, 0   # pseudo li
L_80001f8c:
    addi s10, s3, 0   # pseudo mv
L_80001f90:
    addi s11, s5, 0   # pseudo mv
L_80001f94:
    addi s9, x0, 0   # pseudo li
L_80001f98:
    lh a1,0(s10)
L_80001f9c:
    lh a0,0(s11)
L_80001fa0:
    addi s11,s11,2
L_80001fa4:
    add s10,s10,s0
L_80001fa8:    /* __mulsi3 */
    jal L_80004b68
L_80001fac:
    srai a3,a0,0x2
L_80001fb0:
    srai a1,a0,0x5
L_80001fb4:
    andi a1,a1,127
L_80001fb8:
    andi a0,a3,15
L_80001fbc:    /* __mulsi3 */
    jal L_80004b68
L_80001fc0:
    add s9,s9,a0
L_80001fc4:    /* matrix_mul_matrix_bitextract+0x7c */
    bne s1,s11,L_80001f98
L_80001fc8:
    sw s9,0(s2)
L_80001fcc:
    addi a5,s4,1
L_80001fd0:
    addi s2,s2,4
L_80001fd4:
    addi s3,s3,2
L_80001fd8:    /* matrix_mul_matrix_bitextract+0xc8 */
    beq s6,a5,L_80001fe4
L_80001fdc:
    addi s4, a5, 0   # pseudo mv
L_80001fe0:    /* matrix_mul_matrix_bitextract+0x70 */
    jal x0, L_80001f8c   # pseudo j
L_80001fe4:
    add s5,s5,s0
L_80001fe8:
    add s7,s7,s6
L_80001fec:
    add s1,s1,s0
L_80001ff0:    /* matrix_mul_matrix_bitextract+0xe0 */
    beq s8,s4,L_80001ffc
L_80001ff4:
    addi s8,s8,1
L_80001ff8:    /* matrix_mul_matrix_bitextract+0x5c */
    jal x0, L_80001f78   # pseudo j
L_80001ffc:
    lw ra,76(sp)
L_80002000:
    lw s0,72(sp)
L_80002004:
    lw s1,68(sp)
L_80002008:
    lw s2,64(sp)
L_8000200c:
    lw s3,60(sp)
L_80002010:
    lw s4,56(sp)
L_80002014:
    lw s5,52(sp)
L_80002018:
    lw s6,48(sp)
L_8000201c:
    lw s7,44(sp)
L_80002020:
    lw s8,40(sp)
L_80002024:
    lw s9,36(sp)
L_80002028:
    lw s10,32(sp)
L_8000202c:
    lw s11,28(sp)
L_80002030:
    addi sp,sp,80
L_80002034:
    jalr x0, 0(ra)   # pseudo ret
L_80002038:
    jalr x0, 0(ra)   # pseudo ret
L_8000203c:    /* matrix_test */
L_8000203c:
    addi sp,sp,-80
L_80002040:
    sw s3,60(sp)
L_80002044:
    sw s4,56(sp)
L_80002048:
    sw ra,76(sp)
L_8000204c:
    sw s0,72(sp)
L_80002050:
    sw s1,68(sp)
L_80002054:
    sw a3,12(sp)
L_80002058:
    addi s4, a1, 0   # pseudo mv
L_8000205c:
    addi s3, a2, 0   # pseudo mv
L_80002060:    /* matrix_test+0x384 */
    beqz a0,L_800023c0
L_80002064:
    sw s8,40(sp)
L_80002068:
    slli s8,a0,0x1
L_8000206c:
    sw s2,64(sp)
L_80002070:
    sw s7,44(sp)
L_80002074:
    sw s9,36(sp)
L_80002078:
    add s7,a2,s8
L_8000207c:
    addi s9, a4, 0   # pseudo mv
L_80002080:
    lui s2,0xfffff
L_80002084:
    sw s6,48(sp)
L_80002088:
    sw s5,52(sp)
L_8000208c:
    sw s10,32(sp)
L_80002090:
    sw s11,28(sp)
L_80002094:
    addi a4, s7, 0   # pseudo mv
L_80002098:
    or s2,s9,s2
L_8000209c:
    addi s6, x0, 0   # pseudo li
L_800020a0:
    sub a5,a4,s8
L_800020a4:
    lhu a3,0(a5)
L_800020a8:
    addi a5,a5,2
L_800020ac:
    add a3,s9,a3
L_800020b0:
    sh a3,-2(a5)
L_800020b4:    /* matrix_test+0x68 */
    bne a5,a4,L_800020a4
L_800020b8:
    addi s0,s6,1
L_800020bc:
    add a4,a5,s8
L_800020c0:    /* matrix_test+0x90 */
    beq a0,s0,L_800020cc
L_800020c4:
    addi s6, s0, 0   # pseudo mv
L_800020c8:    /* matrix_test+0x64 */
    jal x0, L_800020a0   # pseudo j
L_800020cc:
    addi s10, x0, 0   # pseudo li
L_800020d0:
    addi s11, x0, 0   # pseudo li
L_800020d4:
    slli a5,s10,0x2
L_800020d8:
    add s5,s4,a5
L_800020dc:
    sub s1,s7,s8
L_800020e0:
    lh a0,0(s1)
L_800020e4:
    addi a1, s9, 0   # pseudo mv
L_800020e8:
    addi s1,s1,2
L_800020ec:    /* __mulsi3 */
    jal L_80004b68
L_800020f0:
    sw a0,0(s5)
L_800020f4:
    addi s5,s5,4
L_800020f8:    /* matrix_test+0xa4 */
    bne s7,s1,L_800020e0
L_800020fc:
    add s10,s10,s0
L_80002100:
    add s7,s7,s8
L_80002104:    /* matrix_test+0xd4 */
    beq s11,s6,L_80002110
L_80002108:
    addi s11,s11,1
L_8000210c:    /* matrix_test+0x98 */
    jal x0, L_800020d4   # pseudo j
L_80002110:
    slli s8,s0,0x2
L_80002114:
    add s7,s4,s8
L_80002118:
    addi a6, s7, 0   # pseudo mv
L_8000211c:
    addi a3, x0, 0   # pseudo li
L_80002120:
    addi a4, x0, 0   # pseudo li
L_80002124:
    addi a0, x0, 0   # pseudo li
L_80002128:
    addi a7, x0, 0   # pseudo li
L_8000212c:
    sub a5,a6,s8
L_80002130:    /* matrix_test+0x10c */
    jal x0, L_80002148   # pseudo j
L_80002134:
    add a1,a0,a2
L_80002138:
    slli a0,a1,0x10
L_8000213c:
    addi a5,a5,4
L_80002140:
    srai a0,a0,0x10
L_80002144:    /* matrix_test+0x138 */
    beq a6,a5,L_80002174
L_80002148:
    addi a2, a3, 0   # pseudo mv
L_8000214c:
    lw a3,0(a5)
L_80002150:
    addi a1,a0,10
L_80002154:
    add a4,a4,a3
L_80002158:
    slt a2,a2,a3
L_8000215c:    /* matrix_test+0xf8 */
    bge s2,a4,L_80002134
L_80002160:
    slli a0,a1,0x10
L_80002164:
    addi a5,a5,4
L_80002168:
    addi a4, x0, 0   # pseudo li
L_8000216c:
    srai a0,a0,0x10
L_80002170:    /* matrix_test+0x10c */
    bne a6,a5,L_80002148
L_80002174:
    add a6,a6,s8
L_80002178:    /* matrix_test+0x148 */
    beq s6,a7,L_80002184
L_8000217c:
    addi a7,a7,1
L_80002180:    /* matrix_test+0xf0 */
    jal x0, L_8000212c   # pseudo j
L_80002184:
    addi a1, x0, 0   # pseudo li
L_80002188:    /* crc16 */
    jal L_8000322c
L_8000218c:
    lw a3,12(sp)
L_80002190:
    addi s1, a0, 0   # pseudo mv
L_80002194:
    addi a2, s3, 0   # pseudo mv
L_80002198:
    addi a0, s0, 0   # pseudo mv
L_8000219c:
    addi a1, s4, 0   # pseudo mv
L_800021a0:    /* matrix_mul_vect */
    jal L_80001d44
L_800021a4:
    addi a3, x0, 0   # pseudo li
L_800021a8:
    addi a4, x0, 0   # pseudo li
L_800021ac:
    addi a0, x0, 0   # pseudo li
L_800021b0:
    addi a6, x0, 0   # pseudo li
L_800021b4:
    sub a5,s7,s8
L_800021b8:    /* matrix_test+0x194 */
    jal x0, L_800021d0   # pseudo j
L_800021bc:
    add a1,a0,a2
L_800021c0:
    slli a0,a1,0x10
L_800021c4:
    addi a5,a5,4
L_800021c8:
    srai a0,a0,0x10
L_800021cc:    /* matrix_test+0x1c0 */
    beq a5,s7,L_800021fc
L_800021d0:
    addi a2, a3, 0   # pseudo mv
L_800021d4:
    lw a3,0(a5)
L_800021d8:
    addi a1,a0,10
L_800021dc:
    add a4,a4,a3
L_800021e0:
    slt a2,a2,a3
L_800021e4:    /* matrix_test+0x180 */
    bge s2,a4,L_800021bc
L_800021e8:
    slli a0,a1,0x10
L_800021ec:
    addi a5,a5,4
L_800021f0:
    addi a4, x0, 0   # pseudo li
L_800021f4:
    srai a0,a0,0x10
L_800021f8:    /* matrix_test+0x194 */
    bne a5,s7,L_800021d0
L_800021fc:
    add s7,a5,s8
L_80002200:    /* matrix_test+0x1d0 */
    beq a6,s6,L_8000220c
L_80002204:    /* _end+0x7fff18c1 */
    addi a6,a6,1  # L_ffff8001 # <_end+0x7fff18c1>
L_80002208:    /* matrix_test+0x178 */
    jal x0, L_800021b4   # pseudo j
L_8000220c:
    addi a1, s1, 0   # pseudo mv
L_80002210:    /* crc16 */
    jal L_8000322c
L_80002214:
    lw a3,12(sp)
L_80002218:
    addi s1, a0, 0   # pseudo mv
L_8000221c:
    addi a2, s3, 0   # pseudo mv
L_80002220:
    addi a0, s0, 0   # pseudo mv
L_80002224:
    addi a1, s4, 0   # pseudo mv
L_80002228:    /* matrix_mul_matrix */
    jal L_80001e10
L_8000222c:
    addi t1, x0, 0   # pseudo li
L_80002230:
    addi a5, x0, 0   # pseudo li
L_80002234:
    addi a4, x0, 0   # pseudo li
L_80002238:
    addi a0, x0, 0   # pseudo li
L_8000223c:
    addi a7, x0, 0   # pseudo li
L_80002240:
    slli a2,t1,0x2
L_80002244:
    add a2,s4,a2
L_80002248:
    addi a1, x0, 0   # pseudo li
L_8000224c:    /* matrix_test+0x22c */
    jal x0, L_80002268   # pseudo j
L_80002250:
    add a6,a0,a3
L_80002254:
    slli a0,a6,0x10
L_80002258:
    addi a1,a1,1
L_8000225c:
    srai a0,a0,0x10
L_80002260:
    addi a2,a2,4
L_80002264:    /* matrix_test+0x25c */
    bgeu a1,s0,L_80002298
L_80002268:
    addi a3, a5, 0   # pseudo mv
L_8000226c:
    lw a5,0(a2)
L_80002270:
    addi a6,a0,10
L_80002274:
    add a4,a4,a5
L_80002278:
    slt a3,a3,a5
L_8000227c:    /* matrix_test+0x214 */
    bge s2,a4,L_80002250
L_80002280:
    slli a0,a6,0x10
L_80002284:
    addi a1,a1,1
L_80002288:
    addi a4, x0, 0   # pseudo li
L_8000228c:
    srai a0,a0,0x10
L_80002290:
    addi a2,a2,4
L_80002294:    /* matrix_test+0x22c */
    bltu a1,s0,L_80002268
L_80002298:
    addi a7,a7,1
L_8000229c:
    add t1,t1,s0
L_800022a0:    /* matrix_test+0x204 */
    bltu a7,s0,L_80002240
L_800022a4:
    addi a1, s1, 0   # pseudo mv
L_800022a8:    /* crc16 */
    jal L_8000322c
L_800022ac:
    lw a3,12(sp)
L_800022b0:
    addi s1, a0, 0   # pseudo mv
L_800022b4:
    addi a2, s3, 0   # pseudo mv
L_800022b8:
    addi a0, s0, 0   # pseudo mv
L_800022bc:
    addi a1, s4, 0   # pseudo mv
L_800022c0:    /* matrix_mul_matrix_bitextract */
    jal L_80001f1c
L_800022c4:
    addi t1, x0, 0   # pseudo li
L_800022c8:
    addi a5, x0, 0   # pseudo li
L_800022cc:
    addi a4, x0, 0   # pseudo li
L_800022d0:
    addi a0, x0, 0   # pseudo li
L_800022d4:
    addi a7, x0, 0   # pseudo li
L_800022d8:
    slli a2,t1,0x2
L_800022dc:
    add a2,s4,a2
L_800022e0:
    addi a1, x0, 0   # pseudo li
L_800022e4:    /* matrix_test+0x2c4 */
    jal x0, L_80002300   # pseudo j
L_800022e8:
    add a6,a0,a3
L_800022ec:
    slli a0,a6,0x10
L_800022f0:
    addi a1,a1,1
L_800022f4:
    srai a0,a0,0x10
L_800022f8:
    addi a2,a2,4
L_800022fc:    /* matrix_test+0x2f4 */
    bgeu a1,s0,L_80002330
L_80002300:
    addi a3, a5, 0   # pseudo mv
L_80002304:
    lw a5,0(a2)
L_80002308:
    addi a6,a0,10
L_8000230c:
    add a4,a4,a5
L_80002310:
    slt a3,a3,a5
L_80002314:    /* matrix_test+0x2ac */
    bge s2,a4,L_800022e8
L_80002318:
    slli a0,a6,0x10
L_8000231c:
    addi a1,a1,1
L_80002320:
    addi a4, x0, 0   # pseudo li
L_80002324:
    srai a0,a0,0x10
L_80002328:
    addi a2,a2,4
L_8000232c:    /* matrix_test+0x2c4 */
    bltu a1,s0,L_80002300
L_80002330:
    addi a7,a7,1
L_80002334:
    add t1,t1,s0
L_80002338:    /* matrix_test+0x29c */
    bltu a7,s0,L_800022d8
L_8000233c:
    addi a1, s1, 0   # pseudo mv
L_80002340:    /* crc16 */
    jal L_8000322c
L_80002344:
    addi a1, x0, 0   # pseudo li
L_80002348:
    addi a2, x0, 0   # pseudo li
L_8000234c:
    slli a5,a1,0x1
L_80002350:
    add a5,s3,a5
L_80002354:
    addi a4, x0, 0   # pseudo li
L_80002358:
    lhu a3,0(a5)
L_8000235c:
    addi a4,a4,1
L_80002360:
    addi a5,a5,2
L_80002364:
    sub a3,a3,s9
L_80002368:
    sh a3,-2(a5)
L_8000236c:    /* matrix_test+0x31c */
    bltu a4,s0,L_80002358
L_80002370:
    addi a2,a2,1
L_80002374:
    add a1,a1,s0
L_80002378:    /* matrix_test+0x310 */
    bltu a2,s0,L_8000234c
L_8000237c:
    lw s2,64(sp)
L_80002380:
    lw s5,52(sp)
L_80002384:
    lw s6,48(sp)
L_80002388:
    lw s7,44(sp)
L_8000238c:
    lw s8,40(sp)
L_80002390:
    lw s9,36(sp)
L_80002394:
    lw s10,32(sp)
L_80002398:
    lw s11,28(sp)
L_8000239c:
    lw ra,76(sp)
L_800023a0:
    lw s0,72(sp)
L_800023a4:
    slli a0,a0,0x10
L_800023a8:
    lw s1,68(sp)
L_800023ac:
    lw s3,60(sp)
L_800023b0:
    lw s4,56(sp)
L_800023b4:
    srai a0,a0,0x10
L_800023b8:
    addi sp,sp,80
L_800023bc:
    jalr x0, 0(ra)   # pseudo ret
L_800023c0:
    addi a1, x0, 0   # pseudo li
L_800023c4:    /* crc16 */
    jal L_8000322c
L_800023c8:
    lw s1,12(sp)
L_800023cc:
    addi a2, s3, 0   # pseudo mv
L_800023d0:
    addi s0, a0, 0   # pseudo mv
L_800023d4:
    addi a3, s1, 0   # pseudo mv
L_800023d8:
    addi a1, s4, 0   # pseudo mv
L_800023dc:
    addi a0, x0, 0   # pseudo li
L_800023e0:    /* matrix_mul_vect */
    jal L_80001d44
L_800023e4:
    addi a1, s0, 0   # pseudo mv
L_800023e8:
    addi a0, x0, 0   # pseudo li
L_800023ec:    /* crc16 */
    jal L_8000322c
L_800023f0:
    addi a3, s1, 0   # pseudo mv
L_800023f4:
    addi a2, s3, 0   # pseudo mv
L_800023f8:
    addi s0, a0, 0   # pseudo mv
L_800023fc:
    addi a1, s4, 0   # pseudo mv
L_80002400:
    addi a0, x0, 0   # pseudo li
L_80002404:    /* matrix_mul_matrix */
    jal L_80001e10
L_80002408:
    addi a1, s0, 0   # pseudo mv
L_8000240c:
    addi a0, x0, 0   # pseudo li
L_80002410:    /* crc16 */
    jal L_8000322c
L_80002414:
    addi s0, a0, 0   # pseudo mv
L_80002418:
    addi a1, s4, 0   # pseudo mv
L_8000241c:
    addi a3, s1, 0   # pseudo mv
L_80002420:
    addi a2, s3, 0   # pseudo mv
L_80002424:
    addi a0, x0, 0   # pseudo li
L_80002428:    /* matrix_mul_matrix_bitextract */
    jal L_80001f1c
L_8000242c:
    addi a1, s0, 0   # pseudo mv
L_80002430:
    addi a0, x0, 0   # pseudo li
L_80002434:    /* crc16 */
    jal L_8000322c
L_80002438:    /* matrix_test+0x360 */
    jal x0, L_8000239c   # pseudo j
L_8000243c:    /* core_bench_matrix */
L_8000243c:
    addi sp,sp,-16
L_80002440:
    sw s0,8(sp)
L_80002444:
    lw a3,8(a0)
L_80002448:
    addi s0, a2, 0   # pseudo mv
L_8000244c:
    addi a4, a1, 0   # pseudo mv
L_80002450:
    lw a2,4(a0)
L_80002454:
    lw a1,12(a0)
L_80002458:
    lw a0,0(a0)
L_8000245c:
    sw ra,12(sp)
L_80002460:    /* matrix_test */
    jal L_8000203c
L_80002464:
    addi a1, s0, 0   # pseudo mv
L_80002468:
    lw s0,8(sp)
L_8000246c:
    lw ra,12(sp)
L_80002470:
    addi sp,sp,16
L_80002474:    /* crc16 */
    jal x0, L_8000322c   # pseudo j
L_80002478:    /* core_init_state */
L_80002478:
    addi t1,a0,-1
L_8000247c:
    addi t4, x0, 1   # pseudo li
L_80002480:    /* core_init_state+0x124 */
    bgeu t4,t1,L_8000259c
L_80002484:
    add a1,a1,t4
L_80002488:
    slli a1,a1,0x10
L_8000248c:
    srli a1,a1,0x10
L_80002490:
    addi sp,sp,-16
L_80002494:
    lui a7,0x80006
L_80002498:
    slli a6,a1,0x1b
L_8000249c:
    sw s0,12(sp)
L_800024a0:
    addi t3, x0, 7   # pseudo li
L_800024a4:
    andi a3,a1,7
L_800024a8:    /* intpat */
    addi a7,a7,-1608  # L_800059b8 # <intpat>
L_800024ac:
    addi a4, x0, 0   # pseudo li
L_800024b0:
    addi t5, x0, 4   # pseudo li
L_800024b4:
    addi t6, x0, 44   # pseudo li
L_800024b8:
    srli a5,a6,0x1e
L_800024bc:    /* core_init_state+0xc0 */
    beq a3,t3,L_80002538
L_800024c0:    /* core_init_state+0x110 */
    bltu t5,a3,L_80002588
L_800024c4:
    addi a3,a3,-3
L_800024c8:
    slli a3,a3,0x10
L_800024cc:
    slli a5,a5,0x2
L_800024d0:
    srli a3,a3,0x10
L_800024d4:
    add a5,a7,a5
L_800024d8:    /* core_init_state+0x104 */
    bltu t4,a3,L_8000257c
L_800024dc:
    lw a5,16(a5)
L_800024e0:
    addi t0, x0, 8   # pseudo li
L_800024e4:
    addi a3,a4,1
L_800024e8:
    add s0,a3,t0
L_800024ec:    /* core_init_state+0xdc */
    bgeu s0,t1,L_80002554
L_800024f0:
    addi a1,a1,1
L_800024f4:
    add a4,a2,a4
L_800024f8:
    slli a1,a1,0x10
L_800024fc:
    srli a1,a1,0x10
L_80002500:
    addi a3, a4, 0   # pseudo mv
L_80002504:
    add t2,a5,t0
L_80002508:
    lbu a6,0(a5)
L_8000250c:
    addi a5,a5,1
L_80002510:
    addi a3,a3,1
L_80002514:
    sb a6,-1(a3)
L_80002518:    /* core_init_state+0x90 */
    bne t2,a5,L_80002508
L_8000251c:
    add a4,a4,t0
L_80002520:
    sb t6,0(a4)
L_80002524:
    slli a6,a1,0x1b
L_80002528:
    andi a3,a1,7
L_8000252c:
    addi a4, s0, 0   # pseudo mv
L_80002530:
    srli a5,a6,0x1e
L_80002534:    /* core_init_state+0x48 */
    bne a3,t3,L_800024c0
L_80002538:
    slli a5,a5,0x2
L_8000253c:
    addi t0, x0, 8   # pseudo li
L_80002540:
    addi a3,a4,1
L_80002544:
    add a5,a7,a5
L_80002548:
    add s0,a3,t0
L_8000254c:
    lw a5,48(a5)
L_80002550:    /* core_init_state+0x78 */
    bltu s0,t1,L_800024f0
L_80002554:    /* core_init_state+0xe8 */
    bltu a4,a0,L_80002560
L_80002558:    /* core_init_state+0xf8 */
    jal x0, L_80002570   # pseudo j
L_8000255c:
    addi a3,a3,1
L_80002560:
    add a4,a2,a4
L_80002564:
    sb zero,0(a4)
L_80002568:
    addi a4, a3, 0   # pseudo mv
L_8000256c:    /* core_init_state+0xe4 */
    bltu a3,a0,L_8000255c
L_80002570:
    lw s0,12(sp)
L_80002574:
    addi sp,sp,16
L_80002578:
    jalr x0, 0(ra)   # pseudo ret
L_8000257c:
    lw a5,0(a5)
L_80002580:
    addi t0, x0, 4   # pseudo li
L_80002584:    /* core_init_state+0x6c */
    jal x0, L_800024e4   # pseudo j
L_80002588:
    slli a5,a5,0x2
L_8000258c:
    add a5,a7,a5
L_80002590:
    lw a5,32(a5)
L_80002594:
    addi t0, x0, 8   # pseudo li
L_80002598:    /* core_init_state+0x6c */
    jal x0, L_800024e4   # pseudo j
L_8000259c:
    addi a3, t4, 0   # pseudo mv
L_800025a0:
    addi a4, x0, 0   # pseudo li
L_800025a4:    /* core_init_state+0x134 */
    jal x0, L_800025ac   # pseudo j
L_800025a8:
    addi a3,a3,1
L_800025ac:
    add a4,a2,a4
L_800025b0:
    sb zero,0(a4)
L_800025b4:
    addi a4, a3, 0   # pseudo mv
L_800025b8:    /* core_init_state+0x130 */
    bltu a3,a0,L_800025a8
L_800025bc:
    jalr x0, 0(ra)   # pseudo ret
L_800025c0:    /* core_state_transition */
L_800025c0:
    lw a3,0(a0)
L_800025c4:
    lbu a5,0(a3)
L_800025c8:    /* core_state_transition+0x4c */
    beqz a5,L_8000260c
L_800025cc:
    addi a4, x0, 44   # pseudo li
L_800025d0:    /* core_state_transition+0x214 */
    beq a5,a4,L_800027d4
L_800025d4:
    addi a6, x0, 46   # pseudo li
L_800025d8:    /* core_state_transition+0x1f0 */
    beq a5,a6,L_800027b0
L_800025dc:    /* core_state_transition+0x58 */
    bltu a6,a5,L_80002618
L_800025e0:
    addi a5,a5,-43
L_800025e4:
    andi a5,a5,253
L_800025e8:    /* core_state_transition+0x220 */
    beqz a5,L_800027e0
L_800025ec:
    lw a4,4(a1)
L_800025f0:
    lw a5,0(a1)
L_800025f4:
    addi a3,a3,1
L_800025f8:
    addi a4,a4,1
L_800025fc:
    addi a5,a5,1
L_80002600:
    sw a5,0(a1)
L_80002604:
    sw a4,4(a1)
L_80002608:
    addi a5, x0, 1   # pseudo li
L_8000260c:
    sw a3,0(a0)
L_80002610:
    addi a0, a5, 0   # pseudo mv
L_80002614:
    jalr x0, 0(ra)   # pseudo ret
L_80002618:
    addi a5,a5,-48
L_8000261c:
    andi a5, a5, 255   # zext.b
L_80002620:
    addi a2, x0, 9   # pseudo li
L_80002624:    /* core_state_transition+0x2c */
    bltu a2,a5,L_800025ec
L_80002628:
    lw a2,0(a1)
L_8000262c:
    addi a5,a3,1
L_80002630:
    addi a2,a2,1
L_80002634:
    sw a2,0(a1)
L_80002638:
    lbu a3,1(a3)
L_8000263c:    /* core_state_transition+0x270 */
    beqz a3,L_80002830
L_80002640:    /* core_state_transition+0x28c */
    beq a3,a4,L_8000284c
L_80002644:
    addi a4, x0, 46   # pseudo li
L_80002648:    /* core_state_transition+0xd4 */
    beq a3,a4,L_80002694
L_8000264c:
    addi a3,a3,-48
L_80002650:
    andi a3, a3, 255   # zext.b
L_80002654:
    addi a4, x0, 9   # pseudo li
L_80002658:    /* core_state_transition+0xc0 */
    bgeu a4,a3,L_80002680
L_8000265c:
    lw a4,16(a1)
L_80002660:
    addi a3,a5,1
L_80002664:
    addi a5, x0, 1   # pseudo li
L_80002668:
    add a4,a4,a5
L_8000266c:
    sw a4,16(a1)
L_80002670:
    sw a3,0(a0)
L_80002674:
    addi a0, a5, 0   # pseudo mv
L_80002678:
    jalr x0, 0(ra)   # pseudo ret
L_8000267c:
    sw a2,8(a1)
L_80002680:
    lbu a3,1(a5)
L_80002684:
    addi a5,a5,1
L_80002688:    /* core_state_transition+0x270 */
    beqz a3,L_80002830
L_8000268c:
    addi a4, x0, 44   # pseudo li
L_80002690:    /* core_state_transition+0x80 */
    jal x0, L_80002640   # pseudo j
L_80002694:
    lw a4,16(a1)
L_80002698:
    addi a4,a4,1
L_8000269c:
    sw a4,16(a1)
L_800026a0:
    lbu a3,1(a5)
L_800026a4:
    addi a5,a5,1
L_800026a8:    /* core_state_transition+0x208 */
    beqz a3,L_800027c8
L_800026ac:
    addi a4, x0, 44   # pseudo li
L_800026b0:    /* core_state_transition+0x27c */
    beq a3,a4,L_8000283c
L_800026b4:
    andi a4,a3,223
L_800026b8:
    addi a2, x0, 69   # pseudo li
L_800026bc:    /* core_state_transition+0x1c8 */
    bne a4,a2,L_80002788
L_800026c0:
    lw a4,20(a1)
L_800026c4:
    addi a3,a5,1
L_800026c8:
    addi a4,a4,1
L_800026cc:
    sw a4,20(a1)
L_800026d0:
    lbu a4,1(a5)
L_800026d4:    /* core_state_transition+0x2a4 */
    beqz a4,L_80002864
L_800026d8:
    addi a2, x0, 44   # pseudo li
L_800026dc:    /* core_state_transition+0x2ac */
    beq a4,a2,L_8000286c
L_800026e0:
    lw a3,12(a1)
L_800026e4:
    addi a4,a4,-43
L_800026e8:
    andi a4,a4,253
L_800026ec:
    addi a3,a3,1
L_800026f0:
    sw a3,12(a1)
L_800026f4:    /* core_state_transition+0x1bc */
    bnez a4,L_8000277c
L_800026f8:
    lbu a4,2(a5)
L_800026fc:
    addi a3,a5,2
L_80002700:    /* core_state_transition+0x29c */
    beqz a4,L_8000285c
L_80002704:    /* core_state_transition+0x2cc */
    beq a4,a2,L_8000288c
L_80002708:
    lw a2,24(a1)
L_8000270c:
    addi a4,a4,-48
L_80002710:
    andi a4, a4, 255   # zext.b
L_80002714:
    addi a2,a2,1
L_80002718:
    addi a6, x0, 9   # pseudo li
L_8000271c:
    sw a2,24(a1)
L_80002720:    /* core_state_transition+0x178 */
    bgeu a6,a4,L_80002738
L_80002724:
    addi a3,a5,3
L_80002728:
    addi a5, x0, 1   # pseudo li
L_8000272c:
    sw a3,0(a0)
L_80002730:
    addi a0, a5, 0   # pseudo mv
L_80002734:
    jalr x0, 0(ra)   # pseudo ret
L_80002738:
    addi a2, a3, 0   # pseudo mv
L_8000273c:
    lbu a4,1(a3)
L_80002740:
    addi a3,a3,1
L_80002744:
    addi a7, x0, 44   # pseudo li
L_80002748:
    addi a5,a4,-48
L_8000274c:
    andi a5, a5, 255   # zext.b
L_80002750:    /* core_state_transition+0x2b8 */
    beqz a4,L_80002878
L_80002754:    /* core_state_transition+0x2c0 */
    beq a4,a7,L_80002880
L_80002758:    /* core_state_transition+0x178 */
    bgeu a6,a5,L_80002738
L_8000275c:
    lw a4,4(a1)
L_80002760:
    addi a5, x0, 1   # pseudo li
L_80002764:
    addi a3,a2,2
L_80002768:
    add a4,a4,a5
L_8000276c:
    sw a4,4(a1)
L_80002770:
    sw a3,0(a0)
L_80002774:
    addi a0, a5, 0   # pseudo mv
L_80002778:
    jalr x0, 0(ra)   # pseudo ret
L_8000277c:
    addi a3,a5,2
L_80002780:
    addi a5, x0, 1   # pseudo li
L_80002784:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_80002788:
    addi a3,a3,-48
L_8000278c:
    andi a3, a3, 255   # zext.b
L_80002790:
    addi a4, x0, 9   # pseudo li
L_80002794:    /* core_state_transition+0xe0 */
    bgeu a4,a3,L_800026a0
L_80002798:
    lw a4,20(a1)
L_8000279c:
    addi a3,a5,1
L_800027a0:
    addi a5, x0, 1   # pseudo li
L_800027a4:
    add a4,a4,a5
L_800027a8:
    sw a4,20(a1)
L_800027ac:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_800027b0:
    lw a2,0(a1)
L_800027b4:
    addi a5,a3,1
L_800027b8:
    addi a2,a2,1
L_800027bc:
    sw a2,0(a1)
L_800027c0:
    lbu a3,1(a3)
L_800027c4:    /* core_state_transition+0xf0 */
    bnez a3,L_800026b0
L_800027c8:
    addi a3, a5, 0   # pseudo mv
L_800027cc:
    addi a5, x0, 5   # pseudo li
L_800027d0:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_800027d4:
    addi a5, x0, 0   # pseudo li
L_800027d8:
    addi a3,a3,1
L_800027dc:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_800027e0:
    lw a2,0(a1)
L_800027e4:
    addi a5,a3,1
L_800027e8:
    addi a2,a2,1
L_800027ec:
    sw a2,0(a1)
L_800027f0:
    lbu t1,1(a3)
L_800027f4:    /* core_state_transition+0x2e8 */
    beqz t1,L_800028a8
L_800027f8:    /* core_state_transition+0x2d8 */
    beq t1,a4,L_80002898
L_800027fc:
    lw a2,8(a1)
L_80002800:
    addi a4,t1,-48
L_80002804:
    andi a4, a4, 255   # zext.b
L_80002808:
    addi a7, x0, 9   # pseudo li
L_8000280c:
    addi a2,a2,1
L_80002810:    /* core_state_transition+0xbc */
    bgeu a7,a4,L_8000267c
L_80002814:    /* core_state_transition+0x268 */
    beq t1,a6,L_80002828
L_80002818:
    sw a2,8(a1)
L_8000281c:
    addi a3,a3,2
L_80002820:
    addi a5, x0, 1   # pseudo li
L_80002824:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_80002828:
    sw a2,8(a1)
L_8000282c:    /* core_state_transition+0xe0 */
    jal x0, L_800026a0   # pseudo j
L_80002830:
    addi a3, a5, 0   # pseudo mv
L_80002834:
    addi a5, x0, 4   # pseudo li
L_80002838:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_8000283c:
    addi a3, a5, 0   # pseudo mv
L_80002840:
    addi a3,a3,1
L_80002844:
    addi a5, x0, 5   # pseudo li
L_80002848:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_8000284c:
    addi a3, a5, 0   # pseudo mv
L_80002850:
    addi a3,a3,1
L_80002854:
    addi a5, x0, 4   # pseudo li
L_80002858:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_8000285c:
    addi a5, x0, 6   # pseudo li
L_80002860:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_80002864:
    addi a5, x0, 3   # pseudo li
L_80002868:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_8000286c:
    addi a5, x0, 3   # pseudo li
L_80002870:
    addi a3,a3,1
L_80002874:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_80002878:
    addi a5, x0, 7   # pseudo li
L_8000287c:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_80002880:
    addi a5, x0, 7   # pseudo li
L_80002884:
    addi a3,a3,1
L_80002888:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_8000288c:
    addi a5, x0, 6   # pseudo li
L_80002890:
    addi a3,a3,1
L_80002894:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_80002898:
    addi a3, a5, 0   # pseudo mv
L_8000289c:
    addi a3,a3,1
L_800028a0:
    addi a5, x0, 2   # pseudo li
L_800028a4:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_800028a8:
    addi a3, a5, 0   # pseudo mv
L_800028ac:
    addi a5, x0, 2   # pseudo li
L_800028b0:    /* core_state_transition+0x4c */
    jal x0, L_8000260c   # pseudo j
L_800028b4:    /* core_bench_state */
L_800028b4:
    addi sp,sp,-128
L_800028b8:
    sw s3,108(sp)
L_800028bc:
    sw s4,104(sp)
L_800028c0:
    addi s3,sp,16
L_800028c4:
    addi s4,sp,48
L_800028c8:
    sw s0,120(sp)
L_800028cc:
    sw s1,116(sp)
L_800028d0:
    sw s2,112(sp)
L_800028d4:
    sw s6,96(sp)
L_800028d8:
    sw s7,92(sp)
L_800028dc:
    sw s8,88(sp)
L_800028e0:
    sw s9,84(sp)
L_800028e4:
    addi s1, a5, 0   # pseudo mv
L_800028e8:
    addi s6, a4, 0   # pseudo mv
L_800028ec:
    sw ra,124(sp)
L_800028f0:
    sw s5,100(sp)
L_800028f4:
    addi s0, a1, 0   # pseudo mv
L_800028f8:
    sw a1,12(sp)
L_800028fc:
    addi s9, a0, 0   # pseudo mv
L_80002900:
    addi s8, a2, 0   # pseudo mv
L_80002904:
    addi s7, a3, 0   # pseudo mv
L_80002908:
    addi a5, s4, 0   # pseudo mv
L_8000290c:
    addi s2, s3, 0   # pseudo mv
L_80002910:
    addi a4, s3, 0   # pseudo mv
L_80002914:
    sw zero,0(a5)
L_80002918:
    sw zero,0(a4)
L_8000291c:
    addi a5,a5,4
L_80002920:
    addi a3,sp,80
L_80002924:
    addi a4,a4,4
L_80002928:    /* core_bench_state+0x60 */
    bne a5,a3,L_80002914
L_8000292c:
    lbu a5,0(s0)
L_80002930:
    addi s5,sp,12
L_80002934:    /* core_bench_state+0x194 */
    beqz a5,L_80002a48
L_80002938:
    addi a1,sp,48
L_8000293c:
    addi a0, s5, 0   # pseudo mv
L_80002940:    /* core_state_transition */
    jal L_800025c0
L_80002944:
    slli a4,a0,0x2
L_80002948:
    add a4,s3,a4
L_8000294c:
    lw a3,12(sp)
L_80002950:
    lw a5,0(a4)
L_80002954:
    lbu a3,0(a3)
L_80002958:
    addi a5,a5,1
L_8000295c:
    sw a5,0(a4)
L_80002960:    /* core_bench_state+0x84 */
    bnez a3,L_80002938
L_80002964:
    sw s0,12(sp)
L_80002968:
    add s9,s0,s9
L_8000296c:    /* core_bench_state+0xe8 */
    bgeu s0,s9,L_8000299c
L_80002970:
    addi a5, s0, 0   # pseudo mv
L_80002974:
    addi a2, x0, 44   # pseudo li
L_80002978:
    lbu a4,0(a5)
L_8000297c:
    xor a3,a4,s8
L_80002980:    /* core_bench_state+0xd4 */
    beq a4,a2,L_80002988
L_80002984:
    sb a3,0(a5)
L_80002988:
    add a5,a5,s6
L_8000298c:    /* core_bench_state+0xc4 */
    bltu a5,s9,L_80002978
L_80002990:
    lbu a5,0(s0)
L_80002994:
    addi s5,sp,12
L_80002998:    /* core_bench_state+0x114 */
    beqz a5,L_800029c8
L_8000299c:
    addi a1,sp,48
L_800029a0:
    addi a0, s5, 0   # pseudo mv
L_800029a4:    /* core_state_transition */
    jal L_800025c0
L_800029a8:
    slli a4,a0,0x2
L_800029ac:
    add a4,s3,a4
L_800029b0:
    lw a3,12(sp)
L_800029b4:
    lw a5,0(a4)
L_800029b8:
    lbu a3,0(a3)
L_800029bc:
    addi a5,a5,1
L_800029c0:
    sw a5,0(a4)
L_800029c4:    /* core_bench_state+0xe8 */
    bnez a3,L_8000299c
L_800029c8:
    addi a3, x0, 44   # pseudo li
L_800029cc:    /* core_bench_state+0x134 */
    bgeu s0,s9,L_800029e8
L_800029d0:
    lbu a5,0(s0)
L_800029d4:
    xor a4,a5,s7
L_800029d8:    /* core_bench_state+0x12c */
    beq a5,a3,L_800029e0
L_800029dc:
    sb a4,0(s0)
L_800029e0:
    add s0,s0,s6
L_800029e4:    /* core_bench_state+0x11c */
    bltu s0,s9,L_800029d0
L_800029e8:
    addi s3,s3,32
L_800029ec:    /* _end+0x7fff88c0 */
    lw a0,0(s2)  # L_fffff000 # <_end+0x7fff88c0>
L_800029f0:
    addi a1, s1, 0   # pseudo mv
L_800029f4:
    addi s2,s2,4
L_800029f8:    /* crcu32 */
    jal L_80002e0c
L_800029fc:
    addi a1, a0, 0   # pseudo mv
L_80002a00:
    lw a0,0(s4)
L_80002a04:
    addi s4,s4,4
L_80002a08:    /* crcu32 */
    jal L_80002e0c
L_80002a0c:
    addi s1, a0, 0   # pseudo mv
L_80002a10:    /* core_bench_state+0x138 */
    bne s3,s2,L_800029ec
L_80002a14:
    lw ra,124(sp)
L_80002a18:
    lw s0,120(sp)
L_80002a1c:
    lw s1,116(sp)
L_80002a20:
    lw s2,112(sp)
L_80002a24:
    lw s3,108(sp)
L_80002a28:
    lw s4,104(sp)
L_80002a2c:
    lw s5,100(sp)
L_80002a30:
    lw s6,96(sp)
L_80002a34:
    lw s7,92(sp)
L_80002a38:
    lw s8,88(sp)
L_80002a3c:
    lw s9,84(sp)
L_80002a40:
    addi sp,sp,128
L_80002a44:
    jalr x0, 0(ra)   # pseudo ret
L_80002a48:
    add s9,s0,s9
L_80002a4c:    /* core_bench_state+0xbc */
    bltu s0,s9,L_80002970
L_80002a50:    /* core_bench_state+0x134 */
    jal x0, L_800029e8   # pseudo j
L_80002a54:    /* get_seed_32 */
L_80002a54:
    addi a5, x0, 5   # pseudo li
L_80002a58:    /* get_seed_32+0x58 */
    bltu a5,a0,L_80002aac
L_80002a5c:
    lui a5,0x80006
L_80002a60:    /* errpat+0x10 */
    addi a5,a5,-1544  # L_800059f8 # <errpat+0x10>
L_80002a64:
    slli a0,a0,0x2
L_80002a68:
    add a0,a0,a5
L_80002a6c:
    lw a5,0(a0)
L_80002a70:
    jalr x0, 0(a5)   # pseudo jr
L_80002a74:
    lui a5,0x80006
L_80002a78:    /* seed5_volatile */
    lw a0,-176(a5)  # L_80005f50 # <seed5_volatile>
L_80002a7c:
    jalr x0, 0(ra)   # pseudo ret
L_80002a80:
    lui a5,0x80006
L_80002a84:    /* seed1_volatile */
    lw a0,-168(a5)  # L_80005f58 # <seed1_volatile>
L_80002a88:
    jalr x0, 0(ra)   # pseudo ret
L_80002a8c:
    lui a5,0x80006
L_80002a90:    /* seed2_volatile */
    lw a0,-172(a5)  # L_80005f54 # <seed2_volatile>
L_80002a94:
    jalr x0, 0(ra)   # pseudo ret
L_80002a98:    /* seed3_volatile */
    lw a0,-2040(gp)  # L_80005f44 # <seed3_volatile>
L_80002a9c:
    jalr x0, 0(ra)   # pseudo ret
L_80002aa0:
    lui a5,0x80006
L_80002aa4:    /* seed4_volatile */
    lw a0,-192(a5)  # L_80005f40 # <seed4_volatile>
L_80002aa8:
    jalr x0, 0(ra)   # pseudo ret
L_80002aac:
    addi a0, x0, 0   # pseudo li
L_80002ab0:
    jalr x0, 0(ra)   # pseudo ret
L_80002ab4:    /* crcu8 */
L_80002ab4:
    andi a4, a1, 255   # zext.b
L_80002ab8:
    slli a4,a4,0x8
L_80002abc:
    srli a1,a1,0x8
L_80002ac0:
    lui a5,0x1
L_80002ac4:
    lui t1,0xfffff
L_80002ac8:
    or a4,a4,a1
L_80002acc:    /* _tbss_end+0xecb */
    addi a5,a5,-241  # f0f # <_tbss_end+0xecb>
L_80002ad0:    /* _end+0x7fff89b0 */
    addi t1,t1,240  # L_fffff0f0 # <_end+0x7fff89b0>
L_80002ad4:
    and a2,a4,a5
L_80002ad8:
    and a4,a4,t1
L_80002adc:
    srli a4,a4,0x4
L_80002ae0:
    slli a2,a2,0x4
L_80002ae4:
    or a2,a2,a4
L_80002ae8:
    lui a7,0xffffd
L_80002aec:
    lui a4,0x3
L_80002af0:    /* _tbss_end+0x32ef */
    addi a4,a4,819  # 3333 # <_tbss_end+0x32ef>
L_80002af4:    /* _end+0x7fff658c */
    addi a7,a7,-820  # L_ffffcccc # <_end+0x7fff658c>
L_80002af8:
    andi a3,a0,15
L_80002afc:
    and a1,a2,a4
L_80002b00:
    srli a0,a0,0x4
L_80002b04:
    and a2,a2,a7
L_80002b08:
    slli a3,a3,0x4
L_80002b0c:
    or a3,a3,a0
L_80002b10:
    srli a2,a2,0x2
L_80002b14:
    slli a1,a1,0x2
L_80002b18:
    or a1,a1,a2
L_80002b1c:
    lui a0,0x5
L_80002b20:
    andi a2,a3,51
L_80002b24:
    lui a6,0xffffb
L_80002b28:
    andi a3,a3,204
L_80002b2c:    /* _end+0x7fff436a */
    addi a6,a6,-1366  # L_ffffaaaa # <_end+0x7fff436a>
L_80002b30:
    srli t3,a3,0x2
L_80002b34:    /* _tbss_end+0x5511 */
    addi a0,a0,1365  # 5555 # <_tbss_end+0x5511>
L_80002b38:
    slli a2,a2,0x2
L_80002b3c:
    and a3,a1,a0
L_80002b40:
    or a2,a2,t3
L_80002b44:
    and a1,a1,a6
L_80002b48:
    srli a1,a1,0x1
L_80002b4c:
    slli a3,a3,0x1
L_80002b50:
    andi t4,a2,85
L_80002b54:
    andi a2,a2,170
L_80002b58:
    or t3,a3,a1
L_80002b5c:
    slli t4,t4,0x1
L_80002b60:
    srli a2,a2,0x1
L_80002b64:
    srli t3,t3,0x8
L_80002b68:
    or a2,t4,a2
L_80002b6c:
    xor a2,t3,a2
L_80002b70:
    lui t3,0x80006
L_80002b74:    /* errpat+0x28 */
    addi t3,t3,-1520  # L_80005a10 # <errpat+0x28>
L_80002b78:
    slli a2,a2,0x1
L_80002b7c:
    add a2,a2,t3
L_80002b80:
    lhu a2,0(a2)
L_80002b84:
    or a3,a3,a1
L_80002b88:
    slli a3,a3,0x8
L_80002b8c:
    xor a3,a2,a3
L_80002b90:
    slli a1,a3,0x10
L_80002b94:
    andi a2, a2, 255   # zext.b
L_80002b98:
    srli a3,a1,0x18
L_80002b9c:
    slli a2,a2,0x8
L_80002ba0:
    or a2,a2,a3
L_80002ba4:
    and a3,a2,a5
L_80002ba8:
    and a2,a2,t1
L_80002bac:
    srli a2,a2,0x4
L_80002bb0:
    slli a3,a3,0x4
L_80002bb4:
    or a3,a3,a2
L_80002bb8:
    and a5,a3,a4
L_80002bbc:
    and a3,a3,a7
L_80002bc0:
    srli a3,a3,0x2
L_80002bc4:
    slli a5,a5,0x2
L_80002bc8:
    or a5,a5,a3
L_80002bcc:
    and a0,a5,a0
L_80002bd0:
    and a5,a5,a6
L_80002bd4:
    srli a5,a5,0x1
L_80002bd8:
    slli a0,a0,0x1
L_80002bdc:
    or a0,a0,a5
L_80002be0:
    jalr x0, 0(ra)   # pseudo ret
L_80002be4:    /* crcu16 */
L_80002be4:
    andi a5, a1, 255   # zext.b
L_80002be8:
    slli a5,a5,0x8
L_80002bec:
    srli a1,a1,0x8
L_80002bf0:
    lui a4,0x1
L_80002bf4:
    lui t1,0xfffff
L_80002bf8:    /* _end+0x7fff89b0 */
    addi t1,t1,240  # L_fffff0f0 # <_end+0x7fff89b0>
L_80002bfc:    /* _tbss_end+0xecb */
    addi a4,a4,-241  # f0f # <_tbss_end+0xecb>
L_80002c00:
    or a5,a5,a1
L_80002c04:
    and a1,a5,a4
L_80002c08:
    and a5,a5,t1
L_80002c0c:
    srli a5,a5,0x4
L_80002c10:
    slli a1,a1,0x4
L_80002c14:
    or a1,a1,a5
L_80002c18:
    lui a7,0xffffd
L_80002c1c:
    lui a5,0x3
L_80002c20:    /* _end+0x7fff658c */
    addi a7,a7,-820  # L_ffffcccc # <_end+0x7fff658c>
L_80002c24:    /* _tbss_end+0x32ef */
    addi a5,a5,819  # 3333 # <_tbss_end+0x32ef>
L_80002c28:
    andi a3,a0,15
L_80002c2c:
    andi a6,a0,240
L_80002c30:
    and a2,a1,a5
L_80002c34:
    srli a6,a6,0x4
L_80002c38:
    and a1,a1,a7
L_80002c3c:
    slli a3,a3,0x4
L_80002c40:
    or a3,a3,a6
L_80002c44:
    srli a1,a1,0x2
L_80002c48:
    slli a2,a2,0x2
L_80002c4c:
    or a2,a2,a1
L_80002c50:
    andi t3,a3,51
L_80002c54:
    lui a1,0x5
L_80002c58:
    andi a3,a3,204
L_80002c5c:
    lui a6,0xffffb
L_80002c60:    /* _tbss_end+0x5511 */
    addi a1,a1,1365  # 5555 # <_tbss_end+0x5511>
L_80002c64:    /* _end+0x7fff436a */
    addi a6,a6,-1366  # L_ffffaaaa # <_end+0x7fff436a>
L_80002c68:
    srli t4,a3,0x2
L_80002c6c:
    slli t3,t3,0x2
L_80002c70:
    and a3,a2,a1
L_80002c74:
    or t3,t3,t4
L_80002c78:
    and a2,a2,a6
L_80002c7c:
    slli a3,a3,0x1
L_80002c80:
    srli a2,a2,0x1
L_80002c84:
    andi t5,t3,85
L_80002c88:
    andi t3,t3,170
L_80002c8c:
    or t4,a3,a2
L_80002c90:
    slli t5,t5,0x1
L_80002c94:
    srli t3,t3,0x1
L_80002c98:
    or t3,t5,t3
L_80002c9c:
    srli t4,t4,0x8
L_80002ca0:
    xor t4,t4,t3
L_80002ca4:
    lui t3,0x80006
L_80002ca8:    /* errpat+0x28 */
    addi t3,t3,-1520  # L_80005a10 # <errpat+0x28>
L_80002cac:
    or a2,a3,a2
L_80002cb0:
    slli a3,t4,0x1
L_80002cb4:
    add a3,a3,t3
L_80002cb8:
    lhu a3,0(a3)
L_80002cbc:
    slli a2,a2,0x8
L_80002cc0:
    srli a0,a0,0x8
L_80002cc4:
    xor a2,a3,a2
L_80002cc8:
    slli t4,a2,0x10
L_80002ccc:
    andi a3, a3, 255   # zext.b
L_80002cd0:
    srli a2,t4,0x18
L_80002cd4:
    slli a3,a3,0x8
L_80002cd8:
    or a3,a3,a2
L_80002cdc:
    and a2,a3,a4
L_80002ce0:
    and a3,a3,t1
L_80002ce4:
    srli a3,a3,0x4
L_80002ce8:
    slli a2,a2,0x4
L_80002cec:
    or a2,a2,a3
L_80002cf0:
    and a3,a2,a5
L_80002cf4:
    and a2,a2,a7
L_80002cf8:
    srli a2,a2,0x2
L_80002cfc:
    slli a3,a3,0x2
L_80002d00:
    or a3,a3,a2
L_80002d04:
    and a2,a3,a1
L_80002d08:
    and a3,a3,a6
L_80002d0c:
    slli a2,a2,0x1
L_80002d10:
    srli a3,a3,0x1
L_80002d14:
    or a3,a2,a3
L_80002d18:
    andi a2, a3, 255   # zext.b
L_80002d1c:
    slli a2,a2,0x8
L_80002d20:
    srli a3,a3,0x8
L_80002d24:
    or a2,a2,a3
L_80002d28:
    and a3,a2,a4
L_80002d2c:
    and t4,a2,t1
L_80002d30:
    srli t4,t4,0x4
L_80002d34:
    andi a2,a0,15
L_80002d38:
    slli a3,a3,0x4
L_80002d3c:
    or a3,a3,t4
L_80002d40:
    srli a0,a0,0x4
L_80002d44:
    slli a2,a2,0x4
L_80002d48:
    or a2,a2,a0
L_80002d4c:
    and t4,a3,a7
L_80002d50:
    and a0,a3,a5
L_80002d54:
    srli t4,t4,0x2
L_80002d58:
    andi a3,a2,51
L_80002d5c:
    slli a0,a0,0x2
L_80002d60:
    andi a2,a2,204
L_80002d64:
    or a0,a0,t4
L_80002d68:
    srli a2,a2,0x2
L_80002d6c:
    slli a3,a3,0x2
L_80002d70:
    or a3,a3,a2
L_80002d74:
    and a2,a0,a1
L_80002d78:
    and a0,a0,a6
L_80002d7c:
    andi t5,a3,85
L_80002d80:
    slli a2,a2,0x1
L_80002d84:
    srli a0,a0,0x1
L_80002d88:
    andi a3,a3,170
L_80002d8c:
    or t4,a2,a0
L_80002d90:
    srli a3,a3,0x1
L_80002d94:
    slli t5,t5,0x1
L_80002d98:
    or t5,t5,a3
L_80002d9c:
    srli a3,t4,0x8
L_80002da0:
    xor a3,a3,t5
L_80002da4:
    slli a3,a3,0x1
L_80002da8:
    add a3,a3,t3
L_80002dac:
    lhu a3,0(a3)
L_80002db0:
    slli a2,t4,0x8
L_80002db4:
    xor a2,a3,a2
L_80002db8:
    slli a0,a2,0x10
L_80002dbc:
    andi a3, a3, 255   # zext.b
L_80002dc0:
    srli a2,a0,0x18
L_80002dc4:
    slli a3,a3,0x8
L_80002dc8:
    or a3,a3,a2
L_80002dcc:
    and a4,a3,a4
L_80002dd0:
    and a3,a3,t1
L_80002dd4:
    srli a3,a3,0x4
L_80002dd8:
    slli a4,a4,0x4
L_80002ddc:
    or a4,a4,a3
L_80002de0:
    and a5,a4,a5
L_80002de4:
    and a4,a4,a7
L_80002de8:
    srli a4,a4,0x2
L_80002dec:
    slli a5,a5,0x2
L_80002df0:
    or a5,a5,a4
L_80002df4:
    and a0,a5,a1
L_80002df8:
    and a5,a5,a6
L_80002dfc:
    srli a5,a5,0x1
L_80002e00:
    slli a0,a0,0x1
L_80002e04:
    or a0,a0,a5
L_80002e08:
    jalr x0, 0(ra)   # pseudo ret
L_80002e0c:    /* crcu32 */
L_80002e0c:
    andi a5, a1, 255   # zext.b
L_80002e10:
    slli a5,a5,0x8
L_80002e14:
    srli a1,a1,0x8
L_80002e18:
    lui a4,0x1
L_80002e1c:
    lui a7,0xfffff
L_80002e20:    /* _end+0x7fff89b0 */
    addi a7,a7,240  # L_fffff0f0 # <_end+0x7fff89b0>
L_80002e24:    /* _tbss_end+0xecb */
    addi a4,a4,-241  # f0f # <_tbss_end+0xecb>
L_80002e28:
    or a5,a5,a1
L_80002e2c:
    and a3,a5,a4
L_80002e30:
    and a5,a5,a7
L_80002e34:
    srli a5,a5,0x4
L_80002e38:
    slli a3,a3,0x4
L_80002e3c:
    or a3,a3,a5
L_80002e40:
    lui a6,0xffffd
L_80002e44:
    lui a5,0x3
L_80002e48:    /* _end+0x7fff658c */
    addi a6,a6,-820  # L_ffffcccc # <_end+0x7fff658c>
L_80002e4c:    /* _tbss_end+0x32ef */
    addi a5,a5,819  # 3333 # <_tbss_end+0x32ef>
L_80002e50:
    andi a2,a0,15
L_80002e54:
    andi a1,a0,240
L_80002e58:
    and t1,a3,a5
L_80002e5c:
    srli a1,a1,0x4
L_80002e60:
    and a3,a3,a6
L_80002e64:
    slli a2,a2,0x4
L_80002e68:
    or a2,a2,a1
L_80002e6c:
    srli a3,a3,0x2
L_80002e70:
    slli t1,t1,0x2
L_80002e74:
    or t1,t1,a3
L_80002e78:
    andi t3,a2,51
L_80002e7c:
    lui a3,0x5
L_80002e80:
    andi a2,a2,204
L_80002e84:
    lui a1,0xffffb
L_80002e88:    /* _tbss_end+0x5511 */
    addi a3,a3,1365  # 5555 # <_tbss_end+0x5511>
L_80002e8c:    /* _end+0x7fff436a */
    addi a1,a1,-1366  # L_ffffaaaa # <_end+0x7fff436a>
L_80002e90:
    srli t4,a2,0x2
L_80002e94:
    slli t3,t3,0x2
L_80002e98:
    and a2,t1,a3
L_80002e9c:
    or t3,t3,t4
L_80002ea0:
    and t1,t1,a1
L_80002ea4:
    slli a2,a2,0x1
L_80002ea8:
    srli t1,t1,0x1
L_80002eac:
    andi t5,t3,85
L_80002eb0:
    andi t3,t3,170
L_80002eb4:
    or t4,a2,t1
L_80002eb8:
    slli t5,t5,0x1
L_80002ebc:
    srli t3,t3,0x1
L_80002ec0:
    or t3,t5,t3
L_80002ec4:
    srli t4,t4,0x8
L_80002ec8:
    xor t4,t4,t3
L_80002ecc:
    or t3,a2,t1
L_80002ed0:
    lui t1,0x80006
L_80002ed4:    /* errpat+0x28 */
    addi t1,t1,-1520  # L_80005a10 # <errpat+0x28>
L_80002ed8:
    slli a2,t4,0x1
L_80002edc:
    add a2,a2,t1
L_80002ee0:
    lhu a2,0(a2)
L_80002ee4:
    slli t3,t3,0x8
L_80002ee8:
    srli t5,a0,0x8
L_80002eec:
    xor t3,a2,t3
L_80002ef0:
    slli t4,t3,0x10
L_80002ef4:
    andi a2, a2, 255   # zext.b
L_80002ef8:
    srli t3,t4,0x18
L_80002efc:
    slli a2,a2,0x8
L_80002f00:
    or a2,a2,t3
L_80002f04:
    and t3,a2,a4
L_80002f08:
    and a2,a2,a7
L_80002f0c:
    srli a2,a2,0x4
L_80002f10:
    slli t3,t3,0x4
L_80002f14:
    or t3,t3,a2
L_80002f18:
    and a2,t3,a5
L_80002f1c:
    and t3,t3,a6
L_80002f20:
    srli t3,t3,0x2
L_80002f24:
    slli a2,a2,0x2
L_80002f28:
    or a2,a2,t3
L_80002f2c:
    and t3,a2,a3
L_80002f30:
    and a2,a2,a1
L_80002f34:
    srli a2,a2,0x1
L_80002f38:
    slli t3,t3,0x1
L_80002f3c:
    or t3,t3,a2
L_80002f40:
    andi a2, t3, 255   # zext.b
L_80002f44:
    slli a2,a2,0x8
L_80002f48:
    srli t3,t3,0x8
L_80002f4c:
    or a2,a2,t3
L_80002f50:
    and t4,a2,a4
L_80002f54:
    and a2,a2,a7
L_80002f58:
    srli a2,a2,0x4
L_80002f5c:
    slli t4,t4,0x4
L_80002f60:
    or t4,t4,a2
L_80002f64:
    andi a2,t5,15
L_80002f68:
    andi t5,t5,240
L_80002f6c:
    and t3,t4,a5
L_80002f70:
    srli t5,t5,0x4
L_80002f74:
    and t4,t4,a6
L_80002f78:
    slli a2,a2,0x4
L_80002f7c:
    or a2,a2,t5
L_80002f80:
    srli t4,t4,0x2
L_80002f84:
    slli t3,t3,0x2
L_80002f88:
    or t3,t3,t4
L_80002f8c:
    andi t4,a2,51
L_80002f90:
    andi a2,a2,204
L_80002f94:
    srli t5,a2,0x2
L_80002f98:
    slli t4,t4,0x2
L_80002f9c:
    and a2,t3,a3
L_80002fa0:
    or t4,t4,t5
L_80002fa4:
    and t3,t3,a1
L_80002fa8:
    slli a2,a2,0x1
L_80002fac:
    srli t3,t3,0x1
L_80002fb0:
    andi t6,t4,85
L_80002fb4:
    andi t4,t4,170
L_80002fb8:
    or t5,a2,t3
L_80002fbc:
    slli t6,t6,0x1
L_80002fc0:
    srli t4,t4,0x1
L_80002fc4:
    srli t5,t5,0x8
L_80002fc8:
    or t4,t6,t4
L_80002fcc:
    xor t4,t5,t4
L_80002fd0:
    or t3,a2,t3
L_80002fd4:
    slli a2,t4,0x1
L_80002fd8:
    add a2,a2,t1
L_80002fdc:
    lhu a2,0(a2)
L_80002fe0:
    slli t3,t3,0x8
L_80002fe4:
    srli t4,a0,0x10
L_80002fe8:
    xor t3,a2,t3
L_80002fec:
    slli t5,t3,0x10
L_80002ff0:
    andi a2, a2, 255   # zext.b
L_80002ff4:
    srli t3,t5,0x18
L_80002ff8:
    slli a2,a2,0x8
L_80002ffc:
    or a2,a2,t3
L_80003000:
    and t3,a2,a4
L_80003004:
    and a2,a2,a7
L_80003008:
    srli a2,a2,0x4
L_8000300c:
    slli t3,t3,0x4
L_80003010:
    or t3,t3,a2
L_80003014:
    and a2,t3,a5
L_80003018:
    and t3,t3,a6
L_8000301c:
    srli t3,t3,0x2
L_80003020:
    slli a2,a2,0x2
L_80003024:
    or a2,a2,t3
L_80003028:
    and t3,a2,a3
L_8000302c:
    and a2,a2,a1
L_80003030:
    slli t3,t3,0x1
L_80003034:
    srli a2,a2,0x1
L_80003038:
    or a2,t3,a2
L_8000303c:
    andi t3, a2, 255   # zext.b
L_80003040:
    slli t3,t3,0x8
L_80003044:
    srli a2,a2,0x8
L_80003048:
    or t3,t3,a2
L_8000304c:
    and a2,t3,a4
L_80003050:
    and t3,t3,a7
L_80003054:
    srli t3,t3,0x4
L_80003058:
    slli a2,a2,0x4
L_8000305c:
    or a2,a2,t3
L_80003060:
    andi t3,t4,15
L_80003064:
    andi t4,t4,240
L_80003068:
    srli t5,t4,0x4
L_8000306c:
    slli t3,t3,0x4
L_80003070:
    and t4,a2,a5
L_80003074:
    and a2,a2,a6
L_80003078:
    or t3,t3,t5
L_8000307c:
    srli a2,a2,0x2
L_80003080:
    slli t4,t4,0x2
L_80003084:
    or t4,t4,a2
L_80003088:
    andi a2,t3,51
L_8000308c:
    andi t3,t3,204
L_80003090:
    srli t5,t3,0x2
L_80003094:
    slli a2,a2,0x2
L_80003098:
    and t3,t4,a3
L_8000309c:
    or a2,a2,t5
L_800030a0:
    and t4,t4,a1
L_800030a4:
    srli t4,t4,0x1
L_800030a8:
    slli t3,t3,0x1
L_800030ac:
    andi t6,a2,85
L_800030b0:
    andi a2,a2,170
L_800030b4:
    or t5,t3,t4
L_800030b8:
    slli t6,t6,0x1
L_800030bc:
    srli a2,a2,0x1
L_800030c0:
    srli t5,t5,0x8
L_800030c4:
    or a2,t6,a2
L_800030c8:
    xor a2,t5,a2
L_800030cc:
    slli a2,a2,0x1
L_800030d0:
    add a2,a2,t1
L_800030d4:
    lhu a2,0(a2)
L_800030d8:
    or t3,t3,t4
L_800030dc:
    slli t3,t3,0x8
L_800030e0:
    xor t3,a2,t3
L_800030e4:
    slli t4,t3,0x10
L_800030e8:
    andi a2, a2, 255   # zext.b
L_800030ec:
    srli t3,t4,0x18
L_800030f0:
    slli a2,a2,0x8
L_800030f4:
    or a2,a2,t3
L_800030f8:
    and t3,a2,a4
L_800030fc:
    and a2,a2,a7
L_80003100:
    srli a2,a2,0x4
L_80003104:
    slli t3,t3,0x4
L_80003108:
    or t3,t3,a2
L_8000310c:
    and a2,t3,a5
L_80003110:
    and t3,t3,a6
L_80003114:
    srli t3,t3,0x2
L_80003118:
    slli a2,a2,0x2
L_8000311c:
    or a2,a2,t3
L_80003120:
    and t3,a2,a3
L_80003124:
    and a2,a2,a1
L_80003128:
    srli a2,a2,0x1
L_8000312c:
    slli t3,t3,0x1
L_80003130:
    or t3,t3,a2
L_80003134:
    andi a2, t3, 255   # zext.b
L_80003138:
    slli a2,a2,0x8
L_8000313c:
    srli t3,t3,0x8
L_80003140:
    or a2,a2,t3
L_80003144:
    and t4,a2,a4
L_80003148:
    and t3,a2,a7
L_8000314c:
    srli a0,a0,0x18
L_80003150:
    andi a2,a0,15
L_80003154:
    srli t3,t3,0x4
L_80003158:
    slli t4,t4,0x4
L_8000315c:
    slli a2,a2,0x4
L_80003160:
    or t4,t4,t3
L_80003164:
    srli a0,a0,0x4
L_80003168:
    and t3,t4,a5
L_8000316c:
    or a0,a2,a0
L_80003170:
    and t4,t4,a6
L_80003174:
    andi a2,a0,51
L_80003178:
    srli t4,t4,0x2
L_8000317c:
    andi a0,a0,204
L_80003180:
    slli t3,t3,0x2
L_80003184:
    or t3,t3,t4
L_80003188:
    srli a0,a0,0x2
L_8000318c:
    slli a2,a2,0x2
L_80003190:
    or a2,a2,a0
L_80003194:
    and a0,t3,a3
L_80003198:
    and t3,t3,a1
L_8000319c:
    andi t5,a2,85
L_800031a0:
    slli a0,a0,0x1
L_800031a4:
    srli t3,t3,0x1
L_800031a8:
    andi a2,a2,170
L_800031ac:
    or t4,a0,t3
L_800031b0:
    srli a2,a2,0x1
L_800031b4:
    slli t5,t5,0x1
L_800031b8:
    or t5,t5,a2
L_800031bc:
    srli a2,t4,0x8
L_800031c0:
    xor a2,a2,t5
L_800031c4:
    slli a2,a2,0x1
L_800031c8:
    add a2,a2,t1
L_800031cc:
    lhu a2,0(a2)
L_800031d0:
    slli a0,t4,0x8
L_800031d4:
    xor a0,a2,a0
L_800031d8:
    slli t1,a0,0x10
L_800031dc:
    andi a2, a2, 255   # zext.b
L_800031e0:
    srli a0,t1,0x18
L_800031e4:
    slli a2,a2,0x8
L_800031e8:
    or a2,a2,a0
L_800031ec:
    and a4,a2,a4
L_800031f0:
    and a2,a2,a7
L_800031f4:
    srli a2,a2,0x4
L_800031f8:
    slli a4,a4,0x4
L_800031fc:
    or a4,a4,a2
L_80003200:
    and a5,a4,a5
L_80003204:
    and a4,a4,a6
L_80003208:
    srli a4,a4,0x2
L_8000320c:
    slli a5,a5,0x2
L_80003210:
    or a5,a5,a4
L_80003214:
    and a0,a5,a3
L_80003218:
    and a5,a5,a1
L_8000321c:
    srli a5,a5,0x1
L_80003220:
    slli a0,a0,0x1
L_80003224:
    or a0,a0,a5
L_80003228:
    jalr x0, 0(ra)   # pseudo ret
L_8000322c:    /* crc16 */
L_8000322c:
    andi a5, a1, 255   # zext.b
L_80003230:
    slli a5,a5,0x8
L_80003234:
    srli a1,a1,0x8
L_80003238:
    lui a4,0x1
L_8000323c:
    lui t1,0xfffff
L_80003240:    /* _end+0x7fff89b0 */
    addi t1,t1,240  # L_fffff0f0 # <_end+0x7fff89b0>
L_80003244:    /* _tbss_end+0xecb */
    addi a4,a4,-241  # f0f # <_tbss_end+0xecb>
L_80003248:
    or a5,a5,a1
L_8000324c:
    and a1,a5,a4
L_80003250:
    and a5,a5,t1
L_80003254:
    srli a5,a5,0x4
L_80003258:
    slli a1,a1,0x4
L_8000325c:
    or a1,a1,a5
L_80003260:
    lui a7,0xffffd
L_80003264:
    lui a5,0x3
L_80003268:    /* _end+0x7fff658c */
    addi a7,a7,-820  # L_ffffcccc # <_end+0x7fff658c>
L_8000326c:    /* _tbss_end+0x32ef */
    addi a5,a5,819  # 3333 # <_tbss_end+0x32ef>
L_80003270:
    andi a3,a0,15
L_80003274:
    andi a6,a0,240
L_80003278:
    and a2,a1,a5
L_8000327c:
    srli a6,a6,0x4
L_80003280:
    and a1,a1,a7
L_80003284:
    slli a3,a3,0x4
L_80003288:
    or a3,a3,a6
L_8000328c:
    srli a1,a1,0x2
L_80003290:
    slli a2,a2,0x2
L_80003294:
    or a2,a2,a1
L_80003298:
    andi t3,a3,51
L_8000329c:
    lui a1,0x5
L_800032a0:
    andi a3,a3,204
L_800032a4:
    lui a6,0xffffb
L_800032a8:    /* _tbss_end+0x5511 */
    addi a1,a1,1365  # 5555 # <_tbss_end+0x5511>
L_800032ac:    /* _end+0x7fff436a */
    addi a6,a6,-1366  # L_ffffaaaa # <_end+0x7fff436a>
L_800032b0:
    srli t4,a3,0x2
L_800032b4:
    slli t3,t3,0x2
L_800032b8:
    and a3,a2,a1
L_800032bc:
    or t3,t3,t4
L_800032c0:
    and a2,a2,a6
L_800032c4:
    slli a3,a3,0x1
L_800032c8:
    srli a2,a2,0x1
L_800032cc:
    andi t5,t3,85
L_800032d0:
    andi t3,t3,170
L_800032d4:
    or t4,a3,a2
L_800032d8:
    slli t5,t5,0x1
L_800032dc:
    srli t3,t3,0x1
L_800032e0:
    or t3,t5,t3
L_800032e4:
    srli t4,t4,0x8
L_800032e8:
    xor t4,t4,t3
L_800032ec:
    lui t3,0x80006
L_800032f0:    /* errpat+0x28 */
    addi t3,t3,-1520  # L_80005a10 # <errpat+0x28>
L_800032f4:
    or a2,a3,a2
L_800032f8:
    slli a3,t4,0x1
L_800032fc:
    add a3,a3,t3
L_80003300:
    lhu a3,0(a3)
L_80003304:
    slli a2,a2,0x8
L_80003308:
    srli a0,a0,0x8
L_8000330c:
    xor a2,a3,a2
L_80003310:
    slli t4,a2,0x10
L_80003314:
    andi a3, a3, 255   # zext.b
L_80003318:
    srli a2,t4,0x18
L_8000331c:
    slli a3,a3,0x8
L_80003320:
    or a3,a3,a2
L_80003324:
    and a2,a3,a4
L_80003328:
    and a3,a3,t1
L_8000332c:
    srli a3,a3,0x4
L_80003330:
    slli a2,a2,0x4
L_80003334:
    or a2,a2,a3
L_80003338:
    and a3,a2,a5
L_8000333c:
    and a2,a2,a7
L_80003340:
    srli a2,a2,0x2
L_80003344:
    slli a3,a3,0x2
L_80003348:
    or a3,a3,a2
L_8000334c:
    and a2,a3,a1
L_80003350:
    and a3,a3,a6
L_80003354:
    slli a2,a2,0x1
L_80003358:
    srli a3,a3,0x1
L_8000335c:
    or a3,a2,a3
L_80003360:
    andi a2, a3, 255   # zext.b
L_80003364:
    slli a2,a2,0x8
L_80003368:
    srli a3,a3,0x8
L_8000336c:
    or a2,a2,a3
L_80003370:
    and a3,a2,a4
L_80003374:
    and t4,a2,t1
L_80003378:
    srli t4,t4,0x4
L_8000337c:
    andi a2,a0,15
L_80003380:
    slli a3,a3,0x4
L_80003384:
    andi a0,a0,240
L_80003388:
    or a3,a3,t4
L_8000338c:
    srli a0,a0,0x4
L_80003390:
    slli a2,a2,0x4
L_80003394:
    or a2,a2,a0
L_80003398:
    and t4,a3,a7
L_8000339c:
    and a0,a3,a5
L_800033a0:
    srli t4,t4,0x2
L_800033a4:
    andi a3,a2,51
L_800033a8:
    slli a0,a0,0x2
L_800033ac:
    andi a2,a2,204
L_800033b0:
    or a0,a0,t4
L_800033b4:
    srli a2,a2,0x2
L_800033b8:
    slli a3,a3,0x2
L_800033bc:
    or a3,a3,a2
L_800033c0:
    and a2,a0,a1
L_800033c4:
    and a0,a0,a6
L_800033c8:
    andi t5,a3,85
L_800033cc:
    slli a2,a2,0x1
L_800033d0:
    srli a0,a0,0x1
L_800033d4:
    andi a3,a3,170
L_800033d8:
    or t4,a2,a0
L_800033dc:
    srli a3,a3,0x1
L_800033e0:
    slli t5,t5,0x1
L_800033e4:
    or t5,t5,a3
L_800033e8:
    srli a3,t4,0x8
L_800033ec:
    xor a3,a3,t5
L_800033f0:
    slli a3,a3,0x1
L_800033f4:
    add a3,a3,t3
L_800033f8:
    lhu a3,0(a3)
L_800033fc:
    slli a2,t4,0x8
L_80003400:
    xor a2,a3,a2
L_80003404:
    slli a0,a2,0x10
L_80003408:
    andi a3, a3, 255   # zext.b
L_8000340c:
    srli a2,a0,0x18
L_80003410:
    slli a3,a3,0x8
L_80003414:
    or a3,a3,a2
L_80003418:
    and a4,a3,a4
L_8000341c:
    and a3,a3,t1
L_80003420:
    srli a3,a3,0x4
L_80003424:
    slli a4,a4,0x4
L_80003428:
    or a4,a4,a3
L_8000342c:
    and a5,a4,a5
L_80003430:
    and a4,a4,a7
L_80003434:
    srli a4,a4,0x2
L_80003438:
    slli a5,a5,0x2
L_8000343c:
    or a5,a5,a4
L_80003440:
    and a0,a5,a1
L_80003444:
    and a5,a5,a6
L_80003448:
    srli a5,a5,0x1
L_8000344c:
    slli a0,a0,0x1
L_80003450:
    or a0,a0,a5
L_80003454:
    jalr x0, 0(ra)   # pseudo ret
L_80003458:    /* check_data_types */
L_80003458:
    addi a0, x0, 0   # pseudo li
L_8000345c:
    jalr x0, 0(ra)   # pseudo ret
L_80003460:    /* portable_malloc */
L_80003460:
    addi a0, x0, 0   # pseudo li
L_80003464:
    jalr x0, 0(ra)   # pseudo ret
L_80003468:    /* portable_free */
L_80003468:
    jalr x0, 0(ra)   # pseudo ret
L_8000346c:    /* start_time */
L_8000346c:
    rdcycle a4
L_80003470:
    lui a5,0x80006
L_80003474:    /* start_time_val */
    sw a4,-180(a5)  # L_80005f4c # <start_time_val>
L_80003478:
    jalr x0, 0(ra)   # pseudo ret
L_8000347c:    /* stop_time */
L_8000347c:
    rdcycle a4
L_80003480:
    lui a5,0x80006
L_80003484:    /* stop_time_val */
    sw a4,-184(a5)  # L_80005f48 # <stop_time_val>
L_80003488:
    jalr x0, 0(ra)   # pseudo ret
L_8000348c:    /* get_time */
L_8000348c:
    lui a4,0x80006
L_80003490:
    lui a5,0x80006
L_80003494:    /* stop_time_val */
    lw a0,-184(a4)  # L_80005f48 # <stop_time_val>
L_80003498:    /* start_time_val */
    lw a5,-180(a5)  # L_80005f4c # <start_time_val>
L_8000349c:
    sub a0,a0,a5
L_800034a0:
    jalr x0, 0(ra)   # pseudo ret
L_800034a4:    /* time_in_secs */
L_800034a4:
    lui a1,0x3b9ad
L_800034a8:
    addi sp,sp,-16
L_800034ac:    /* _tbss_end+0x3b9ac9bc */
    addi a1,a1,-1536  # L_3b9aca00 # <_tbss_end+0x3b9ac9bc>
L_800034b0:
    sw ra,12(sp)
L_800034b4:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800034b8:
    lw ra,12(sp)
L_800034bc:
    addi sp,sp,16
L_800034c0:
    jalr x0, 0(ra)   # pseudo ret
L_800034c4:    /* portable_init */
L_800034c4:
    addi a5, x0, 1   # pseudo li
L_800034c8:
    sb a5,0(a0)
L_800034cc:
    jalr x0, 0(ra)   # pseudo ret
L_800034d0:    /* portable_fini */
L_800034d0:
    sb zero,0(a0)
L_800034d4:
    jalr x0, 0(ra)   # pseudo ret
L_800034d8:    /* vprintfmt */
L_800034d8:
    lui a5,0x80006
L_800034dc:
    addi sp,sp,-336
L_800034e0:    /* errpat+0x228 */
    addi a5,a5,-1008  # L_80005c10 # <errpat+0x228>
L_800034e4:
    sw s0,328(sp)
L_800034e8:
    sw s1,324(sp)
L_800034ec:
    sw s2,320(sp)
L_800034f0:
    sw s5,308(sp)
L_800034f4:
    sw ra,332(sp)
L_800034f8:
    sw s3,316(sp)
L_800034fc:
    sw s4,312(sp)
L_80003500:
    sw s7,300(sp)
L_80003504:
    sw s8,296(sp)
L_80003508:
    sw s9,292(sp)
L_8000350c:
    sw s10,288(sp)
L_80003510:
    addi s1, a0, 0   # pseudo mv
L_80003514:
    addi s0, a2, 0   # pseudo mv
L_80003518:
    sw a3,8(sp)
L_8000351c:
    addi s2, a1, 0   # pseudo mv
L_80003520:
    sw a5,12(sp)
L_80003524:
    addi s5, x0, 37   # pseudo li
L_80003528:    /* vprintfmt+0x64 */
    jal x0, L_8000353c   # pseudo j
L_8000352c:    /* vprintfmt+0xb4 */
    beqz a0,L_8000358c
L_80003530:
    addi a1, s2, 0   # pseudo mv
L_80003534:
    addi s0,s0,1
L_80003538:
    jalr s1
L_8000353c:
    lbu a0,0(s0)
L_80003540:    /* vprintfmt+0x54 */
    bne a0,s5,L_8000352c
L_80003544:
    lbu a3,1(s0)
L_80003548:
    addi s4,s0,1
L_8000354c:
    addi s3, x0, -1   # pseudo li
L_80003550:
    addi a5, x0, 32   # pseudo li
L_80003554:
    addi a4, s4, 0   # pseudo mv
L_80003558:
    addi s8, s3, 0   # pseudo mv
L_8000355c:
    sw a5,4(sp)
L_80003560:
    addi a1, x0, 0   # pseudo li
L_80003564:
    addi a5,a3,-35
L_80003568:
    andi a5, a5, 255   # zext.b
L_8000356c:
    addi a2, x0, 85   # pseudo li
L_80003570:
    addi s0,a4,1
L_80003574:    /* vprintfmt+0x108 */
    bltu a2,a5,L_800035e0
L_80003578:
    lw a2,12(sp)
L_8000357c:
    slli a5,a5,0x2
L_80003580:
    add a5,a5,a2
L_80003584:
    lw a5,0(a5)
L_80003588:
    jalr x0, 0(a5)   # pseudo jr
L_8000358c:
    lw ra,332(sp)
L_80003590:
    lw s0,328(sp)
L_80003594:
    lw s1,324(sp)
L_80003598:
    lw s2,320(sp)
L_8000359c:
    lw s3,316(sp)
L_800035a0:
    lw s4,312(sp)
L_800035a4:
    lw s5,308(sp)
L_800035a8:
    lw s7,300(sp)
L_800035ac:
    lw s8,296(sp)
L_800035b0:
    lw s9,292(sp)
L_800035b4:
    lw s10,288(sp)
L_800035b8:
    addi sp,sp,336
L_800035bc:
    jalr x0, 0(ra)   # pseudo ret
L_800035c0:
    sw a3,4(sp)
L_800035c4:
    lbu a3,1(a4)
L_800035c8:
    addi a2, x0, 85   # pseudo li
L_800035cc:
    addi a4, s0, 0   # pseudo mv
L_800035d0:
    addi a5,a3,-35
L_800035d4:
    andi a5, a5, 255   # zext.b
L_800035d8:
    addi s0,a4,1
L_800035dc:    /* vprintfmt+0xa0 */
    bgeu a2,a5,L_80003578
L_800035e0:
    addi a1, s2, 0   # pseudo mv
L_800035e4:
    addi a0, x0, 37   # pseudo li
L_800035e8:
    jalr s1
L_800035ec:
    addi s0, s4, 0   # pseudo mv
L_800035f0:    /* vprintfmt+0x64 */
    jal x0, L_8000353c   # pseudo j
L_800035f4:
    addi s3,a3,-48
L_800035f8:
    lbu a3,1(a4)
L_800035fc:
    addi a0, x0, 9   # pseudo li
L_80003600:
    addi a5,a3,-48
L_80003604:    /* vprintfmt+0x4c8 */
    bltu a0,a5,L_800039a0
L_80003608:
    addi a2, a3, 0   # pseudo mv
L_8000360c:
    addi a4, s0, 0   # pseudo mv
L_80003610:
    slli a5,s3,0x2
L_80003614:
    add a5,a5,s3
L_80003618:
    addi a4,a4,1
L_8000361c:
    slli a5,a5,0x1
L_80003620:
    add a5,a5,a2
L_80003624:
    lbu a2,0(a4)
L_80003628:
    addi s3,a5,-48
L_8000362c:
    addi a5,a2,-48
L_80003630:
    addi a3, a2, 0   # pseudo mv
L_80003634:    /* vprintfmt+0x138 */
    bgeu a0,a5,L_80003610
L_80003638:    /* vprintfmt+0x8c */
    bgez s8,L_80003564
L_8000363c:
    addi s8, s3, 0   # pseudo mv
L_80003640:
    addi s3, x0, -1   # pseudo li
L_80003644:    /* vprintfmt+0x8c */
    jal x0, L_80003564   # pseudo j
L_80003648:
    sw s6,304(sp)
L_8000364c:
    addi s7, x0, 16   # pseudo li
L_80003650:
    addi s10, x0, 0   # pseudo li
L_80003654:
    addi a5, x0, 1   # pseudo li
L_80003658:    /* vprintfmt+0x3e4 */
    blt a5,a1,L_800038bc
L_8000365c:
    lw a5,8(sp)
L_80003660:
    addi s9, x0, 0   # pseudo li
L_80003664:
    lw s3,0(a5)
L_80003668:
    addi a5,a5,4
L_8000366c:
    sw a5,8(sp)
L_80003670:
    addi a2, s7, 0   # pseudo mv
L_80003674:
    addi a3, x0, 0   # pseudo li
L_80003678:
    addi a0, s3, 0   # pseudo mv
L_8000367c:
    addi a1, s9, 0   # pseudo mv
L_80003680:    /* __umoddi3 */
    jal L_800045d0
L_80003684:
    sw a0,16(sp)
L_80003688:    /* vprintfmt+0x404 */
    beq s10,s9,L_800038dc
L_8000368c:
    sw s11,284(sp)
L_80003690:
    addi s6, x0, 1   # pseudo li
L_80003694:
    addi s11,sp,20
L_80003698:
    addi a0, s3, 0   # pseudo mv
L_8000369c:
    addi a1, s9, 0   # pseudo mv
L_800036a0:
    addi a2, s7, 0   # pseudo mv
L_800036a4:
    addi a3, x0, 0   # pseudo li
L_800036a8:    /* __udivdi3 */
    jal L_8000401c
L_800036ac:
    addi a2, s7, 0   # pseudo mv
L_800036b0:
    addi a3, x0, 0   # pseudo li
L_800036b4:
    addi s3, a0, 0   # pseudo mv
L_800036b8:
    addi s9, a1, 0   # pseudo mv
L_800036bc:    /* __umoddi3 */
    jal L_800045d0
L_800036c0:
    sw a0,0(s11)
L_800036c4:
    addi s4, s6, 0   # pseudo mv
L_800036c8:
    addi s11,s11,4
L_800036cc:
    addi s6,s6,1
L_800036d0:    /* vprintfmt+0x1c0 */
    bne s10,s9,L_80003698
L_800036d4:    /* vprintfmt+0x1c0 */
    bgeu s3,s7,L_80003698
L_800036d8:
    lw s11,284(sp)
L_800036dc:
    addi s7,s8,-1
L_800036e0:
    addi s3,s6,-1
L_800036e4:    /* vprintfmt+0x224 */
    bge s6,s8,L_800036fc
L_800036e8:
    lw a0,4(sp)
L_800036ec:
    addi a1, s2, 0   # pseudo mv
L_800036f0:
    addi s7,s7,-1
L_800036f4:
    jalr s1
L_800036f8:    /* vprintfmt+0x210 */
    bne s7,s3,L_800036e8
L_800036fc:
    slli s4,s4,0x2
L_80003700:
    addi s3,sp,16
L_80003704:
    add s4,s4,s3
L_80003708:
    addi s6, x0, 9   # pseudo li
L_8000370c:    /* vprintfmt+0x23c */
    jal x0, L_80003714   # pseudo j
L_80003710:
    addi s4,s4,-4
L_80003714:
    lw a5,0(s4)
L_80003718:
    addi a0, x0, 48   # pseudo li
L_8000371c:    /* vprintfmt+0x24c */
    bgeu s6,a5,L_80003724
L_80003720:
    addi a0, x0, 87   # pseudo li
L_80003724:
    add a0,a5,a0
L_80003728:
    addi a1, s2, 0   # pseudo mv
L_8000372c:
    jalr s1
L_80003730:    /* vprintfmt+0x238 */
    bne s3,s4,L_80003710
L_80003734:
    lw s6,304(sp)
L_80003738:    /* vprintfmt+0x64 */
    jal x0, L_8000353c   # pseudo j
L_8000373c:
    lw a5,8(sp)
L_80003740:
    sgtz a4,s8
L_80003744:
    sw s11,284(sp)
L_80003748:
    lw s4,0(a5)
L_8000374c:
    lw a5,4(sp)
L_80003750:
    addi a5,a5,-45
L_80003754:
    snez a5,a5
L_80003758:
    and a4,a4,a5
L_8000375c:
    lw a5,8(sp)
L_80003760:
    addi s11,a5,4
L_80003764:    /* vprintfmt+0x454 */
    beqz s4,L_8000392c
L_80003768:    /* vprintfmt+0x478 */
    bnez a4,L_80003950
L_8000376c:
    lbu a0,0(s4)
L_80003770:    /* vprintfmt+0x2cc */
    beqz a0,L_800037a4
L_80003774:
    sw s6,304(sp)
L_80003778:
    addi s6, x0, -1   # pseudo li
L_8000377c:    /* vprintfmt+0x2b0 */
    bltz s3,L_80003788
L_80003780:
    addi s3,s3,-1
L_80003784:    /* vprintfmt+0x2c8 */
    beq s3,s6,L_800037a0
L_80003788:
    addi a1, s2, 0   # pseudo mv
L_8000378c:
    jalr s1
L_80003790:
    lbu a0,1(s4)
L_80003794:
    addi s4,s4,1
L_80003798:
    addi s8,s8,-1
L_8000379c:    /* vprintfmt+0x2a4 */
    bnez a0,L_8000377c
L_800037a0:
    lw s6,304(sp)
L_800037a4:    /* vprintfmt+0x2e4 */
    blez s8,L_800037bc
L_800037a8:
    addi a1, s2, 0   # pseudo mv
L_800037ac:
    addi a0, x0, 32   # pseudo li
L_800037b0:
    addi s8,s8,-1
L_800037b4:
    jalr s1
L_800037b8:    /* vprintfmt+0x2d0 */
    bnez s8,L_800037a8
L_800037bc:
    sw s11,8(sp)
L_800037c0:
    lw s11,284(sp)
L_800037c4:    /* vprintfmt+0x64 */
    jal x0, L_8000353c   # pseudo j
L_800037c8:
    not a5,s8
L_800037cc:
    srai a5,a5,0x1f
L_800037d0:
    lbu a3,1(a4)
L_800037d4:
    and s8,s8,a5
L_800037d8:
    addi a4, s0, 0   # pseudo mv
L_800037dc:    /* vprintfmt+0x8c */
    jal x0, L_80003564   # pseudo j
L_800037e0:
    lbu a3,1(a4)
L_800037e4:
    addi a4, s0, 0   # pseudo mv
L_800037e8:    /* vprintfmt+0x8c */
    jal x0, L_80003564   # pseudo j
L_800037ec:
    addi a1, s2, 0   # pseudo mv
L_800037f0:
    addi a0, x0, 37   # pseudo li
L_800037f4:
    jalr s1
L_800037f8:    /* vprintfmt+0x64 */
    jal x0, L_8000353c   # pseudo j
L_800037fc:
    lw a5,8(sp)
L_80003800:
    lbu a3,1(a4)
L_80003804:
    addi a4, s0, 0   # pseudo mv
L_80003808:
    lw s3,0(a5)
L_8000380c:
    addi a5,a5,4
L_80003810:
    sw a5,8(sp)
L_80003814:    /* vprintfmt+0x160 */
    jal x0, L_80003638   # pseudo j
L_80003818:
    lw a5,8(sp)
L_8000381c:
    addi a1, s2, 0   # pseudo mv
L_80003820:
    lw a0,0(a5)
L_80003824:
    jalr s1
L_80003828:
    lw a5,8(sp)
L_8000382c:
    addi a5,a5,4
L_80003830:
    sw a5,8(sp)
L_80003834:    /* vprintfmt+0x64 */
    jal x0, L_8000353c   # pseudo j
L_80003838:
    sw s6,304(sp)
L_8000383c:
    addi a5, x0, 1   # pseudo li
L_80003840:    /* vprintfmt+0x414 */
    blt a5,a1,L_800038ec
L_80003844:
    lw a5,8(sp)
L_80003848:
    lw s3,0(a5)
L_8000384c:
    addi a5,a5,4
L_80003850:
    sw a5,8(sp)
L_80003854:
    srai s9,s3,0x1f
L_80003858:    /* vprintfmt+0x3a0 */
    bgez s9,L_80003878
L_8000385c:
    addi a1, s2, 0   # pseudo mv
L_80003860:
    addi a0, x0, 45   # pseudo li
L_80003864:
    jalr s1
L_80003868:
    snez a4,s3
L_8000386c:
    neg a5,s9
L_80003870:
    sub s9,a5,a4
L_80003874:
    neg s3,s3
L_80003878:
    addi s7, x0, 10   # pseudo li
L_8000387c:
    addi s10, x0, 0   # pseudo li
L_80003880:    /* vprintfmt+0x198 */
    jal x0, L_80003670   # pseudo j
L_80003884:
    lbu a3,1(a4)
L_80003888:
    addi a1,a1,1
L_8000388c:
    addi a4, s0, 0   # pseudo mv
L_80003890:    /* vprintfmt+0x8c */
    jal x0, L_80003564   # pseudo j
L_80003894:
    addi a1, s2, 0   # pseudo mv
L_80003898:
    addi a0, x0, 48   # pseudo li
L_8000389c:
    sw s6,304(sp)
L_800038a0:
    jalr s1
L_800038a4:
    addi a1, s2, 0   # pseudo mv
L_800038a8:
    addi a0, x0, 120   # pseudo li
L_800038ac:
    jalr s1
L_800038b0:
    addi s7, x0, 16   # pseudo li
L_800038b4:
    addi s10, x0, 0   # pseudo li
L_800038b8:    /* vprintfmt+0x184 */
    jal x0, L_8000365c   # pseudo j
L_800038bc:
    lw a5,8(sp)
L_800038c0:
    addi a5,a5,7
L_800038c4:
    andi a5,a5,-8
L_800038c8:
    addi a4,a5,8
L_800038cc:
    lw s3,0(a5)
L_800038d0:
    lw s9,4(a5)
L_800038d4:
    sw a4,8(sp)
L_800038d8:    /* vprintfmt+0x198 */
    jal x0, L_80003670   # pseudo j
L_800038dc:    /* vprintfmt+0x1b4 */
    bgeu s3,s7,L_8000368c
L_800038e0:
    addi s4, x0, 0   # pseudo li
L_800038e4:
    addi s6, x0, 1   # pseudo li
L_800038e8:    /* vprintfmt+0x204 */
    jal x0, L_800036dc   # pseudo j
L_800038ec:
    lw a5,8(sp)
L_800038f0:
    addi a5,a5,7
L_800038f4:
    andi a5,a5,-8
L_800038f8:
    addi a4,a5,8
L_800038fc:
    lw s3,0(a5)
L_80003900:
    lw s9,4(a5)
L_80003904:
    sw a4,8(sp)
L_80003908:    /* vprintfmt+0x380 */
    jal x0, L_80003858   # pseudo j
L_8000390c:
    sw s6,304(sp)
L_80003910:
    addi s7, x0, 10   # pseudo li
L_80003914:
    addi s10, x0, 0   # pseudo li
L_80003918:    /* vprintfmt+0x17c */
    jal x0, L_80003654   # pseudo j
L_8000391c:
    sw s6,304(sp)
L_80003920:
    addi s7, x0, 8   # pseudo li
L_80003924:
    addi s10, x0, 0   # pseudo li
L_80003928:    /* vprintfmt+0x17c */
    jal x0, L_80003654   # pseudo j
L_8000392c:    /* vprintfmt+0x470 */
    bnez a4,L_80003948
L_80003930:
    lui s4,0x80006
L_80003934:
    sw s6,304(sp)
L_80003938:    /* main+0xd14 */
    addi s4,s4,-1708  # L_80005954 # <main+0xd14>
L_8000393c:
    addi a0, x0, 40   # pseudo li
L_80003940:
    addi s6, x0, -1   # pseudo li
L_80003944:    /* vprintfmt+0x2a4 */
    jal x0, L_8000377c   # pseudo j
L_80003948:
    lui s4,0x80006
L_8000394c:    /* main+0xd14 */
    addi s4,s4,-1708  # L_80005954 # <main+0xd14>
L_80003950:
    addi a5, s4, 0   # pseudo mv
L_80003954:
    add a3,s4,s3
L_80003958:    /* vprintfmt+0x490 */
    bnez s3,L_80003968
L_8000395c:    /* vprintfmt+0x4a4 */
    jal x0, L_8000397c   # pseudo j
L_80003960:
    addi a5,a5,1
L_80003964:    /* vprintfmt+0x498 */
    beq a5,a3,L_80003970
L_80003968:
    lbu a4,0(a5)
L_8000396c:    /* vprintfmt+0x488 */
    bnez a4,L_80003960
L_80003970:
    sub a5,a5,s4
L_80003974:
    sub s8,s8,a5
L_80003978:    /* vprintfmt+0x4b8 */
    blez s8,L_80003990
L_8000397c:
    lw a0,4(sp)
L_80003980:
    addi a1, s2, 0   # pseudo mv
L_80003984:
    addi s8,s8,-1
L_80003988:
    jalr s1
L_8000398c:    /* vprintfmt+0x4a4 */
    bnez s8,L_8000397c
L_80003990:
    lbu a0,0(s4)
L_80003994:    /* vprintfmt+0x2e4 */
    beqz a0,L_800037bc
L_80003998:
    sw s6,304(sp)
L_8000399c:    /* vprintfmt+0x2a0 */
    jal x0, L_80003778   # pseudo j
L_800039a0:
    addi a4, s0, 0   # pseudo mv
L_800039a4:    /* vprintfmt+0x160 */
    jal x0, L_80003638   # pseudo j
L_800039a8:    /* sprintf_putch.0 */
L_800039a8:
    lw a5,0(a1)
L_800039ac:
    sb a0,0(a5)
L_800039b0:
    lw a5,0(a1)
L_800039b4:
    addi a5,a5,1
L_800039b8:
    sw a5,0(a1)
L_800039bc:
    jalr x0, 0(ra)   # pseudo ret
L_800039c0:    /* putchar */
L_800039c0:    /* buflen.1 */
    lw a4,64(tp)  # 40 # <buflen.1>
L_800039c4:
    addi a5, tp, 0   # pseudo mv
L_800039c8:
    addi sp,sp,-128
L_800039cc:
    add a5,a5,a4
L_800039d0:
    addi a6,a4,1
L_800039d4:
    sb a0,0(a5)
L_800039d8:    /* buflen.1 */
    sw a6,64(tp)  # 40 # <buflen.1>
L_800039dc:
    addi a0,a0,-10
L_800039e0:
    addi a3,sp,63
L_800039e4:
    andi a3,a3,-64
L_800039e8:    /* putchar+0x40 */
    beqz a0,L_80003a00
L_800039ec:
    addi a4,a4,-63
L_800039f0:    /* putchar+0x40 */
    beqz a4,L_80003a00
L_800039f4:
    addi a0, x0, 0   # pseudo li
L_800039f8:
    addi sp,sp,128
L_800039fc:
    jalr x0, 0(ra)   # pseudo ret
L_80003a00:
    addi a4, x0, 64   # pseudo li
L_80003a04:
    sw a4,0(a3)
L_80003a08:
    addi a5, x0, 0   # pseudo li
L_80003a0c:
    sw a5,4(a3)
L_80003a10:
    addi t3, x0, 1   # pseudo li
L_80003a14:
    sw t3,8(a3)
L_80003a18:
    addi t4, x0, 0   # pseudo li
L_80003a1c:
    sw t4,12(a3)
L_80003a20:
    addi t1, tp, 0   # pseudo mv
L_80003a24:
    sw t1,16(a3)
L_80003a28:
    addi t2, x0, 0   # pseudo li
L_80003a2c:
    sw t2,20(a3)
L_80003a30:
    sw a6,24(a3)
L_80003a34:
    srai a5,a6,0x1f
L_80003a38:
    sw a5,28(a3)
L_80003a3c:
    fence rw,rw
L_80003a40:
    lui a2,0x80001
L_80003a44:    /* tohost */
    sw a3,0(a2)  # L_80001000 # <tohost>
L_80003a48:
    addi a5, x0, 0   # pseudo li
L_80003a4c:
    sw a5,4(a2)
L_80003a50:
    lui a2,0x80001
L_80003a54:    /* fromhost */
    lw a4,64(a2)  # L_80001040 # <fromhost>
L_80003a58:
    lw a5,68(a2)
L_80003a5c:
    or a4,a4,a5
L_80003a60:    /* putchar+0x94 */
    beqz a4,L_80003a54
L_80003a64:
    addi a5, x0, 0   # pseudo li
L_80003a68:
    sw a5,64(a2)
L_80003a6c:
    addi a6, x0, 0   # pseudo li
L_80003a70:
    sw a6,68(a2)
L_80003a74:
    fence rw,rw
L_80003a78:    /* buflen.1 */
    sw zero,64(tp)  # 40 # <buflen.1>
L_80003a7c:
    lw a4,0(a3)
L_80003a80:
    addi a0, x0, 0   # pseudo li
L_80003a84:
    lw a5,4(a3)
L_80003a88:
    addi sp,sp,128
L_80003a8c:
    jalr x0, 0(ra)   # pseudo ret
L_80003a90:    /* setStats */
L_80003a90:
    addi x0, x0, 0   # removed csrr
L_80003a94:
    lui a5,0x80006
L_80003a98:    /* counters */
    addi a5,a5,-156  # L_80005f64 # <counters>
L_80003a9c:    /* setStats+0x20 */
    beqz a0,L_80003ab0
L_80003aa0:
    sw a4,0(a5)
L_80003aa4:
    addi x0, x0, 0   # removed csrr
L_80003aa8:
    sw a4,4(a5)
L_80003aac:
    jalr x0, 0(ra)   # pseudo ret
L_80003ab0:
    lw a1,0(a5)
L_80003ab4:
    lui a3,0x80006
L_80003ab8:
    lui a2,0x80006
L_80003abc:
    sub a4,a4,a1
L_80003ac0:    /* counter_names */
    addi a3,a3,-164  # L_80005f5c # <counter_names>
L_80003ac4:    /* main+0xd1c */
    addi a2,a2,-1700  # L_8000595c # <main+0xd1c>
L_80003ac8:
    sw a4,0(a5)
L_80003acc:
    sw a2,0(a3)
L_80003ad0:
    addi x0, x0, 0   # removed csrr
L_80003ad4:
    lw a1,4(a5)
L_80003ad8:
    lui a2,0x80006
L_80003adc:    /* main+0xd24 */
    addi a2,a2,-1692  # L_80005964 # <main+0xd24>
L_80003ae0:
    sub a4,a4,a1
L_80003ae4:
    sw a2,4(a3)
L_80003ae8:
    sw a4,4(a5)
L_80003aec:
    jalr x0, 0(ra)   # pseudo ret
L_80003af0:    /* tohost_exit */
L_80003af0:
    slli a3,a0,0x1
L_80003af4:
    ori a4,a3,1
L_80003af8:
    lui a3,0x80001
L_80003afc:
    addi a5, x0, 0   # pseudo li
L_80003b00:    /* tohost */
    sw a4,0(a3)  # L_80001000 # <tohost>
L_80003b04:
    sw a5,4(a3)
L_80003b08:    /* tohost_exit+0x18 */
    jal halt
    #addi x0, x0, 0   # removed self-jump pseudo
L_80003b0c:    /* handle_trap */
L_80003b0c:
    lui a2,0x1
L_80003b10:
    lui a5,0x80001
L_80003b14:    /* _tbss_end+0xa2f */
    addi a2,a2,-1421  # a73 # <_tbss_end+0xa2f>
L_80003b18:
    addi a3, x0, 0   # pseudo li
L_80003b1c:    /* tohost */
    sw a2,0(a5)  # L_80001000 # <tohost>
L_80003b20:
    sw a3,4(a5)
L_80003b24:    /* handle_trap+0x18 */
    addi x0, x0, 0   # removed self-jump pseudo
L_80003b28:    /* exit */
L_80003b28:
    addi sp,sp,-16
L_80003b2c:
    sw ra,12(sp)
L_80003b30:    /* tohost_exit */
    jal L_80003af0
L_80003b34:    /* abort */
L_80003b34:
    lui a5,0x80001
L_80003b38:
    addi a2, x0, 269   # pseudo li
L_80003b3c:
    addi a3, x0, 0   # pseudo li
L_80003b40:    /* tohost */
    sw a2,0(a5)  # L_80001000 # <tohost>
L_80003b44:
    sw a3,4(a5)
L_80003b48:    /* abort+0x14 */
    addi x0, x0, 0   # removed self-jump pseudo
L_80003b4c:    /* printstr */
L_80003b4c:
    lbu a5,0(a0)
L_80003b50:
    addi sp,sp,-128
L_80003b54:
    addi a2,sp,63
L_80003b58:
    addi a6, a0, 0   # pseudo mv
L_80003b5c:
    addi a7, x0, 0   # pseudo li
L_80003b60:
    andi a2,a2,-64
L_80003b64:    /* printstr+0xb0 */
    beqz a5,L_80003bfc
L_80003b68:
    addi a5, a0, 0   # pseudo mv
L_80003b6c:
    lbu a4,1(a5)
L_80003b70:
    addi a5,a5,1
L_80003b74:    /* printstr+0x20 */
    bnez a4,L_80003b6c
L_80003b78:
    sub t1,a5,a0
L_80003b7c:
    addi t2, x0, 0   # pseudo li
L_80003b80:
    addi a4, x0, 64   # pseudo li
L_80003b84:
    sw a4,0(a2)
L_80003b88:
    addi a5, x0, 0   # pseudo li
L_80003b8c:
    sw a5,4(a2)
L_80003b90:
    addi a4, x0, 1   # pseudo li
L_80003b94:
    sw a4,8(a2)
L_80003b98:
    addi a5, x0, 0   # pseudo li
L_80003b9c:
    sw a5,12(a2)
L_80003ba0:
    sw a6,16(a2)
L_80003ba4:
    sw a7,20(a2)
L_80003ba8:
    sw t1,24(a2)
L_80003bac:
    sw t2,28(a2)
L_80003bb0:
    fence rw,rw
L_80003bb4:
    lui a3,0x80001
L_80003bb8:    /* tohost */
    sw a2,0(a3)  # L_80001000 # <tohost>
L_80003bbc:
    addi a5, x0, 0   # pseudo li
L_80003bc0:
    sw a5,4(a3)
L_80003bc4:
    lui a3,0x80001
L_80003bc8:    /* fromhost */
    lw a4,64(a3)  # L_80001040 # <fromhost>
L_80003bcc:
    lw a5,68(a3)
L_80003bd0:
    or a4,a4,a5
L_80003bd4:    /* printstr+0x7c */
    beqz a4,L_80003bc8
L_80003bd8:
    addi a5, x0, 0   # pseudo li
L_80003bdc:
    sw a5,64(a3)
L_80003be0:
    addi a6, x0, 0   # pseudo li
L_80003be4:
    sw a6,68(a3)
L_80003be8:
    fence rw,rw
L_80003bec:
    lw a4,0(a2)
L_80003bf0:
    lw a5,4(a2)
L_80003bf4:
    addi sp,sp,128
L_80003bf8:
    jalr x0, 0(ra)   # pseudo ret
L_80003bfc:
    addi t1, x0, 0   # pseudo li
L_80003c00:
    addi t2, x0, 0   # pseudo li
L_80003c04:    /* printstr+0x34 */
    jal x0, L_80003b80   # pseudo j
L_80003c08:    /* thread_entry */
L_80003c08:    /* thread_entry+0x8 */
    bnez a0,L_80003c10
L_80003c0c:
    jalr x0, 0(ra)   # pseudo ret
L_80003c10:    /* thread_entry+0x8 */
    addi x0, x0, 0   # removed self-jump pseudo
L_80003c14:    /* printhex */
L_80003c14:
    addi sp,sp,-48
L_80003c18:
    addi a4, a0, 0   # pseudo mv
L_80003c1c:
    sw ra,44(sp)
L_80003c20:
    addi a0,sp,12
L_80003c24:
    addi a2,sp,27
L_80003c28:
    addi a6, x0, 9   # pseudo li
L_80003c2c:    /* printhex+0x20 */
    jal x0, L_80003c34   # pseudo j
L_80003c30:
    addi a2,a2,-1
L_80003c34:
    andi a3,a4,15
L_80003c38:
    sltu a5,a6,a3
L_80003c3c:
    neg a5,a5
L_80003c40:
    andi a5,a5,39
L_80003c44:
    addi a5,a5,48
L_80003c48:
    add a3,a3,a5
L_80003c4c:
    srli a4,a4,0x4
L_80003c50:
    slli a5,a1,0x1c
L_80003c54:
    sb a3,0(a2)
L_80003c58:
    add a4,a5,a4
L_80003c5c:
    srli a1,a1,0x4
L_80003c60:    /* printhex+0x1c */
    bne a0,a2,L_80003c30
L_80003c64:
    sb zero,28(sp)
L_80003c68:    /* printstr */
    jal L_80003b4c
L_80003c6c:
    lw ra,44(sp)
L_80003c70:
    addi sp,sp,48
L_80003c74:
    jalr x0, 0(ra)   # pseudo ret
L_80003c78:    /* printf */
L_80003c78:
    addi sp,sp,-64
L_80003c7c:
    addi t1,sp,36
L_80003c80:
    lui t3,0x80004
L_80003c84:
    sw a1,36(sp)
L_80003c88:
    sw a2,40(sp)
L_80003c8c:
    sw a3,44(sp)
L_80003c90:
    addi a2, a0, 0   # pseudo mv
L_80003c94:
    addi a3, t1, 0   # pseudo mv
L_80003c98:    /* putchar */
    addi a0,t3,-1600  # L_800039c0 # <putchar>
L_80003c9c:
    addi a1, x0, 0   # pseudo li
L_80003ca0:
    sw ra,28(sp)
L_80003ca4:
    sw a4,48(sp)
L_80003ca8:
    sw a5,52(sp)
L_80003cac:
    sw a6,56(sp)
L_80003cb0:
    sw a7,60(sp)
L_80003cb4:
    sw t1,12(sp)
L_80003cb8:    /* vprintfmt */
    jal L_800034d8
L_80003cbc:
    lw ra,28(sp)
L_80003cc0:
    addi a0, x0, 0   # pseudo li
L_80003cc4:
    addi sp,sp,64
L_80003cc8:
    jalr x0, 0(ra)   # pseudo ret
L_80003ccc:    /* puts */
L_80003ccc:
    addi sp,sp,-16
L_80003cd0:
    sw ra,12(sp)
L_80003cd4:    /* printf */
    jal L_80003c78
L_80003cd8:
    addi a0, x0, 10   # pseudo li
L_80003cdc:    /* putchar */
    jal L_800039c0
L_80003ce0:
    lw ra,12(sp)
L_80003ce4:
    addi a0, x0, 0   # pseudo li
L_80003ce8:
    addi sp,sp,16
L_80003cec:
    jalr x0, 0(ra)   # pseudo ret
L_80003cf0:    /* sprintf */
L_80003cf0:
    addi sp,sp,-80
L_80003cf4:
    addi t1,sp,56
L_80003cf8:
    lui t3,0x80004
L_80003cfc:
    sw s0,40(sp)
L_80003d00:
    sw a0,12(sp)
L_80003d04:
    sw a2,56(sp)
L_80003d08:
    sw a3,60(sp)
L_80003d0c:
    addi s0, a0, 0   # pseudo mv
L_80003d10:
    addi a2, a1, 0   # pseudo mv
L_80003d14:    /* sprintf_putch.0 */
    addi a0,t3,-1624  # L_800039a8 # <sprintf_putch.0>
L_80003d18:
    addi a1,sp,12
L_80003d1c:
    addi a3, t1, 0   # pseudo mv
L_80003d20:
    sw ra,44(sp)
L_80003d24:
    sw a5,68(sp)
L_80003d28:
    sw a4,64(sp)
L_80003d2c:
    sw a6,72(sp)
L_80003d30:
    sw a7,76(sp)
L_80003d34:
    sw t1,28(sp)
L_80003d38:    /* vprintfmt */
    jal L_800034d8
L_80003d3c:
    lw a5,12(sp)
L_80003d40:
    sb zero,0(a5)
L_80003d44:
    lw a0,12(sp)
L_80003d48:
    lw ra,44(sp)
L_80003d4c:
    sub a0,a0,s0
L_80003d50:
    lw s0,40(sp)
L_80003d54:
    addi sp,sp,80
L_80003d58:
    jalr x0, 0(ra)   # pseudo ret
L_80003d5c:    /* memcpy */
L_80003d5c:
    or a5,a1,a2
L_80003d60:
    or a5,a0,a5
L_80003d64:
    andi a5,a5,3
L_80003d68:
    add a3,a0,a2
L_80003d6c:    /* memcpy+0x38 */
    beqz a5,L_80003d94
L_80003d70:
    add a2,a1,a2
L_80003d74:
    addi a5, a0, 0   # pseudo mv
L_80003d78:    /* memcpy+0x58 */
    bgeu a0,a3,L_80003db4
L_80003d7c:
    lbu a4,0(a1)
L_80003d80:
    addi a1,a1,1
L_80003d84:
    addi a5,a5,1
L_80003d88:
    sb a4,-1(a5)
L_80003d8c:    /* memcpy+0x20 */
    bne a2,a1,L_80003d7c
L_80003d90:
    jalr x0, 0(ra)   # pseudo ret
L_80003d94:    /* memcpy+0x34 */
    bgeu a0,a3,L_80003d90
L_80003d98:
    addi a5, a0, 0   # pseudo mv
L_80003d9c:
    lw a4,0(a1)
L_80003da0:
    addi a5,a5,4
L_80003da4:
    addi a1,a1,4
L_80003da8:
    sw a4,-4(a5)
L_80003dac:    /* memcpy+0x40 */
    bltu a5,a3,L_80003d9c
L_80003db0:
    jalr x0, 0(ra)   # pseudo ret
L_80003db4:
    jalr x0, 0(ra)   # pseudo ret
L_80003db8:    /* memset */
L_80003db8:
    or a5,a0,a2
L_80003dbc:
    andi a5,a5,3
L_80003dc0:
    add a2,a0,a2
L_80003dc4:    /* memset+0x28 */
    beqz a5,L_80003de0
L_80003dc8:
    addi a5, a0, 0   # pseudo mv
L_80003dcc:    /* memset+0x54 */
    bgeu a0,a2,L_80003e0c
L_80003dd0:
    addi a5,a5,1
L_80003dd4:
    sb a1,-1(a5)
L_80003dd8:    /* memset+0x18 */
    bne a2,a5,L_80003dd0
L_80003ddc:
    jalr x0, 0(ra)   # pseudo ret
L_80003de0:    /* memset+0x24 */
    bgeu a0,a2,L_80003ddc
L_80003de4:
    andi a1, a1, 255   # zext.b
L_80003de8:
    slli a4,a1,0x8
L_80003dec:
    add a4,a4,a1
L_80003df0:
    slli a5,a4,0x10
L_80003df4:
    add a4,a4,a5
L_80003df8:
    addi a5, a0, 0   # pseudo mv
L_80003dfc:
    addi a5,a5,4
L_80003e00:
    sw a4,-4(a5)
L_80003e04:    /* memset+0x44 */
    bltu a5,a2,L_80003dfc
L_80003e08:
    jalr x0, 0(ra)   # pseudo ret
L_80003e0c:
    jalr x0, 0(ra)   # pseudo ret
L_80003e10:    /* _init */
L_80003e10:
    addi sp,sp,-160
L_80003e14:
    sw s0,152(sp)
L_80003e18:
    sw s1,148(sp)
L_80003e1c:
    auipc s0,0x2
L_80003e20:    /* _GLOBAL_OFFSET_TABLE_+0x8 */
    lw s0,272(s0)  # L_80005f2c # <_GLOBAL_OFFSET_TABLE_+0x8>
L_80003e24:
    auipc s1,0x2
L_80003e28:    /* _GLOBAL_OFFSET_TABLE_+0x4 */
    lw s1,260(s1)  # L_80005f28 # <_GLOBAL_OFFSET_TABLE_+0x4>
L_80003e2c:
    sw s3,140(sp)
L_80003e30:
    sub s0,s1,s0
L_80003e34:
    addi s3, a0, 0   # pseudo mv
L_80003e38:
    addi a2, s0, 0   # pseudo mv
L_80003e3c:
    addi a0, tp, 0   # pseudo mv
L_80003e40:
    sw s4,136(sp)
L_80003e44:
    addi s4, a1, 0   # pseudo mv
L_80003e48:    /* _end */
    addi a1,gp,4  # L_80006740 # <_end>
L_80003e4c:
    sw ra,156(sp)
L_80003e50:
    sw s2,144(sp)
L_80003e54:
    sw s5,132(sp)
L_80003e58:
    addi s5, tp, 0   # pseudo mv
L_80003e5c:    /* memcpy */
    jal L_80003d5c
L_80003e60:
    auipc a2,0x2
L_80003e64:    /* _GLOBAL_OFFSET_TABLE_+0xc */
    lw a2,208(a2)  # L_80005f30 # <_GLOBAL_OFFSET_TABLE_+0xc>
L_80003e68:
    add a0,s5,s0
L_80003e6c:
    addi a1, x0, 0   # pseudo li
L_80003e70:
    sub a2,a2,s1
L_80003e74:    /* memset */
    jal L_80003db8
L_80003e78:
    addi a1, s4, 0   # pseudo mv
L_80003e7c:
    addi a0, s3, 0   # pseudo mv
L_80003e80:    /* thread_entry */
    jal L_80003c08
L_80003e84:
    addi s2,sp,63
L_80003e88:
    addi a1, x0, 0   # pseudo li
L_80003e8c:
    addi a0, x0, 0   # pseudo li
L_80003e90:
    lui s0,0x80006
L_80003e94:
    andi s2,s2,-64
L_80003e98:    /* main */
    jal L_80004c40
L_80003e9c:    /* counters */
    addi s0,s0,-156  # L_80005f64 # <counters>
L_80003ea0:
    lui s1,0x80006
L_80003ea4:
    addi s5, a0, 0   # pseudo mv
L_80003ea8:
    addi s3, s2, 0   # pseudo mv
L_80003eac:
    addi s4,s0,8
L_80003eb0:    /* counter_names */
    addi s1,s1,-164  # L_80005f5c # <counter_names>
L_80003eb4:
    lw a3,0(s0)
L_80003eb8:    /* _init+0xcc */
    bnez a3,L_80003edc
L_80003ebc:
    addi s0,s0,4
L_80003ec0:
    addi s1,s1,4
L_80003ec4:    /* _init+0xa4 */
    bne s0,s4,L_80003eb4
L_80003ec8:    /* _init+0xc4 */
    beq s2,s3,L_80003ed4
L_80003ecc:
    addi a0, s2, 0   # pseudo mv
L_80003ed0:    /* printstr */
    jal L_80003b4c
L_80003ed4:
    addi a0, s5, 0   # pseudo mv
L_80003ed8:    /* tohost_exit */
    jal L_80003af0
L_80003edc:
    lw a2,0(s1)
L_80003ee0:
    lui a1,0x80006
L_80003ee4:
    addi a0, s3, 0   # pseudo mv
L_80003ee8:    /* main+0xd48 */
    addi a1,a1,-1656  # L_80005988 # <main+0xd48>
L_80003eec:    /* sprintf */
    jal L_80003cf0
L_80003ef0:
    add s3,s3,a0
L_80003ef4:    /* _init+0xac */
    jal x0, L_80003ebc   # pseudo j
L_80003ef8:    /* strlen */
L_80003ef8:
    lbu a5,0(a0)
L_80003efc:    /* strlen+0x20 */
    beqz a5,L_80003f18
L_80003f00:
    addi a5, a0, 0   # pseudo mv
L_80003f04:
    lbu a4,1(a5)
L_80003f08:
    addi a5,a5,1
L_80003f0c:    /* strlen+0xc */
    bnez a4,L_80003f04
L_80003f10:
    sub a0,a5,a0
L_80003f14:
    jalr x0, 0(ra)   # pseudo ret
L_80003f18:
    addi a0, x0, 0   # pseudo li
L_80003f1c:
    jalr x0, 0(ra)   # pseudo ret
L_80003f20:    /* strnlen */
L_80003f20:
    add a3,a0,a1
L_80003f24:
    addi a5, a0, 0   # pseudo mv
L_80003f28:    /* strnlen+0x18 */
    bnez a1,L_80003f38
L_80003f2c:    /* strnlen+0x28 */
    jal x0, L_80003f48   # pseudo j
L_80003f30:
    addi a5,a5,1
L_80003f34:    /* strnlen+0x20 */
    beq a5,a3,L_80003f40
L_80003f38:
    lbu a4,0(a5)
L_80003f3c:    /* strnlen+0x10 */
    bnez a4,L_80003f30
L_80003f40:
    sub a0,a5,a0
L_80003f44:
    jalr x0, 0(ra)   # pseudo ret
L_80003f48:
    addi a0, x0, 0   # pseudo li
L_80003f4c:
    jalr x0, 0(ra)   # pseudo ret
L_80003f50:    /* strcmp */
L_80003f50:
    addi a4, a0, 0   # pseudo mv
L_80003f54:
    lbu a5,0(a4)
L_80003f58:
    lbu a3,0(a1)
L_80003f5c:
    addi a4,a4,1
L_80003f60:
    addi a1,a1,1
L_80003f64:
    sub a0,a5,a3
L_80003f68:    /* strcmp+0x24 */
    beqz a5,L_80003f74
L_80003f6c:    /* strcmp+0x4 */
    beq a5,a3,L_80003f54
L_80003f70:
    jalr x0, 0(ra)   # pseudo ret
L_80003f74:
    jalr x0, 0(ra)   # pseudo ret
L_80003f78:    /* strcpy */
L_80003f78:
    addi a5, a0, 0   # pseudo mv
L_80003f7c:
    lbu a4,0(a1)
L_80003f80:
    addi a1,a1,1
L_80003f84:
    addi a5,a5,1
L_80003f88:
    sb a4,-1(a5)
L_80003f8c:    /* strcpy+0x4 */
    bnez a4,L_80003f7c
L_80003f90:
    jalr x0, 0(ra)   # pseudo ret
L_80003f94:    /* atol */
L_80003f94:
    lbu a4,0(a0)
L_80003f98:
    addi a3, x0, 32   # pseudo li
L_80003f9c:
    addi a5, a0, 0   # pseudo mv
L_80003fa0:    /* atol+0x1c */
    bne a4,a3,L_80003fb0
L_80003fa4:
    lbu a4,1(a5)
L_80003fa8:
    addi a5,a5,1
L_80003fac:    /* atol+0x10 */
    beq a4,a3,L_80003fa4
L_80003fb0:
    addi a3,a4,-43
L_80003fb4:
    andi a3,a3,253
L_80003fb8:    /* atol+0x6c */
    bnez a3,L_80004000
L_80003fbc:
    lbu a3,1(a5)
L_80003fc0:
    addi a4,a4,-45
L_80003fc4:
    seqz a2,a4
L_80003fc8:    /* atol+0x80 */
    beqz a3,L_80004014
L_80003fcc:
    addi a5,a5,1
L_80003fd0:
    addi a0, x0, 0   # pseudo li
L_80003fd4:
    addi a5,a5,1
L_80003fd8:
    addi a1,a3,-48
L_80003fdc:
    slli a4,a0,0x2
L_80003fe0:
    lbu a3,0(a5)
L_80003fe4:
    add a4,a4,a0
L_80003fe8:
    slli a4,a4,0x1
L_80003fec:
    add a0,a1,a4
L_80003ff0:    /* atol+0x40 */
    bnez a3,L_80003fd4
L_80003ff4:    /* atol+0x68 */
    beqz a2,L_80003ffc
L_80003ff8:
    neg a0,a0
L_80003ffc:
    jalr x0, 0(ra)   # pseudo ret
L_80004000:
    lbu a3,0(a5)
L_80004004:
    addi a2, x0, 0   # pseudo li
L_80004008:    /* atol+0x3c */
    bnez a3,L_80003fd0
L_8000400c:
    addi a0, x0, 0   # pseudo li
L_80004010:
    jalr x0, 0(ra)   # pseudo ret
L_80004014:
    addi a0, x0, 0   # pseudo li
L_80004018:    /* atol+0x60 */
    jal x0, L_80003ff4   # pseudo j
L_8000401c:    /* __udivdi3 */
L_8000401c:
    addi sp,sp,-48
L_80004020:
    sw s5,20(sp)
L_80004024:
    sw ra,44(sp)
L_80004028:
    sw s0,40(sp)
L_8000402c:
    sw s1,36(sp)
L_80004030:
    sw s2,32(sp)
L_80004034:
    sw s3,28(sp)
L_80004038:
    sw s4,24(sp)
L_8000403c:
    sw s6,16(sp)
L_80004040:
    sw s7,12(sp)
L_80004044:
    sw s8,8(sp)
L_80004048:
    sw s9,4(sp)
L_8000404c:
    addi s5, a0, 0   # pseudo mv
L_80004050:    /* __udivdi3+0x3bc */
    bnez a3,L_800043d8
L_80004054:
    addi s4, a3, 0   # pseudo mv
L_80004058:
    addi s3, a2, 0   # pseudo mv
L_8000405c:
    addi s1, a0, 0   # pseudo mv
L_80004060:
    auipc a3,0x2
L_80004064:    /* __clz_tab */
    addi a3,a3,-760  # L_80005d68 # <__clz_tab>
L_80004068:    /* __udivdi3+0x1b0 */
    bgeu a1,a2,L_800041cc
L_8000406c:
    lui a5,0x10
L_80004070:
    addi s8, a1, 0   # pseudo mv
L_80004074:    /* __udivdi3+0x188 */
    bgeu a2,a5,L_800041a4
L_80004078:
    sltiu a5,a2,256
L_8000407c:
    seqz a5,a5
L_80004080:
    slli a5,a5,0x3
L_80004084:
    srl a4,a2,a5
L_80004088:
    add a3,a3,a4
L_8000408c:
    lbu a4,0(a3)
L_80004090:
    add a5,a4,a5
L_80004094:
    addi a4, x0, 32   # pseudo li
L_80004098:    /* __udivdi3+0x98 */
    beq a5,a4,L_800040b4
L_8000409c:
    sub a4,a4,a5
L_800040a0:
    sll s8,a1,a4
L_800040a4:
    srl a5,s5,a5
L_800040a8:
    sll s3,a2,a4
L_800040ac:
    or s8,a5,s8
L_800040b0:
    sll s1,s5,a4
L_800040b4:
    srli s6,s3,0x10
L_800040b8:
    addi a1, s6, 0   # pseudo mv
L_800040bc:
    slli s7,s3,0x10
L_800040c0:
    addi a0, s8, 0   # pseudo mv
L_800040c4:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800040c8:
    srli s7,s7,0x10
L_800040cc:
    addi a1, a0, 0   # pseudo mv
L_800040d0:
    addi s2, a0, 0   # pseudo mv
L_800040d4:
    addi a0, s7, 0   # pseudo mv
L_800040d8:    /* __mulsi3 */
    jal L_80004b68
L_800040dc:
    addi s0, a0, 0   # pseudo mv
L_800040e0:
    addi a1, s6, 0   # pseudo mv
L_800040e4:
    addi a0, s8, 0   # pseudo mv
L_800040e8:    /* __umodsi3 */
    jal L_80004bdc
L_800040ec:
    slli a0,a0,0x10
L_800040f0:
    srli a3,s1,0x10
L_800040f4:
    or a3,a3,a0
L_800040f8:    /* __udivdi3+0xf0 */
    bgeu a3,s0,L_8000410c
L_800040fc:
    add a3,s3,a3
L_80004100:    /* __udivdi3+0xec */
    bgeu a3,s0,L_80004108
L_80004104:    /* __udivdi3+0x19c */
    bgeu a3,s3,L_800041b8
L_80004108:
    addi s2,s2,-1
L_8000410c:
    sub s0,a3,s0
L_80004110:
    addi a1, s6, 0   # pseudo mv
L_80004114:
    addi a0, s0, 0   # pseudo mv
L_80004118:    /* __hidden___udivsi3 */
    jal L_80004b94
L_8000411c:
    addi a1, a0, 0   # pseudo mv
L_80004120:
    addi s5, a0, 0   # pseudo mv
L_80004124:
    addi a0, s7, 0   # pseudo mv
L_80004128:    /* __mulsi3 */
    jal L_80004b68
L_8000412c:
    addi s7, a0, 0   # pseudo mv
L_80004130:
    addi a1, s6, 0   # pseudo mv
L_80004134:
    addi a0, s0, 0   # pseudo mv
L_80004138:    /* __umodsi3 */
    jal L_80004bdc
L_8000413c:
    slli s1,s1,0x10
L_80004140:
    slli a0,a0,0x10
L_80004144:
    srli s1,s1,0x10
L_80004148:
    or s1,s1,a0
L_8000414c:    /* __udivdi3+0x144 */
    bgeu s1,s7,L_80004160
L_80004150:
    add s1,s3,s1
L_80004154:    /* __udivdi3+0x140 */
    bgeu s1,s7,L_8000415c
L_80004158:    /* __udivdi3+0x1a8 */
    bgeu s1,s3,L_800041c4
L_8000415c:
    addi s5,s5,-1
L_80004160:
    slli a5,s2,0x10
L_80004164:
    or a5,a5,s5
L_80004168:
    lw ra,44(sp)
L_8000416c:
    lw s0,40(sp)
L_80004170:
    lw s1,36(sp)
L_80004174:
    lw s2,32(sp)
L_80004178:
    lw s3,28(sp)
L_8000417c:
    lw s5,20(sp)
L_80004180:
    lw s6,16(sp)
L_80004184:
    lw s7,12(sp)
L_80004188:
    lw s8,8(sp)
L_8000418c:
    lw s9,4(sp)
L_80004190:
    addi a1, s4, 0   # pseudo mv
L_80004194:
    addi a0, a5, 0   # pseudo mv
L_80004198:
    lw s4,24(sp)
L_8000419c:
    addi sp,sp,48
L_800041a0:
    jalr x0, 0(ra)   # pseudo ret
L_800041a4:
    lui a4,0x1000
L_800041a8:
    addi a5, x0, 24   # pseudo li
L_800041ac:    /* __udivdi3+0x68 */
    bgeu a2,a4,L_80004084
L_800041b0:
    addi a5, x0, 16   # pseudo li
L_800041b4:    /* __udivdi3+0x68 */
    jal x0, L_80004084   # pseudo j
L_800041b8:
    addi s2,s2,-2
L_800041bc:
    add a3,a3,s3
L_800041c0:    /* __udivdi3+0xf0 */
    jal x0, L_8000410c   # pseudo j
L_800041c4:
    addi s5,s5,-2
L_800041c8:    /* __udivdi3+0x144 */
    jal x0, L_80004160   # pseudo j
L_800041cc:
    addi a4, x0, 0   # pseudo li
L_800041d0:    /* __udivdi3+0x1cc */
    beqz a2,L_800041e8
L_800041d4:
    lui a5,0x10
L_800041d8:    /* __udivdi3+0x2a4 */
    bgeu a2,a5,L_800042c0
L_800041dc:
    sltiu a4,a2,256
L_800041e0:
    seqz a4,a4
L_800041e4:
    slli a4,a4,0x3
L_800041e8:
    srl a5,a2,a4
L_800041ec:
    add a3,a3,a5
L_800041f0:
    lbu a5,0(a3)
L_800041f4:
    add a5,a5,a4
L_800041f8:
    addi a4, x0, 32   # pseudo li
L_800041fc:    /* __udivdi3+0x2b8 */
    bne a5,a4,L_800042d4
L_80004200:
    sub s0,a1,a2
L_80004204:
    addi s4, x0, 1   # pseudo li
L_80004208:
    srli s5,s3,0x10
L_8000420c:
    addi a1, s5, 0   # pseudo mv
L_80004210:
    slli s6,s3,0x10
L_80004214:
    addi a0, s0, 0   # pseudo mv
L_80004218:    /* __hidden___udivsi3 */
    jal L_80004b94
L_8000421c:
    srli s6,s6,0x10
L_80004220:
    addi a1, a0, 0   # pseudo mv
L_80004224:
    addi s2, a0, 0   # pseudo mv
L_80004228:
    addi a0, s6, 0   # pseudo mv
L_8000422c:    /* __mulsi3 */
    jal L_80004b68
L_80004230:
    addi s7, a0, 0   # pseudo mv
L_80004234:
    addi a1, s5, 0   # pseudo mv
L_80004238:
    addi a0, s0, 0   # pseudo mv
L_8000423c:    /* __umodsi3 */
    jal L_80004bdc
L_80004240:
    slli a0,a0,0x10
L_80004244:
    srli a3,s1,0x10
L_80004248:
    or a3,a3,a0
L_8000424c:    /* __udivdi3+0x244 */
    bgeu a3,s7,L_80004260
L_80004250:
    add a3,s3,a3
L_80004254:    /* __udivdi3+0x240 */
    bgeu a3,s7,L_8000425c
L_80004258:    /* __udivdi3+0x3a8 */
    bgeu a3,s3,L_800043c4
L_8000425c:
    addi s2,s2,-1
L_80004260:
    sub s0,a3,s7
L_80004264:
    addi a1, s5, 0   # pseudo mv
L_80004268:
    addi a0, s0, 0   # pseudo mv
L_8000426c:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004270:
    addi a1, a0, 0   # pseudo mv
L_80004274:
    addi s7, a0, 0   # pseudo mv
L_80004278:
    addi a0, s6, 0   # pseudo mv
L_8000427c:    /* __mulsi3 */
    jal L_80004b68
L_80004280:
    addi s6, a0, 0   # pseudo mv
L_80004284:
    addi a1, s5, 0   # pseudo mv
L_80004288:
    addi a0, s0, 0   # pseudo mv
L_8000428c:    /* __umodsi3 */
    jal L_80004bdc
L_80004290:
    slli s1,s1,0x10
L_80004294:
    slli a0,a0,0x10
L_80004298:
    srli s1,s1,0x10
L_8000429c:
    or s1,s1,a0
L_800042a0:    /* __udivdi3+0x298 */
    bgeu s1,s6,L_800042b4
L_800042a4:
    add s1,s3,s1
L_800042a8:    /* __udivdi3+0x294 */
    bgeu s1,s6,L_800042b0
L_800042ac:    /* __udivdi3+0x3b4 */
    bgeu s1,s3,L_800043d0
L_800042b0:
    addi s7,s7,-1
L_800042b4:
    slli a5,s2,0x10
L_800042b8:
    or a5,a5,s7
L_800042bc:    /* __udivdi3+0x14c */
    jal x0, L_80004168   # pseudo j
L_800042c0:
    lui a5,0x1000
L_800042c4:
    addi a4, x0, 24   # pseudo li
L_800042c8:    /* __udivdi3+0x1cc */
    bgeu a2,a5,L_800041e8
L_800042cc:
    addi a4, x0, 16   # pseudo li
L_800042d0:    /* __udivdi3+0x1cc */
    jal x0, L_800041e8   # pseudo j
L_800042d4:
    sub a4,a4,a5
L_800042d8:
    sll s3,a2,a4
L_800042dc:
    srl s0,a1,a5
L_800042e0:
    srli s6,s3,0x10
L_800042e4:
    sll a1,a1,a4
L_800042e8:
    srl a5,s5,a5
L_800042ec:
    or s4,a5,a1
L_800042f0:
    slli s7,s3,0x10
L_800042f4:
    addi a1, s6, 0   # pseudo mv
L_800042f8:
    addi a0, s0, 0   # pseudo mv
L_800042fc:
    sll s1,s5,a4
L_80004300:
    srli s7,s7,0x10
L_80004304:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004308:
    addi a1, a0, 0   # pseudo mv
L_8000430c:
    addi s2, a0, 0   # pseudo mv
L_80004310:
    addi a0, s7, 0   # pseudo mv
L_80004314:    /* __mulsi3 */
    jal L_80004b68
L_80004318:
    addi s5, a0, 0   # pseudo mv
L_8000431c:
    addi a1, s6, 0   # pseudo mv
L_80004320:
    addi a0, s0, 0   # pseudo mv
L_80004324:    /* __umodsi3 */
    jal L_80004bdc
L_80004328:
    slli a0,a0,0x10
L_8000432c:
    srli a3,s4,0x10
L_80004330:
    or a3,a3,a0
L_80004334:    /* __udivdi3+0x32c */
    bgeu a3,s5,L_80004348
L_80004338:
    add a3,s3,a3
L_8000433c:    /* __udivdi3+0x328 */
    bgeu a3,s5,L_80004344
L_80004340:    /* __udivdi3+0x390 */
    bgeu a3,s3,L_800043ac
L_80004344:
    addi s2,s2,-1
L_80004348:
    sub s0,a3,s5
L_8000434c:
    addi a1, s6, 0   # pseudo mv
L_80004350:
    addi a0, s0, 0   # pseudo mv
L_80004354:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004358:
    addi a1, a0, 0   # pseudo mv
L_8000435c:
    addi s5, a0, 0   # pseudo mv
L_80004360:
    addi a0, s7, 0   # pseudo mv
L_80004364:    /* __mulsi3 */
    jal L_80004b68
L_80004368:
    addi s7, a0, 0   # pseudo mv
L_8000436c:
    addi a1, s6, 0   # pseudo mv
L_80004370:
    addi a0, s0, 0   # pseudo mv
L_80004374:    /* __umodsi3 */
    jal L_80004bdc
L_80004378:
    slli a5,s4,0x10
L_8000437c:
    slli a0,a0,0x10
L_80004380:
    srli a5,a5,0x10
L_80004384:
    or a5,a5,a0
L_80004388:    /* __udivdi3+0x380 */
    bgeu a5,s7,L_8000439c
L_8000438c:
    add a5,s3,a5
L_80004390:    /* __udivdi3+0x37c */
    bgeu a5,s7,L_80004398
L_80004394:    /* __udivdi3+0x39c */
    bgeu a5,s3,L_800043b8
L_80004398:
    addi s5,s5,-1
L_8000439c:
    slli s2,s2,0x10
L_800043a0:
    sub s0,a5,s7
L_800043a4:
    or s4,s2,s5
L_800043a8:    /* __udivdi3+0x1ec */
    jal x0, L_80004208   # pseudo j
L_800043ac:
    addi s2,s2,-2
L_800043b0:
    add a3,a3,s3
L_800043b4:    /* __udivdi3+0x32c */
    jal x0, L_80004348   # pseudo j
L_800043b8:
    addi s5,s5,-2
L_800043bc:
    add a5,a5,s3
L_800043c0:    /* __udivdi3+0x380 */
    jal x0, L_8000439c   # pseudo j
L_800043c4:
    addi s2,s2,-2
L_800043c8:
    add a3,a3,s3
L_800043cc:    /* __udivdi3+0x244 */
    jal x0, L_80004260   # pseudo j
L_800043d0:
    addi s7,s7,-2
L_800043d4:    /* __udivdi3+0x298 */
    jal x0, L_800042b4   # pseudo j
L_800043d8:    /* __udivdi3+0x5a8 */
    bltu a1,a3,L_800045c4
L_800043dc:
    lui a5,0x10
L_800043e0:    /* __udivdi3+0x40c */
    bgeu a3,a5,L_80004428
L_800043e4:
    sltiu a4,a3,256
L_800043e8:
    seqz a4,a4
L_800043ec:
    slli a4,a4,0x3
L_800043f0:
    srl a0,a3,a4
L_800043f4:
    auipc a5,0x2
L_800043f8:    /* __clz_tab */
    addi a5,a5,-1676  # L_80005d68 # <__clz_tab>
L_800043fc:
    add a5,a5,a0
L_80004400:
    lbu a5,0(a5)
L_80004404:
    addi s6, x0, 32   # pseudo li
L_80004408:
    add a5,a5,a4
L_8000440c:    /* __udivdi3+0x420 */
    bne a5,s6,L_8000443c
L_80004410:
    sltu a5,s5,a2
L_80004414:
    seqz a5,a5
L_80004418:
    sltu a3,a3,a1
L_8000441c:
    or a5,a5,a3
L_80004420:
    addi s4, x0, 0   # pseudo li
L_80004424:    /* __udivdi3+0x14c */
    jal x0, L_80004168   # pseudo j
L_80004428:
    lui a5,0x1000
L_8000442c:
    addi a4, x0, 24   # pseudo li
L_80004430:    /* __udivdi3+0x3d4 */
    bgeu a3,a5,L_800043f0
L_80004434:
    addi a4, x0, 16   # pseudo li
L_80004438:    /* __udivdi3+0x3d4 */
    jal x0, L_800043f0   # pseudo j
L_8000443c:
    sub s6,s6,a5
L_80004440:
    srl s7,a2,a5
L_80004444:
    sll a3,a3,s6
L_80004448:
    or s7,s7,a3
L_8000444c:
    srl s1,a1,a5
L_80004450:
    srli s9,s7,0x10
L_80004454:
    srl a5,s5,a5
L_80004458:
    sll a1,a1,s6
L_8000445c:
    or s4,a5,a1
L_80004460:
    slli s8,s7,0x10
L_80004464:
    addi a1, s9, 0   # pseudo mv
L_80004468:
    addi a0, s1, 0   # pseudo mv
L_8000446c:
    sll s3,a2,s6
L_80004470:
    srli s8,s8,0x10
L_80004474:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004478:
    addi a1, a0, 0   # pseudo mv
L_8000447c:
    addi s0, a0, 0   # pseudo mv
L_80004480:
    addi a0, s8, 0   # pseudo mv
L_80004484:    /* __mulsi3 */
    jal L_80004b68
L_80004488:
    addi s2, a0, 0   # pseudo mv
L_8000448c:
    addi a1, s9, 0   # pseudo mv
L_80004490:
    addi a0, s1, 0   # pseudo mv
L_80004494:    /* __umodsi3 */
    jal L_80004bdc
L_80004498:
    slli a0,a0,0x10
L_8000449c:
    srli a4,s4,0x10
L_800044a0:
    or a4,a4,a0
L_800044a4:    /* __udivdi3+0x49c */
    bgeu a4,s2,L_800044b8
L_800044a8:
    add a4,s7,a4
L_800044ac:    /* __udivdi3+0x498 */
    bgeu a4,s2,L_800044b4
L_800044b0:    /* __udivdi3+0x590 */
    bgeu a4,s7,L_800045ac
L_800044b4:
    addi s0,s0,-1
L_800044b8:
    sub s1,a4,s2
L_800044bc:
    addi a1, s9, 0   # pseudo mv
L_800044c0:
    addi a0, s1, 0   # pseudo mv
L_800044c4:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800044c8:
    addi a1, a0, 0   # pseudo mv
L_800044cc:
    addi s2, a0, 0   # pseudo mv
L_800044d0:
    addi a0, s8, 0   # pseudo mv
L_800044d4:    /* __mulsi3 */
    jal L_80004b68
L_800044d8:
    addi s8, a0, 0   # pseudo mv
L_800044dc:
    addi a1, s9, 0   # pseudo mv
L_800044e0:
    addi a0, s1, 0   # pseudo mv
L_800044e4:    /* __umodsi3 */
    jal L_80004bdc
L_800044e8:
    slli a5,s4,0x10
L_800044ec:
    slli a0,a0,0x10
L_800044f0:
    srli a5,a5,0x10
L_800044f4:
    or a5,a5,a0
L_800044f8:    /* __udivdi3+0x4f0 */
    bgeu a5,s8,L_8000450c
L_800044fc:
    add a5,s7,a5
L_80004500:    /* __udivdi3+0x4ec */
    bgeu a5,s8,L_80004508
L_80004504:    /* __udivdi3+0x59c */
    bgeu a5,s7,L_800045b8
L_80004508:
    addi s2,s2,-1
L_8000450c:
    slli t1,s3,0x10
L_80004510:
    slli s0,s0,0x10
L_80004514:
    srli t1,t1,0x10
L_80004518:
    slli a0,s2,0x10
L_8000451c:
    sub a7,a5,s8
L_80004520:
    srli a0,a0,0x10
L_80004524:
    or a5,s0,s2
L_80004528:
    addi a1, t1, 0   # pseudo mv
L_8000452c:    /* __mulsi3 */
    jal L_80004b68
L_80004530:
    addi a6, a0, 0   # pseudo mv
L_80004534:
    slli a0,s2,0x10
L_80004538:
    srli a0,a0,0x10
L_8000453c:
    srli a1,s3,0x10
L_80004540:    /* __mulsi3 */
    jal L_80004b68
L_80004544:
    addi a4, a0, 0   # pseudo mv
L_80004548:
    addi a1, t1, 0   # pseudo mv
L_8000454c:
    srli a0,a5,0x10
L_80004550:    /* __mulsi3 */
    jal L_80004b68
L_80004554:
    addi t1, a0, 0   # pseudo mv
L_80004558:
    srli a1,s3,0x10
L_8000455c:
    srli a0,a5,0x10
L_80004560:    /* __mulsi3 */
    jal L_80004b68
L_80004564:
    srli a3,a6,0x10
L_80004568:
    add a4,a4,t1
L_8000456c:
    add a3,a3,a4
L_80004570:    /* __udivdi3+0x560 */
    bgeu a3,t1,L_8000457c
L_80004574:
    lui a4,0x10
L_80004578:
    add a0,a0,a4
L_8000457c:
    srli a2,a3,0x10
L_80004580:
    add a2,a2,a0
L_80004584:    /* __udivdi3+0x588 */
    bltu a7,a2,L_800045a4
L_80004588:
    slli a6,a6,0x10
L_8000458c:
    slli a3,a3,0x10
L_80004590:
    srli a6,a6,0x10
L_80004594:
    sll a4,s5,s6
L_80004598:
    add a3,a3,a6
L_8000459c:    /* __udivdi3+0x404 */
    bgeu a4,a3,L_80004420
L_800045a0:    /* __udivdi3+0x404 */
    bne a7,a2,L_80004420
L_800045a4:    /* _tbss_end+0xffffbb */
    addi a5,a5,-1  # L_ffffff # <_tbss_end+0xffffbb>
L_800045a8:    /* __udivdi3+0x404 */
    jal x0, L_80004420   # pseudo j
L_800045ac:
    addi s0,s0,-2
L_800045b0:
    add a4,a4,s7
L_800045b4:    /* __udivdi3+0x49c */
    jal x0, L_800044b8   # pseudo j
L_800045b8:
    addi s2,s2,-2
L_800045bc:
    add a5,a5,s7
L_800045c0:    /* __udivdi3+0x4f0 */
    jal x0, L_8000450c   # pseudo j
L_800045c4:
    addi s4, x0, 0   # pseudo li
L_800045c8:
    addi a5, x0, 0   # pseudo li
L_800045cc:    /* __udivdi3+0x14c */
    jal x0, L_80004168   # pseudo j
L_800045d0:    /* __umoddi3 */
L_800045d0:
    addi sp,sp,-48
L_800045d4:
    sw s0,40(sp)
L_800045d8:
    sw s1,36(sp)
L_800045dc:
    sw ra,44(sp)
L_800045e0:
    sw s2,32(sp)
L_800045e4:
    sw s3,28(sp)
L_800045e8:
    sw s4,24(sp)
L_800045ec:
    sw s5,20(sp)
L_800045f0:
    sw s6,16(sp)
L_800045f4:
    sw s7,12(sp)
L_800045f8:
    sw s8,8(sp)
L_800045fc:
    sw s9,4(sp)
L_80004600:
    sw s10,0(sp)
L_80004604:
    addi s0, a0, 0   # pseudo mv
L_80004608:
    addi s1, a1, 0   # pseudo mv
L_8000460c:    /* __umoddi3+0x36c */
    bnez a3,L_8000493c
L_80004610:
    addi s3, a2, 0   # pseudo mv
L_80004614:
    auipc a4,0x1
L_80004618:    /* __clz_tab */
    addi a4,a4,1876  # L_80005d68 # <__clz_tab>
L_8000461c:    /* __umoddi3+0x1a8 */
    bgeu a1,a2,L_80004778
L_80004620:
    lui a5,0x10
L_80004624:    /* __umoddi3+0x194 */
    bgeu a2,a5,L_80004764
L_80004628:
    sltiu a5,a2,256
L_8000462c:
    seqz a5,a5
L_80004630:
    slli a5,a5,0x3
L_80004634:
    srl a3,a2,a5
L_80004638:
    add a4,a4,a3
L_8000463c:
    lbu a4,0(a4)
L_80004640:
    add a5,a4,a5
L_80004644:
    addi a4, x0, 32   # pseudo li
L_80004648:
    sub s2,a4,a5
L_8000464c:    /* __umoddi3+0x94 */
    beq a5,a4,L_80004664
L_80004650:
    sll s1,a1,s2
L_80004654:
    srl a5,a0,a5
L_80004658:
    sll s3,a2,s2
L_8000465c:
    or s1,a5,s1
L_80004660:
    sll s0,a0,s2
L_80004664:
    srli s4,s3,0x10
L_80004668:
    addi a1, s4, 0   # pseudo mv
L_8000466c:
    slli s5,s3,0x10
L_80004670:
    addi a0, s1, 0   # pseudo mv
L_80004674:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004678:
    srli s5,s5,0x10
L_8000467c:
    addi a1, s5, 0   # pseudo mv
L_80004680:    /* __mulsi3 */
    jal L_80004b68
L_80004684:
    addi s6, a0, 0   # pseudo mv
L_80004688:
    addi a1, s4, 0   # pseudo mv
L_8000468c:
    addi a0, s1, 0   # pseudo mv
L_80004690:    /* __umodsi3 */
    jal L_80004bdc
L_80004694:
    slli a0,a0,0x10
L_80004698:
    srli a5,s0,0x10
L_8000469c:
    or a5,a5,a0
L_800046a0:    /* __umoddi3+0xf4 */
    bgeu a5,s6,L_800046c4
L_800046a4:
    add a5,s3,a5
L_800046a8:
    sltu a3,a5,s3
L_800046ac:
    sltu a4,a5,s6
L_800046b0:
    seqz a3,a3
L_800046b4:
    and a4,a4,a3
L_800046b8:
    neg a4,a4
L_800046bc:
    and a4,a4,s3
L_800046c0:
    add a5,a4,a5
L_800046c4:
    sub s6,a5,s6
L_800046c8:
    addi a1, s4, 0   # pseudo mv
L_800046cc:
    addi a0, s6, 0   # pseudo mv
L_800046d0:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800046d4:
    addi a1, s5, 0   # pseudo mv
L_800046d8:    /* __mulsi3 */
    jal L_80004b68
L_800046dc:
    addi s5, a0, 0   # pseudo mv
L_800046e0:
    addi a1, s4, 0   # pseudo mv
L_800046e4:
    addi a0, s6, 0   # pseudo mv
L_800046e8:    /* __umodsi3 */
    jal L_80004bdc
L_800046ec:
    slli a5,a0,0x10
L_800046f0:
    slli a0,s0,0x10
L_800046f4:
    srli a0,a0,0x10
L_800046f8:
    or a0,a0,a5
L_800046fc:    /* __umoddi3+0x150 */
    bgeu a0,s5,L_80004720
L_80004700:
    add a0,s3,a0
L_80004704:
    sltu a4,a0,s3
L_80004708:
    sltu a5,a0,s5
L_8000470c:
    seqz a4,a4
L_80004710:
    and a5,a5,a4
L_80004714:
    neg a5,a5
L_80004718:
    and a5,a5,s3
L_8000471c:
    add a0,a5,a0
L_80004720:
    sub a0,a0,s5
L_80004724:
    srl a0,a0,s2
L_80004728:
    addi a1, x0, 0   # pseudo li
L_8000472c:
    lw ra,44(sp)
L_80004730:
    lw s0,40(sp)
L_80004734:
    lw s1,36(sp)
L_80004738:
    lw s2,32(sp)
L_8000473c:
    lw s3,28(sp)
L_80004740:
    lw s4,24(sp)
L_80004744:
    lw s5,20(sp)
L_80004748:
    lw s6,16(sp)
L_8000474c:
    lw s7,12(sp)
L_80004750:
    lw s8,8(sp)
L_80004754:
    lw s9,4(sp)
L_80004758:
    lw s10,0(sp)
L_8000475c:
    addi sp,sp,48
L_80004760:
    jalr x0, 0(ra)   # pseudo ret
L_80004764:
    lui a3,0x1000
L_80004768:
    addi a5, x0, 24   # pseudo li
L_8000476c:    /* __umoddi3+0x64 */
    bgeu a2,a3,L_80004634
L_80004770:
    addi a5, x0, 16   # pseudo li
L_80004774:    /* __umoddi3+0x64 */
    jal x0, L_80004634   # pseudo j
L_80004778:
    addi a5, x0, 0   # pseudo li
L_8000477c:    /* __umoddi3+0x1c4 */
    beqz a2,L_80004794
L_80004780:
    lui a5,0x10
L_80004784:    /* __umoddi3+0x358 */
    bgeu a2,a5,L_80004928
L_80004788:
    sltiu a5,a2,256
L_8000478c:
    seqz a5,a5
L_80004790:
    slli a5,a5,0x3
L_80004794:
    srl a3,a2,a5
L_80004798:
    add a4,a4,a3
L_8000479c:
    lbu a4,0(a4)
L_800047a0:
    sub s1,a1,a2
L_800047a4:
    add a5,a4,a5
L_800047a8:
    addi a4, x0, 32   # pseudo li
L_800047ac:
    sub s2,a4,a5
L_800047b0:    /* __umoddi3+0x2bc */
    beq a5,a4,L_8000488c
L_800047b4:
    sll s3,a2,s2
L_800047b8:
    srl s7,a1,a5
L_800047bc:
    srli s5,s3,0x10
L_800047c0:
    srl a5,a0,a5
L_800047c4:
    sll a1,a1,s2
L_800047c8:
    or s1,a5,a1
L_800047cc:
    sll s0,a0,s2
L_800047d0:
    addi a1, s5, 0   # pseudo mv
L_800047d4:
    slli s6,s3,0x10
L_800047d8:
    addi a0, s7, 0   # pseudo mv
L_800047dc:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800047e0:
    srli s6,s6,0x10
L_800047e4:
    addi a1, s6, 0   # pseudo mv
L_800047e8:    /* __mulsi3 */
    jal L_80004b68
L_800047ec:
    addi s4, a0, 0   # pseudo mv
L_800047f0:
    addi a1, s5, 0   # pseudo mv
L_800047f4:
    addi a0, s7, 0   # pseudo mv
L_800047f8:    /* __umodsi3 */
    jal L_80004bdc
L_800047fc:
    slli a0,a0,0x10
L_80004800:
    srli a5,s1,0x10
L_80004804:
    or a5,a5,a0
L_80004808:    /* __umoddi3+0x25c */
    bgeu a5,s4,L_8000482c
L_8000480c:
    add a5,s3,a5
L_80004810:
    sltu a3,a5,s3
L_80004814:
    sltu a4,a5,s4
L_80004818:
    seqz a3,a3
L_8000481c:
    and a4,a4,a3
L_80004820:
    neg a4,a4
L_80004824:
    and a4,a4,s3
L_80004828:
    add a5,a4,a5
L_8000482c:
    sub s4,a5,s4
L_80004830:
    addi a1, s5, 0   # pseudo mv
L_80004834:
    addi a0, s4, 0   # pseudo mv
L_80004838:    /* __hidden___udivsi3 */
    jal L_80004b94
L_8000483c:
    addi a1, s6, 0   # pseudo mv
L_80004840:    /* __mulsi3 */
    jal L_80004b68
L_80004844:
    addi s6, a0, 0   # pseudo mv
L_80004848:
    addi a1, s5, 0   # pseudo mv
L_8000484c:
    addi a0, s4, 0   # pseudo mv
L_80004850:    /* __umodsi3 */
    jal L_80004bdc
L_80004854:
    slli a5,s1,0x10
L_80004858:
    slli a0,a0,0x10
L_8000485c:
    srli a5,a5,0x10
L_80004860:
    or a5,a5,a0
L_80004864:    /* __umoddi3+0x2b8 */
    bgeu a5,s6,L_80004888
L_80004868:
    add a5,s3,a5
L_8000486c:
    sltu a3,a5,s3
L_80004870:
    sltu a4,a5,s6
L_80004874:
    seqz a3,a3
L_80004878:
    and a4,a4,a3
L_8000487c:
    neg a4,a4
L_80004880:
    and a4,a4,s3
L_80004884:
    add a5,a4,a5
L_80004888:
    sub s1,a5,s6
L_8000488c:
    srli s4,s3,0x10
L_80004890:
    addi a1, s4, 0   # pseudo mv
L_80004894:
    slli s5,s3,0x10
L_80004898:
    addi a0, s1, 0   # pseudo mv
L_8000489c:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800048a0:
    srli s5,s5,0x10
L_800048a4:
    addi a1, s5, 0   # pseudo mv
L_800048a8:    /* __mulsi3 */
    jal L_80004b68
L_800048ac:
    addi s6, a0, 0   # pseudo mv
L_800048b0:
    addi a1, s4, 0   # pseudo mv
L_800048b4:
    addi a0, s1, 0   # pseudo mv
L_800048b8:    /* __umodsi3 */
    jal L_80004bdc
L_800048bc:
    slli a0,a0,0x10
L_800048c0:
    srli a5,s0,0x10
L_800048c4:
    or a5,a5,a0
L_800048c8:    /* __umoddi3+0x31c */
    bgeu a5,s6,L_800048ec
L_800048cc:
    add a5,s3,a5
L_800048d0:
    sltu a3,a5,s3
L_800048d4:
    sltu a4,a5,s6
L_800048d8:
    seqz a3,a3
L_800048dc:
    and a4,a4,a3
L_800048e0:
    neg a4,a4
L_800048e4:
    and a4,a4,s3
L_800048e8:
    add a5,a4,a5
L_800048ec:
    sub s6,a5,s6
L_800048f0:
    addi a1, s4, 0   # pseudo mv
L_800048f4:
    addi a0, s6, 0   # pseudo mv
L_800048f8:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800048fc:
    addi a1, s5, 0   # pseudo mv
L_80004900:    /* __mulsi3 */
    jal L_80004b68
L_80004904:
    addi s5, a0, 0   # pseudo mv
L_80004908:
    addi a1, s4, 0   # pseudo mv
L_8000490c:
    addi a0, s6, 0   # pseudo mv
L_80004910:    /* __umodsi3 */
    jal L_80004bdc
L_80004914:
    slli s0,s0,0x10
L_80004918:
    slli a0,a0,0x10
L_8000491c:
    srli s0,s0,0x10
L_80004920:
    or a0,s0,a0
L_80004924:    /* __umoddi3+0x12c */
    jal x0, L_800046fc   # pseudo j
L_80004928:
    lui a3,0x1000
L_8000492c:
    addi a5, x0, 24   # pseudo li
L_80004930:    /* __umoddi3+0x1c4 */
    bgeu a2,a3,L_80004794
L_80004934:
    addi a5, x0, 16   # pseudo li
L_80004938:    /* __umoddi3+0x1c4 */
    jal x0, L_80004794   # pseudo j
L_8000493c:    /* __umoddi3+0x15c */
    bltu a1,a3,L_8000472c
L_80004940:
    lui a5,0x10
L_80004944:    /* __umoddi3+0x3cc */
    bgeu a3,a5,L_8000499c
L_80004948:
    sltiu a5,a3,256
L_8000494c:
    seqz a5,a5
L_80004950:
    slli a5,a5,0x3
L_80004954:
    srl a6,a3,a5
L_80004958:
    auipc a4,0x1
L_8000495c:    /* __clz_tab */
    addi a4,a4,1040  # L_80005d68 # <__clz_tab>
L_80004960:
    add a4,a4,a6
L_80004964:
    lbu s3,0(a4)
L_80004968:
    addi s4, x0, 32   # pseudo li
L_8000496c:
    add s3,s3,a5
L_80004970:    /* __umoddi3+0x3e0 */
    bne s3,s4,L_800049b0
L_80004974:    /* __umoddi3+0x3ac */
    bgeu a0,a2,L_8000497c
L_80004978:    /* __umoddi3+0x3c0 */
    bgeu a3,a1,L_80004990
L_8000497c:
    sub s1,a0,a2
L_80004980:
    addi s0, s1, 0   # pseudo mv
L_80004984:
    sub a3,a1,a3
L_80004988:
    sltu s1,a0,s1
L_8000498c:
    sub s1,a3,s1
L_80004990:
    addi a0, s0, 0   # pseudo mv
L_80004994:
    addi a1, s1, 0   # pseudo mv
L_80004998:    /* __umoddi3+0x15c */
    jal x0, L_8000472c   # pseudo j
L_8000499c:
    lui a4,0x1000
L_800049a0:
    addi a5, x0, 24   # pseudo li
L_800049a4:    /* __umoddi3+0x384 */
    bgeu a3,a4,L_80004954
L_800049a8:
    addi a5, x0, 16   # pseudo li
L_800049ac:    /* __umoddi3+0x384 */
    jal x0, L_80004954   # pseudo j
L_800049b0:
    sub s4,s4,s3
L_800049b4:
    sll a3,a3,s4
L_800049b8:
    srl s6,a2,s3
L_800049bc:
    or s6,s6,a3
L_800049c0:
    srl s5,a1,s3
L_800049c4:
    srl s0,a0,s3
L_800049c8:
    sll a1,a1,s4
L_800049cc:
    srli s10,s6,0x10
L_800049d0:
    or s0,s0,a1
L_800049d4:
    sll s2,a0,s4
L_800049d8:
    addi a1, s10, 0   # pseudo mv
L_800049dc:
    slli s9,s6,0x10
L_800049e0:
    addi a0, s5, 0   # pseudo mv
L_800049e4:
    sll s1,a2,s4
L_800049e8:
    srli s9,s9,0x10
L_800049ec:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800049f0:
    addi a1, a0, 0   # pseudo mv
L_800049f4:
    addi s8, a0, 0   # pseudo mv
L_800049f8:
    addi a0, s9, 0   # pseudo mv
L_800049fc:    /* __mulsi3 */
    jal L_80004b68
L_80004a00:
    addi s7, a0, 0   # pseudo mv
L_80004a04:
    addi a1, s10, 0   # pseudo mv
L_80004a08:
    addi a0, s5, 0   # pseudo mv
L_80004a0c:    /* __umodsi3 */
    jal L_80004bdc
L_80004a10:
    slli a0,a0,0x10
L_80004a14:
    srli a5,s0,0x10
L_80004a18:
    or a5,a5,a0
L_80004a1c:    /* __umoddi3+0x460 */
    bgeu a5,s7,L_80004a30
L_80004a20:
    add a5,s6,a5
L_80004a24:    /* __umoddi3+0x45c */
    bgeu a5,s7,L_80004a2c
L_80004a28:    /* __umoddi3+0x580 */
    bgeu a5,s6,L_80004b50
L_80004a2c:
    addi s8,s8,-1
L_80004a30:
    sub s7,a5,s7
L_80004a34:
    addi a1, s10, 0   # pseudo mv
L_80004a38:
    addi a0, s7, 0   # pseudo mv
L_80004a3c:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004a40:
    addi a1, a0, 0   # pseudo mv
L_80004a44:
    addi s5, a0, 0   # pseudo mv
L_80004a48:
    addi a0, s9, 0   # pseudo mv
L_80004a4c:    /* __mulsi3 */
    jal L_80004b68
L_80004a50:
    addi a1, s10, 0   # pseudo mv
L_80004a54:
    addi s9, a0, 0   # pseudo mv
L_80004a58:
    addi a0, s7, 0   # pseudo mv
L_80004a5c:    /* __umodsi3 */
    jal L_80004bdc
L_80004a60:
    slli a1,s0,0x10
L_80004a64:
    slli a0,a0,0x10
L_80004a68:
    srli a1,a1,0x10
L_80004a6c:
    or a1,a1,a0
L_80004a70:    /* __umoddi3+0x4b4 */
    bgeu a1,s9,L_80004a84
L_80004a74:
    add a1,s6,a1
L_80004a78:    /* __umoddi3+0x4b0 */
    bgeu a1,s9,L_80004a80
L_80004a7c:    /* __umoddi3+0x58c */
    bgeu a1,s6,L_80004b5c
L_80004a80:
    addi s5,s5,-1
L_80004a84:
    sub a4,a1,s9
L_80004a88:
    slli a6,s8,0x10
L_80004a8c:
    slli a0,s5,0x10
L_80004a90:
    slli a1,s1,0x10
L_80004a94:
    or a6,a6,s5
L_80004a98:
    srli a0,a0,0x10
L_80004a9c:
    srli a1,a1,0x10
L_80004aa0:    /* __mulsi3 */
    jal L_80004b68
L_80004aa4:
    addi a7, a0, 0   # pseudo mv
L_80004aa8:
    slli a0,s5,0x10
L_80004aac:
    srli a0,a0,0x10
L_80004ab0:
    srli a1,s1,0x10
L_80004ab4:    /* __mulsi3 */
    jal L_80004b68
L_80004ab8:
    slli a1,s1,0x10
L_80004abc:
    addi a5, a0, 0   # pseudo mv
L_80004ac0:
    srli a1,a1,0x10
L_80004ac4:
    srli a0,a6,0x10
L_80004ac8:    /* __mulsi3 */
    jal L_80004b68
L_80004acc:
    addi t3, a0, 0   # pseudo mv
L_80004ad0:
    srli a1,s1,0x10
L_80004ad4:
    srli a0,a6,0x10
L_80004ad8:    /* __mulsi3 */
    jal L_80004b68
L_80004adc:
    add a5,a5,t3
L_80004ae0:
    srli a3,a7,0x10
L_80004ae4:
    add a5,a5,a3
L_80004ae8:    /* __umoddi3+0x524 */
    bgeu a5,t3,L_80004af4
L_80004aec:
    lui a3,0x10
L_80004af0:
    add a0,a0,a3
L_80004af4:
    srli a3,a5,0x10
L_80004af8:
    slli a7,a7,0x10
L_80004afc:
    slli a5,a5,0x10
L_80004b00:
    srli a7,a7,0x10
L_80004b04:
    add a0,a3,a0
L_80004b08:
    add a5,a5,a7
L_80004b0c:    /* __umoddi3+0x548 */
    bltu a4,a0,L_80004b18
L_80004b10:    /* __umoddi3+0x55c */
    bgeu s2,a5,L_80004b2c
L_80004b14:    /* __umoddi3+0x55c */
    bne a4,a0,L_80004b2c
L_80004b18:
    sub s1,a5,s1
L_80004b1c:
    sltu a3,a5,s1
L_80004b20:
    add a3,a3,s6
L_80004b24:
    addi a5, s1, 0   # pseudo mv
L_80004b28:
    sub a0,a0,a3
L_80004b2c:
    sub a5,s2,a5
L_80004b30:
    sub a1,a4,a0
L_80004b34:
    sltu s2,s2,a5
L_80004b38:
    sub a1,a1,s2
L_80004b3c:
    sll s3,a1,s3
L_80004b40:
    srl a5,a5,s4
L_80004b44:
    or a0,s3,a5
L_80004b48:
    srl a1,a1,s4
L_80004b4c:    /* __umoddi3+0x15c */
    jal x0, L_8000472c   # pseudo j
L_80004b50:
    addi s8,s8,-2
L_80004b54:
    add a5,a5,s6
L_80004b58:    /* __umoddi3+0x460 */
    jal x0, L_80004a30   # pseudo j
L_80004b5c:
    addi s5,s5,-2
L_80004b60:
    add a1,a1,s6
L_80004b64:    /* __umoddi3+0x4b4 */
    jal x0, L_80004a84   # pseudo j
L_80004b68:    /* __mulsi3 */
L_80004b68:
    addi a2, a0, 0   # pseudo mv
L_80004b6c:
    addi a0, x0, 0   # pseudo li
L_80004b70:
    andi a3,a1,1
L_80004b74:    /* __mulsi3+0x14 */
    beqz a3,L_80004b7c
L_80004b78:
    add a0,a0,a2
L_80004b7c:
    srli a1,a1,0x1
L_80004b80:
    slli a2,a2,0x1
L_80004b84:    /* __mulsi3+0x8 */
    bnez a1,L_80004b70
L_80004b88:
    jalr x0, 0(ra)   # pseudo ret
L_80004b8c:    /* __divsi3 */
L_80004b8c:    /* __umodsi3+0x10 */
    bltz a0,L_80004bec
L_80004b90:    /* __umodsi3+0x20 */
    bltz a1,L_80004bfc
L_80004b94:    /* __hidden___udivsi3 */
L_80004b94:
    addi a2, a1, 0   # pseudo mv
L_80004b98:
    addi a1, a0, 0   # pseudo mv
L_80004b9c:
    addi a0, x0, -1   # pseudo li
L_80004ba0:    /* __hidden___udivsi3+0x44 */
    beqz a2,L_80004bd8
L_80004ba4:
    addi a3, x0, 1   # pseudo li
L_80004ba8:    /* __hidden___udivsi3+0x28 */
    bgeu a2,a1,L_80004bbc
L_80004bac:    /* __hidden___udivsi3+0x28 */
    blez a2,L_80004bbc
L_80004bb0:
    slli a2,a2,0x1
L_80004bb4:
    slli a3,a3,0x1
L_80004bb8:    /* __hidden___udivsi3+0x18 */
    bltu a2,a1,L_80004bac
L_80004bbc:
    addi a0, x0, 0   # pseudo li
L_80004bc0:    /* __hidden___udivsi3+0x38 */
    bltu a1,a2,L_80004bcc
L_80004bc4:
    sub a1,a1,a2
L_80004bc8:
    or a0,a0,a3
L_80004bcc:
    srli a3,a3,0x1
L_80004bd0:
    srli a2,a2,0x1
L_80004bd4:    /* __hidden___udivsi3+0x2c */
    bnez a3,L_80004bc0
L_80004bd8:
    jalr x0, 0(ra)   # pseudo ret
L_80004bdc:    /* __umodsi3 */
L_80004bdc:
    addi t0, ra, 0   # pseudo mv
L_80004be0:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004be4:
    addi a0, a1, 0   # pseudo mv
L_80004be8:
    jalr x0, 0(t0)   # pseudo jr
L_80004bec:
    neg a0,a0
L_80004bf0:    /* __umodsi3+0x24 */
    bgtz a1,L_80004c00
L_80004bf4:
    neg a1,a1
L_80004bf8:    /* __hidden___udivsi3 */
    jal x0, L_80004b94   # pseudo j
L_80004bfc:
    neg a1,a1
L_80004c00:
    addi t0, ra, 0   # pseudo mv
L_80004c04:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004c08:
    neg a0,a0
L_80004c0c:
    jalr x0, 0(t0)   # pseudo jr
L_80004c10:    /* __modsi3 */
L_80004c10:
    addi t0, ra, 0   # pseudo mv
L_80004c14:    /* __modsi3+0x18 */
    bltz a1,L_80004c28
L_80004c18:    /* __modsi3+0x20 */
    bltz a0,L_80004c30
L_80004c1c:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004c20:
    addi a0, a1, 0   # pseudo mv
L_80004c24:
    jalr x0, 0(t0)   # pseudo jr
L_80004c28:
    neg a1,a1
L_80004c2c:    /* __modsi3+0xc */
    bgez a0,L_80004c1c
L_80004c30:
    neg a0,a0
L_80004c34:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004c38:
    neg a0,a1
L_80004c3c:
    jalr x0, 0(t0)   # pseudo jr
L_80004c40:    /* main */
L_80004c40:
    addi sp,sp,-128
L_80004c44:
    addi a2,sp,8
L_80004c48:
    addi a1,sp,4
L_80004c4c:
    addi a0,sp,78
L_80004c50:
    sw ra,124(sp)
L_80004c54:
    sw s1,116(sp)
L_80004c58:
    sw s0,120(sp)
L_80004c5c:
    sw s2,112(sp)
L_80004c60:
    sw s3,108(sp)
L_80004c64:
    sw s4,104(sp)
L_80004c68:
    sw s5,100(sp)
L_80004c6c:
    sw s6,96(sp)
L_80004c70:
    sw s7,92(sp)
L_80004c74:
    sw zero,4(sp)
L_80004c78:    /* portable_init */
    jal L_800034c4
L_80004c7c:
    addi a0, x0, 1   # pseudo li
L_80004c80:    /* get_seed_32 */
    jal L_80002a54
L_80004c84:
    sh a0,12(sp)
L_80004c88:
    addi a0, x0, 2   # pseudo li
L_80004c8c:    /* get_seed_32 */
    jal L_80002a54
L_80004c90:
    sh a0,14(sp)
L_80004c94:
    addi a0, x0, 3   # pseudo li
L_80004c98:    /* get_seed_32 */
    jal L_80002a54
L_80004c9c:
    sh a0,16(sp)
L_80004ca0:
    addi a0, x0, 4   # pseudo li
L_80004ca4:    /* get_seed_32 */
    jal L_80002a54
L_80004ca8:
    sw a0,40(sp)
L_80004cac:
    addi a0, x0, 5   # pseudo li
L_80004cb0:    /* get_seed_32 */
    jal L_80002a54
L_80004cb4:
    addi s1, x0, 7   # pseudo li
L_80004cb8:    /* main+0x80 */
    beqz a0,L_80004cc0
L_80004cbc:
    addi s1, a0, 0   # pseudo mv
L_80004cc0:
    lw a5,12(sp)
L_80004cc4:
    sw s1,44(sp)
L_80004cc8:    /* main+0x3dc */
    beqz a5,L_8000501c
L_80004ccc:
    addi a4, x0, 1   # pseudo li
L_80004cd0:    /* main+0x728 */
    beq a5,a4,L_80005368
L_80004cd4:
    lui s4,0x80006
L_80004cd8:
    andi a5,s1,2
L_80004cdc:
    snez a5,a5
L_80004ce0:    /* static_memblk */
    addi s4,s4,-148  # L_80005f6c # <static_memblk>
L_80004ce4:
    andi a1,s1,1
L_80004ce8:
    add a1,a1,a5
L_80004cec:
    sh zero,76(sp)
L_80004cf0:
    sw s4,20(sp)
L_80004cf4:
    andi a5,s1,4
L_80004cf8:    /* main+0xc8 */
    beqz a5,L_80004d08
L_80004cfc:
    addi a1,a1,1
L_80004d00:
    slli a1,a1,0x10
L_80004d04:
    srli a1,a1,0x10
L_80004d08:
    addi a0, x0, 2000   # pseudo li
L_80004d0c:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004d10:
    addi s7, a0, 0   # pseudo mv
L_80004d14:
    sw a0,36(sp)
L_80004d18:
    addi s2,sp,12
L_80004d1c:
    addi s0, x0, 0   # pseudo li
L_80004d20:
    addi s3, x0, 0   # pseudo li
L_80004d24:
    addi s6, x0, 1   # pseudo li
L_80004d28:
    addi s5, x0, 3   # pseudo li
L_80004d2c:
    sll a5,s6,s0
L_80004d30:
    and a5,a5,s1
L_80004d34:    /* main+0x254 */
    bnez a5,L_80004e94
L_80004d38:
    addi s0,s0,1
L_80004d3c:
    addi s2,s2,4
L_80004d40:    /* main+0xec */
    bne s0,s5,L_80004d2c
L_80004d44:
    lw a5,44(sp)
L_80004d48:
    andi a4,a5,1
L_80004d4c:    /* main+0x128 */
    beqz a4,L_80004d68
L_80004d50:
    lh a2,12(sp)
L_80004d54:
    lw a1,24(sp)
L_80004d58:
    lw a0,36(sp)
L_80004d5c:    /* core_list_init */
    jal L_800017f0
L_80004d60:
    lw a5,44(sp)
L_80004d64:
    sw a0,48(sp)
L_80004d68:
    andi a4,a5,2
L_80004d6c:    /* main+0x22c */
    bnez a4,L_80004e6c
L_80004d70:
    andi a5,a5,4
L_80004d74:    /* main+0x148 */
    beqz a5,L_80004d88
L_80004d78:
    lw a2,32(sp)
L_80004d7c:
    lh a1,12(sp)
L_80004d80:
    lw a0,36(sp)
L_80004d84:    /* core_init_state */
    jal L_80002478
L_80004d88:
    lw a5,40(sp)
L_80004d8c:    /* main+0x1a4 */
    bnez a5,L_80004de4
L_80004d90:
    addi a5, x0, 1   # pseudo li
L_80004d94:
    sw a5,40(sp)
L_80004d98:
    lw a4,40(sp)
L_80004d9c:
    slli a5,a4,0x2
L_80004da0:
    add a5,a5,a4
L_80004da4:
    slli a5,a5,0x1
L_80004da8:
    sw a5,40(sp)
L_80004dac:    /* start_time */
    jal L_8000346c
L_80004db0:
    addi a0,sp,12
L_80004db4:    /* iterate */
    jal L_80001978
L_80004db8:    /* stop_time */
    jal L_8000347c
L_80004dbc:    /* get_time */
    jal L_8000348c
L_80004dc0:    /* time_in_secs */
    jal L_800034a4
L_80004dc4:    /* main+0x158 */
    beqz a0,L_80004d98
L_80004dc8:
    addi a1, a0, 0   # pseudo mv
L_80004dcc:
    addi a0, x0, 10   # pseudo li
L_80004dd0:    /* __hidden___udivsi3 */
    jal L_80004b94
L_80004dd4:
    addi a1,a0,1
L_80004dd8:
    lw a0,40(sp)
L_80004ddc:    /* __mulsi3 */
    jal L_80004b68
L_80004de0:
    sw a0,40(sp)
L_80004de4:    /* start_time */
    jal L_8000346c
L_80004de8:
    addi a0,sp,12
L_80004dec:    /* iterate */
    jal L_80001978
L_80004df0:    /* stop_time */
    jal L_8000347c
L_80004df4:    /* get_time */
    jal L_8000348c
L_80004df8:
    addi s3, a0, 0   # pseudo mv
L_80004dfc:
    lh a0,12(sp)
L_80004e00:
    addi a1, x0, 0   # pseudo li
L_80004e04:    /* crc16 */
    jal L_8000322c
L_80004e08:
    addi a1, a0, 0   # pseudo mv
L_80004e0c:
    lh a0,14(sp)
L_80004e10:    /* crc16 */
    jal L_8000322c
L_80004e14:
    addi a1, a0, 0   # pseudo mv
L_80004e18:
    lh a0,16(sp)
L_80004e1c:    /* crc16 */
    jal L_8000322c
L_80004e20:
    addi a1, a0, 0   # pseudo mv
L_80004e24:
    lh a0,36(sp)
L_80004e28:    /* crc16 */
    jal L_8000322c
L_80004e2c:
    lui a5,0x8
L_80004e30:    /* _tbss_end+0x7ac1 */
    addi a5,a5,-1275  # 7b05 # <_tbss_end+0x7ac1>
L_80004e34:
    addi s4, a0, 0   # pseudo mv
L_80004e38:    /* main+0x700 */
    beq a0,a5,L_80005340
L_80004e3c:    /* main+0x278 */
    bgeu a5,a0,L_80004eb8
L_80004e40:
    lui a5,0x9
L_80004e44:    /* _tbss_end+0x89be */
    addi a5,a5,-1534  # 8a02 # <_tbss_end+0x89be>
L_80004e48:    /* main+0x714 */
    beq a0,a5,L_80005354
L_80004e4c:
    lui a5,0xf
L_80004e50:    /* _tbss_end+0xe9b1 */
    addi a5,a5,-1547  # e9f5 # <_tbss_end+0xe9b1>
L_80004e54:    /* main+0x3f0 */
    bne a0,a5,L_80005030
L_80004e58:
    lui a0,0x80005
L_80004e5c:    /* main+0x80c */
    addi a0,a0,1100  # L_8000544c # <main+0x80c>
L_80004e60:    /* puts */
    jal L_80003ccc
L_80004e64:
    addi a5, x0, 3   # pseudo li
L_80004e68:    /* main+0x2a0 */
    jal x0, L_80004ee0   # pseudo j
L_80004e6c:
    lh a5,14(sp)
L_80004e70:
    lh a2,12(sp)
L_80004e74:
    lw a1,28(sp)
L_80004e78:
    lw a0,36(sp)
L_80004e7c:
    slli a5,a5,0x10
L_80004e80:
    or a2,a5,a2
L_80004e84:
    addi a3,sp,52
L_80004e88:    /* core_init_matrix */
    jal L_80001a00
L_80004e8c:
    lw a5,44(sp)
L_80004e90:    /* main+0x130 */
    jal x0, L_80004d70   # pseudo j
L_80004e94:
    addi a0, s3, 0   # pseudo mv
L_80004e98:
    addi a1, s7, 0   # pseudo mv
L_80004e9c:    /* __mulsi3 */
    jal L_80004b68
L_80004ea0:
    addi s3,s3,1
L_80004ea4:
    slli s3,s3,0x10
L_80004ea8:
    add a0,s4,a0
L_80004eac:
    srli s3,s3,0x10
L_80004eb0:
    sw a0,12(s2)
L_80004eb4:    /* main+0xf8 */
    jal x0, L_80004d38   # pseudo j
L_80004eb8:
    lui a5,0x2
L_80004ebc:    /* _tbss_end+0x18ae */
    addi a5,a5,-1806  # 18f2 # <_tbss_end+0x18ae>
L_80004ec0:    /* main+0x6ec */
    beq a0,a5,L_8000532c
L_80004ec4:
    lui a5,0x5
L_80004ec8:    /* _tbss_end+0x4e6b */
    addi a5,a5,-337  # 4eaf # <_tbss_end+0x4e6b>
L_80004ecc:    /* main+0x3f0 */
    bne a0,a5,L_80005030
L_80004ed0:
    lui a0,0x80005
L_80004ed4:    /* main+0x7dc */
    addi a0,a0,1052  # L_8000541c # <main+0x7dc>
L_80004ed8:    /* puts */
    jal L_80003ccc
L_80004edc:
    addi a5, x0, 2   # pseudo li
L_80004ee0:
    lui s6,0x80006
L_80004ee4:    /* default_num_contexts */
    lw a4,-196(s6)  # L_80005f3c # <default_num_contexts>
L_80004ee8:    /* main+0x748 */
    beqz a4,L_80005388
L_80004eec:
    sw s8,88(sp)
L_80004ef0:
    lui s8,0x80006
L_80004ef4:
    slli a5,a5,0x1
L_80004ef8:    /* list_known_crc */
    addi s8,s8,-1644  # L_80005994 # <list_known_crc>
L_80004efc:
    add s8,s8,a5
L_80004f00:
    lui a5,0x80005
L_80004f04:
    sw s9,84(sp)
L_80004f08:
    addi s7, x0, 0   # pseudo li
L_80004f0c:    /* main+0x864 */
    addi s9,a5,1188  # L_800054a4 # <main+0x864>
L_80004f10:
    addi s2, x0, 0   # pseudo li
L_80004f14:
    lui s5,0x80005
L_80004f18:    /* main+0x300 */
    jal x0, L_80004f40   # pseudo j
L_80004f1c:
    add s0,s0,sp
L_80004f20:
    lhu a5,76(s0)
L_80004f24:
    add s1,a5,s7
L_80004f28:
    addi s2,s2,1
L_80004f2c:
    lw a5,-196(s6)
L_80004f30:
    slli s2,s2,0x10
L_80004f34:
    srli s2,s2,0x10
L_80004f38:
    addi s7, s1, 0   # pseudo mv
L_80004f3c:    /* main+0x3d0 */
    bgeu s2,a5,L_80005010
L_80004f40:
    slli s0,s2,0x4
L_80004f44:
    add s1,s0,s2
L_80004f48:
    slli s1,s1,0x2
L_80004f4c:
    addi a5,s1,80
L_80004f50:
    add s1,a5,sp
L_80004f54:
    lw a5,-36(s1)
L_80004f58:
    sh zero,-4(s1)
L_80004f5c:
    andi a4,a5,1
L_80004f60:    /* main+0x34c */
    beqz a4,L_80004f8c
L_80004f64:
    lhu a2,-10(s1)
L_80004f68:
    lhu a3,0(s8)
L_80004f6c:    /* main+0x34c */
    beq a2,a3,L_80004f8c
L_80004f70:
    addi a1, s2, 0   # pseudo mv
L_80004f74:
    addi a0, s9, 0   # pseudo mv
L_80004f78:    /* printf */
    jal L_80003c78
L_80004f7c:
    lhu a4,-4(s1)
L_80004f80:
    lw a5,-36(s1)
L_80004f84:    /* _tbss_end+0xffffbd */
    addi a4,a4,1  # L_1000001 # <_tbss_end+0xffffbd>
L_80004f88:
    sh a4,-4(s1)
L_80004f8c:
    andi a4,a5,2
L_80004f90:    /* main+0x38c */
    beqz a4,L_80004fcc
L_80004f94:
    add s1,s0,s2
L_80004f98:
    slli s1,s1,0x2
L_80004f9c:
    addi a4,s1,80
L_80004fa0:
    add s1,a4,sp
L_80004fa4:
    lhu a2,-8(s1)
L_80004fa8:
    lhu a3,12(s8)
L_80004fac:    /* main+0x38c */
    beq a2,a3,L_80004fcc
L_80004fb0:
    addi a1, s2, 0   # pseudo mv
L_80004fb4:    /* main+0x894 */
    addi a0,s5,1236  # L_800054d4 # <main+0x894>
L_80004fb8:    /* printf */
    jal L_80003c78
L_80004fbc:
    lhu a4,-4(s1)
L_80004fc0:
    lw a5,-36(s1)
L_80004fc4:
    addi a4,a4,1
L_80004fc8:
    sh a4,-4(s1)
L_80004fcc:
    add s0,s0,s2
L_80004fd0:
    andi a5,a5,4
L_80004fd4:
    slli s0,s0,0x2
L_80004fd8:    /* main+0x2dc */
    beqz a5,L_80004f1c
L_80004fdc:
    addi a5,s0,80
L_80004fe0:
    add s0,a5,sp
L_80004fe4:
    lhu a2,-6(s0)
L_80004fe8:
    lhu a3,24(s8)
L_80004fec:    /* main+0x658 */
    bne a2,a3,L_80005298
L_80004ff0:
    lhu a5,-4(s0)
L_80004ff4:
    addi s2,s2,1
L_80004ff8:
    slli s2,s2,0x10
L_80004ffc:
    add s1,a5,s7
L_80005000:
    lw a5,-196(s6)
L_80005004:
    srli s2,s2,0x10
L_80005008:
    addi s7, s1, 0   # pseudo mv
L_8000500c:    /* main+0x300 */
    bltu s2,a5,L_80004f40
L_80005010:
    lw s8,88(sp)
L_80005014:
    lw s9,84(sp)
L_80005018:    /* main+0x3fc */
    jal x0, L_8000503c   # pseudo j
L_8000501c:
    lh a5,16(sp)
L_80005020:    /* main+0x94 */
    bnez a5,L_80004cd4
L_80005024:
    addi a5, x0, 102   # pseudo li
L_80005028:
    sh a5,16(sp)
L_8000502c:    /* main+0x94 */
    jal x0, L_80004cd4   # pseudo j
L_80005030:
    lui a5,0x10
L_80005034:    /* _tbss_end+0xffbb */
    addi s1,a5,-1  # ffff # <_tbss_end+0xffbb>
L_80005038:
    lui s6,0x80006
L_8000503c:    /* check_data_types */
    jal L_80003458
L_80005040:
    lw a1,36(sp)
L_80005044:
    add s1,a0,s1
L_80005048:
    lui a0,0x80005
L_8000504c:    /* main+0x8f8 */
    addi a0,a0,1336  # L_80005538 # <main+0x8f8>
L_80005050:    /* printf */
    jal L_80003c78
L_80005054:
    lui a0,0x80005
L_80005058:
    addi a1, s3, 0   # pseudo mv
L_8000505c:    /* main+0x910 */
    addi a0,a0,1360  # L_80005550 # <main+0x910>
L_80005060:    /* printf */
    jal L_80003c78
L_80005064:
    addi a0, s3, 0   # pseudo mv
L_80005068:    /* time_in_secs */
    jal L_800034a4
L_8000506c:
    addi a1, a0, 0   # pseudo mv
L_80005070:
    lui a0,0x80005
L_80005074:    /* main+0x928 */
    addi a0,a0,1384  # L_80005568 # <main+0x928>
L_80005078:    /* printf */
    jal L_80003c78
L_8000507c:
    addi a0, s3, 0   # pseudo mv
L_80005080:    /* time_in_secs */
    jal L_800034a4
L_80005084:    /* main+0x694 */
    bnez a0,L_800052d4
L_80005088:
    addi a0, s3, 0   # pseudo mv
L_8000508c:    /* time_in_secs */
    jal L_800034a4
L_80005090:
    addi a5, x0, 9   # pseudo li
L_80005094:    /* main+0x680 */
    bgeu a5,a0,L_800052c0
L_80005098:    /* default_num_contexts */
    lw a1,-196(s6)  # L_80005f3c # <default_num_contexts>
L_8000509c:
    lw a0,40(sp)
L_800050a0:
    slli s1,s1,0x10
L_800050a4:
    srai s1,s1,0x10
L_800050a8:    /* __mulsi3 */
    jal L_80004b68
L_800050ac:
    addi a1, a0, 0   # pseudo mv
L_800050b0:
    lui a0,0x80005
L_800050b4:    /* main+0x998 */
    addi a0,a0,1496  # L_800055d8 # <main+0x998>
L_800050b8:    /* printf */
    jal L_80003c78
L_800050bc:
    lui a1,0x80005
L_800050c0:
    lui a0,0x80005
L_800050c4:    /* main+0x9b0 */
    addi a1,a1,1520  # L_800055f0 # <main+0x9b0>
L_800050c8:    /* main+0x9bc */
    addi a0,a0,1532  # L_800055fc # <main+0x9bc>
L_800050cc:    /* printf */
    jal L_80003c78
L_800050d0:
    lui a1,0x80005
L_800050d4:
    lui a0,0x80005
L_800050d8:    /* main+0x9d4 */
    addi a1,a1,1556  # L_80005614 # <main+0x9d4>
L_800050dc:    /* main+0xa84 */
    addi a0,a0,1732  # L_800056c4 # <main+0xa84>
L_800050e0:    /* printf */
    jal L_80003c78
L_800050e4:
    lui a1,0x80005
L_800050e8:
    lui a0,0x80005
L_800050ec:    /* main+0xa9c */
    addi a1,a1,1756  # L_800056dc # <main+0xa9c>
L_800050f0:    /* main+0xaec */
    addi a0,a0,1836  # L_8000572c # <main+0xaec>
L_800050f4:    /* printf */
    jal L_80003c78
L_800050f8:
    lui a0,0x80005
L_800050fc:
    addi a1, s4, 0   # pseudo mv
L_80005100:    /* main+0xb04 */
    addi a0,a0,1860  # L_80005744 # <main+0xb04>
L_80005104:    /* printf */
    jal L_80003c78
L_80005108:
    lw a5,44(sp)
L_8000510c:
    andi a4,a5,1
L_80005110:    /* main+0x520 */
    beqz a4,L_80005160
L_80005114:
    lw a4,-196(s6)
L_80005118:    /* main+0x520 */
    beqz a4,L_80005160
L_8000511c:
    lui s2,0x80005
L_80005120:    /* main+0xb20 */
    addi s2,s2,1888  # L_80005760 # <main+0xb20>
L_80005124:
    addi s0, x0, 0   # pseudo li
L_80005128:
    slli a5,s0,0x4
L_8000512c:
    add a5,a5,s0
L_80005130:
    slli a5,a5,0x2
L_80005134:
    add a5,a5,sp
L_80005138:
    lhu a2,70(a5)
L_8000513c:
    addi a1, s0, 0   # pseudo mv
L_80005140:
    addi a0, s2, 0   # pseudo mv
L_80005144:    /* printf */
    jal L_80003c78
L_80005148:
    addi s0,s0,1
L_8000514c:
    lw a5,-196(s6)
L_80005150:
    slli s0,s0,0x10
L_80005154:
    srli s0,s0,0x10
L_80005158:    /* main+0x4e8 */
    bltu s0,a5,L_80005128
L_8000515c:
    lw a5,44(sp)
L_80005160:
    andi a4,a5,2
L_80005164:    /* main+0x574 */
    beqz a4,L_800051b4
L_80005168:
    lw a4,-196(s6)
L_8000516c:    /* main+0x750 */
    beqz a4,L_80005390
L_80005170:
    lui s2,0x80005
L_80005174:    /* main+0xb3c */
    addi s2,s2,1916  # L_8000577c # <main+0xb3c>
L_80005178:
    addi s0, x0, 0   # pseudo li
L_8000517c:
    slli a5,s0,0x4
L_80005180:
    add a5,a5,s0
L_80005184:
    slli a5,a5,0x2
L_80005188:
    add a5,a5,sp
L_8000518c:
    lhu a2,72(a5)
L_80005190:
    addi a1, s0, 0   # pseudo mv
L_80005194:
    addi a0, s2, 0   # pseudo mv
L_80005198:    /* printf */
    jal L_80003c78
L_8000519c:
    addi s0,s0,1
L_800051a0:
    lw a5,-196(s6)
L_800051a4:
    slli s0,s0,0x10
L_800051a8:
    srli s0,s0,0x10
L_800051ac:    /* main+0x53c */
    bltu s0,a5,L_8000517c
L_800051b0:
    lw a5,44(sp)
L_800051b4:
    andi a5,a5,4
L_800051b8:    /* main+0x5c4 */
    beqz a5,L_80005204
L_800051bc:
    lw a5,-196(s6)
L_800051c0:    /* main+0x60c */
    beqz a5,L_8000524c
L_800051c4:
    lui s2,0x80005
L_800051c8:    /* main+0xb58 */
    addi s2,s2,1944  # L_80005798 # <main+0xb58>
L_800051cc:
    addi s0, x0, 0   # pseudo li
L_800051d0:
    slli a5,s0,0x4
L_800051d4:
    add a5,a5,s0
L_800051d8:
    slli a5,a5,0x2
L_800051dc:
    add a5,a5,sp
L_800051e0:
    lhu a2,74(a5)
L_800051e4:
    addi a1, s0, 0   # pseudo mv
L_800051e8:
    addi a0, s2, 0   # pseudo mv
L_800051ec:    /* printf */
    jal L_80003c78
L_800051f0:
    addi s0,s0,1
L_800051f4:
    lw a5,-196(s6)
L_800051f8:
    slli s0,s0,0x10
L_800051fc:
    srli s0,s0,0x10
L_80005200:    /* main+0x590 */
    bltu s0,a5,L_800051d0
L_80005204:
    lw a5,-196(s6)
L_80005208:
    lui s2,0x80005
L_8000520c:    /* main+0xb74 */
    addi s2,s2,1972  # L_800057b4 # <main+0xb74>
L_80005210:
    addi s0, x0, 0   # pseudo li
L_80005214:    /* main+0x60c */
    beqz a5,L_8000524c
L_80005218:
    slli a5,s0,0x4
L_8000521c:
    add a5,a5,s0
L_80005220:
    slli a5,a5,0x2
L_80005224:
    add a5,a5,sp
L_80005228:
    lhu a2,68(a5)
L_8000522c:
    addi a1, s0, 0   # pseudo mv
L_80005230:
    addi a0, s2, 0   # pseudo mv
L_80005234:    /* printf */
    jal L_80003c78
L_80005238:
    addi s0,s0,1
L_8000523c:
    lw a5,-196(s6)
L_80005240:
    slli s0,s0,0x10
L_80005244:
    srli s0,s0,0x10
L_80005248:    /* main+0x5d8 */
    bltu s0,a5,L_80005218
L_8000524c:    /* main+0x6cc */
    beqz s1,L_8000530c
L_80005250:    /* main+0x6dc */
    blez s1,L_8000531c
L_80005254:
    lui a0,0x80006
L_80005258:    /* main+0xc3c */
    addi a0,a0,-1924  # L_8000587c # <main+0xc3c>
L_8000525c:    /* puts */
    jal L_80003ccc
L_80005260:
    addi a0,sp,78
L_80005264:    /* portable_fini */
    jal L_800034d0
L_80005268:
    lw ra,124(sp)
L_8000526c:
    lw s0,120(sp)
L_80005270:
    lw s1,116(sp)
L_80005274:
    lw s2,112(sp)
L_80005278:
    lw s3,108(sp)
L_8000527c:
    lw s4,104(sp)
L_80005280:
    lw s5,100(sp)
L_80005284:
    lw s6,96(sp)
L_80005288:
    lw s7,92(sp)
L_8000528c:
    addi a0, x0, 0   # pseudo li
L_80005290:
    addi sp,sp,128
L_80005294:
    jalr x0, 0(ra)   # pseudo ret
L_80005298:
    lui a0,0x80005
L_8000529c:    /* main+0x8c8 */
    addi a0,a0,1288  # L_80005508 # <main+0x8c8>
L_800052a0:
    addi a1, s2, 0   # pseudo mv
L_800052a4:    /* printf */
    jal L_80003c78
L_800052a8:
    lhu a5,-4(s0)
L_800052ac:
    addi a5,a5,1
L_800052b0:
    slli a5,a5,0x10
L_800052b4:
    srli a5,a5,0x10
L_800052b8:
    sh a5,-4(s0)
L_800052bc:    /* main+0x2e4 */
    jal x0, L_80004f24   # pseudo j
L_800052c0:
    lui a0,0x80005
L_800052c4:    /* main+0x958 */
    addi a0,a0,1432  # L_80005598 # <main+0x958>
L_800052c8:    /* puts */
    jal L_80003ccc
L_800052cc:
    addi s1,s1,1
L_800052d0:    /* main+0x458 */
    jal x0, L_80005098   # pseudo j
L_800052d4:
    lw a1,-196(s6)
L_800052d8:
    lw a0,40(sp)
L_800052dc:    /* __mulsi3 */
    jal L_80004b68
L_800052e0:
    addi s0, a0, 0   # pseudo mv
L_800052e4:
    addi a0, s3, 0   # pseudo mv
L_800052e8:    /* time_in_secs */
    jal L_800034a4
L_800052ec:
    addi a1, a0, 0   # pseudo mv
L_800052f0:
    addi a0, s0, 0   # pseudo mv
L_800052f4:    /* __hidden___udivsi3 */
    jal L_80004b94
L_800052f8:
    addi a1, a0, 0   # pseudo mv
L_800052fc:
    lui a0,0x80005
L_80005300:    /* main+0x940 */
    addi a0,a0,1408  # L_80005580 # <main+0x940>
L_80005304:    /* printf */
    jal L_80003c78
L_80005308:    /* main+0x448 */
    jal x0, L_80005088   # pseudo j
L_8000530c:
    lui a0,0x80005
L_80005310:    /* main+0xb90 */
    addi a0,a0,2000  # L_800057d0 # <main+0xb90>
L_80005314:    /* puts */
    jal L_80003ccc
L_80005318:    /* main+0x620 */
    jal x0, L_80005260   # pseudo j
L_8000531c:
    lui a0,0x80006
L_80005320:    /* main+0xbd8 */
    addi a0,a0,-2024  # L_80005818 # <main+0xbd8>
L_80005324:    /* puts */
    jal L_80003ccc
L_80005328:    /* main+0x620 */
    jal x0, L_80005260   # pseudo j
L_8000532c:
    lui a0,0x80005
L_80005330:    /* main+0x838 */
    addi a0,a0,1144  # L_80005478 # <main+0x838>
L_80005334:    /* puts */
    jal L_80003ccc
L_80005338:
    addi a5, x0, 4   # pseudo li
L_8000533c:    /* main+0x2a0 */
    jal x0, L_80004ee0   # pseudo j
L_80005340:
    lui a0,0x80005
L_80005344:    /* main+0x7ac */
    addi a0,a0,1004  # L_800053ec # <main+0x7ac>
L_80005348:    /* puts */
    jal L_80003ccc
L_8000534c:
    addi a5, x0, 1   # pseudo li
L_80005350:    /* main+0x2a0 */
    jal x0, L_80004ee0   # pseudo j
L_80005354:
    lui a0,0x80005
L_80005358:    /* main+0x780 */
    addi a0,a0,960  # L_800053c0 # <main+0x780>
L_8000535c:    /* puts */
    jal L_80003ccc
L_80005360:
    addi a5, x0, 0   # pseudo li
L_80005364:    /* main+0x2a0 */
    jal x0, L_80004ee0   # pseudo j
L_80005368:
    lh a5,16(sp)
L_8000536c:    /* main+0x94 */
    bnez a5,L_80004cd4
L_80005370:
    lui a5,0x34153
L_80005374:    /* _tbss_end+0x341533d1 */
    addi a5,a5,1045  # L_34153415 # <_tbss_end+0x341533d1>
L_80005378:
    addi a4, x0, 102   # pseudo li
L_8000537c:
    sw a5,12(sp)
L_80005380:
    sh a4,16(sp)
L_80005384:    /* main+0x94 */
    jal x0, L_80004cd4   # pseudo j
L_80005388:
    addi s1, x0, 0   # pseudo li
L_8000538c:    /* main+0x3fc */
    jal x0, L_8000503c   # pseudo j
L_80005390:
    andi a5,a5,4
L_80005394:    /* main+0x5c4 */
    beqz a5,L_80005204
L_80005398:    /* main+0x60c */
    jal x0, L_8000524c   # pseudo j
L_8000539c:
    lui a0,0x80006
L_800053a0:
    addi sp,sp,-16
L_800053a4:    /* main+0xd30 */
    addi a0,a0,-1680  # L_80005970 # <main+0xd30>
L_800053a8:
    sw ra,12(sp)
L_800053ac:    /* printstr */
    jal L_80003b4c
L_800053b0:
    lw ra,12(sp)
L_800053b4:
    addi a0, x0, -1   # pseudo li
L_800053b8:
    addi sp,sp,16
L_800053bc:
    jalr x0, 0(ra)   # pseudo ret

halt:
    addi x0, x0, 0
done:
    jal done
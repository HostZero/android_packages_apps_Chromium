.class public final Lcom/google/ipc/invalidation/ticl/a/N;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Z

.field private final j:I

.field private final k:Lcom/google/ipc/invalidation/ticl/a/ac;

.field private final l:Z

.field private final m:I

.field private final n:Z


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/ipc/invalidation/ticl/a/ac;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 2696
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2697
    const/4 v0, 0x0

    .line 2698
    const-string/jumbo v1, "version"

    invoke-static {v1, p1}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2699
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 2700
    if-eqz p2, :cond_0

    .line 2701
    const/4 v0, 0x1

    .line 2702
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    .line 2706
    :goto_0
    if-eqz p3, :cond_1

    .line 2707
    or-int/lit8 v0, v0, 0x2

    .line 2708
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    .line 2712
    :goto_1
    if-eqz p4, :cond_2

    .line 2713
    or-int/lit8 v0, v0, 0x4

    .line 2714
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    .line 2718
    :goto_2
    if-eqz p5, :cond_3

    .line 2719
    or-int/lit8 v0, v0, 0x8

    .line 2720
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    .line 2724
    :goto_3
    if-eqz p6, :cond_4

    .line 2725
    or-int/lit8 v0, v0, 0x10

    .line 2726
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    .line 2730
    :goto_4
    if-eqz p7, :cond_5

    .line 2731
    or-int/lit8 v0, v0, 0x20

    .line 2732
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    .line 2736
    :goto_5
    if-eqz p8, :cond_6

    .line 2737
    or-int/lit8 v0, v0, 0x40

    .line 2738
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->i:Z

    .line 2742
    :goto_6
    if-eqz p9, :cond_7

    .line 2743
    or-int/lit16 v0, v0, 0x80

    .line 2744
    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    .line 2748
    :goto_7
    const-string/jumbo v1, "protocol_handler_config"

    invoke-static {v1, p10}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2749
    iput-object p10, p0, Lcom/google/ipc/invalidation/ticl/a/N;->k:Lcom/google/ipc/invalidation/ticl/a/ac;

    .line 2750
    if-eqz p11, :cond_8

    .line 2751
    or-int/lit16 v0, v0, 0x100

    .line 2752
    invoke-virtual {p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    .line 2756
    :goto_8
    if-eqz p12, :cond_9

    .line 2757
    or-int/lit16 v0, v0, 0x200

    .line 2758
    invoke-virtual {p12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    .line 2762
    :goto_9
    if-eqz p13, :cond_a

    .line 2763
    or-int/lit16 v0, v0, 0x400

    .line 2764
    invoke-virtual {p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    .line 2768
    :goto_a
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

    .line 2769
    return-void

    .line 2704
    :cond_0
    const v1, 0xea60

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    goto :goto_0

    .line 2710
    :cond_1
    const/16 v1, 0x2710

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    goto :goto_1

    .line 2716
    :cond_2
    const v1, 0x124f80

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    goto :goto_2

    .line 2722
    :cond_3
    const v1, 0x1499700

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    goto :goto_3

    .line 2728
    :cond_4
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    goto :goto_4

    .line 2734
    :cond_5
    const/16 v1, 0x14

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    goto :goto_5

    .line 2740
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->i:Z

    goto :goto_6

    .line 2746
    :cond_7
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    goto :goto_7

    .line 2754
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    goto :goto_8

    .line 2760
    :cond_9
    const v1, 0xea60

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    goto :goto_9

    .line 2766
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    goto :goto_a
.end method

.method synthetic constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/ipc/invalidation/ticl/a/ac;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;B)V
    .locals 0

    .prologue
    .line 2629
    invoke-direct/range {p0 .. p13}, Lcom/google/ipc/invalidation/ticl/a/N;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/ipc/invalidation/ticl/a/ac;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method static a(Lcom/google/a/a/a/a/h;)Lcom/google/ipc/invalidation/ticl/a/N;
    .locals 14

    .prologue
    .line 2957
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2958
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/N;

    iget-object v1, p0, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/a/h;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/a/a/a/a/h;->c:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/a/a/a/a/h;->d:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/a/a/a/a/h;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/a/a/a/a/h;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/google/a/a/a/a/h;->g:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/google/a/a/a/a/h;->h:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/google/a/a/a/a/h;->i:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    invoke-static {v10}, Lcom/google/ipc/invalidation/ticl/a/ac;->a(Lcom/google/a/a/a/a/u;)Lcom/google/ipc/invalidation/ticl/a/ac;

    move-result-object v10

    iget-object v11, p0, Lcom/google/a/a/a/a/h;->k:Ljava/lang/Boolean;

    iget-object v12, p0, Lcom/google/a/a/a/a/h;->l:Ljava/lang/Integer;

    iget-object v13, p0, Lcom/google/a/a/a/a/h;->m:Ljava/lang/Boolean;

    invoke-direct/range {v0 .. v13}, Lcom/google/ipc/invalidation/ticl/a/N;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/ipc/invalidation/ticl/a/ac;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private o()Z
    .locals 4

    .prologue
    .line 2774
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private p()Z
    .locals 4

    .prologue
    .line 2777
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private q()Z
    .locals 4

    .prologue
    .line 2780
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private r()Z
    .locals 4

    .prologue
    .line 2783
    const-wide/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private s()Z
    .locals 4

    .prologue
    .line 2786
    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private t()Z
    .locals 4

    .prologue
    .line 2789
    const-wide/16 v0, 0x20

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private v()Z
    .locals 4

    .prologue
    .line 2792
    const-wide/16 v0, 0x40

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private w()Z
    .locals 4

    .prologue
    .line 2795
    const-wide/16 v0, 0x80

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private x()Z
    .locals 4

    .prologue
    .line 2800
    const-wide/16 v0, 0x100

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private y()Z
    .locals 4

    .prologue
    .line 2803
    const-wide/16 v0, 0x200

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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

.method private z()Z
    .locals 4

    .prologue
    .line 2806
    const-wide/16 v0, 0x400

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

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
.method public final a()I
    .locals 1

    .prologue
    .line 2773
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 2907
    const-string/jumbo v0, "<ClientConfigP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2908
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 2909
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    const-string/jumbo v0, " network_timeout_delay_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2912
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2913
    const-string/jumbo v0, " write_retry_delay_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2915
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2916
    const-string/jumbo v0, " heartbeat_interval_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2918
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2919
    const-string/jumbo v0, " perf_counter_delay_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2921
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2922
    const-string/jumbo v0, " max_exponential_backoff_factor="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2924
    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2925
    const-string/jumbo v0, " smear_percent="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2927
    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2928
    const-string/jumbo v0, " is_transient="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 2930
    :cond_6
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2931
    const-string/jumbo v0, " initial_persistent_heartbeat_delay_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2933
    :cond_7
    const-string/jumbo v0, " protocol_handler_config="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->k:Lcom/google/ipc/invalidation/ticl/a/ac;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 2934
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2935
    const-string/jumbo v0, " channel_supports_offline_delivery="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 2937
    :cond_8
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2938
    const-string/jumbo v0, " offline_heartbeat_threshold_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2940
    :cond_9
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->z()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2941
    const-string/jumbo v0, " allow_suppression="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 2943
    :cond_a
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2944
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 2867
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

    .line 3214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 2868
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2869
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2870
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    add-int/2addr v0, v1

    .line 2872
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2873
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    add-int/2addr v0, v1

    .line 2875
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2876
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    add-int/2addr v0, v1

    .line 2878
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2879
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    add-int/2addr v0, v1

    .line 2881
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2882
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    add-int/2addr v0, v1

    .line 2884
    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->t()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2885
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    add-int/2addr v0, v1

    .line 2887
    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->v()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2888
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->i:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 2890
    :cond_6
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->w()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2891
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    add-int/2addr v0, v1

    .line 2893
    :cond_7
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->k:Lcom/google/ipc/invalidation/ticl/a/ac;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ac;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2894
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->x()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2895
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 2897
    :cond_8
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->y()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2898
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    add-int/2addr v0, v1

    .line 2900
    :cond_9
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->z()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2901
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 2903
    :cond_a
    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 2776
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 2779
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 2782
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2847
    if-ne p0, p1, :cond_1

    .line 2850
    :cond_0
    :goto_0
    return v0

    .line 2848
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/N;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2849
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/N;

    .line 2850
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/N;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    if-ne v2, v3, :cond_d

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    if-ne v2, v3, :cond_d

    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    if-ne v2, v3, :cond_d

    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->r()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    if-ne v2, v3, :cond_d

    :cond_6
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->s()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    if-ne v2, v3, :cond_d

    :cond_7
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->t()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    if-ne v2, v3, :cond_d

    :cond_8
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->v()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->i:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->i:Z

    if-ne v2, v3, :cond_d

    :cond_9
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->w()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    if-ne v2, v3, :cond_d

    :cond_a
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->k:Lcom/google/ipc/invalidation/ticl/a/ac;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->k:Lcom/google/ipc/invalidation/ticl/a/ac;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->x()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    if-ne v2, v3, :cond_d

    :cond_b
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->y()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    if-ne v2, v3, :cond_d

    :cond_c
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    if-eq v2, v3, :cond_0

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 2785
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 2788
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 2794
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    return v0
.end method

.method public final i()Lcom/google/ipc/invalidation/ticl/a/ac;
    .locals 1

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->k:Lcom/google/ipc/invalidation/ticl/a/ac;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 2799
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 2802
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 2805
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    return v0
.end method

.method public final m()Lcom/google/ipc/invalidation/ticl/a/O;
    .locals 3

    .prologue
    .line 2809
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/O;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/N;->k:Lcom/google/ipc/invalidation/ticl/a/ac;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/O;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/ac;)V

    .line 2810
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2811
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->a:Ljava/lang/Integer;

    .line 2813
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2814
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->b:Ljava/lang/Integer;

    .line 2816
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2817
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->c:Ljava/lang/Integer;

    .line 2819
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2820
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->d:Ljava/lang/Integer;

    .line 2822
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2823
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->e:Ljava/lang/Integer;

    .line 2825
    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->t()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2826
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->f:Ljava/lang/Integer;

    .line 2828
    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->v()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2829
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->g:Ljava/lang/Boolean;

    .line 2831
    :cond_6
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->w()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2832
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->h:Ljava/lang/Integer;

    .line 2834
    :cond_7
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->x()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2835
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->i:Ljava/lang/Boolean;

    .line 2837
    :cond_8
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->y()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2838
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->j:Ljava/lang/Integer;

    .line 2840
    :cond_9
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->z()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2841
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->k:Ljava/lang/Boolean;

    .line 2843
    :cond_a
    return-object v0
.end method

.method final n()Lcom/google/a/a/a/a/h;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2978
    new-instance v2, Lcom/google/a/a/a/a/h;

    invoke-direct {v2}, Lcom/google/a/a/a/a/h;-><init>()V

    .line 2979
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->b:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/h;->a:Lcom/google/a/a/a/a/J;

    .line 2980
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->b:Ljava/lang/Integer;

    .line 2981
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->c:Ljava/lang/Integer;

    .line 2982
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->d:Ljava/lang/Integer;

    .line 2983
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->e:Ljava/lang/Integer;

    .line 2984
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->f:Ljava/lang/Integer;

    .line 2985
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->g:Ljava/lang/Integer;

    .line 2986
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_6
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->h:Ljava/lang/Boolean;

    .line 2987
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->i:Ljava/lang/Integer;

    .line 2988
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->k:Lcom/google/ipc/invalidation/ticl/a/ac;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ac;->c()Lcom/google/a/a/a/a/u;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/h;->j:Lcom/google/a/a/a/a/u;

    .line 2989
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->x()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_8
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->k:Ljava/lang/Boolean;

    .line 2990
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_9
    iput-object v0, v2, Lcom/google/a/a/a/a/h;->l:Ljava/lang/Integer;

    .line 2991
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/N;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/N;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/h;->m:Ljava/lang/Boolean;

    .line 2992
    return-object v2

    :cond_1
    move-object v0, v1

    .line 2980
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 2981
    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    .line 2982
    goto/16 :goto_2

    :cond_4
    move-object v0, v1

    .line 2983
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 2984
    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 2985
    goto :goto_5

    :cond_7
    move-object v0, v1

    .line 2986
    goto :goto_6

    :cond_8
    move-object v0, v1

    .line 2987
    goto :goto_7

    :cond_9
    move-object v0, v1

    .line 2989
    goto :goto_8

    :cond_a
    move-object v0, v1

    .line 2990
    goto :goto_9
.end method

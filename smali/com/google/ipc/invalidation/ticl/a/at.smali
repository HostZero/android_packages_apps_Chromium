.class public final Lcom/google/ipc/invalidation/ticl/a/at;
.super Lcom/google/ipc/invalidation/b/n;
.source "JavaClient.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/K;

.field private final c:Lcom/google/ipc/invalidation/b/c;

.field private final d:Lcom/google/ipc/invalidation/b/c;

.field private final e:Z

.field private final f:J

.field private final g:Z

.field private final h:Lcom/google/ipc/invalidation/ticl/a/av;

.field private final i:Lcom/google/ipc/invalidation/ticl/a/ax;

.field private final j:Lcom/google/ipc/invalidation/ticl/a/aw;

.field private final k:Lcom/google/ipc/invalidation/ticl/a/aw;

.field private final l:Lcom/google/ipc/invalidation/ticl/a/aw;

.field private final m:Lcom/google/ipc/invalidation/ticl/a/aw;

.field private final n:Lcom/google/ipc/invalidation/ticl/a/aw;

.field private final o:Lcom/google/ipc/invalidation/ticl/a/J;

.field private final p:Lcom/google/ipc/invalidation/ticl/a/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v1, 0x0

    .line 678
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/at;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    move-object v13, v1

    move-object v14, v1

    move-object v15, v1

    invoke-direct/range {v0 .. v15}, Lcom/google/ipc/invalidation/ticl/a/at;-><init>(Lcom/google/ipc/invalidation/ticl/a/K;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/av;Lcom/google/ipc/invalidation/ticl/a/ax;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/ticl/a/ay;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/K;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/av;Lcom/google/ipc/invalidation/ticl/a/ax;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/ticl/a/ay;)V
    .locals 6

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 712
    const/4 v2, 0x0

    .line 713
    if-eqz p1, :cond_0

    .line 714
    const/4 v2, 0x1

    .line 715
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->b:Lcom/google/ipc/invalidation/ticl/a/K;

    .line 719
    :goto_0
    if-eqz p2, :cond_1

    .line 720
    or-int/lit8 v2, v2, 0x2

    .line 721
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->c:Lcom/google/ipc/invalidation/b/c;

    .line 725
    :goto_1
    if-eqz p3, :cond_2

    .line 726
    or-int/lit8 v2, v2, 0x4

    .line 727
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->d:Lcom/google/ipc/invalidation/b/c;

    .line 731
    :goto_2
    if-eqz p4, :cond_3

    .line 732
    or-int/lit8 v2, v2, 0x8

    .line 733
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->e:Z

    .line 737
    :goto_3
    if-eqz p5, :cond_4

    .line 738
    or-int/lit8 v2, v2, 0x10

    .line 739
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/at;->f:J

    .line 743
    :goto_4
    if-eqz p6, :cond_5

    .line 744
    or-int/lit8 v2, v2, 0x20

    .line 745
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->g:Z

    .line 749
    :goto_5
    if-eqz p7, :cond_6

    .line 750
    or-int/lit8 v2, v2, 0x40

    .line 751
    iput-object p7, p0, Lcom/google/ipc/invalidation/ticl/a/at;->h:Lcom/google/ipc/invalidation/ticl/a/av;

    .line 755
    :goto_6
    if-eqz p8, :cond_7

    .line 756
    or-int/lit16 v2, v2, 0x80

    .line 757
    iput-object p8, p0, Lcom/google/ipc/invalidation/ticl/a/at;->i:Lcom/google/ipc/invalidation/ticl/a/ax;

    .line 761
    :goto_7
    if-eqz p9, :cond_8

    .line 762
    or-int/lit16 v2, v2, 0x100

    .line 763
    iput-object p9, p0, Lcom/google/ipc/invalidation/ticl/a/at;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 767
    :goto_8
    if-eqz p10, :cond_9

    .line 768
    or-int/lit16 v2, v2, 0x200

    .line 769
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 773
    :goto_9
    if-eqz p11, :cond_a

    .line 774
    or-int/lit16 v2, v2, 0x400

    .line 775
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 779
    :goto_a
    if-eqz p12, :cond_b

    .line 780
    or-int/lit16 v2, v2, 0x800

    .line 781
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 785
    :goto_b
    if-eqz p13, :cond_c

    .line 786
    or-int/lit16 v2, v2, 0x1000

    .line 787
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->n:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 791
    :goto_c
    if-eqz p14, :cond_d

    .line 792
    or-int/lit16 v2, v2, 0x2000

    .line 793
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->o:Lcom/google/ipc/invalidation/ticl/a/J;

    .line 797
    :goto_d
    if-eqz p15, :cond_e

    .line 798
    or-int/lit16 v2, v2, 0x4000

    .line 799
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->p:Lcom/google/ipc/invalidation/ticl/a/ay;

    .line 803
    :goto_e
    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

    .line 804
    return-void

    .line 717
    :cond_0
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/K;->a:Lcom/google/ipc/invalidation/ticl/a/K;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->b:Lcom/google/ipc/invalidation/ticl/a/K;

    goto :goto_0

    .line 723
    :cond_1
    sget-object v3, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->c:Lcom/google/ipc/invalidation/b/c;

    goto :goto_1

    .line 729
    :cond_2
    sget-object v3, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->d:Lcom/google/ipc/invalidation/b/c;

    goto :goto_2

    .line 735
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->e:Z

    goto :goto_3

    .line 741
    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/at;->f:J

    goto :goto_4

    .line 747
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->g:Z

    goto :goto_5

    .line 753
    :cond_6
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/av;->a:Lcom/google/ipc/invalidation/ticl/a/av;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->h:Lcom/google/ipc/invalidation/ticl/a/av;

    goto :goto_6

    .line 759
    :cond_7
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/ax;->a:Lcom/google/ipc/invalidation/ticl/a/ax;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->i:Lcom/google/ipc/invalidation/ticl/a/ax;

    goto :goto_7

    .line 765
    :cond_8
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/aw;->a:Lcom/google/ipc/invalidation/ticl/a/aw;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    goto :goto_8

    .line 771
    :cond_9
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/aw;->a:Lcom/google/ipc/invalidation/ticl/a/aw;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    goto :goto_9

    .line 777
    :cond_a
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/aw;->a:Lcom/google/ipc/invalidation/ticl/a/aw;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    goto :goto_a

    .line 783
    :cond_b
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/aw;->a:Lcom/google/ipc/invalidation/ticl/a/aw;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    goto :goto_b

    .line 789
    :cond_c
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/aw;->a:Lcom/google/ipc/invalidation/ticl/a/aw;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->n:Lcom/google/ipc/invalidation/ticl/a/aw;

    goto :goto_c

    .line 795
    :cond_d
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/J;->a:Lcom/google/ipc/invalidation/ticl/a/J;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->o:Lcom/google/ipc/invalidation/ticl/a/J;

    goto :goto_d

    .line 801
    :cond_e
    sget-object v3, Lcom/google/ipc/invalidation/ticl/a/ay;->a:Lcom/google/ipc/invalidation/ticl/a/ay;

    iput-object v3, p0, Lcom/google/ipc/invalidation/ticl/a/at;->p:Lcom/google/ipc/invalidation/ticl/a/ay;

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/google/ipc/invalidation/ticl/a/K;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/av;Lcom/google/ipc/invalidation/ticl/a/ax;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/ticl/a/ay;B)V
    .locals 0

    .prologue
    .line 635
    invoke-direct/range {p0 .. p15}, Lcom/google/ipc/invalidation/ticl/a/at;-><init>(Lcom/google/ipc/invalidation/ticl/a/K;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/av;Lcom/google/ipc/invalidation/ticl/a/ax;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/ticl/a/ay;)V

    return-void
.end method

.method private A()Z
    .locals 4

    .prologue
    .line 828
    const-wide/16 v0, 0x80

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method private B()Z
    .locals 4

    .prologue
    .line 831
    const-wide/16 v0, 0x100

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method private C()Z
    .locals 4

    .prologue
    .line 834
    const-wide/16 v0, 0x200

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method private D()Z
    .locals 4

    .prologue
    .line 837
    const-wide/16 v0, 0x400

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method private E()Z
    .locals 4

    .prologue
    .line 840
    const-wide/16 v0, 0x800

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method private F()Z
    .locals 4

    .prologue
    .line 843
    const-wide/16 v0, 0x1000

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method private G()Z
    .locals 4

    .prologue
    .line 849
    const-wide/16 v0, 0x4000

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method static a(Lcom/google/a/a/a/E;)Lcom/google/ipc/invalidation/ticl/a/at;
    .locals 17

    .prologue
    .line 1034
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 1035
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/at;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/K;->a(Lcom/google/a/a/a/a/f;)Lcom/google/ipc/invalidation/ticl/a/K;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/a/a/a/E;->b:[B

    invoke-static {v3}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/a/a/a/E;->c:[B

    invoke-static {v4}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/a/a/a/E;->d:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/a/a/a/E;->e:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/a/a/a/E;->f:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    invoke-static {v8}, Lcom/google/ipc/invalidation/ticl/a/av;->a(Lcom/google/a/a/a/F;)Lcom/google/ipc/invalidation/ticl/a/av;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    invoke-static {v9}, Lcom/google/ipc/invalidation/ticl/a/ax;->a(Lcom/google/a/a/a/H;)Lcom/google/ipc/invalidation/ticl/a/ax;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    invoke-static {v10}, Lcom/google/ipc/invalidation/ticl/a/aw;->a(Lcom/google/a/a/a/G;)Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    invoke-static {v11}, Lcom/google/ipc/invalidation/ticl/a/aw;->a(Lcom/google/a/a/a/G;)Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    invoke-static {v12}, Lcom/google/ipc/invalidation/ticl/a/aw;->a(Lcom/google/a/a/a/G;)Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    invoke-static {v13}, Lcom/google/ipc/invalidation/ticl/a/aw;->a(Lcom/google/a/a/a/G;)Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    invoke-static {v14}, Lcom/google/ipc/invalidation/ticl/a/aw;->a(Lcom/google/a/a/a/G;)Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    invoke-static {v15}, Lcom/google/ipc/invalidation/ticl/a/J;->a(Lcom/google/a/a/a/a/e;)Lcom/google/ipc/invalidation/ticl/a/J;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/ipc/invalidation/ticl/a/ay;->a(Lcom/google/a/a/a/I;)Lcom/google/ipc/invalidation/ticl/a/ay;

    move-result-object v16

    invoke-direct/range {v1 .. v16}, Lcom/google/ipc/invalidation/ticl/a/at;-><init>(Lcom/google/ipc/invalidation/ticl/a/K;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/av;Lcom/google/ipc/invalidation/ticl/a/ax;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/aw;Lcom/google/ipc/invalidation/ticl/a/J;Lcom/google/ipc/invalidation/ticl/a/ay;)V

    goto :goto_0
.end method

.method private v()Z
    .locals 4

    .prologue
    .line 807
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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
    .line 816
    const-wide/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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
    .line 819
    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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
    .line 822
    const-wide/16 v0, 0x20

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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
    .line 825
    const-wide/16 v0, 0x40

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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
.method public final a()Lcom/google/ipc/invalidation/ticl/a/K;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->b:Lcom/google/ipc/invalidation/ticl/a/K;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 974
    const-string/jumbo v0, "<InvalidationClientState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 975
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    const-string/jumbo v0, " run_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->b:Lcom/google/ipc/invalidation/ticl/a/K;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    const-string/jumbo v0, " client_token="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 981
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    const-string/jumbo v0, " nonce="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->d:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 984
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 985
    const-string/jumbo v0, " should_send_registrations="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 987
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 988
    const-string/jumbo v0, " last_message_send_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 990
    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 991
    const-string/jumbo v0, " is_online="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 993
    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 994
    const-string/jumbo v0, " protocol_handler_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->h:Lcom/google/ipc/invalidation/ticl/a/av;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 996
    :cond_6
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 997
    const-string/jumbo v0, " registration_manager_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->i:Lcom/google/ipc/invalidation/ticl/a/ax;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 999
    :cond_7
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1000
    const-string/jumbo v0, " acquire_token_task_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1002
    :cond_8
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->C()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1003
    const-string/jumbo v0, " reg_sync_heartbeat_task_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1005
    :cond_9
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->D()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1006
    const-string/jumbo v0, " persistent_write_task_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1008
    :cond_a
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->E()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1009
    const-string/jumbo v0, " heartbeat_task_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1011
    :cond_b
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->F()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1012
    const-string/jumbo v0, " batching_task_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->n:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1014
    :cond_c
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1015
    const-string/jumbo v0, " last_written_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->o:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1017
    :cond_d
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->G()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1018
    const-string/jumbo v0, " statistics_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->p:Lcom/google/ipc/invalidation/ticl/a/ay;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1020
    :cond_e
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1021
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 924
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

    .line 1214
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 925
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->b:Lcom/google/ipc/invalidation/ticl/a/K;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/K;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 931
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 932
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->d:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 934
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 935
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->e:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 937
    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->x()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 938
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->f:J

    .line 2214
    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 938
    add-int/2addr v0, v1

    .line 940
    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 941
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->g:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->z()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 944
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->h:Lcom/google/ipc/invalidation/ticl/a/av;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/av;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 946
    :cond_6
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 947
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->i:Lcom/google/ipc/invalidation/ticl/a/ax;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ax;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 949
    :cond_7
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->B()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 950
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aw;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 952
    :cond_8
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->C()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 953
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aw;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 955
    :cond_9
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->D()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 956
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aw;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 958
    :cond_a
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->E()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 959
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aw;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 961
    :cond_b
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->F()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 962
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->n:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aw;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 964
    :cond_c
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->r()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 965
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->o:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/J;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 967
    :cond_d
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->G()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 968
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/at;->p:Lcom/google/ipc/invalidation/ticl/a/ay;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ay;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 970
    :cond_e
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->c:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 810
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method public final e()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->d:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 902
    if-ne p0, p1, :cond_1

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 903
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/at;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 904
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/at;

    .line 905
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->v()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->b:Lcom/google/ipc/invalidation/ticl/a/K;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->b:Lcom/google/ipc/invalidation/ticl/a/K;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_3
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_4
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->d:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->d:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->w()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->e:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->e:Z

    if-ne v2, v3, :cond_11

    :cond_6
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->x()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->f:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/at;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    :cond_7
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->y()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->g:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->g:Z

    if-ne v2, v3, :cond_11

    :cond_8
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->z()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->h:Lcom/google/ipc/invalidation/ticl/a/av;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->h:Lcom/google/ipc/invalidation/ticl/a/av;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_9
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->A()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->i:Lcom/google/ipc/invalidation/ticl/a/ax;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->i:Lcom/google/ipc/invalidation/ticl/a/ax;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_a
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->B()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_b
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->C()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_c
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->D()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_d
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->E()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_e
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->F()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->n:Lcom/google/ipc/invalidation/ticl/a/aw;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->n:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->r()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->o:Lcom/google/ipc/invalidation/ticl/a/J;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->o:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->p:Lcom/google/ipc/invalidation/ticl/a/ay;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/at;->p:Lcom/google/ipc/invalidation/ticl/a/ay;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_11
    move v0, v1

    goto/16 :goto_0
.end method

.method public final f()Z
    .locals 4

    .prologue
    .line 813
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method public final g()Z
    .locals 1

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->e:Z

    return v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 818
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->f:J

    return-wide v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->g:Z

    return v0
.end method

.method public final j()Lcom/google/ipc/invalidation/ticl/a/av;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->h:Lcom/google/ipc/invalidation/ticl/a/av;

    return-object v0
.end method

.method public final k()Lcom/google/ipc/invalidation/ticl/a/ax;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->i:Lcom/google/ipc/invalidation/ticl/a/ax;

    return-object v0
.end method

.method public final l()Lcom/google/ipc/invalidation/ticl/a/aw;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    return-object v0
.end method

.method public final m()Lcom/google/ipc/invalidation/ticl/a/aw;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    return-object v0
.end method

.method public final n()Lcom/google/ipc/invalidation/ticl/a/aw;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    return-object v0
.end method

.method public final o()Lcom/google/ipc/invalidation/ticl/a/aw;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    return-object v0
.end method

.method public final p()Lcom/google/ipc/invalidation/ticl/a/aw;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->n:Lcom/google/ipc/invalidation/ticl/a/aw;

    return-object v0
.end method

.method public final q()Lcom/google/ipc/invalidation/ticl/a/J;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->o:Lcom/google/ipc/invalidation/ticl/a/J;

    return-object v0
.end method

.method public final r()Z
    .locals 4

    .prologue
    .line 846
    const-wide/16 v0, 0x2000

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/at;->a:J

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

.method public final s()Lcom/google/ipc/invalidation/ticl/a/ay;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->p:Lcom/google/ipc/invalidation/ticl/a/ay;

    return-object v0
.end method

.method final t()Lcom/google/a/a/a/E;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1057
    new-instance v2, Lcom/google/a/a/a/E;

    invoke-direct {v2}, Lcom/google/a/a/a/E;-><init>()V

    .line 1058
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->b:Lcom/google/ipc/invalidation/ticl/a/K;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/K;->c()Lcom/google/a/a/a/a/f;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/E;->a:Lcom/google/a/a/a/a/f;

    .line 1059
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/E;->b:[B

    .line 1060
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->d:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/E;->c:[B

    .line 1061
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/google/a/a/a/E;->d:Ljava/lang/Boolean;

    .line 1062
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/at;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_4
    iput-object v0, v2, Lcom/google/a/a/a/E;->e:Ljava/lang/Long;

    .line 1063
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_5
    iput-object v0, v2, Lcom/google/a/a/a/E;->f:Ljava/lang/Boolean;

    .line 1064
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->h:Lcom/google/ipc/invalidation/ticl/a/av;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/av;->f()Lcom/google/a/a/a/F;

    move-result-object v0

    :goto_6
    iput-object v0, v2, Lcom/google/a/a/a/E;->g:Lcom/google/a/a/a/F;

    .line 1065
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->A()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->i:Lcom/google/ipc/invalidation/ticl/a/ax;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ax;->e()Lcom/google/a/a/a/H;

    move-result-object v0

    :goto_7
    iput-object v0, v2, Lcom/google/a/a/a/E;->h:Lcom/google/a/a/a/H;

    .line 1066
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->B()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aw;->f()Lcom/google/a/a/a/G;

    move-result-object v0

    :goto_8
    iput-object v0, v2, Lcom/google/a/a/a/E;->i:Lcom/google/a/a/a/G;

    .line 1067
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->C()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aw;->f()Lcom/google/a/a/a/G;

    move-result-object v0

    :goto_9
    iput-object v0, v2, Lcom/google/a/a/a/E;->j:Lcom/google/a/a/a/G;

    .line 1068
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->D()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aw;->f()Lcom/google/a/a/a/G;

    move-result-object v0

    :goto_a
    iput-object v0, v2, Lcom/google/a/a/a/E;->k:Lcom/google/a/a/a/G;

    .line 1069
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->E()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aw;->f()Lcom/google/a/a/a/G;

    move-result-object v0

    :goto_b
    iput-object v0, v2, Lcom/google/a/a/a/E;->l:Lcom/google/a/a/a/G;

    .line 1070
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->F()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->n:Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aw;->f()Lcom/google/a/a/a/G;

    move-result-object v0

    :goto_c
    iput-object v0, v2, Lcom/google/a/a/a/E;->m:Lcom/google/a/a/a/G;

    .line 1071
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->o:Lcom/google/ipc/invalidation/ticl/a/J;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/J;->f()Lcom/google/a/a/a/a/e;

    move-result-object v0

    :goto_d
    iput-object v0, v2, Lcom/google/a/a/a/E;->n:Lcom/google/a/a/a/a/e;

    .line 1072
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/at;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/at;->p:Lcom/google/ipc/invalidation/ticl/a/ay;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ay;->c()Lcom/google/a/a/a/I;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/E;->o:Lcom/google/a/a/a/I;

    .line 1073
    return-object v2

    :cond_1
    move-object v0, v1

    .line 1058
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 1059
    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    .line 1060
    goto/16 :goto_2

    :cond_4
    move-object v0, v1

    .line 1061
    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    .line 1062
    goto/16 :goto_4

    :cond_6
    move-object v0, v1

    .line 1063
    goto/16 :goto_5

    :cond_7
    move-object v0, v1

    .line 1064
    goto/16 :goto_6

    :cond_8
    move-object v0, v1

    .line 1065
    goto :goto_7

    :cond_9
    move-object v0, v1

    .line 1066
    goto :goto_8

    :cond_a
    move-object v0, v1

    .line 1067
    goto :goto_9

    :cond_b
    move-object v0, v1

    .line 1068
    goto :goto_a

    :cond_c
    move-object v0, v1

    .line 1069
    goto :goto_b

    :cond_d
    move-object v0, v1

    .line 1070
    goto :goto_c

    :cond_e
    move-object v0, v1

    .line 1071
    goto :goto_d
.end method

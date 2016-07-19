.class public final Landroid/support/v4/media/session/V;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private c:J

.field private d:J

.field private e:F

.field private f:J

.field private g:Ljava/lang/CharSequence;

.field private h:J

.field private i:J

.field private j:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/V;->a:Ljava/util/List;

    .line 769
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/V;->i:J

    .line 776
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/V;->a:Ljava/util/List;

    .line 769
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/V;->i:J

    .line 785
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/V;->b:I

    .line 786
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->b(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/V;->c:J

    .line 787
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->c(Landroid/support/v4/media/session/PlaybackStateCompat;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/V;->e:F

    .line 788
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->d(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/V;->h:J

    .line 789
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->e(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/V;->d:J

    .line 790
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->f(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/V;->f:J

    .line 791
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->g(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/V;->g:Ljava/lang/CharSequence;

    .line 792
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->h(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Landroid/support/v4/media/session/V;->a:Ljava/util/List;

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->h(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->i(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/V;->i:J

    .line 796
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->j(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/V;->j:Landroid/os/Bundle;

    .line 797
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 19

    .prologue
    .line 998
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/V;->b:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/V;->c:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/V;->d:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/V;->e:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/V;->f:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/media/session/V;->g:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/media/session/V;->h:J

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/media/session/V;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/support/v4/media/session/V;->i:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/session/V;->j:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;B)V

    return-object v2
.end method

.method public final a(IJF)Landroid/support/v4/media/session/V;
    .locals 7

    .prologue
    .line 831
    const-wide/16 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/V;->a(IJFJ)Landroid/support/v4/media/session/V;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJFJ)Landroid/support/v4/media/session/V;
    .locals 0

    .prologue
    .line 870
    iput p1, p0, Landroid/support/v4/media/session/V;->b:I

    .line 871
    iput-wide p2, p0, Landroid/support/v4/media/session/V;->c:J

    .line 872
    iput-wide p5, p0, Landroid/support/v4/media/session/V;->h:J

    .line 873
    iput p4, p0, Landroid/support/v4/media/session/V;->e:F

    .line 874
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/media/session/V;
    .locals 2

    .prologue
    .line 912
    const-wide/16 v0, 0x6

    iput-wide v0, p0, Landroid/support/v4/media/session/V;->f:J

    .line 913
    return-object p0
.end method

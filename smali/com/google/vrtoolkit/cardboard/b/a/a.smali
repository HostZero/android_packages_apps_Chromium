.class public final Lcom/google/vrtoolkit/cardboard/b/a/a;
.super Ljava/lang/Object;
.source "GyroscopeBiasEstimator.java"


# instance fields
.field private a:Lcom/google/vrtoolkit/cardboard/b/a/c;

.field private b:Lcom/google/vrtoolkit/cardboard/b/a/c;

.field private c:Lcom/google/vrtoolkit/cardboard/b/a/c;

.field private d:Lcom/google/vrtoolkit/cardboard/b/a/g;

.field private e:Lcom/google/vrtoolkit/cardboard/b/a/g;

.field private f:Lcom/google/vrtoolkit/cardboard/b/a/b;

.field private g:Lcom/google/vrtoolkit/cardboard/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/b/a/a;->a()V

    .line 62
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 68
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->d:Lcom/google/vrtoolkit/cardboard/b/a/g;

    .line 69
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->e:Lcom/google/vrtoolkit/cardboard/b/a/g;

    .line 70
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/c;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/b/a/c;-><init>(D)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->a:Lcom/google/vrtoolkit/cardboard/b/a/c;

    .line 71
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/c;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/b/a/c;-><init>(D)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->b:Lcom/google/vrtoolkit/cardboard/b/a/c;

    .line 72
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/c;

    const-wide v2, 0x3fc3333340000000L    # 0.15000000596046448

    invoke-direct {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/b/a/c;-><init>(D)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->c:Lcom/google/vrtoolkit/cardboard/b/a/c;

    .line 73
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/b;

    invoke-direct {v0, v1}, Lcom/google/vrtoolkit/cardboard/b/a/b;-><init>(I)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->f:Lcom/google/vrtoolkit/cardboard/b/a/b;

    .line 74
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/b;

    invoke-direct {v0, v1}, Lcom/google/vrtoolkit/cardboard/b/a/b;-><init>(I)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->g:Lcom/google/vrtoolkit/cardboard/b/a/b;

    .line 75
    return-void
.end method

.method public final a(Lcom/google/vrtoolkit/cardboard/b/a/g;)V
    .locals 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->c:Lcom/google/vrtoolkit/cardboard/b/a/c;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/c;->a()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a()V

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->c:Lcom/google/vrtoolkit/cardboard/b/a/c;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/c;->b()Lcom/google/vrtoolkit/cardboard/b/a/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;)V

    .line 124
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->c:Lcom/google/vrtoolkit/cardboard/b/a/c;

    .line 125
    invoke-virtual {v2}, Lcom/google/vrtoolkit/cardboard/b/a/c;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 124
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 127
    invoke-virtual {p1, v0, v1}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a(D)V

    goto :goto_0
.end method

.method public final a(Lcom/google/vrtoolkit/cardboard/b/a/g;J)V
    .locals 8

    .prologue
    const-wide v6, 0x3fd6666660000000L    # 0.3499999940395355

    .line 86
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->b:Lcom/google/vrtoolkit/cardboard/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vrtoolkit/cardboard/b/a/c;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;J)V

    .line 87
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->b:Lcom/google/vrtoolkit/cardboard/b/a/c;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/c;->b()Lcom/google/vrtoolkit/cardboard/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->d:Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-static {p1, v0, v1}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;Lcom/google/vrtoolkit/cardboard/b/a/g;Lcom/google/vrtoolkit/cardboard/b/a/g;)V

    .line 89
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->g:Lcom/google/vrtoolkit/cardboard/b/a/b;

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->d:Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/g;->c()D

    move-result-wide v2

    const-wide v4, 0x3f80624de0000000L    # 0.00800000037997961

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vrtoolkit/cardboard/b/a/b;->a(Z)V

    .line 93
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->g:Lcom/google/vrtoolkit/cardboard/b/a/b;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->f:Lcom/google/vrtoolkit/cardboard/b/a/b;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/b/a/g;->c()D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-gez v0, :cond_0

    .line 1147
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/b/a/g;->c()D

    move-result-wide v4

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1148
    mul-double v4, v0, v0

    .line 1149
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->c:Lcom/google/vrtoolkit/cardboard/b/a/c;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->b:Lcom/google/vrtoolkit/cardboard/b/a/c;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/b/a/c;->b()Lcom/google/vrtoolkit/cardboard/b/a/g;

    move-result-object v1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/vrtoolkit/cardboard/b/a/c;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;JD)V

    .line 96
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/vrtoolkit/cardboard/b/a/g;J)V
    .locals 6

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->a:Lcom/google/vrtoolkit/cardboard/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vrtoolkit/cardboard/b/a/c;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;J)V

    .line 108
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->a:Lcom/google/vrtoolkit/cardboard/b/a/c;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/c;->b()Lcom/google/vrtoolkit/cardboard/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->e:Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-static {p1, v0, v1}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;Lcom/google/vrtoolkit/cardboard/b/a/g;Lcom/google/vrtoolkit/cardboard/b/a/g;)V

    .line 109
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->f:Lcom/google/vrtoolkit/cardboard/b/a/b;

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/a/a;->e:Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/g;->c()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vrtoolkit/cardboard/b/a/b;->a(Z)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Landroid/support/v7/widget/S;
.super Landroid/support/v7/widget/bp;
.source "DefaultItemAnimator.java"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/bp;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->h:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->i:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->j:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/S;->k:Ljava/util/ArrayList;

    .line 635
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/S;Landroid/support/v7/widget/aY;)V
    .locals 4

    .prologue
    .line 35
    .line 9223
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 9224
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v0

    .line 9225
    iget-object v1, p0, Landroid/support/v7/widget/S;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9226
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(F)Landroid/support/v4/view/aP;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/S;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/X;

    invoke-direct {v2, p0, p1, v0}, Landroid/support/v7/widget/X;-><init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/aY;Landroid/support/v4/view/aP;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->c()V

    .line 35
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/S;Landroid/support/v7/widget/aY;IIII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 35
    .line 8271
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 8272
    sub-int v3, p4, p2

    .line 8273
    sub-int v4, p5, p3

    .line 8274
    if-eqz v3, :cond_0

    .line 8275
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aP;->b(F)Landroid/support/v4/view/aP;

    .line 8277
    :cond_0
    if-eqz v4, :cond_1

    .line 8278
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aP;->c(F)Landroid/support/v4/view/aP;

    .line 8283
    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v5

    .line 8284
    iget-object v0, p0, Landroid/support/v7/widget/S;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8285
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->d()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    move-result-object v6

    new-instance v0, Landroid/support/v7/widget/Y;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/Y;-><init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/aY;IILandroid/support/v4/view/aP;)V

    invoke-virtual {v6, v0}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->c()V

    .line 35
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/S;Landroid/support/v7/widget/ab;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 35
    .line 8339
    iget-object v0, p1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    .line 8340
    if-nez v0, :cond_3

    move-object v0, v1

    .line 8341
    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    .line 8342
    if-eqz v2, :cond_0

    iget-object v1, v2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 8343
    :cond_0
    if-eqz v0, :cond_1

    .line 8344
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/S;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    move-result-object v0

    .line 8346
    iget-object v2, p0, Landroid/support/v7/widget/S;->k:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8347
    iget v2, p1, Landroid/support/v7/widget/ab;->e:I

    iget v3, p1, Landroid/support/v7/widget/ab;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->b(F)Landroid/support/v4/view/aP;

    .line 8348
    iget v2, p1, Landroid/support/v7/widget/ab;->f:I

    iget v3, p1, Landroid/support/v7/widget/ab;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->c(F)Landroid/support/v4/view/aP;

    .line 8349
    invoke-virtual {v0, v4}, Landroid/support/v4/view/aP;->a(F)Landroid/support/v4/view/aP;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/Z;

    invoke-direct {v3, p0, p1, v0}, Landroid/support/v7/widget/Z;-><init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/ab;Landroid/support/v4/view/aP;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->c()V

    .line 8367
    :cond_1
    if-eqz v1, :cond_2

    .line 8368
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v0

    .line 8369
    iget-object v2, p0, Landroid/support/v7/widget/S;->k:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8370
    invoke-virtual {v0, v4}, Landroid/support/v4/view/aP;->b(F)Landroid/support/v4/view/aP;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/aP;->c(F)Landroid/support/v4/view/aP;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/S;->g()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/support/v4/view/aP;->a(F)Landroid/support/v4/view/aP;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/aa;

    invoke-direct {v3, p0, p1, v0, v1}, Landroid/support/v7/widget/aa;-><init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/ab;Landroid/support/v4/view/aP;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->c()V

    .line 35
    :cond_2
    return-void

    .line 8340
    :cond_3
    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ab;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/S;->a(Landroid/support/v7/widget/ab;Landroid/support/v7/widget/aY;)Z

    .line 405
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p1, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/S;->a(Landroid/support/v7/widget/ab;Landroid/support/v7/widget/aY;)Z

    .line 408
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 630
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 631
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->b()V

    .line 630
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 633
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Landroid/support/v7/widget/aY;)V
    .locals 3

    .prologue
    .line 391
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 392
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 393
    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/S;->a(Landroid/support/v7/widget/ab;Landroid/support/v7/widget/aY;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    iget-object v2, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    if-nez v2, :cond_0

    .line 395
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 399
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/ab;Landroid/support/v7/widget/aY;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 410
    .line 411
    iget-object v0, p1, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    if-ne v0, p2, :cond_0

    .line 412
    iput-object v1, p1, Landroid/support/v7/widget/ab;->b:Landroid/support/v7/widget/aY;

    .line 419
    :goto_0
    iget-object v0, p2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 420
    iget-object v0, p2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 421
    iget-object v0, p2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 1291
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 423
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 413
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    if-ne v0, p2, :cond_1

    .line 414
    iput-object v1, p1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/S;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/S;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/S;->i()V

    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/S;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/S;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/S;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private h(Landroid/support/v7/widget/aY;)V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/a/a;->a(Landroid/view/View;)V

    .line 514
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/S;->c(Landroid/support/v7/widget/aY;)V

    .line 515
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->h()V

    .line 541
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v1, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 98
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    .line 99
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v0

    .line 100
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v0

    .line 101
    :goto_3
    if-nez v1, :cond_5

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    .line 183
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v1, v2

    .line 97
    goto :goto_0

    :cond_2
    move v3, v2

    .line 98
    goto :goto_1

    :cond_3
    move v4, v2

    .line 99
    goto :goto_2

    :cond_4
    move v5, v2

    .line 100
    goto :goto_3

    .line 106
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 1193
    iget-object v9, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 1194
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v9

    .line 1195
    iget-object v10, p0, Landroid/support/v7/widget/S;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->f()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/view/aP;->a(F)Landroid/support/v4/view/aP;

    move-result-object v10

    new-instance v11, Landroid/support/v7/widget/W;

    invoke-direct {v11, p0, v0, v9}, Landroid/support/v7/widget/W;-><init>(Landroid/support/v7/widget/S;Landroid/support/v7/widget/aY;Landroid/support/v4/view/aP;)V

    invoke-virtual {v10, v11}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->c()V

    goto :goto_5

    .line 109
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    if-eqz v3, :cond_7

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v8, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v8, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v8, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v8, Landroid/support/v7/widget/T;

    invoke-direct {v8, p0, v0}, Landroid/support/v7/widget/T;-><init>(Landroid/support/v7/widget/S;Ljava/util/ArrayList;)V

    .line 127
    if-eqz v1, :cond_a

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ac;

    iget-object v0, v0, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/aY;

    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->f()J

    move-result-wide v10

    invoke-static {v0, v8, v10, v11}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 135
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v8, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v8, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v8, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 140
    new-instance v8, Landroid/support/v7/widget/U;

    invoke-direct {v8, p0, v0}, Landroid/support/v7/widget/U;-><init>(Landroid/support/v7/widget/S;Ljava/util/ArrayList;)V

    .line 150
    if-eqz v1, :cond_b

    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    iget-object v0, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/aY;

    .line 152
    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/widget/S;->f()J

    move-result-wide v10

    invoke-static {v0, v8, v10, v11}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 158
    :cond_8
    :goto_7
    if-eqz v5, :cond_0

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v12, Landroid/support/v7/widget/V;

    invoke-direct {v12, p0, v5}, Landroid/support/v7/widget/V;-><init>(Landroid/support/v7/widget/S;Ljava/util/ArrayList;)V

    .line 172
    if-nez v1, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_f

    .line 173
    :cond_9
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/S;->f()J

    move-result-wide v0

    move-wide v10, v0

    .line 174
    :goto_8
    if-eqz v3, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/widget/S;->d()J

    move-result-wide v0

    move-wide v8, v0

    .line 175
    :goto_9
    if-eqz v4, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/S;->g()J

    move-result-wide v0

    .line 176
    :goto_a
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v6, v10, v0

    .line 177
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    iget-object v0, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 178
    invoke-static {v0, v12, v6, v7}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto/16 :goto_4

    .line 131
    :cond_a
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 154
    :cond_b
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_c
    move-wide v10, v6

    .line 173
    goto :goto_8

    :cond_d
    move-wide v8, v6

    .line 174
    goto :goto_9

    :cond_e
    move-wide v0, v6

    .line 175
    goto :goto_a

    .line 180
    :cond_f
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4
.end method

.method public final a(Landroid/support/v7/widget/aY;)Z
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/support/v7/widget/S;->h(Landroid/support/v7/widget/aY;)V

    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/support/v7/widget/aY;IIII)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 250
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 251
    int-to-float v1, p2

    iget-object v2, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->m(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v2, v1

    .line 252
    int-to-float v1, p3

    iget-object v3, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->n(Landroid/view/View;)F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v3, v1

    .line 253
    invoke-direct {p0, p1}, Landroid/support/v7/widget/S;->h(Landroid/support/v7/widget/aY;)V

    .line 254
    sub-int v1, p4, v2

    .line 255
    sub-int v4, p5, v3

    .line 256
    if-nez v1, :cond_0

    if-nez v4, :cond_0

    .line 1266
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 267
    :goto_0
    return v6

    .line 260
    :cond_0
    if-eqz v1, :cond_1

    .line 261
    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 263
    :cond_1
    if-eqz v4, :cond_2

    .line 264
    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 266
    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/widget/ac;

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/ac;-><init>(Landroid/support/v7/widget/aY;IIIIB)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aY;IIII)Z
    .locals 9

    .prologue
    .line 312
    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/S;->a(Landroid/support/v7/widget/aY;IIII)Z

    move-result v0

    .line 335
    :goto_0
    return v0

    .line 317
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->m(Landroid/view/View;)F

    move-result v0

    .line 318
    iget-object v1, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->n(Landroid/view/View;)F

    move-result v1

    .line 319
    iget-object v2, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)F

    move-result v2

    .line 320
    invoke-direct {p0, p1}, Landroid/support/v7/widget/S;->h(Landroid/support/v7/widget/aY;)V

    .line 321
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 322
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 324
    iget-object v5, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 325
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 326
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 327
    if-eqz p2, :cond_1

    .line 329
    invoke-direct {p0, p2}, Landroid/support/v7/widget/S;->h(Landroid/support/v7/widget/aY;)V

    .line 330
    iget-object v0, p2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 331
    iget-object v0, p2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 332
    iget-object v0, p2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 334
    :cond_1
    iget-object v8, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/widget/ab;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/widget/ab;-><init>(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aY;IIIIB)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/aY;)Z
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/support/v7/widget/S;->h(Landroid/support/v7/widget/aY;)V

    .line 217
    iget-object v0, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 218
    iget-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 546
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 547
    iget-object v0, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ac;

    .line 548
    iget-object v2, v0, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/aY;

    iget-object v2, v2, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 549
    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 550
    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 551
    iget-object v0, v0, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/aY;

    .line 5266
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 546
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 555
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 556
    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 6252
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 558
    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 560
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 561
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 563
    iget-object v2, v0, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 564
    invoke-static {v2, v6}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 6276
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 561
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 568
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 569
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_3

    .line 570
    iget-object v0, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/S;->a(Landroid/support/v7/widget/ab;)V

    .line 569
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 572
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 573
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 627
    :goto_4
    return-void

    .line 577
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 578
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5
    if-ltz v3, :cond_7

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 580
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 581
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_6
    if-ltz v2, :cond_6

    .line 582
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ac;

    .line 583
    iget-object v4, v1, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/aY;

    .line 584
    iget-object v4, v4, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 585
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 586
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 587
    iget-object v1, v1, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/aY;

    .line 7266
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 588
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 590
    iget-object v1, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 581
    :cond_5
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_6

    .line 578
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5

    .line 594
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 595
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_7
    if-ltz v3, :cond_a

    .line 596
    iget-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 597
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 598
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_8
    if-ltz v2, :cond_9

    .line 599
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aY;

    .line 600
    iget-object v4, v1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 601
    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 7276
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 603
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 604
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 605
    iget-object v1, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 598
    :cond_8
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_8

    .line 595
    :cond_9
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_7

    .line 609
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 610
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_9
    if-ltz v3, :cond_d

    .line 611
    iget-object v0, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 612
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 613
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_a
    if-ltz v2, :cond_c

    .line 614
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ab;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/S;->a(Landroid/support/v7/widget/ab;)V

    .line 615
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 616
    iget-object v1, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 613
    :cond_b
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_a

    .line 610
    :cond_c
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_9

    .line 621
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/S;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/v7/widget/S;->a(Ljava/util/List;)V

    .line 622
    iget-object v0, p0, Landroid/support/v7/widget/S;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/v7/widget/S;->a(Ljava/util/List;)V

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/S;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/v7/widget/S;->a(Ljava/util/List;)V

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/S;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/v7/widget/S;->a(Ljava/util/List;)V

    .line 626
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->h()V

    goto/16 :goto_4
.end method

.method public final c(Landroid/support/v7/widget/aY;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 428
    iget-object v4, p1, Landroid/support/v7/widget/aY;->itemView:Landroid/view/View;

    .line 430
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->b()V

    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 433
    iget-object v0, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ac;

    .line 434
    iget-object v0, v0, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/aY;

    if-ne v0, p1, :cond_0

    .line 435
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 436
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 2266
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 432
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/S;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/S;->a(Ljava/util/List;Landroid/support/v7/widget/aY;)V

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 3252
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 446
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/S;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 3276
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 451
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 452
    iget-object v0, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 453
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/S;->a(Ljava/util/List;Landroid/support/v7/widget/aY;)V

    .line 454
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    iget-object v0, p0, Landroid/support/v7/widget/S;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 451
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 458
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_8

    .line 459
    iget-object v0, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_6

    .line 461
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ac;

    .line 462
    iget-object v1, v1, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/aY;

    if-ne v1, p1, :cond_7

    .line 463
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 464
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 4266
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 466
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 468
    iget-object v0, p0, Landroid/support/v7/widget/S;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 460
    :cond_7
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    .line 474
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_a

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 476
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 477
    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 4276
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/aY;)V

    .line 479
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 480
    iget-object v0, p0, Landroid/support/v7/widget/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 474
    :cond_9
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 487
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/S;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/S;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/S;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Landroid/support/v7/widget/S;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    invoke-direct {p0}, Landroid/support/v7/widget/S;->i()V

    .line 510
    return-void
.end method

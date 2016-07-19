.class public final Landroid/support/v4/widget/W;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# instance fields
.field a:Ljava/lang/Object;

.field b:Landroid/support/v4/widget/X;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 279
    new-instance v0, Landroid/support/v4/widget/aa;

    invoke-direct {v0}, Landroid/support/v4/widget/aa;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    .line 285
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/X;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    .line 286
    return-void

    .line 280
    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    .line 281
    new-instance v0, Landroid/support/v4/widget/Z;

    invoke-direct {v0}, Landroid/support/v4/widget/Z;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Landroid/support/v4/widget/Y;

    invoke-direct {v0}, Landroid/support/v4/widget/Y;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/widget/W;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 271
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/widget/W;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/widget/W;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/W;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/W;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Landroid/support/v4/widget/W;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/W;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public final a(IIIII)V
    .locals 7

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/X;->a(Ljava/lang/Object;IIIII)V

    .line 385
    return-void
.end method

.method public final a(IIIIIIII)V
    .locals 10

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v9}, Landroid/support/v4/widget/X;->a(Ljava/lang/Object;IIIIIIII)V

    .line 409
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/X;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(IIIIII)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v5, v4

    move v6, v4

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/support/v4/widget/X;->a(Ljava/lang/Object;IIIIII)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/X;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/X;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/X;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/X;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final f()F
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/X;->d(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/X;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v4/widget/W;->b:Landroid/support/v4/widget/X;

    iget-object v1, p0, Landroid/support/v4/widget/W;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/X;->f(Ljava/lang/Object;)V

    .line 462
    return-void
.end method

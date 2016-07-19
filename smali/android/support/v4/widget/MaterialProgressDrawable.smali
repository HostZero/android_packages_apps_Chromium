.class final Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field a:Z

.field private final d:[I

.field private final e:Ljava/util/ArrayList;

.field private final f:Landroid/support/v4/widget/K;

.field private g:F

.field private h:Landroid/content/res/Resources;

.field private i:Landroid/view/View;

.field private j:Landroid/view/animation/Animation;

.field private k:F

.field private l:D

.field private m:D

.field private final n:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->b:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Landroid/support/v4/view/b/a;

    invoke-direct {v0}, Landroid/support/v4/view/b/a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 16

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    aput v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->d:[I

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Ljava/util/ArrayList;

    .line 450
    new-instance v2, Landroid/support/v4/widget/J;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/v4/widget/J;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->n:Landroid/graphics/drawable/Drawable$Callback;

    .line 120
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/View;

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/content/res/Resources;

    .line 123
    new-instance v2, Landroid/support/v4/widget/K;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->n:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v2, v3}, Landroid/support/v4/widget/K;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->d:[I

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/K;->a([I)V

    .line 1157
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    .line 2132
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    .line 2133
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/content/res/Resources;

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 2134
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 2136
    float-to-double v14, v13

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    .line 2137
    float-to-double v2, v13

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->m:D

    .line 2138
    double-to-float v2, v8

    mul-float/2addr v2, v13

    invoke-virtual {v12, v2}, Landroid/support/v4/widget/K;->a(F)V

    .line 2139
    float-to-double v2, v13

    mul-double/2addr v2, v6

    invoke-virtual {v12, v2, v3}, Landroid/support/v4/widget/K;->a(D)V

    .line 2140
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/support/v4/widget/K;->c(I)V

    .line 2141
    mul-float v2, v10, v13

    mul-float v3, v11, v13

    invoke-virtual {v12, v2, v3}, Landroid/support/v4/widget/K;->a(FF)V

    .line 2142
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->m:D

    double-to-int v3, v4

    invoke-virtual {v12, v2, v3}, Landroid/support/v4/widget/K;->a(II)V

    .line 2363
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    .line 2364
    new-instance v3, Landroid/support/v4/widget/H;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/support/v4/widget/H;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/K;)V

    .line 2416
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 2417
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 2418
    sget-object v4, Landroid/support/v4/widget/MaterialProgressDrawable;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2419
    new-instance v4, Landroid/support/v4/widget/I;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Landroid/support/v4/widget/I;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/K;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2447
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/animation/Animation;

    .line 128
    return-void
.end method

.method private static a(Landroid/support/v4/widget/K;)F
    .locals 6

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/support/v4/widget/K;->d()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {p0}, Landroid/support/v4/widget/K;->j()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/MaterialProgressDrawable;)F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:F

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/MaterialProgressDrawable;F)F
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:F

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/K;)F
    .locals 1

    .prologue
    .line 52
    invoke-static {p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Landroid/support/v4/widget/K;)F

    move-result v0

    return v0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private a(FLandroid/support/v4/widget/K;)V
    .locals 9

    .prologue
    const/high16 v1, 0x3f400000    # 0.75f

    .line 334
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 338
    sub-float v0, p1, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/v4/widget/K;->h()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/K;->a()I

    move-result v2

    .line 3310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3311
    ushr-int/lit8 v3, v1, 0x18

    .line 3312
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 3313
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3314
    and-int/lit16 v1, v1, 0xff

    .line 3316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3317
    ushr-int/lit8 v6, v2, 0x18

    .line 3318
    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    .line 3319
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 3320
    and-int/lit16 v2, v2, 0xff

    .line 3322
    sub-int/2addr v6, v3

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x18

    sub-int v6, v7, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    sub-int v4, v8, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    or-int/2addr v0, v3

    .line 338
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/K;->b(I)V

    .line 342
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/K;)V
    .locals 4

    .prologue
    .line 52
    .line 3348
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FLandroid/support/v4/widget/K;)V

    .line 3349
    invoke-virtual {p2}, Landroid/support/v4/widget/K;->k()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 3351
    invoke-static {p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Landroid/support/v4/widget/K;)F

    move-result v1

    .line 3352
    invoke-virtual {p2}, Landroid/support/v4/widget/K;->f()F

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/widget/K;->g()F

    move-result v3

    sub-float v1, v3, v1

    invoke-virtual {p2}, Landroid/support/v4/widget/K;->f()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    .line 3355
    invoke-virtual {p2, v1}, Landroid/support/v4/widget/K;->b(F)V

    .line 3356
    invoke-virtual {p2}, Landroid/support/v4/widget/K;->g()F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/K;->c(F)V

    .line 3357
    invoke-virtual {p2}, Landroid/support/v4/widget/K;->k()F

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/K;->k()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 3359
    invoke-virtual {p2, v0}, Landroid/support/v4/widget/K;->d(F)V

    .line 52
    return-void
.end method

.method static synthetic b(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/K;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FLandroid/support/v4/widget/K;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/K;->e(F)V

    .line 174
    return-void
.end method

.method public final a(FF)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/K;->b(F)V

    .line 184
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/K;->c(F)V

    .line 185
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/K;->a(I)V

    .line 201
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/K;->a(Z)V

    .line 167
    return-void
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/K;->d(F)V

    .line 194
    return-void
.end method

.method final c(F)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:F

    .line 251
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V

    .line 252
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 229
    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 230
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/K;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 232
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0}, Landroid/support/v4/widget/K;->c()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->m:D

    double-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    double-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 268
    :goto_0
    if-ge v2, v4, :cond_1

    .line 269
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 270
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 274
    :goto_1
    return v0

    .line 268
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 274
    goto :goto_1
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/K;->d(I)V

    .line 237
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/K;->a(Landroid/graphics/ColorFilter;)V

    .line 246
    return-void
.end method

.method public final start()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 280
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0}, Landroid/support/v4/widget/K;->l()V

    .line 282
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0}, Landroid/support/v4/widget/K;->i()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v1}, Landroid/support/v4/widget/K;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->a:Z

    .line 284
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/K;->c(I)V

    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0}, Landroid/support/v4/widget/K;->m()V

    .line 289
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 290
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->c(F)V

    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/K;->a(Z)V

    .line 299
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/K;->c(I)V

    .line 300
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:Landroid/support/v4/widget/K;

    invoke-virtual {v0}, Landroid/support/v4/widget/K;->m()V

    .line 301
    return-void
.end method

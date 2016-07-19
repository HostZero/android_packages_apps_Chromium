.class public final Lcom/google/vrtoolkit/cardboard/b/e;
.super Ljava/lang/Object;
.source "HeadTracker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/view/Display;

.field private final b:[F

.field private final c:[F

.field private d:F

.field private final e:[F

.field private final f:[F

.field private final g:[F

.field private h:F

.field private final i:Ljava/lang/Object;

.field private volatile j:Z

.field private final k:Lcom/google/vrtoolkit/cardboard/b/a/e;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/google/vrtoolkit/cardboard/b/a/a;

.field private n:Lcom/google/vrtoolkit/cardboard/b/f;

.field private o:Lcom/google/vrtoolkit/cardboard/b/a;

.field private p:J

.field private volatile q:Z

.field private r:[F

.field private final s:Lcom/google/vrtoolkit/cardboard/b/a/g;

.field private final t:Lcom/google/vrtoolkit/cardboard/b/a/g;

.field private final u:Lcom/google/vrtoolkit/cardboard/b/a/g;


# direct methods
.method private constructor <init>(Lcom/google/vrtoolkit/cardboard/b/f;Lcom/google/vrtoolkit/cardboard/b/a;Landroid/view/Display;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->b:[F

    .line 65
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->c:[F

    .line 67
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->d:F

    .line 69
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->e:[F

    .line 71
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->f:[F

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->g:[F

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->h:F

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->i:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->l:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->q:Z

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->r:[F

    .line 112
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->s:Lcom/google/vrtoolkit/cardboard/b/a/g;

    .line 115
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->t:Lcom/google/vrtoolkit/cardboard/b/a/g;

    .line 118
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->u:Lcom/google/vrtoolkit/cardboard/b/a/g;

    .line 146
    iput-object p2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->o:Lcom/google/vrtoolkit/cardboard/b/a;

    .line 147
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->n:Lcom/google/vrtoolkit/cardboard/b/f;

    .line 149
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/e;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/b/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->k:Lcom/google/vrtoolkit/cardboard/b/a/e;

    .line 150
    iput-object p3, p0, Lcom/google/vrtoolkit/cardboard/b/e;->a:Landroid/view/Display;

    .line 1312
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1317
    :try_start_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    if-nez v0, :cond_0

    .line 1318
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a/a;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/b/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    .line 1320
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->e:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 157
    return-void

    .line 1320
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/vrtoolkit/cardboard/b/e;
    .locals 4

    .prologue
    .line 128
    const-string/jumbo v0, "sensor"

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 130
    const-string/jumbo v1, "window"

    .line 131
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 132
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/google/vrtoolkit/cardboard/b/e;

    new-instance v3, Lcom/google/vrtoolkit/cardboard/b/b;

    invoke-direct {v3, v0}, Lcom/google/vrtoolkit/cardboard/b/b;-><init>(Landroid/hardware/SensorManager;)V

    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/a;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/b/a;-><init>()V

    invoke-direct {v2, v3, v0, v1}, Lcom/google/vrtoolkit/cardboard/b/e;-><init>(Lcom/google/vrtoolkit/cardboard/b/f;Lcom/google/vrtoolkit/cardboard/b/a;Landroid/view/Display;)V

    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 230
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->j:Z

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->k:Lcom/google/vrtoolkit/cardboard/b/a/e;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/e;->a()V

    .line 235
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/a;->a()V

    .line 239
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iput-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->q:Z

    .line 242
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->n:Lcom/google/vrtoolkit/cardboard/b/f;

    invoke-interface {v0, p0}, Lcom/google/vrtoolkit/cardboard/b/f;->a(Landroid/hardware/SensorEventListener;)V

    .line 243
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->n:Lcom/google/vrtoolkit/cardboard/b/f;

    invoke-interface {v0}, Lcom/google/vrtoolkit/cardboard/b/f;->a()V

    .line 244
    iput-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->j:Z

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 275
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2298
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 2299
    const/4 v2, 0x0

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    cmpl-float v2, v3, v3

    if-lez v2, :cond_1

    .line 2300
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "factor should be within [0.0, 1.0]"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2302
    :cond_1
    :try_start_1
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->h:F

    .line 2303
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a([FI)V
    .locals 10

    .prologue
    const v6, 0x3d99999a    # 0.075f

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 342
    const/16 v0, 0x10

    array-length v2, p1

    if-le v0, v2, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not enough space to write the result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->a:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v7

    .line 362
    :goto_0
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->d:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 363
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->d:F

    .line 364
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->c:[F

    neg-float v3, v0

    invoke-static {v2, v1, v7, v7, v3}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 365
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->b:[F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v2, v1, v3, v7, v0}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->k:Lcom/google/vrtoolkit/cardboard/b/a/e;

    monitor-enter v2

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->k:Lcom/google/vrtoolkit/cardboard/b/a/e;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    monitor-exit v2

    .line 401
    :goto_1
    return-void

    :pswitch_0
    move v0, v7

    .line 351
    goto :goto_0

    .line 353
    :pswitch_1
    const/high16 v0, 0x42b40000    # 90.0f

    .line 354
    goto :goto_0

    .line 356
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    .line 357
    goto :goto_0

    .line 359
    :pswitch_3
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 373
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/b/e;->o:Lcom/google/vrtoolkit/cardboard/b/a;

    .line 374
    invoke-virtual {v3}, Lcom/google/vrtoolkit/cardboard/b/a;->a()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/google/vrtoolkit/cardboard/b/e;->p:J

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-double v4, v4

    .line 375
    const-wide v8, 0x3fadb22d00000000L    # 0.057999998331069946

    add-double/2addr v4, v8

    .line 376
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->k:Lcom/google/vrtoolkit/cardboard/b/a/e;

    invoke-virtual {v0, v4, v5}, Lcom/google/vrtoolkit/cardboard/b/a/e;->a(D)[D

    move-result-object v3

    move v0, v1

    .line 377
    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 378
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/b/e;->f:[F

    aget-wide v8, v3, v0

    double-to-float v5, v8

    aput v5, v4, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 380
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->g:[F

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->c:[F

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/b/e;->f:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 386
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->g:[F

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/b/e;->b:[F

    move-object v0, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 393
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->e:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 394
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->e:[F

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->h:F

    neg-float v2, v2

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/google/vrtoolkit/cardboard/b/e;->h:F

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v3, v4

    invoke-static {v0, v1, v7, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 398
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->f:[F

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->e:[F

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 399
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->f:[F

    iget v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->h:F

    mul-float v5, v0, v6

    move-object v0, p1

    move v3, v1

    move v4, v7

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->k:Lcom/google/vrtoolkit/cardboard/b/a/e;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a/e;->a()V

    .line 253
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->j:Z

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->n:Lcom/google/vrtoolkit/cardboard/b/f;

    invoke-interface {v0, p0}, Lcom/google/vrtoolkit/cardboard/b/f;->b(Landroid/hardware/SensorEventListener;)V

    .line 264
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->n:Lcom/google/vrtoolkit/cardboard/b/f;

    invoke-interface {v0}, Lcom/google/vrtoolkit/cardboard/b/f;->b()V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->j:Z

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 166
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 167
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->u:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-double v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a(DDD)V

    .line 168
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->k:Lcom/google/vrtoolkit/cardboard/b/a/e;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->u:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/b/a/e;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;)V

    .line 170
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->u:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/vrtoolkit/cardboard/b/a/a;->b(Lcom/google/vrtoolkit/cardboard/b/a/g;J)V

    .line 174
    :cond_0
    monitor-exit v1

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 175
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 176
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->o:Lcom/google/vrtoolkit/cardboard/b/a;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->p:J

    .line 190
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 191
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->q:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 193
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->r:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v0, v8

    .line 194
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->r:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v5

    .line 195
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->r:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    aput v1, v0, v7

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->t:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->r:[F

    aget v2, v2, v8

    sub-float/2addr v0, v2

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/b/e;->r:[F

    aget v4, v4, v5

    sub-float/2addr v0, v4

    float-to-double v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iget-object v6, p0, Lcom/google/vrtoolkit/cardboard/b/e;->r:[F

    aget v6, v6, v7

    sub-float/2addr v0, v6

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a(DDD)V

    .line 206
    :goto_1
    iput-boolean v8, p0, Lcom/google/vrtoolkit/cardboard/b/e;->q:Z

    .line 208
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    if-eqz v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->t:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/vrtoolkit/cardboard/b/a/a;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;J)V

    .line 213
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->m:Lcom/google/vrtoolkit/cardboard/b/a/a;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->s:Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-virtual {v0, v2}, Lcom/google/vrtoolkit/cardboard/b/a/a;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;)V

    .line 214
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->t:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/e;->s:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/b/e;->t:Lcom/google/vrtoolkit/cardboard/b/a/g;

    invoke-static {v0, v2, v3}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;Lcom/google/vrtoolkit/cardboard/b/a/g;Lcom/google/vrtoolkit/cardboard/b/a/g;)V

    .line 216
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/e;->k:Lcom/google/vrtoolkit/cardboard/b/a/e;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->t:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/b/a/e;->a(Lcom/google/vrtoolkit/cardboard/b/a/g;J)V

    goto/16 :goto_0

    .line 203
    :cond_6
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/e;->t:Lcom/google/vrtoolkit/cardboard/b/a/g;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-double v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vrtoolkit/cardboard/b/a/g;->a(DDD)V

    goto :goto_1

    .line 216
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

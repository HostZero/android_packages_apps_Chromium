.class public final Lcom/google/vrtoolkit/cardboard/i;
.super Ljava/lang/Object;
.source "ScreenParams.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 3

    .prologue
    const v2, 0x3cd013a9    # 0.0254f

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v1, v2, v1

    iput v1, p0, Lcom/google/vrtoolkit/cardboard/i;->c:F

    .line 56
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v2, v1

    iput v1, p0, Lcom/google/vrtoolkit/cardboard/i;->d:F

    .line 57
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/vrtoolkit/cardboard/i;->a:I

    .line 58
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/i;->b:I

    .line 59
    const v0, 0x3b449ba6    # 0.003f

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/i;->e:F

    .line 64
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/i;->b:I

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/i;->a:I

    if-le v0, v1, :cond_0

    .line 65
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/i;->a:I

    .line 66
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/i;->b:I

    iput v1, p0, Lcom/google/vrtoolkit/cardboard/i;->a:I

    .line 67
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/i;->b:I

    .line 69
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/i;->c:F

    .line 70
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/i;->d:F

    iput v1, p0, Lcom/google/vrtoolkit/cardboard/i;->c:F

    .line 71
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/i;->d:F

    .line 73
    :cond_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/Display;Lcom/google/vrtoolkit/cardboard/a/b;)Lcom/google/vrtoolkit/cardboard/i;
    .locals 3

    .prologue
    const v2, 0x3cd013a9    # 0.0254f

    .line 80
    if-nez p1, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    new-instance v0, Lcom/google/vrtoolkit/cardboard/i;

    invoke-direct {v0, p0}, Lcom/google/vrtoolkit/cardboard/i;-><init>(Landroid/view/Display;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/b;->a()F

    move-result v1

    div-float v1, v2, v1

    iput v1, v0, Lcom/google/vrtoolkit/cardboard/i;->c:F

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/b;->c()F

    move-result v1

    div-float v1, v2, v1

    iput v1, v0, Lcom/google/vrtoolkit/cardboard/i;->d:F

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/a/b;->e()F

    move-result v1

    iput v1, v0, Lcom/google/vrtoolkit/cardboard/i;->e:F

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/i;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/i;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 200
    goto :goto_0

    .line 203
    :cond_2
    instance-of v2, p1, Lcom/google/vrtoolkit/cardboard/i;

    if-eqz v2, :cond_0

    .line 207
    check-cast p1, Lcom/google/vrtoolkit/cardboard/i;

    .line 209
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/i;->a:I

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/i;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/i;->b:I

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/i;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/i;->c:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/i;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/i;->d:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/i;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/i;->e:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/i;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/i;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/i;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/i;->c:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  x_meters_per_pixel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/i;->d:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  y_meters_per_pixel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/i;->e:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  border_size_meters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

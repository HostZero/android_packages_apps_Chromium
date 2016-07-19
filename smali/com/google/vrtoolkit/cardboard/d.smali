.class public final Lcom/google/vrtoolkit/cardboard/d;
.super Ljava/lang/Object;
.source "FieldOfView.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x42200000    # 40.0f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/d;->a:F

    .line 41
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/d;->b:F

    .line 42
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/d;->c:F

    .line 43
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/d;->d:F

    .line 44
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/d;->a:F

    .line 1114
    iput p2, p0, Lcom/google/vrtoolkit/cardboard/d;->b:F

    .line 1115
    iput p3, p0, Lcom/google/vrtoolkit/cardboard/d;->c:F

    .line 1116
    iput p4, p0, Lcom/google/vrtoolkit/cardboard/d;->d:F

    .line 56
    return-void
.end method


# virtual methods
.method public final a()[F
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/d;->a:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/d;->b:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/d;->c:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/d;->d:F

    aput v2, v0, v1

    return-object v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/d;->a:F

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/d;->b:F

    return v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/d;->c:F

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/d;->d:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    if-nez p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 226
    goto :goto_0

    .line 229
    :cond_2
    instance-of v2, p1, Lcom/google/vrtoolkit/cardboard/d;

    if-eqz v2, :cond_0

    .line 233
    check-cast p1, Lcom/google/vrtoolkit/cardboard/d;

    .line 234
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/d;->a:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/d;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/d;->b:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/d;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/d;->c:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/d;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/d;->d:F

    iget v3, p1, Lcom/google/vrtoolkit/cardboard/d;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/d;->a:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/d;->b:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  right: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/d;->c:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  bottom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/d;->d:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

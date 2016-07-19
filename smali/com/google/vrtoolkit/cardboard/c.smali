.class public final Lcom/google/vrtoolkit/cardboard/c;
.super Ljava/lang/Object;
.source "Distortion.java"


# static fields
.field private static final a:[F


# instance fields
.field private b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vrtoolkit/cardboard/c;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3ee1cac1    # 0.441f
        0x3e1fbe77    # 0.156f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/google/vrtoolkit/cardboard/c;->a:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/c;->b:[F

    .line 45
    return-void
.end method

.method public static a([F)Lcom/google/vrtoolkit/cardboard/c;
    .locals 2

    .prologue
    .line 64
    new-instance v1, Lcom/google/vrtoolkit/cardboard/c;

    invoke-direct {v1}, Lcom/google/vrtoolkit/cardboard/c;-><init>()V

    .line 1091
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :goto_0
    iput-object v0, v1, Lcom/google/vrtoolkit/cardboard/c;->b:[F

    .line 66
    return-object v1

    .line 1091
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [F

    goto :goto_0
.end method


# virtual methods
.method public final a()[F
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/c;->b:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 293
    if-nez p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    if-ne p1, p0, :cond_2

    .line 298
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :cond_2
    instance-of v1, p1, Lcom/google/vrtoolkit/cardboard/c;

    if-eqz v1, :cond_0

    .line 305
    check-cast p1, Lcom/google/vrtoolkit/cardboard/c;

    .line 306
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/c;->b:[F

    iget-object v1, p1, Lcom/google/vrtoolkit/cardboard/c;->b:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "  coefficients: ["

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/c;->b:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/c;->b:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/c;->b:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 323
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    const-string/jumbo v0, "],\n}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

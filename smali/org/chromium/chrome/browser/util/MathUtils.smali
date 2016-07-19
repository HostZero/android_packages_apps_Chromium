.class public Lorg/chromium/chrome/browser/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 3

    .prologue
    .line 67
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    move v0, p2

    .line 68
    :goto_0
    cmpl-float v1, p1, p2

    if-lez v1, :cond_2

    move v1, p1

    .line 69
    :goto_1
    cmpg-float v2, p0, v0

    if-gez v2, :cond_3

    move p0, v0

    .line 74
    :cond_0
    :goto_2
    return p0

    :cond_1
    move v0, p1

    .line 67
    goto :goto_0

    :cond_2
    move v1, p2

    .line 68
    goto :goto_1

    .line 71
    :cond_3
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    .line 72
    goto :goto_2
.end method

.method public static clamp(III)I
    .locals 2

    .prologue
    .line 25
    if-le p1, p2, :cond_1

    move v0, p2

    .line 26
    :goto_0
    if-le p1, p2, :cond_2

    move v1, p1

    .line 27
    :goto_1
    if-ge p0, v0, :cond_3

    move p0, v0

    .line 32
    :cond_0
    :goto_2
    return p0

    :cond_1
    move v0, p1

    .line 25
    goto :goto_0

    :cond_2
    move v1, p2

    .line 26
    goto :goto_1

    .line 29
    :cond_3
    if-le p0, v1, :cond_0

    move p0, v1

    .line 30
    goto :goto_2
.end method

.method public static clamp(JJJ)J
    .locals 6

    .prologue
    .line 46
    cmp-long v0, p2, p4

    if-lez v0, :cond_1

    move-wide v0, p4

    .line 47
    :goto_0
    cmp-long v2, p2, p4

    if-lez v2, :cond_2

    move-wide v2, p2

    .line 48
    :goto_1
    cmp-long v4, p0, v0

    if-gez v4, :cond_3

    move-wide p0, v0

    .line 53
    :cond_0
    :goto_2
    return-wide p0

    :cond_1
    move-wide v0, p2

    .line 46
    goto :goto_0

    :cond_2
    move-wide v2, p4

    .line 47
    goto :goto_1

    .line 50
    :cond_3
    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    move-wide p0, v2

    .line 51
    goto :goto_2
.end method

.method public static compareLongs(JJ)I
    .locals 2

    .prologue
    .line 159
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static flipSignIf(FZ)F
    .locals 0

    .prologue
    .line 150
    if-eqz p1, :cond_0

    neg-float p0, p0

    :cond_0
    return p0
.end method

.method public static flipSignIf(IZ)I
    .locals 0

    .prologue
    .line 139
    if-eqz p1, :cond_0

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method public static interpolate(FFF)F
    .locals 1

    .prologue
    .line 95
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

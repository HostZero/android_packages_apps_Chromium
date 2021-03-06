.class public Lorg/chromium/content/browser/input/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field private mEnd:I

.field private mStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/Range;->set(II)V

    .line 20
    return-void
.end method


# virtual methods
.method public clamp(II)V
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    .line 38
    iget v0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    .line 39
    return-void
.end method

.method public end()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    instance-of v2, p1, Lorg/chromium/content/browser/input/Range;

    if-nez v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 45
    :cond_2
    check-cast p1, Lorg/chromium/content/browser/input/Range;

    .line 46
    iget v2, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    iget v3, p1, Lorg/chromium/content/browser/input/Range;->mStart:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    iget v3, p1, Lorg/chromium/content/browser/input/Range;->mEnd:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    mul-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public set(II)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    .line 34
    return-void
.end method

.method public start()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/chromium/content/browser/input/Range;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/input/Range;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

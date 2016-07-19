.class public abstract Lorg/chromium/mojo/system/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# instance fields
.field private mFlags:I

.field private mImmutable:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    .line 23
    iput p1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 79
    :cond_3
    check-cast p1, Lorg/chromium/mojo/system/Flags;

    .line 80
    iget v2, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    iget v3, p1, Lorg/chromium/mojo/system/Flags;->mFlags:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    return v0
.end method

.method protected immutable()Lorg/chromium/mojo/system/Flags;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    .line 60
    return-object p0
.end method

.method protected setFlag(IZ)Lorg/chromium/mojo/system/Flags;
    .locals 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Flags is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    iget v0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    .line 50
    :goto_0
    return-object p0

    .line 46
    :cond_1
    iget v0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    goto :goto_0
.end method

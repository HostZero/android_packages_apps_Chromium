.class Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# instance fields
.field private mCodecList:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->hasNewMediaCodecList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->mCodecList:[Landroid/media/MediaCodecInfo;

    .line 51
    :cond_0
    return-void
.end method

.method private hasNewMediaCodecList()Z
    .locals 2

    .prologue
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCodecCount()I
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->hasNewMediaCodecList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->mCodecList:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->hasNewMediaCodecList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->mCodecList:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    goto :goto_0
.end method

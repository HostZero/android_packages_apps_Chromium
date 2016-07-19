.class public Lorg/chromium/chrome/browser/toolbar/ToolbarModel;
.super Ljava/lang/Object;
.source "ToolbarModel.java"


# instance fields
.field private mNativeToolbarModelAndroid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetCorpusChipText(J)Ljava/lang/String;
.end method

.method private native nativeGetText(J)Ljava/lang/String;
.end method

.method private native nativeInit(Lorg/chromium/chrome/browser/toolbar/ToolbarModel$ToolbarModelDelegate;)J
.end method

.method private native nativeWouldReplaceURL(J)Z
.end method


# virtual methods
.method public getCorpusChipText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->mNativeToolbarModelAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->mNativeToolbarModelAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->nativeGetCorpusChipText(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->mNativeToolbarModelAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->mNativeToolbarModelAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->nativeGetText(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarModel$ToolbarModelDelegate;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->nativeInit(Lorg/chromium/chrome/browser/toolbar/ToolbarModel$ToolbarModelDelegate;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->mNativeToolbarModelAndroid:J

    .line 34
    return-void
.end method

.method public wouldReplaceURL()Z
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->mNativeToolbarModelAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->mNativeToolbarModelAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarModel;->nativeWouldReplaceURL(J)Z

    move-result v0

    goto :goto_0
.end method

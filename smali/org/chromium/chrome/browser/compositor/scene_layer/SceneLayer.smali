.class public Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
.super Ljava/lang/Object;
.source "SceneLayer.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->initializeNative()V

    .line 22
    return-void
.end method

.method private getNativePtr()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    return-wide v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private setNativePtr(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    .line 48
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->nativeDestroy(J)V

    .line 41
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_1
    return-void
.end method

.method protected initializeNative()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    .line 32
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    return-void
.end method

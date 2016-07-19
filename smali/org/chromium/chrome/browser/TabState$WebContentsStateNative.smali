.class public Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;
.super Lorg/chromium/chrome/browser/TabState$WebContentsState;
.source "TabState.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lorg/chromium/chrome/browser/TabState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/TabState$WebContentsState;-><init>(Ljava/nio/ByteBuffer;)V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 110
    sget-boolean v0, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative$1;-><init>(Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

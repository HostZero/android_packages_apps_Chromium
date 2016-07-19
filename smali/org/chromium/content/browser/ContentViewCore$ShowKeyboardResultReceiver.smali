.class Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;
.super Landroid/os/ResultReceiver;
.source "ContentViewCore.java"


# instance fields
.field private final mContentViewCore:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 376
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;->mContentViewCore:Ljava/lang/ref/WeakReference;

    .line 377
    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;->mContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 382
    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onShowKeyboardReceiveResult(I)V

    goto :goto_0
.end method

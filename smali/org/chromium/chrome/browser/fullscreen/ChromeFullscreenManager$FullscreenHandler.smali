.class Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenHandler;
.super Landroid/os/Handler;
.source "ChromeFullscreenManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mChromeFullscreenManager:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-class v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenHandler;->mChromeFullscreenManager:Ljava/lang/ref/WeakReference;

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenHandler;->mChromeFullscreenManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 172
    sget-boolean v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected message for ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 169
    :pswitch_0
    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->update(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$600(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Z)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

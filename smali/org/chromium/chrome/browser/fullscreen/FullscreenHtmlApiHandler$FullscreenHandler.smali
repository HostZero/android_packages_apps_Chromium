.class Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;
.super Landroid/os/Handler;
.source "FullscreenHtmlApiHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mFullscreenHtmlApiHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;->mFullscreenHtmlApiHandler:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 109
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;->mFullscreenHtmlApiHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 166
    sget-boolean v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;->$assertionsDisabled:Z

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

    .line 115
    :pswitch_0
    sget-boolean v1, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->getPersistentFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Calling after we exited fullscreen"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 116
    :cond_2
    # getter for: Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mContentViewCoreInFullscreen:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->access$000(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 121
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 125
    or-int/lit8 v1, v1, 0x4

    .line 126
    or-int/lit8 v1, v1, 0x1

    .line 127
    # invokes: Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->getExtraFullscreenUIFlags()I
    invoke-static {}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->access$100()I

    move-result v2

    or-int/2addr v1, v2

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 135
    new-instance v1, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler$1;-><init>(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHandler;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->getPersistentFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    # getter for: Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->mContentViewCoreInFullscreen:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->access$000(Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 158
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_0

    .line 161
    and-int/lit16 v1, v1, -0x401

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

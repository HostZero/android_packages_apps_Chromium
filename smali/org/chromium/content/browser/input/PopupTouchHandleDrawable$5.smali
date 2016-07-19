.class Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;
.super Ljava/lang/Object;
.source "PopupTouchHandleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    const-class v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 353
    sget-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isShowingAllowed()Z
    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$1000(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$1102(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z

    .line 355
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const-wide/16 v2, 0x0

    # setter for: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpireTime:J
    invoke-static {v0, v2, v3}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$1202(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;J)J

    .line 356
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->beginFadeIn()V
    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$1300(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    .line 357
    return-void
.end method

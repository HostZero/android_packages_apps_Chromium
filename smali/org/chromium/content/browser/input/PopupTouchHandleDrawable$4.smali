.class Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$4;
.super Ljava/lang/Object;
.source "PopupTouchHandleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$4;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$4;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$802(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z

    .line 337
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$4;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V
    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$900(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    .line 338
    return-void
.end method

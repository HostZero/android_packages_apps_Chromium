.class Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;
.super Lorg/chromium/content_public/browser/GestureStateListener;
.source "PopupTouchHandleDrawable.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/GestureStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->destroy()V
    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$700(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    .line 161
    return-void
.end method

.method public onFlingStartGesture(IIII)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setIsScrolling(Z)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V

    .line 149
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setIsScrolling(Z)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V

    .line 141
    return-void
.end method

.method public onScrollOffsetOrExtentChanged(II)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V
    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$500(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    .line 153
    return-void
.end method

.method public onScrollStarted(II)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setIsScrolling(Z)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V

    .line 137
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    # invokes: Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setIsFocused(Z)V
    invoke-static {v0, p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$600(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V

    .line 157
    return-void
.end method

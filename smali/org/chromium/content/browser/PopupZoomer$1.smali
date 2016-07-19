.class Lorg/chromium/content/browser/PopupZoomer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PopupZoomer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/PopupZoomer;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private handleTapOrPress(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 209
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    # getter for: Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z
    invoke-static {v0}, Lorg/chromium/content/browser/PopupZoomer;->access$000(Lorg/chromium/content/browser/PopupZoomer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v3

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 213
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    # invokes: Lorg/chromium/content/browser/PopupZoomer;->isTouchOutsideArea(FF)Z
    invoke-static {v2, v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->access$100(Lorg/chromium/content/browser/PopupZoomer;FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    # getter for: Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    invoke-static {v2}, Lorg/chromium/content/browser/PopupZoomer;->access$300(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    # invokes: Lorg/chromium/content/browser/PopupZoomer;->convertTouchPoint(FF)Landroid/graphics/PointF;
    invoke-static {v2, v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->access$400(Lorg/chromium/content/browser/PopupZoomer;FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 218
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 219
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 220
    if-eqz p2, :cond_3

    .line 221
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    # getter for: Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    invoke-static {v0}, Lorg/chromium/content/browser/PopupZoomer;->access$300(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-interface {v0, v2, v1}, Lorg/chromium/content/browser/PopupZoomer$OnTapListener;->onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 225
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    # getter for: Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    invoke-static {v0}, Lorg/chromium/content/browser/PopupZoomer;->access$300(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-interface {v0, v2, v1}, Lorg/chromium/content/browser/PopupZoomer$OnTapListener;->onSingleTap(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/PopupZoomer$1;->handleTapOrPress(Landroid/view/MotionEvent;Z)Z

    .line 206
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    # getter for: Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z
    invoke-static {v0}, Lorg/chromium/content/browser/PopupZoomer;->access$000(Lorg/chromium/content/browser/PopupZoomer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return v3

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # invokes: Lorg/chromium/content/browser/PopupZoomer;->isTouchOutsideArea(FF)Z
    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->access$100(Lorg/chromium/content/browser/PopupZoomer;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer$1;->this$0:Lorg/chromium/content/browser/PopupZoomer;

    # invokes: Lorg/chromium/content/browser/PopupZoomer;->scroll(FF)V
    invoke-static {v0, p3, p4}, Lorg/chromium/content/browser/PopupZoomer;->access$200(Lorg/chromium/content/browser/PopupZoomer;FF)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/PopupZoomer$1;->handleTapOrPress(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

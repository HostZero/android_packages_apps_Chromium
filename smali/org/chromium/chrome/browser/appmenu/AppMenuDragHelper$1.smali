.class Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;
.super Ljava/lang/Object;
.source "AppMenuDragHelper.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$000(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)Lorg/chromium/chrome/browser/appmenu/AppMenu;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    long-to-float v2, p4

    const v3, 0x3a83126f    # 0.001f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollingVelocity:F
    invoke-static {v3}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$200(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F

    move-result v3

    mul-float/2addr v2, v3

    # += operator for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffset:F
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$116(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;F)F

    .line 82
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffset:F
    invoke-static {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$100(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffsetRounded:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$300(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 83
    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # += operator for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mDragScrollOffsetRounded:I
    invoke-static {v2, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$312(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;I)I

    .line 84
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchX:F
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$400(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchY:F
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$500(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchX:F
    invoke-static {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$400(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->mLastTouchY:F
    invoke-static {v2}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$500(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->menuItemAction(III)Z
    invoke-static {v0, v1, v2, v4}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->access$600(Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;III)Z

    goto :goto_0
.end method

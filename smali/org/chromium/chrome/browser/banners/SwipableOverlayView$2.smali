.class Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;
.super Ljava/lang/Object;
.source "SwipableOverlayView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$700(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$500(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->setTranslationY(F)V

    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # setter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mIsBeingDisplayedForFirstTime:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$802(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Z)Z

    .line 295
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->createVerticalSnapAnimation(Z)V
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$600(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Z)V

    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$900(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 297
    return-void
.end method

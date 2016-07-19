.class Lorg/chromium/chrome/browser/banners/SwipableOverlayView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipableOverlayView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$3;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$3;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # setter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$202(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;I)I

    .line 332
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$3;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$902(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$3;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # setter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mIsBeingDisplayedForFirstTime:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$802(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Z)Z

    .line 334
    return-void
.end method

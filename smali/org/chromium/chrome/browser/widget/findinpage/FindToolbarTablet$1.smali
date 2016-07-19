.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FindToolbarTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->access$102(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 72
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->postInvalidateOnAnimation()V

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;

    # invokes: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->superActivate()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;)V

    .line 67
    return-void
.end method

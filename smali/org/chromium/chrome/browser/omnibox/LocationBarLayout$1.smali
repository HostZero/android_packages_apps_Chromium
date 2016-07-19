.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LocationBarLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 642
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1400(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 643
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1500(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 645
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButtonShowAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1400(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 652
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationIconShowAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1500(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNavigationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

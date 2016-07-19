.class Lorg/chromium/chrome/browser/omnibox/UrlContainer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UrlContainer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$4;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$4;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->access$200(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$4;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->access$102(Lorg/chromium/chrome/browser/omnibox/UrlContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 282
    return-void
.end method

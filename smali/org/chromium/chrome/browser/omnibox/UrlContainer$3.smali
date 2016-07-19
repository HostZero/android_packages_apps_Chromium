.class Lorg/chromium/chrome/browser/omnibox/UrlContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UrlContainer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/UrlContainer;->mTrailingTextAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->access$102(Lorg/chromium/chrome/browser/omnibox/UrlContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 243
    return-void
.end method

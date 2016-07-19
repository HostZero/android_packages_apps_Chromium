.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LocationBarLayout.java"


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 2208
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$14;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$14;->mIsCancelled:Z

    .line 2219
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 2223
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$14;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 2225
    :goto_0
    return-void

    .line 2224
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$14;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainerVisibility(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$2500(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$14;->mIsCancelled:Z

    .line 2214
    return-void
.end method

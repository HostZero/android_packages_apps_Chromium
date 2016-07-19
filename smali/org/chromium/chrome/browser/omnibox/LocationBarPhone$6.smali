.class Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LocationBarPhone.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIsMenuBadgeAnimationRunning:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->access$102(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Z)Z

    .line 469
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIsMenuBadgeAnimationRunning:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->access$102(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Z)Z

    .line 464
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIsMenuBadgeAnimationRunning:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->access$102(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Z)Z

    .line 459
    return-void
.end method

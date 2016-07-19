.class Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LocationBarTablet.java"


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

.field final synthetic val$hasFocus:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Z)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;->val$hasFocus:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;->mIsCancelled:Z

    .line 144
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;->val$hasFocus:Z

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->finishUrlFocusChange(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->access$200(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Z)V

    goto :goto_0
.end method

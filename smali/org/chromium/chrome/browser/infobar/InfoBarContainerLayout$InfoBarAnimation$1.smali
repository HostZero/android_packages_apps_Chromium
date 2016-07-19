.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InfoBarContainerLayout.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$002(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    .line 176
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->onAnimationEnd()V

    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimationListener:Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$100(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimationListener:Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$100(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->getAnimationType()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;->notifyAnimationFinished(I)V

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # invokes: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->processPendingAnimations()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$200(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V

    .line 181
    return-void
.end method

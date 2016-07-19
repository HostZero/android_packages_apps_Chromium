.class Lorg/chromium/chrome/browser/widget/LoadingView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoadingView.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/widget/LoadingView$2;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/LoadingView$2;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/LoadingView$2$1;->this$1:Lorg/chromium/chrome/browser/widget/LoadingView$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView$2$1;->this$1:Lorg/chromium/chrome/browser/widget/LoadingView$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/LoadingView$2;->this$0:Lorg/chromium/chrome/browser/widget/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/LoadingView;->setVisibility(I)V

    .line 45
    return-void
.end method

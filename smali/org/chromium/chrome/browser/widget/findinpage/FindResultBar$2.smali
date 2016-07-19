.class Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FindResultBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$2;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$2;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$2;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$2;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    :cond_0
    return-void
.end method

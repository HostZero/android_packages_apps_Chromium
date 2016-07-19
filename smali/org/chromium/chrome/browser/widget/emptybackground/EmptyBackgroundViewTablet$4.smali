.class Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmptyBackgroundViewTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$4;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$4;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$4;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mCurrentTransitionAnimation:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->access$102(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 163
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$4;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$4;->this$0:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-void
.end method

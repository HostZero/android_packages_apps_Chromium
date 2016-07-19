.class Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentTabsPromoView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

.field final synthetic val$oldPromo:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;->val$oldPromo:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mFadeAnimation:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$002(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 200
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mPromo:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$100(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$1;->val$oldPromo:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->removeView(Landroid/view/View;)V

    .line 202
    return-void
.end method

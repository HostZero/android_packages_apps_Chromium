.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$9;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$9;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$9;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mOptOutView:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$200(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$9;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$9;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->optOutPromoClicked(Z)V

    .line 435
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$9;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # invokes: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->updateMostVisitedPlaceholderVisibility()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$400(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    .line 436
    return-void
.end method

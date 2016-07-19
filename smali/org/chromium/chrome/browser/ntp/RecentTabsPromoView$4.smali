.class Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$4;
.super Ljava/lang/Object;
.source "RecentTabsPromoView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountSigninView$Delegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$4;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$4;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$400(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

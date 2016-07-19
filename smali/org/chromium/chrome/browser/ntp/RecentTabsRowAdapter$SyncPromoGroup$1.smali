.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup$1;
.super Ljava/lang/Object;
.source "RecentTabsRowAdapter.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$UserActionListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSelectionCancelled()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->setSigninPromoDeclined()V

    .line 607
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->notifyDataSetChanged()V

    .line 608
    return-void
.end method

.method public onAccountSelectionConfirmed()V
    .locals 1

    .prologue
    .line 600
    const-string/jumbo v0, "Signin_Signin_FromRecentTabs"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public onNewAccount()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

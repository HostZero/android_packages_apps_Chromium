.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$2;
.super Ljava/lang/Object;
.source "RecentTabsRowAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;

.field final synthetic val$foreignSessionTab:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$2;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$2;->val$foreignSessionTab:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$2;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$2;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->access$500(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$2;->val$foreignSessionTab:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->openForeignSessionTab(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)V

    .line 383
    const/4 v0, 0x1

    return v0
.end method

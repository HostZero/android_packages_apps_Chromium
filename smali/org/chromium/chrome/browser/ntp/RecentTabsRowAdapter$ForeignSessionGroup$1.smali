.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$1;
.super Ljava/lang/Object;
.source "RecentTabsRowAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->mForeignSession:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;->access$500(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->deleteForeignSession(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

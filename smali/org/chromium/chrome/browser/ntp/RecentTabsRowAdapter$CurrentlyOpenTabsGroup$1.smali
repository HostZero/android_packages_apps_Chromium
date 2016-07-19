.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup$1;
.super Ljava/lang/Object;
.source "RecentTabsRowAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;

.field final synthetic val$childPosition:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;I)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;

    iput p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup$1;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup$1;->this$1:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup$1;->val$childPosition:I

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;->getChild(I)Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->closeTab(Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;)V

    .line 282
    const/4 v0, 0x1

    return v0
.end method

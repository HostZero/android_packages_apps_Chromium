.class Lorg/chromium/chrome/browser/ntp/RecentTabsManager$3;
.super Ljava/lang/Object;
.source "RecentTabsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mIsDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    # invokes: Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->updateForeignSessions()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->access$100(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V

    .line 454
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->postUpdate()V

    .line 455
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$3;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mObservers:Lorg/chromium/base/ObserverList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;

    .line 456
    invoke-interface {v0}, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;->androidSyncSettingsChanged()V

    goto :goto_0
.end method

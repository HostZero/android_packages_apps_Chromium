.class Lorg/chromium/chrome/browser/ntp/RecentTabsManager$2;
.super Ljava/lang/Object;
.source "RecentTabsManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$2;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdated()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$2;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    # invokes: Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->updateForeignSessions()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->access$100(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V

    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$2;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->postUpdate()V

    .line 172
    return-void
.end method

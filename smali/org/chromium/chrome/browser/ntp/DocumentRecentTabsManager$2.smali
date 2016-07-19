.class Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$2;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "DocumentRecentTabsManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$2;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$2;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # invokes: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->updateCurrentlyOpenTabsWhenDatabaseReady()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$100(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)V

    .line 85
    return-void
.end method

.method public didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$2;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # invokes: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->updateCurrentlyOpenTabsWhenDatabaseReady()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$100(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)V

    .line 90
    return-void
.end method

.class Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;
.super Ljava/lang/Object;
.source "DocumentRecentTabsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

.field final synthetic val$currentTabId:I

.field final synthetic val$startNewDocument:Ljava/lang/Runnable;

.field final synthetic val$tabId:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;IILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    iput p2, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->val$currentTabId:I

    iput p3, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->val$tabId:I

    iput-object p4, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->val$startNewDocument:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$300(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->this$0:Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;->access$300(Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 219
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->val$currentTabId:I

    iget v1, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->val$tabId:I

    if-eq v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager$6;->val$startNewDocument:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-static {v0, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 222
    :cond_1
    return-void
.end method

.class Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$3;
.super Ljava/lang/Object;
.source "OfflinePageBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$3;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    iput-object p2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$3;->val$callback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSavePageDone(ILjava/lang/String;J)V
    .locals 3

    .prologue
    .line 315
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$3;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isOfflinePageModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$3;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->recordStorageHistograms(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->access$200(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Z)V

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$3;->val$callback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;->onSavePageDone(ILjava/lang/String;J)V

    .line 319
    return-void
.end method

.class Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$4;
.super Ljava/lang/Object;
.source "OfflinePageBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$4;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    iput-object p2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$4;->val$callback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletePageDone(I)V
    .locals 2

    .prologue
    .line 468
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$4;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isOfflinePageModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$4;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->recordStorageHistograms(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->access$200(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Z)V

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$4;->val$callback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;->onDeletePageDone(I)V

    .line 472
    return-void
.end method

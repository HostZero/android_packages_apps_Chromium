.class Lorg/chromium/chrome/browser/preferences/website/Website$1;
.super Ljava/lang/Object;
.source "Website.java"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$StorageInfoClearedCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/Website;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/Website;Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/Website;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/Website$1;->val$callback:Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageInfoCleared()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/Website;

    # --operator for: Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfoCallbacksLeft:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/Website;->access$006(Lorg/chromium/chrome/browser/preferences/website/Website;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website$1;->val$callback:Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;->onStoredDataCleared()V

    .line 395
    :cond_0
    return-void
.end method

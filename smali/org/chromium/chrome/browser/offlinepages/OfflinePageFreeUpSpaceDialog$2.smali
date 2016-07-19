.class Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog$2;
.super Ljava/lang/Object;
.source "OfflinePageFreeUpSpaceDialog.java"

# interfaces
.implements Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog$2;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletePageDone(I)V
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "OfflinePages.FreeUpSpaceDialogButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog$2;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;

    # getter for: Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->access$000(Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog$2;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;

    # getter for: Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->access$000(Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;->onFreeUpSpaceDone()V

    .line 96
    :cond_0
    return-void
.end method

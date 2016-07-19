.class Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$2;
.super Ljava/lang/Object;
.source "ConfirmImportSyncDataDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;

.field final synthetic val$model:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$2;->this$0:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;

    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$2;->val$model:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$2;->val$model:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeAllUserBookmarks()V

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$2;->val$model:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 204
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$2;->this$0:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;

    # getter for: Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->SYNC_DATA_TYPES:[I
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->access$000()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->clearBrowsingData(Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;[I)V

    .line 206
    return-void
.end method

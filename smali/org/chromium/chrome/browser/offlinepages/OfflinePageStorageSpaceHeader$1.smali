.class Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$1;
.super Ljava/lang/Object;
.source "OfflinePageStorageSpaceHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$1;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$1;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mClicked:Z

    .line 68
    const-string/jumbo v0, "OfflinePages.FreeUpSpaceHeaderClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$1;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    iget-object v0, v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$1;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    iget-object v1, v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->newInstance(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;

    move-result-object v1

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader$1;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;

    iget-object v0, v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpaceHeader;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    return-void
.end method

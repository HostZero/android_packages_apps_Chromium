.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;
.super Landroid/app/DialogFragment;
.source "OfflinePageFreeUpSpaceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

.field private mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

.field private mOfflinePagesToDelete:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

    return-object v0
.end method

.method public static createStorageClearedSnackbar(Landroid/content/Context;)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 3

    .prologue
    .line 54
    sget v0, Lorg/chromium/chrome/R$string;->offline_pages_storage_cleared:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog$1;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog$1;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private getOfflineIdsToDelete()Ljava/util/List;
    .locals 6

    .prologue
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mOfflinePagesToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    .line 104
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getOfflineId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_0
    return-object v1
.end method

.method private getTotalSize()J
    .locals 5

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    .line 112
    iget-object v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mOfflinePagesToDelete:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    .line 113
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getFileSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    return-wide v2
.end method

.method public static newInstance(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;-><init>()V

    .line 45
    iput-object p0, v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    .line 46
    iput-object p1, v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

    .line 47
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 84
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 85
    const-string/jumbo v0, "OfflinePages.FreeUpSpaceDialogButtonNotClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mCallback:Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;->onFreeUpSpaceCancelled()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->getOfflineIdsToDelete()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog$2;-><init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->deletePages(Ljava/util/List;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->dismiss()V

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mOfflinePageBridge:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getPagesToCleanUp()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mOfflinePagesToDelete:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/chromium/chrome/R$string;->offline_pages_free_up_space_title:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->delete:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->offline_pages_free_up_space_message:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->mOfflinePagesToDelete:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->getTotalSize()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

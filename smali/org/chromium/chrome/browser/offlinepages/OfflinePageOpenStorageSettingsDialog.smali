.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageOpenStorageSettingsDialog;
.super Ljava/lang/Object;
.source "OfflinePageOpenStorageSettingsDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageOpenStorageSettingsDialog$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageOpenStorageSettingsDialog$1;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lorg/chromium/chrome/R$string;->offline_pages_free_up_space_title:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->offline_pages_view_button:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->offline_pages_open_storage_settings_dialog_text:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 43
    return-void
.end method

.class Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$1;
.super Ljava/lang/Object;
.source "ConfirmImportSyncDataDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferencesUtils;->showManagedByAdministratorToast(Landroid/content/Context;)V

    .line 159
    return-void
.end method

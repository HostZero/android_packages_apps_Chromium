.class public Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$SpinnerDialogFragment;
.super Landroid/app/DialogFragment;
.source "PassphraseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$SpinnerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$SpinnerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->sync_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    return-object v0
.end method

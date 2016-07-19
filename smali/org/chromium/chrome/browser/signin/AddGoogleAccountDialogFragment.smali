.class public Lorg/chromium/chrome/browser/signin/AddGoogleAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddGoogleAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mListener:Lorg/chromium/chrome/browser/signin/AddGoogleAccountDialogFragment$AddGoogleAccountListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AddGoogleAccountDialogFragment;->mListener:Lorg/chromium/chrome/browser/signin/AddGoogleAccountDialogFragment$AddGoogleAccountListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AddGoogleAccountDialogFragment;->mListener:Lorg/chromium/chrome/browser/signin/AddGoogleAccountDialogFragment$AddGoogleAccountListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/AddGoogleAccountDialogFragment$AddGoogleAccountListener;->onAddAccountClicked()V

    .line 48
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AddGoogleAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/chromium/chrome/R$string;->add_account_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->add_account_continue:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->add_account_message:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/chromium/chrome/browser/signin/AccountManagementFragment$ClearDataProgressDialog;
.super Landroid/app/DialogFragment;
.source "AccountManagementFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 427
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$ClearDataProgressDialog;->dismiss()V

    .line 428
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$ClearDataProgressDialog;->setCancelable(Z)V

    .line 433
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$ClearDataProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 434
    sget v1, Lorg/chromium/chrome/R$string;->wiping_profile_data_title:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$ClearDataProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 435
    sget v1, Lorg/chromium/chrome/R$string;->wiping_profile_data_message:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$ClearDataProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 437
    return-object v0
.end method

.class public Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;
.super Landroid/app/DialogFragment;
.source "SignOutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final SHOW_GAIA_SERVICE_TYPE_EXTRA:Ljava/lang/String; = "ShowGAIAServiceType"


# instance fields
.field private mGaiaServiceType:I

.field private mSignOutClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 80
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 81
    const/4 v0, 0x6

    iget v1, p0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->mGaiaServiceType:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->logEvent(II)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->mSignOutClicked:Z

    .line 85
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment$SignOutDialogListener;

    .line 86
    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment$SignOutDialogListener;->onSignOutClicked()V

    .line 88
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    iput v4, p0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->mGaiaServiceType:I

    .line 56
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ShowGAIAServiceType"

    iget v2, p0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->mGaiaServiceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->mGaiaServiceType:I

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->getManagementDomain()Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->signout_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lorg/chromium/chrome/R$string;->signout_title:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->signout_dialog_positive_button:I

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->signout_managed_account_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 93
    const/4 v0, 0x7

    iget v1, p0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->mGaiaServiceType:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountManagementScreenHelper;->logEvent(II)V

    .line 96
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment$SignOutDialogListener;

    .line 97
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment;->mSignOutClicked:Z

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/signin/SignOutDialogFragment$SignOutDialogListener;->onSignOutDialogDismissed(Z)V

    .line 98
    return-void
.end method

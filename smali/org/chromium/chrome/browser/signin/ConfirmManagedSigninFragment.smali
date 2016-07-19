.class Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;
.super Landroid/app/DialogFragment;
.source "ConfirmManagedSigninFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAbortSignin:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->mAbortSignin:Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;-><init>()V

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    const-string/jumbo v2, "managementDomain"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->progressInteractiveSignInFlowManagedConfirmed()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->mAbortSignin:Z

    .line 59
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->setCancelable(Z)V

    .line 40
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "managementDomain"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v2, v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 44
    sget v3, Lorg/chromium/chrome/R$string;->policy_dialog_title:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->policy_dialog_message:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 47
    sget v0, Lorg/chromium/chrome/R$string;->policy_dialog_proceed:I

    invoke-virtual {v2, v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 48
    sget v0, Lorg/chromium/chrome/R$string;->policy_dialog_cancel:I

    invoke-virtual {v2, v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 64
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->mAbortSignin:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/ConfirmManagedSigninFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->abortSignIn()V

    .line 68
    :cond_0
    return-void
.end method

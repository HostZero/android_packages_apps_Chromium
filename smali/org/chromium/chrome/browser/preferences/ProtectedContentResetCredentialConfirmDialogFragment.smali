.class public Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProtectedContentResetCredentialConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mListener:Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 27
    return-void
.end method

.method public static final newInstance(Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment$Listener;)Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;-><init>()V

    .line 42
    iput-object p0, v0, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;->mListener:Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment$Listener;

    .line 43
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 67
    packed-switch p2, :pswitch_data_0

    .line 74
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;->mListener:Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment$Listener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment$Listener;->resetDeviceCredential()V

    .line 77
    :cond_0
    :pswitch_1
    return-void

    .line 67
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;->dismiss()V

    .line 54
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/chromium/chrome/R$string;->protected_content_reset_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->protected_content_reset_message:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->delete:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

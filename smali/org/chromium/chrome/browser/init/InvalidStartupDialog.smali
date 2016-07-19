.class public Lorg/chromium/chrome/browser/init/InvalidStartupDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "InvalidStartupDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 47
    sget v0, Lorg/chromium/chrome/R$string;->native_startup_failed:I

    .line 49
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    instance-of v2, p0, Landroid/support/v4/app/w;

    if-nez v2, :cond_0

    .line 52
    const-string/jumbo v1, "InvalidStartupDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to start chrome due to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 64
    :goto_1
    return-void

    .line 41
    :pswitch_0
    sget v0, Lorg/chromium/chrome/R$string;->os_version_missing_features:I

    goto :goto_0

    .line 44
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$string;->incompatible_libraries:I

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string/jumbo v2, "InvalidStartupErrorKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lorg/chromium/chrome/browser/init/InvalidStartupDialog;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/init/InvalidStartupDialog;-><init>()V

    .line 61
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/init/InvalidStartupDialog;->setArguments(Landroid/os/Bundle;)V

    .line 62
    check-cast p0, Landroid/support/v4/app/w;

    invoke-virtual {p0}, Landroid/support/v4/app/w;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "InvalidStartupDialog"

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/init/InvalidStartupDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/InvalidStartupDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "InvalidStartupErrorKey"

    const-string/jumbo v2, "Failed to start"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/InvalidStartupDialog;->getActivity()Landroid/support/v4/app/w;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/InvalidStartupDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 83
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 84
    return-void
.end method

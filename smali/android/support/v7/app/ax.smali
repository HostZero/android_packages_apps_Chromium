.class public Landroid/support/v7/app/ax;
.super Landroid/support/v4/app/DialogFragment;
.source "MediaRouteControllerDialogFragment.java"


# instance fields
.field private mDialog:Landroid/support/v7/app/aj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ax;->setCancelable(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    iget-object v0, p0, Landroid/support/v7/app/ax;->mDialog:Landroid/support/v7/app/aj;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/support/v7/app/ax;->mDialog:Landroid/support/v7/app/aj;

    invoke-virtual {v0}, Landroid/support/v7/app/aj;->a()V

    .line 67
    :cond_0
    return-void
.end method

.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/aj;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/support/v7/app/aj;

    invoke-direct {v0, p1}, Landroid/support/v7/app/aj;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/support/v7/app/ax;->getActivity()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/ax;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/aj;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ax;->mDialog:Landroid/support/v7/app/aj;

    .line 58
    iget-object v0, p0, Landroid/support/v7/app/ax;->mDialog:Landroid/support/v7/app/aj;

    return-object v0
.end method

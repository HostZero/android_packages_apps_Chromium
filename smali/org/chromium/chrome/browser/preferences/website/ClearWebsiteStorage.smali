.class public Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorage;
.super Landroid/preference/DialogPreference;
.source "ClearWebsiteStorage.java"


# instance fields
.field private mConfirmationListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 33
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorage;->mConfirmationListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorage;->mConfirmationListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 36
    :cond_0
    return-void
.end method

.method public setConfirmationListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorage;->mConfirmationListener:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    return-void
.end method

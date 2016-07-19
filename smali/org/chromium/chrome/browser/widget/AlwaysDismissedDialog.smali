.class public Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;
.super Landroid/app/Dialog;
.source "AlwaysDismissedDialog.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 24
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 29
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 30
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;->dismiss()V

    .line 35
    :cond_0
    return-void
.end method

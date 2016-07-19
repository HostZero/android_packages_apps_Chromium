.class public Lorg/chromium/chrome/browser/widget/AlertDialogEditText;
.super Landroid/support/v7/widget/w;
.source "AlertDialogEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v7/widget/w;->onFinishInflate()V

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/widget/AlertDialogEditText$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/AlertDialogEditText$1;-><init>(Lorg/chromium/chrome/browser/widget/AlertDialogEditText;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/AlertDialogEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

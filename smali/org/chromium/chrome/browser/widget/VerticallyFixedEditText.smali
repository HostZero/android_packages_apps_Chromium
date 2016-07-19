.class public Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;
.super Landroid/support/v7/widget/w;
.source "VerticallyFixedEditText.java"


# instance fields
.field private mBringingPointIntoView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->mBringingPointIntoView:Z

    .line 20
    return-void
.end method


# virtual methods
.method public bringPointIntoView(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->mBringingPointIntoView:Z

    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/widget/w;->bringPointIntoView(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 30
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->mBringingPointIntoView:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->mBringingPointIntoView:Z

    throw v0
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->mBringingPointIntoView:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/w;->scrollTo(II)V

    .line 39
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->getScrollY()I

    move-result p2

    goto :goto_0
.end method

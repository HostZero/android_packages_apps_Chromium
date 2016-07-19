.class Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;
.super Landroid/widget/FrameLayout;
.source "InfoBarWrapper.java"


# instance fields
.field private final mItem:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->mItem:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_peeking_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 30
    sget v2, Lorg/chromium/chrome/R$dimen;->infobar_shadow_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 31
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setMinimumHeight(I)V

    .line 34
    sget v1, Lorg/chromium/chrome/R$drawable;->infobar_wrapper_bg:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setBackgroundResource(I)V

    .line 35
    invoke-virtual {p0, v3, v0, v3, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setPadding(IIII)V

    .line 36
    return-void
.end method


# virtual methods
.method getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->mItem:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    return-object v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void
.end method

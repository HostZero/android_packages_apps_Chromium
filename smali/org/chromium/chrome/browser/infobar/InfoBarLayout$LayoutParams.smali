.class Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "InfoBarLayout.java"


# instance fields
.field public bottomMargin:I

.field public endMargin:I

.field public start:I

.field public startMargin:I

.field public top:I

.field public topMargin:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 64
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 65
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->startMargin:I

    .line 66
    iput p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->topMargin:I

    .line 67
    iput p3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->endMargin:I

    .line 68
    iput p4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarLayout$LayoutParams;->bottomMargin:I

    .line 69
    return-void
.end method

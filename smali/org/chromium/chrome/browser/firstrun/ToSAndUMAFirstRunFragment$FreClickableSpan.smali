.class abstract Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$FreClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "ToSAndUMAFirstRunFragment.java"


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 99
    iput p1, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$FreClickableSpan;->mColor:I

    .line 100
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$FreClickableSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 106
    return-void
.end method

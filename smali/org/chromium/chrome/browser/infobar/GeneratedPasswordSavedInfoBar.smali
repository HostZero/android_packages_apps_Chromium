.class public Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "GeneratedPasswordSavedInfoBar.java"


# instance fields
.field private final mButtonLabel:Ljava/lang/String;

.field private final mInlineLinkRangeEnd:I

.field private final mInlineLinkRangeStart:I

.field private final mMessageText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 32
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->mMessageText:Ljava/lang/String;

    .line 33
    iput p3, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->mInlineLinkRangeStart:I

    .line 34
    iput p4, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->mInlineLinkRangeEnd:I

    .line 35
    iput-object p5, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->mButtonLabel:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 5

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->mButtonLabel:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->mMessageText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v1, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar$1;-><init>(Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;)V

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->mInlineLinkRangeStart:I

    iget v3, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->mInlineLinkRangeEnd:I

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 54
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public onButtonClicked(Z)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->onButtonClicked(I)V

    .line 64
    return-void
.end method

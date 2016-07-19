.class public Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "SavePasswordInfoBar.java"


# instance fields
.field private final mFirstRunExperienceMessage:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mTitleLinkRangeEnd:I

.field private final mTitleLinkRangeStart:I


# direct methods
.method private constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 39
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput p3, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mTitleLinkRangeStart:I

    .line 41
    iput p4, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mTitleLinkRangeEnd:I

    .line 42
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mTitle:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mFirstRunExperienceMessage:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private static show(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 8

    .prologue
    .line 31
    new-instance v0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;

    invoke-static {p0}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 5

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V

    .line 49
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mTitleLinkRangeStart:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mTitleLinkRangeEnd:I

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v1, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar$1;-><init>(Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;)V

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mTitleLinkRangeStart:I

    iget v3, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mTitleLinkRangeEnd:I

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessage(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mFirstRunExperienceMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addControlLayout()Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->mFirstRunExperienceMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addDescription(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 64
    :cond_1
    return-void
.end method

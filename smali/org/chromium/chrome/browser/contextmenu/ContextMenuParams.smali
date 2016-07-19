.class public Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;
.super Ljava/lang/Object;
.source "ContextMenuParams.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mImageWasFetchedLoFi:Z

.field private final mIsAnchor:Z

.field private final mIsImage:Z

.field private final mIsVideo:Z

.field private final mLinkText:Ljava/lang/String;

.field private final mLinkUrl:Ljava/lang/String;

.field private final mPageUrl:Ljava/lang/String;

.field private final mReferrer:Lorg/chromium/content_public/common/Referrer;

.field private final mSrcUrl:Ljava/lang/String;

.field private final mTitleText:Ljava/lang/String;

.field private final mUnfilteredLinkUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/content_public/common/Referrer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mPageUrl:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mLinkUrl:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mLinkText:Ljava/lang/String;

    .line 126
    iput-object p7, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mTitleText:Ljava/lang/String;

    .line 127
    iput-object p5, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mUnfilteredLinkUrl:Ljava/lang/String;

    .line 128
    iput-object p6, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mSrcUrl:Ljava/lang/String;

    .line 129
    iput-boolean p8, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mImageWasFetchedLoFi:Z

    .line 130
    iput-object p9, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    .line 132
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mIsAnchor:Z

    .line 133
    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mIsImage:Z

    .line 134
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mIsVideo:Z

    .line 135
    return-void

    :cond_0
    move v0, v2

    .line 132
    goto :goto_0

    :cond_1
    move v0, v2

    .line 133
    goto :goto_1

    :cond_2
    move v1, v2

    .line 134
    goto :goto_2
.end method

.method private static create(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;
    .locals 12

    .prologue
    .line 141
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x0

    .line 143
    :goto_0
    new-instance v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/content_public/common/Referrer;)V

    return-object v2

    .line 141
    :cond_0
    new-instance v11, Lorg/chromium/content_public/common/Referrer;

    move-object/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {v11, v0, v1}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public getLinkText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mLinkText:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Lorg/chromium/content_public/common/Referrer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    return-object v0
.end method

.method public getSrcUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mSrcUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getUnfilteredLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mUnfilteredLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public imageWasFetchedLoFi()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mImageWasFetchedLoFi:Z

    return v0
.end method

.method public isAnchor()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mIsAnchor:Z

    return v0
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mIsImage:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->mIsVideo:Z

    return v0
.end method

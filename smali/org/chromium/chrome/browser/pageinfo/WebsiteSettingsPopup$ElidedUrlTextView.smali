.class public Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;
.super Landroid/support/v7/widget/O;
.source "WebsiteSettingsPopup.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCurrentMaxLines:I

.field private mFullLinesToDisplay:Ljava/lang/Integer;

.field private mIsShowingTruncatedText:Z

.field private mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

.field private mTruncatedUrlLinesToDisplay:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mIsShowingTruncatedText:Z

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 126
    const v0, 0x7fffffff

    iput v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mCurrentMaxLines:I

    .line 131
    return-void
.end method

.method private getLineForIndex(I)I
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 145
    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private updateMaxLines()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mFullLinesToDisplay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mIsShowingTruncatedText:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mTruncatedUrlLinesToDisplay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mCurrentMaxLines:I

    if-eq v0, v1, :cond_1

    .line 211
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->setMaxLines(I)V

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 155
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->setMaxLines(I)V

    .line 156
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/O;->onMeasure(II)V

    .line 157
    sget-boolean v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "setProfile() must be called before layout."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->getOriginEndIndex(Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;)I

    move-result v0

    .line 165
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->getLineForIndex(I)I

    move-result v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mTruncatedUrlLinesToDisplay:Ljava/lang/Integer;

    .line 173
    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 174
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 176
    :cond_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->getLineForIndex(I)I

    move-result v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mFullLinesToDisplay:Ljava/lang/Integer;

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mFullLinesToDisplay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mTruncatedUrlLinesToDisplay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mFullLinesToDisplay:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mTruncatedUrlLinesToDisplay:Ljava/lang/Integer;

    .line 185
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->updateMaxLines()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/O;->onMeasure(II)V

    .line 186
    :cond_3
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/support/v7/widget/O;->setMaxLines(I)V

    .line 136
    iput p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mCurrentMaxLines:I

    .line 137
    return-void
.end method

.method public setProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 196
    return-void
.end method

.method public toggleTruncation()V
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mIsShowingTruncatedText:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->mIsShowingTruncatedText:Z

    .line 204
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->updateMaxLines()Z

    .line 205
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

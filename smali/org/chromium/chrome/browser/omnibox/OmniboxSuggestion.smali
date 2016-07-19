.class public Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
.super Ljava/lang/Object;
.source "OmniboxSuggestion.java"


# instance fields
.field private final mAnswer:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;

.field private final mAnswerContents:Ljava/lang/String;

.field private final mAnswerType:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mDescriptionClassifications:Ljava/util/List;

.field private final mDisplayText:Ljava/lang/String;

.field private final mDisplayTextClassifications:Ljava/util/List;

.field private final mFillIntoEdit:Ljava/lang/String;

.field private final mIsDeletable:Z

.field private final mIsSearchType:Z

.field private final mIsStarred:Z

.field private final mRelevance:I

.field private final mTransition:I

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mType:I

    .line 64
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsSearchType:Z

    .line 65
    iput p3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mRelevance:I

    .line 66
    iput p4, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mTransition:I

    .line 67
    iput-object p5, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDisplayText:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDisplayTextClassifications:Ljava/util/List;

    .line 69
    iput-object p7, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDescription:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDescriptionClassifications:Ljava/util/List;

    .line 71
    iput-object p9, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    .line 72
    iput-object p10, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerType:Ljava/lang/String;

    .line 73
    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p5, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mFillIntoEdit:Ljava/lang/String;

    .line 74
    iput-object p12, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mUrl:Ljava/lang/String;

    .line 75
    iput-boolean p13, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsStarred:Z

    .line 76
    iput-boolean p14, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsDeletable:Z

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;->parseAnswerContents(Ljava/lang/String;)Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswer:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;

    .line 85
    :goto_1
    return-void

    :cond_0
    move-object p5, p11

    .line 73
    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswer:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    instance-of v0, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    check-cast p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    .line 188
    :goto_1
    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mType:I

    iget v4, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mType:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mFillIntoEdit:Ljava/lang/String;

    iget-object v4, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mFillIntoEdit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDisplayText:Ljava/lang/String;

    iget-object v4, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsStarred:Z

    iget-boolean v3, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsStarred:Z

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsDeletable:Z

    iget-boolean v3, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsDeletable:Z

    if-ne v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 183
    goto :goto_1
.end method

.method public getAnswer()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswer:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;

    return-object v0
.end method

.method public getAnswerContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionClassifications()Ljava/util/List;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDescriptionClassifications:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTextClassifications()Ljava/util/List;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDisplayTextClassifications:Ljava/util/List;

    return-object v0
.end method

.method public getFillIntoEdit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mFillIntoEdit:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mTransition:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnswer()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswer:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mType:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mFillIntoEdit:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsStarred:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsDeletable:Z

    if-eqz v3, :cond_2

    :goto_1
    add-int/2addr v0, v1

    .line 169
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mAnswerContents:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 167
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsDeletable:Z

    return v0
.end method

.method public isStarred()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsStarred:Z

    return v0
.end method

.method public isUrlSuggestion()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mIsSearchType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " relevance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mRelevance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\" -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;
.super Ljava/lang/Object;
.source "OmniboxResultsAdapter.java"


# instance fields
.field private final mMatchedQuery:Ljava/lang/String;

.field private final mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    .line 170
    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mMatchedQuery:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    instance-of v1, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    check-cast p1, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    .line 194
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mMatchedQuery:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mMatchedQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    iget-object v2, p1, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMatchedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mMatchedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mMatchedQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

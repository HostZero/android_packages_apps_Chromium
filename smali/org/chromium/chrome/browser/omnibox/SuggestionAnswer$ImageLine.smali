.class public Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;
.super Ljava/lang/Object;
.source "SuggestionAnswer.java"


# instance fields
.field private final mAdditionalText:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

.field private final mImage:Ljava/lang/String;

.field private final mStatusText:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

.field private final mTextFields:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mTextFields:Ljava/util/List;

    .line 104
    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 105
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 106
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mTextFields:Ljava/util/List;

    new-instance v4, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    const-string/jumbo v0, "at"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    const-string/jumbo v2, "at"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;-><init>(Lorg/json/JSONObject;)V

    :goto_1
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mAdditionalText:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    .line 113
    const-string/jumbo v0, "st"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    const-string/jumbo v2, "st"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;-><init>(Lorg/json/JSONObject;)V

    :goto_2
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mStatusText:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    .line 117
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mImage:Ljava/lang/String;

    .line 120
    return-void

    :cond_2
    move-object v0, v1

    .line 109
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 113
    goto :goto_2
.end method


# virtual methods
.method public getAdditionalText()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mAdditionalText:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusText()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mStatusText:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    return-object v0
.end method

.method public getTextFields()Ljava/util/List;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mTextFields:Ljava/util/List;

    return-object v0
.end method

.method public hasAdditionalText()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mAdditionalText:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusText()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->mStatusText:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
